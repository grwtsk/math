/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and licenses. -/

import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOARoundCone

set_option autoImplicit false

/-!
# End-to-end finite QAOA circuit matrix and Heisenberg representation

Finite complex matrices are represented by the existing Kernel V carrier.
We define identity, conjugate transpose, and the actual finite matrix
product already introduced as kernelComposition.

The new circuit kernel uses exactly the earlier ordering:
* mixerList beta (v :: vs) psi applies the tail before the head;
* a forward QAOA round applies its cost gate and then its mixer sweep;
* qaoaCircuit uses foldl, so the first angle pair is applied first.

The source-level matrix-action theorem identifies this assembled finite
matrix with the existing qaoaCircuit on every complex amplitude vector.
The source-level adjoint theorem identifies its two-sided conjugation
with the existing gatewise qaoaCircuitHeisenberg recursion on every
finite (possibly non-diagonal) operator kernel.

A corollary transports the previously authored depth-indexed edge-cone
statement to conjugation by this one assembled circuit matrix. This
settles the representational gap only at the level of mathematical source
proof candidates: no Lean compilation, fresh kernel checking, or full
transitive axiom audit has run for this module or its dependencies.

No girth/tree comparison, random graph expectation, SK limit, Parisi
optimality, quantitative depth bound, or efficient angle selection
follows merely from the finite matrix identity.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOACircuitMatrix

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QuantumMaxCut
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAFiniteLocality
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAOperatorSupport
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAMixerKernelSupport
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOACostLayerCone
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOARoundCone

variable {V : Type*} [Fintype V] [DecidableEq V]

/-- Identity matrix kernel on the complete finite configuration carrier. -/
def identityKernel : Kernel V :=
  fun σ τ => if σ = τ then 1 else 0

/-- Conjugate transpose of a finite complex operator kernel. -/
def kernelAdjoint (U : Kernel V) : Kernel V :=
  fun σ τ => Complex.conj (U τ σ)

/-- Two-sided conjugation by an arbitrary finite complex matrix kernel. -/
noncomputable def kernelConjugate (U K : Kernel V) : Kernel V :=
  kernelComposition (kernelAdjoint U) (kernelComposition K U)

/-- The existing finite kernel product is associative, without requiring
    unitarity or invertibility of any factor. -/
theorem kernelComposition_assoc (A B C : Kernel V) :
    kernelComposition (kernelComposition A B) C =
      kernelComposition A (kernelComposition B C) := by
  funext σ τ
  change
    (∑ υ : Configuration V,
      (∑ ρ : Configuration V, A σ ρ * B ρ υ) * C υ τ) =
    ∑ ρ : Configuration V,
      A σ ρ * (∑ υ : Configuration V, B ρ υ * C υ τ)
  calc
    _ = ∑ υ : Configuration V, ∑ ρ : Configuration V,
          (A σ ρ * B ρ υ) * C υ τ := by
          simp_rw [Finset.sum_mul]
    _ = ∑ ρ : Configuration V, ∑ υ : Configuration V,
          A σ ρ * (B ρ υ * C υ τ) := by
          rw [Finset.sum_comm]
          simp_rw [mul_assoc]
    _ = _ := by
          simp_rw [Finset.mul_sum]

/-- Applying a matrix product equals sequential application of its factors
    in the original right-to-left order. -/
theorem kernelAction_composition
    (A B : Kernel V) (ψ : State V) :
    kernelAction (kernelComposition A B) ψ =
      kernelAction A (kernelAction B ψ) := by
  funext σ
  change
    (∑ τ : Configuration V,
       (∑ ρ : Configuration V, A σ ρ * B ρ τ) * ψ τ) =
      ∑ ρ : Configuration V,
        A σ ρ * (∑ τ : Configuration V, B ρ τ * ψ τ)
  calc
    _ = ∑ τ : Configuration V, ∑ ρ : Configuration V,
          (A σ ρ * B ρ τ) * ψ τ := by
          simp_rw [Finset.sum_mul]
    _ = ∑ ρ : Configuration V, ∑ τ : Configuration V,
          A σ ρ * (B ρ τ * ψ τ) := by
          rw [Finset.sum_comm]
          simp_rw [mul_assoc]
    _ = _ := by simp_rw [Finset.mul_sum]

/-- Left composition by the identity kernel does nothing. -/
theorem kernelComposition_identity_left (K : Kernel V) :
    kernelComposition identityKernel K = K := by
  classical
  funext σ τ
  change
    (∑ ρ : Configuration V,
       (if σ = ρ then (1 : ℂ) else 0) * K ρ τ) = K σ τ
  simp [ite_mul, Finset.sum_ite_eq']

/-- Right composition by the identity kernel does nothing. -/
theorem kernelComposition_identity_right (K : Kernel V) :
    kernelComposition K identityKernel = K := by
  classical
  funext σ τ
  change
    (∑ ρ : Configuration V,
       K σ ρ * (if ρ = τ then (1 : ℂ) else 0)) = K σ τ
  simp [mul_ite, Finset.sum_ite_eq']

/-- The identity kernel acts as identity on every amplitude vector. -/
theorem kernelAction_identity (ψ : State V) :
    kernelAction identityKernel ψ = ψ := by
  classical
  funext σ
  change
    (∑ τ : Configuration V,
       (if σ = τ then (1 : ℂ) else 0) * ψ τ) = ψ σ
  simp [ite_mul, Finset.sum_ite_eq']

/-- The finite kernel adjoint reverses order under kernel multiplication. -/
theorem kernelAdjoint_composition (A B : Kernel V) :
    kernelAdjoint (kernelComposition A B) =
      kernelComposition (kernelAdjoint B) (kernelAdjoint A) := by
  funext σ τ
  change
    star (∑ ρ : Configuration V, A τ ρ * B ρ σ) =
      ∑ ρ : Configuration V, star (B ρ σ) * star (A τ ρ)
  simp only [star_sum, star_mul]

/-- The identity matrix is unchanged by conjugate transpose. -/
theorem kernelAdjoint_identity :
    kernelAdjoint (identityKernel (V := V)) = identityKernel := by
  classical
  funext σ τ
  by_cases h : σ = τ
  · subst τ
    simp [kernelAdjoint, identityKernel]
  · have h' : τ ≠ σ := Ne.symm h
    simp [kernelAdjoint, identityKernel, h, h']

/-- Conjugating an observable by the identity kernel does nothing. -/
theorem kernelConjugate_identity (K : Kernel V) :
    kernelConjugate identityKernel K = K := by
  unfold kernelConjugate
  rw [kernelAdjoint_identity,
      kernelComposition_identity_right,
      kernelComposition_identity_left]

/-- Heisenberg conjugation by a composed forward circuit acts on the
    observable through the LEFT factor first and the RIGHT factor last. -/
theorem kernelConjugate_composition
    (A B K : Kernel V) :
    kernelConjugate (kernelComposition A B) K =
      kernelConjugate B (kernelConjugate A K) := by
  unfold kernelConjugate
  rw [kernelAdjoint_composition]
  simp only [kernelComposition_assoc]

/-- The actual conjugate transpose of a one-site mixer equals its
    reverse-angle kernel, with the existing sign convention. -/
theorem kernelAdjoint_mixerKernel
    (β : ℝ) (v : V) :
    kernelAdjoint (mixerKernel β v) = mixerKernel (-β) v := by
  funext σ τ
  exact mixerKernel_conj_transpose β v σ τ

/-- Conjugate transpose of the total cost matrix is the conjugate
    diagonal phase of the existing finite MaxCut cost layer. -/
theorem kernelAdjoint_costKernel
    (G : SimpleEdgePresentation V) (γ : ℝ) :
    kernelAdjoint (costKernel G γ) =
      diagonalKernel (fun σ => Complex.conj (fullCostPhase G γ σ)) := by
  classical
  funext σ τ
  change
    Complex.conj
      (if τ = σ then fullCostPhase G γ τ else 0) =
    (if σ = τ then Complex.conj (fullCostPhase G γ σ) else 0)
  by_cases h : σ = τ
  · subst τ
    simp
  · have hr : τ ≠ σ := Ne.symm h
    simp [h, hr]

/-- The new generic kernel conjugation specializes to the actual
    two-sided finite matrix product already used for a one-site mixer. -/
theorem kernelConjugate_mixerKernel
    (β : ℝ) (v : V) (K : Kernel V) :
    kernelConjugate (mixerKernel β v) K =
      mixerKernelConjugation β v K := by
  unfold kernelConjugate mixerKernelConjugation
  rw [kernelAdjoint_mixerKernel]

/-- The new generic kernel conjugation specializes to the exact
    whole-graph cost-layer kernel already used for finite QAOA locality. -/
theorem kernelConjugate_costKernel
    (G : SimpleEdgePresentation V) (γ : ℝ) (K : Kernel V) :
    kernelConjugate (costKernel G γ) K =
      fullCostConjugate G γ K := by
  unfold kernelConjugate
  rw [kernelAdjoint_costKernel]
  exact (fullCostConjugate_eq_kernelComposition G γ K).symm

/-- The forward matrix of the EXACT recursively ordered site-mixer list. -/
noncomputable def mixerListKernel (β : ℝ) : List V → Kernel V
  | [] => identityKernel
  | v :: vs =>
      kernelComposition (mixerKernel β v) (mixerListKernel β vs)

/-- Forward mixer-list matrix action equals the earlier amplitude mixerList
    for arbitrary site lists, including repeated vertices. -/
theorem mixerListKernel_action
    (β : ℝ) (vs : List V) (ψ : State V) :
    kernelAction (mixerListKernel β vs) ψ = mixerList β vs ψ := by
  induction vs with
  | nil =>
      simpa [mixerListKernel, mixerList] using
        (kernelAction_identity (V := V) ψ)
  | cons v vs ih =>
      change
        kernelAction (kernelComposition (mixerKernel β v)
          (mixerListKernel β vs)) ψ =
          mixerAt β v (mixerList β vs ψ)
      rw [kernelAction_composition, mixerKernel_action_eq_mixerAt, ih]

/-- The recursively assembled mixer-list matrix conjugation equals the
    previous gatewise Heisenberg sweep, with the original head/tail order. -/
theorem mixerListKernel_conjugate
    (β : ℝ) (vs : List V) :
    ∀ K : Kernel V,
      kernelConjugate (mixerListKernel β vs) K =
        mixerSweepHeisenberg β vs K := by
  induction vs with
  | nil =>
      intro K
      simpa [mixerListKernel, mixerSweepHeisenberg] using
        (kernelConjugate_identity (V := V) K)
  | cons v vs ih =>
      intro K
      change
        kernelConjugate
          (kernelComposition (mixerKernel β v) (mixerListKernel β vs)) K =
        mixerSweepHeisenberg β vs (mixerKernelConjugation β v K)
      rw [kernelConjugate_composition, kernelConjugate_mixerKernel]
      exact ih (mixerKernelConjugation β v K)

/-- The complete mixer-layer matrix uses precisely the finite site list
    chosen by the preceding mixerLayer, not an arbitrary reordered list. -/
noncomputable def mixerLayerKernel (β : ℝ) : Kernel V :=
  mixerListKernel β (Finset.univ.toList : List V)

/-- Action of the full mixer-layer matrix is the original mixerLayer. -/
theorem mixerLayerKernel_action
    (β : ℝ) (ψ : State V) :
    kernelAction (mixerLayerKernel β) ψ = mixerLayer β ψ := by
  exact mixerListKernel_action β (Finset.univ.toList : List V) ψ

/-- Conjugation by the full mixer-layer matrix is exactly the earlier
    Heisenberg sweep; no mixer commutation is assumed. -/
theorem mixerLayerKernel_conjugate
    (β : ℝ) (K : Kernel V) :
    kernelConjugate (mixerLayerKernel β) K =
      mixerLayerHeisenberg β K := by
  exact mixerListKernel_conjugate β (Finset.univ.toList : List V) K

/-- One assembled forward QAOA round: mixer matrix times cost matrix. -/
noncomputable def qaoaRoundKernel
    (G : SimpleEdgePresentation V) (γ β : ℝ) : Kernel V :=
  kernelComposition (mixerLayerKernel β) (costKernel G γ)

/-- Matrix action of a complete round matches the original amplitude round. -/
theorem qaoaRoundKernel_action
    (G : SimpleEdgePresentation V) (γ β : ℝ) (ψ : State V) :
    kernelAction (qaoaRoundKernel G γ β) ψ =
      qaoaRound G γ β ψ := by
  change
    kernelAction
      (kernelComposition (mixerLayerKernel β) (costKernel G γ)) ψ =
        mixerLayer β (costLayer G γ ψ)
  rw [kernelAction_composition, mixerLayerKernel_action,
      costKernel_action_eq_costLayer]

/-- The complete round kernel has exactly the earlier gatewise Heisenberg
    action: reverse mixer update, then whole-graph cost update. -/
theorem qaoaRoundKernel_conjugate
    (G : SimpleEdgePresentation V) (γ β : ℝ) (K : Kernel V) :
    kernelConjugate (qaoaRoundKernel G γ β) K =
      qaoaRoundHeisenberg G γ β K := by
  change
    kernelConjugate
      (kernelComposition (mixerLayerKernel β) (costKernel G γ)) K =
        fullCostConjugate G γ (mixerLayerHeisenberg β K)
  rw [kernelConjugate_composition,
      kernelConjugate_costKernel, mixerLayerKernel_conjugate]

/-- Assemble a whole finite QAOA circuit matrix: the FIRST angle pair
    acts first, and each later round multiplies the earlier matrix on the
    LEFT, exactly as for the previous amplitude-level List.foldl circuit. -/
noncomputable def qaoaCircuitKernel
    (G : SimpleEdgePresentation V) (angles : List (ℝ × ℝ)) : Kernel V :=
  angles.foldl
    (fun U pair => kernelComposition (qaoaRoundKernel G pair.1 pair.2) U)
    identityKernel

/-- Generic fold accumulator action lemma, with no assumption that the
    input matrix or state is normalized or invertible. -/
private theorem circuitFold_action
    (G : SimpleEdgePresentation V) (angles : List (ℝ × ℝ)) :
    ∀ (U : Kernel V) (ψ : State V),
      kernelAction
        (angles.foldl
          (fun current pair =>
            kernelComposition (qaoaRoundKernel G pair.1 pair.2) current) U) ψ =
      angles.foldl
        (fun current pair => qaoaRound G pair.1 pair.2 current)
        (kernelAction U ψ) := by
  induction angles with
  | nil =>
      intro U ψ
      rfl
  | cons pair rest ih =>
      intro U ψ
      change
        kernelAction
          (rest.foldl
            (fun current p =>
              kernelComposition (qaoaRoundKernel G p.1 p.2) current)
            (kernelComposition (qaoaRoundKernel G pair.1 pair.2) U)) ψ =
        rest.foldl
          (fun current p => qaoaRound G p.1 p.2 current)
          (qaoaRound G pair.1 pair.2 (kernelAction U ψ))
      rw [ih (kernelComposition (qaoaRoundKernel G pair.1 pair.2) U) ψ,
          kernelAction_composition, qaoaRoundKernel_action]

/-- The assembled circuit kernel gives exactly the previously defined
    forward QAOA state for every complex amplitude vector. -/
theorem qaoaCircuitKernel_action_eq_qaoaCircuit
    (G : SimpleEdgePresentation V) (angles : List (ℝ × ℝ))
    (ψ : State V) :
    kernelAction (qaoaCircuitKernel G angles) ψ =
      qaoaCircuit G angles ψ := by
  unfold qaoaCircuitKernel qaoaCircuit
  rw [circuitFold_action G angles identityKernel ψ,
      kernelAction_identity]

/-- Generic fold accumulator conjugation lemma: because later forward
    rounds multiply on the left, later Heisenberg updates occur first. -/
private theorem circuitFold_conjugate
    (G : SimpleEdgePresentation V) (angles : List (ℝ × ℝ)) :
    ∀ (U K : Kernel V),
      kernelConjugate
        (angles.foldl
          (fun current pair =>
            kernelComposition (qaoaRoundKernel G pair.1 pair.2) current) U) K =
      kernelConjugate U (qaoaCircuitHeisenberg G angles K) := by
  induction angles with
  | nil =>
      intro U K
      rfl
  | cons pair rest ih =>
      intro U K
      change
        kernelConjugate
          (rest.foldl
            (fun current p =>
              kernelComposition (qaoaRoundKernel G p.1 p.2) current)
            (kernelComposition (qaoaRoundKernel G pair.1 pair.2) U)) K =
        kernelConjugate U
          (qaoaRoundHeisenberg G pair.1 pair.2
            (qaoaCircuitHeisenberg G rest K))
      rw [ih (kernelComposition (qaoaRoundKernel G pair.1 pair.2) U) K,
          kernelConjugate_composition, qaoaRoundKernel_conjugate]

/-- End-to-end representation identity: conjugation by ONE assembled QAOA
    circuit matrix equals the old gatewise Heisenberg recursion exactly,
    on every operator kernel (including arbitrary non-diagonal kernels). -/
theorem qaoaCircuitKernel_conjugate_eq_heisenberg
    (G : SimpleEdgePresentation V) (angles : List (ℝ × ℝ))
    (K : Kernel V) :
    kernelConjugate (qaoaCircuitKernel G angles) K =
      qaoaCircuitHeisenberg G angles K := by
  unfold qaoaCircuitKernel
  rw [circuitFold_conjugate G angles identityKernel K,
      kernelConjugate_identity]

/-- Transfer the existing finite p-round support bound to the adjoint
    conjugation by ONE actually assembled full-circuit matrix. -/
theorem qaoaCircuitKernel_conjugate_local
    (G : SimpleEdgePresentation V) (S : Finset V)
    (angles : List (ℝ × ℝ))
    (K : Kernel V) (hK : IsLocalKernel S K) :
    IsLocalKernel (cone G S angles.length)
      (kernelConjugate (qaoaCircuitKernel G angles) K) := by
  rw [qaoaCircuitKernel_conjugate_eq_heisenberg]
  exact qaoaCircuitHeisenberg_local G S angles K hK

/-- In particular, the literal finite MaxCut edge observable has p-round
    support bounded by the graph p-neighborhood of its two endpoints. -/
theorem qaoaCircuitKernel_edge_cone
    (G : SimpleEdgePresentation V)
    (angles : List (ℝ × ℝ)) (e : V × V) :
    IsLocalKernel
      (cone G ({e.1, e.2} : Finset V) angles.length)
      (kernelConjugate (qaoaCircuitKernel G angles)
        (edgeObservableKernel e)) := by
  exact qaoaCircuitKernel_conjugate_local G
    ({e.1, e.2} : Finset V) angles (edgeObservableKernel e)
    (edgeObservableKernel_local e)

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOACircuitMatrix
