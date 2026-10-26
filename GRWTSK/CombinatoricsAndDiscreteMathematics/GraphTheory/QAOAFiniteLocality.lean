/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and licenses. -/

import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QuantumMaxCut

set_option autoImplicit false

/-!
# Finite QAOA gates: local commutation and a graph-neighborhood carrier

This module extends the finite computational-basis MaxCut representation.
The cost layer is the diagonal phase for the actual finite classical cut
Hamiltonian. A one-site mixer acts as cos(beta) I - i sin(beta) X_v;
the complete mixer layer is one ordered sweep of these site actions.
Thus a finite list of angle pairs defines concrete finite circuit actions.

The bounded theorem proved here is **gate locality**, not the full QAOA
light-cone theorem: a diagonal observable commutes with the cost phase;
one-site mixers outside its declared coordinate support commute with it.
In particular, mixers away from an edge commute with its diagonal cut
observable, and a mixer at a vertex outside an edge commutes with that
edge's phase gate. These are source-level proof candidates.

The graph-neighborhood recursion is only a combinatorial carrier for a
future depth-p cone. No support-transfer theorem for a full Heisenberg
circuit, gate unitarity, identification of the mixer sweep with the
exponential of a sum, girth/tree transfer, or SK/Parisi limit is claimed.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAFiniteLocality

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QuantumMaxCut

variable {V : Type*} [Fintype V] [DecidableEq V]

/-- Finite quantum amplitudes in the computational basis. -/
abbrev State (V : Type*) := Configuration V → ℂ

/-- Flip exactly the Boolean spin at vertex v. -/
def flipAt (v : V) (σ : Configuration V) : Configuration V :=
  fun w => if w = v then !σ w else σ w

theorem flipAt_apply_of_ne (v w : V) (σ : Configuration V)
    (h : w ≠ v) : flipAt v σ w = σ w := by
  simp [flipAt, h]

theorem flipAt_involutive (v : V) (σ : Configuration V) :
    flipAt v (flipAt v σ) = σ := by
  funext w
  by_cases h : w = v
  · subst w
    simp [flipAt]
  · simp [flipAt, h]

/-- Multiplication by a configuration-dependent diagonal symbol. -/
def diagonal (f : Configuration V → ℂ) (ψ : State V) : State V :=
  fun σ => f σ * ψ σ

/-- The usual finite MaxCut cost gate, acting basiswise as exp(-i gamma C). -/
noncomputable def costLayer
    (G : SimpleEdgePresentation V) (γ : ℝ) (ψ : State V) : State V :=
  diagonal (fun σ =>
    Complex.exp (-Complex.I * (γ : ℂ) * (cutSize G σ : ℂ))) ψ

/-- One Pauli-X mixer rotation: cos(beta) I - i sin(beta) X_v. -/
noncomputable def mixerAt (β : ℝ) (v : V) (ψ : State V) : State V :=
  fun σ =>
    (Real.cos β : ℂ) * ψ σ -
      (Complex.I * (Real.sin β : ℂ)) * ψ (flipAt v σ)

/-- A finite site-by-site mixer sweep, retaining its explicitly chosen order. -/
noncomputable def mixerList (β : ℝ) : List V → State V → State V
  | [], ψ => ψ
  | v :: vs, ψ => mixerAt β v (mixerList β vs ψ)

/-- One fixed finite ordering of all sites. Order-independence is pending. -/
noncomputable def mixerLayer (β : ℝ) (ψ : State V) : State V :=
  mixerList β Finset.univ.toList ψ

/-- Cost followed by a mixer sweep, in the paper's circuit order. -/
noncomputable def qaoaRound (G : SimpleEdgePresentation V)
    (γ β : ℝ) (ψ : State V) : State V :=
  mixerLayer β (costLayer G γ ψ)

/-- A finite sequence of QAOA rounds, with the first angle pair acting first. -/
noncomputable def qaoaCircuit (G : SimpleEdgePresentation V)
    (angles : List (ℝ × ℝ)) (ψ : State V) : State V :=
  angles.foldl (fun current pair => qaoaRound G pair.1 pair.2 current) ψ

/-- A diagonal symbol depends only on a prescribed finite vertex support. -/
def IsLocalDiagonal (S : Finset V) (f : Configuration V → ℂ) : Prop :=
  ∀ σ τ, (∀ w ∈ S, σ w = τ w) → f σ = f τ

theorem localDiagonal_flipInvariant (S : Finset V)
    (f : Configuration V → ℂ) (hf : IsLocalDiagonal S f)
    (v : V) (hv : v ∉ S) (σ : Configuration V) :
    f (flipAt v σ) = f σ := by
  apply hf
  intro w hw
  have hne : w ≠ v := by
    intro h
    apply hv
    simpa [h] using hw
  simp [flipAt, hne]

/-- Any two diagonal operators commute; in particular this holds for
the finite MaxCut cost phase and an arbitrary diagonal observable. -/
theorem costLayer_commutes_diagonal
    (G : SimpleEdgePresentation V) (γ : ℝ)
    (f : Configuration V → ℂ) (ψ : State V) :
    costLayer G γ (diagonal f ψ) =
      diagonal f (costLayer G γ ψ) := by
  funext σ
  change
    Complex.exp (-Complex.I * (γ : ℂ) * (cutSize G σ : ℂ)) *
        (f σ * ψ σ) =
      f σ *
        (Complex.exp (-Complex.I * (γ : ℂ) * (cutSize G σ : ℂ)) *
          ψ σ)
  ring

/-- A one-site mixer commutes with a diagonal symbol invariant under
flipping that site. No normalization or unitarity is assumed. -/
theorem mixerAt_commutes_diagonal_of_flipInvariant
    (β : ℝ) (v : V) (f : Configuration V → ℂ)
    (hf : ∀ σ, f (flipAt v σ) = f σ) (ψ : State V) :
    mixerAt β v (diagonal f ψ) =
      diagonal f (mixerAt β v ψ) := by
  funext σ
  change
    (Real.cos β : ℂ) * (f σ * ψ σ) -
      (Complex.I * (Real.sin β : ℂ)) *
        (f (flipAt v σ) * ψ (flipAt v σ)) =
      f σ *
        ((Real.cos β : ℂ) * ψ σ -
          (Complex.I * (Real.sin β : ℂ)) * ψ (flipAt v σ))
  rw [hf σ]
  ring

/-- A mixer at a site outside S commutes with every S-local diagonal. -/
theorem mixerAt_commutes_diagonal_of_outside
    (β : ℝ) (v : V) (S : Finset V)
    (f : Configuration V → ℂ) (hf : IsLocalDiagonal S f)
    (hv : v ∉ S) (ψ : State V) :
    mixerAt β v (diagonal f ψ) =
      diagonal f (mixerAt β v ψ) := by
  exact mixerAt_commutes_diagonal_of_flipInvariant β v f
    (localDiagonal_flipInvariant S f hf v hv) ψ

/-- An arbitrary finite sequence of mixers outside S commutes with
an S-local diagonal symbol. The list ordering is retained exactly. -/
theorem mixerList_commutes_diagonal_of_outside
    (β : ℝ) (S : Finset V) (f : Configuration V → ℂ)
    (hf : IsLocalDiagonal S f) (vs : List V) :
    (∀ v, v ∈ vs → v ∉ S) →
      ∀ ψ : State V,
        mixerList β vs (diagonal f ψ) =
          diagonal f (mixerList β vs ψ) := by
  induction vs with
  | nil =>
      intro _ ψ
      rfl
  | cons v vs ih =>
      intro hout ψ
      have hv : v ∉ S := hout v (by simp)
      have htail : ∀ w, w ∈ vs → w ∉ S := by
        intro w hw
        apply hout w
        simp [hw]
      change mixerAt β v (mixerList β vs (diagonal f ψ)) =
        diagonal f (mixerAt β v (mixerList β vs ψ))
      rw [ih htail ψ]
      exact mixerAt_commutes_diagonal_of_outside β v S f hf hv
        (mixerList β vs ψ)

/-- Diagonal eigenvalue of the edge observable (I - Z_u Z_v)/2. -/
def edgeCostSymbol (e : V × V) (σ : Configuration V) : ℂ :=
  (pauliZEdgeCost (σ e.1) (σ e.2) : ℂ)

/-- An edge's diagonal cost symbol depends only on its two endpoints. -/
theorem edgeCostSymbol_local (e : V × V) :
    IsLocalDiagonal ({e.1, e.2} : Finset V) (edgeCostSymbol e) := by
  intro σ τ h
  have hu : σ e.1 = τ e.1 := h e.1 (by simp)
  have hv : σ e.2 = τ e.2 := h e.2 (by simp)
  simp [edgeCostSymbol, hu, hv]

/-- The finite computational-basis edge cost observable. -/
def edgeObservable (e : V × V) (ψ : State V) : State V :=
  diagonal (edgeCostSymbol e) ψ

theorem costLayer_commutes_edgeObservable
    (G : SimpleEdgePresentation V) (γ : ℝ)
    (e : V × V) (ψ : State V) :
    costLayer G γ (edgeObservable e ψ) =
      edgeObservable e (costLayer G γ ψ) := by
  exact costLayer_commutes_diagonal G γ (edgeCostSymbol e) ψ

/-- Mixers off the two endpoints commute with that edge's cost observable. -/
theorem mixerAt_commutes_edgeObservable_of_outside
    (β : ℝ) (v : V) (e : V × V)
    (hu : v ≠ e.1) (hv : v ≠ e.2) (ψ : State V) :
    mixerAt β v (edgeObservable e ψ) =
      edgeObservable e (mixerAt β v ψ) := by
  exact mixerAt_commutes_diagonal_of_outside β v
    ({e.1, e.2} : Finset V) (edgeCostSymbol e)
    (edgeCostSymbol_local e) (by simp [hu, hv]) ψ

/-- A list of all off-edge mixer sites may be commuted across an edge
cost observable, without changing the order of the list. -/
theorem mixerList_commutes_edgeObservable_of_outside
    (β : ℝ) (vs : List V) (e : V × V)
    (h : ∀ v, v ∈ vs → v ≠ e.1 ∧ v ≠ e.2) (ψ : State V) :
    mixerList β vs (edgeObservable e ψ) =
      edgeObservable e (mixerList β vs ψ) := by
  have hout : ∀ v, v ∈ vs →
      v ∉ ({e.1, e.2} : Finset V) := by
    intro v hv
    obtain ⟨hu, hw⟩ := h v hv
    simp [hu, hw]
  exact mixerList_commutes_diagonal_of_outside β
    ({e.1, e.2} : Finset V) (edgeCostSymbol e)
    (edgeCostSymbol_local e) vs hout ψ

/-- The phase for the same edge's (I - Z_u Z_v)/2 term. -/
noncomputable def edgePhase (γ : ℝ) (e : V × V)
    (σ : Configuration V) : ℂ :=
  Complex.exp (-Complex.I * (γ : ℂ) * edgeCostSymbol e σ)

theorem edgePhase_local (γ : ℝ) (e : V × V) :
    IsLocalDiagonal ({e.1, e.2} : Finset V) (edgePhase γ e) := by
  intro σ τ h
  exact congrArg (fun z : ℂ =>
    Complex.exp (-Complex.I * (γ : ℂ) * z))
    (edgeCostSymbol_local e σ τ h)

/-- One edge cost phase, separate from the whole-graph cost layer. -/
noncomputable def edgePhaseGate (γ : ℝ) (e : V × V)
    (ψ : State V) : State V :=
  diagonal (edgePhase γ e) ψ

/-- A mixer at a vertex not incident to e commutes with e's cost gate.
This is the elementary edge/site causal separation used in a light cone. -/
theorem mixerAt_commutes_edgePhaseGate_of_outside
    (β γ : ℝ) (v : V) (e : V × V)
    (hu : v ≠ e.1) (hv : v ≠ e.2) (ψ : State V) :
    mixerAt β v (edgePhaseGate γ e ψ) =
      edgePhaseGate γ e (mixerAt β v ψ) := by
  exact mixerAt_commutes_diagonal_of_outside β v
    ({e.1, e.2} : Finset V) (edgePhase γ e)
    (edgePhase_local γ e) (by simp [hu, hv]) ψ

/-- One-step graph neighborhood of a finite vertex set, using exactly
the represented finite undirected edges (no external graph coercion). -/
noncomputable def incidentClosure
    (G : SimpleEdgePresentation V) (S : Finset V) : Finset V :=
  S ∪ G.edges.biUnion (fun e =>
    if e.1 ∈ S ∨ e.2 ∈ S then ({e.1, e.2} : Finset V) else ∅)

/-- Graph-theoretic radius recursion; no circuit-support theorem asserted. -/
noncomputable def cone (G : SimpleEdgePresentation V)
    (S : Finset V) : ℕ → Finset V
  | 0 => S
  | n + 1 => incidentClosure G (cone G S n)

theorem subset_incidentClosure
    (G : SimpleEdgePresentation V) (S : Finset V) :
    S ⊆ incidentClosure G S := by
  unfold incidentClosure
  exact Finset.subset_union_left

theorem cone_subset_cone_succ
    (G : SimpleEdgePresentation V) (S : Finset V) (n : ℕ) :
    cone G S n ⊆ cone G S (n + 1) := by
  change cone G S n ⊆ incidentClosure G (cone G S n)
  exact subset_incidentClosure G (cone G S n)

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAFiniteLocality
