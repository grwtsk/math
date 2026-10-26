/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and licenses. -/

import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOACostLayerCone

set_option autoImplicit false

/-!
# Full finite QAOA-round and depth-indexed Heisenberg locality

This source extends the seven-module finite MaxCut/QAOA chain. The one-site
mixer conjugation is the actual two-sided complex matrix-kernel product from
QAOAMixerKernelSupport. The complete mixer sweep below applies those
conjugations in the reverse direction to the PREVIOUS amplitude-level
mixerList recursion: if forward action is M_v (M_vs ψ), the corresponding
observable update is M_vs† (M_v† K M_v) M_vs.

A complete forward QAOA round acts as mixer after cost. Consequently its
backward observable update is first the mixer-sweep conjugation, then the
whole-cost conjugation of QAOACostLayerCone. The latter enlarges support by
exactly one graph incident-closure step. Mixer updates preserve support.

Forward qaoaCircuit is a foldl in which the FIRST angle pair acts FIRST.
The Heisenberg recursion below therefore starts with the LAST angle pair,
then applies earlier rounds as it unwinds. This exact order is needed for
the depth-p cone conclusion; it is not a swap of cost and mixer gates.

Result: for every finite angle list of length p and any S-local complex
operator kernel K, the recursively defined gatewise Heisenberg transform
has support in cone G S p. For the diagonal edge observable, S is its
two endpoints. This requires no girth, Gaussian randomness, or size limit.

The source proof candidates do NOT yet separately reconstruct one global
circuit matrix and prove its conjugate-transpose/product equality with the
gatewise recursion; that end-to-end representation theorem remains
explicitly outstanding. Neither the high-girth tree comparison, the
fixed-word SK transfer, nor the Parisi/seed-synthesis limit is asserted.
Compilation, independent kernel checking and axiom audit are pending.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOARoundCone

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QuantumMaxCut
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAFiniteLocality
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAOperatorSupport
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAMixerKernelSupport
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOACostLayerCone

variable {V : Type*} [Fintype V] [DecidableEq V]

/-- Backward Heisenberg update of the exact ordered finite mixerList.
    The forward list definition applies the head mixer outside the tail;
    hence the head conjugation is applied to K before the tail update. -/
noncomputable def mixerSweepHeisenberg (β : ℝ) :
    List V → Kernel V → Kernel V
  | [], K => K
  | v :: vs, K =>
      mixerSweepHeisenberg β vs (mixerKernelConjugation β v K)

theorem mixerSweepHeisenberg_nil (β : ℝ) (K : Kernel V) :
    mixerSweepHeisenberg β [] K = K := rfl

theorem mixerSweepHeisenberg_cons
    (β : ℝ) (v : V) (vs : List V) (K : Kernel V) :
    mixerSweepHeisenberg β (v :: vs) K =
      mixerSweepHeisenberg β vs (mixerKernelConjugation β v K) := rfl

/-- Each mixer in the sweep preserves the same non-diagonal support.
    No distinctness or commutation of the list's vertices is assumed. -/
theorem mixerSweepHeisenberg_local
    (β : ℝ) (vs : List V) (S : Finset V) :
    ∀ K : Kernel V, IsLocalKernel S K →
      IsLocalKernel S (mixerSweepHeisenberg β vs K) := by
  induction vs with
  | nil =>
      intro K hK
      simpa [mixerSweepHeisenberg] using hK
  | cons v vs ih =>
      intro K hK
      change IsLocalKernel S
        (mixerSweepHeisenberg β vs
          (mixerKernelConjugation β v K))
      exact ih (mixerKernelConjugation β v K)
        (mixerKernelConjugation_local β v S K hK)

/-- A mixer sweep supported entirely outside S fixes the operator.
    Repeated vertices in the list are permitted. -/
theorem mixerSweepHeisenberg_eq_of_outside
    (β : ℝ) (vs : List V) (S : Finset V) :
    ∀ K : Kernel V, IsLocalKernel S K →
      (∀ v, v ∈ vs → v ∉ S) →
        mixerSweepHeisenberg β vs K = K := by
  induction vs with
  | nil =>
      intro K hK hout
      rfl
  | cons v vs ih =>
      intro K hK hout
      have hv : v ∉ S := hout v (by simp)
      have htail : ∀ w, w ∈ vs → w ∉ S := by
        intro w hw
        exact hout w (by simp [hw])
      change mixerSweepHeisenberg β vs
        (mixerKernelConjugation β v K) = K
      rw [mixerKernelConjugation_eq_of_outside β v S K hK hv]
      exact ih K hK htail

/-- A full site sweep uses the exact Finset.univ.toList order of
    QAOAFiniteLocality.mixerLayer, without reordering or dropping sites. -/
noncomputable def mixerLayerHeisenberg
    (β : ℝ) (K : Kernel V) : Kernel V :=
  mixerSweepHeisenberg β (Finset.univ.toList : List V) K

/-- Full mixer-layer conjugation does not enlarge the operator support. -/
theorem mixerLayerHeisenberg_local
    (β : ℝ) (S : Finset V)
    (K : Kernel V) (hK : IsLocalKernel S K) :
    IsLocalKernel S (mixerLayerHeisenberg β K) := by
  exact mixerSweepHeisenberg_local β
    (Finset.univ.toList : List V) S K hK

/-- Backward update of a cost-then-mixer QAOA round:
    R = M_beta C_gamma, so R† K R = C_gamma† (M_beta† K M_beta) C_gamma.
    The two factor conjugations reuse the exact earlier finite gate kernels. -/
noncomputable def qaoaRoundHeisenberg
    (G : SimpleEdgePresentation V) (γ β : ℝ)
    (K : Kernel V) : Kernel V :=
  fullCostConjugate G γ (mixerLayerHeisenberg β K)

/-- One complete finite QAOA round enlarges support by at most one
    neighborhood incident to the ORIGINAL support. -/
theorem qaoaRoundHeisenberg_local
    (G : SimpleEdgePresentation V) (γ β : ℝ)
    (S : Finset V) (K : Kernel V)
    (hK : IsLocalKernel S K) :
    IsLocalKernel (incidentClosure G S)
      (qaoaRoundHeisenberg G γ β K) := by
  exact fullCostConjugate_local G γ S
    (mixerLayerHeisenberg β K)
    (mixerLayerHeisenberg_local β S K hK)

/-- Heisenberg recursion for a forward list of QAOA rounds.
    qaoaCircuit applies the first pair first and later pairs afterward.
    Observable propagation therefore processes the tail before the head. -/
noncomputable def qaoaCircuitHeisenberg
    (G : SimpleEdgePresentation V) :
    List (ℝ × ℝ) → Kernel V → Kernel V
  | [], K => K
  | pair :: rest, K =>
      qaoaRoundHeisenberg G pair.1 pair.2
        (qaoaCircuitHeisenberg G rest K)

theorem qaoaCircuitHeisenberg_nil
    (G : SimpleEdgePresentation V) (K : Kernel V) :
    qaoaCircuitHeisenberg G [] K = K := rfl

theorem qaoaCircuitHeisenberg_cons
    (G : SimpleEdgePresentation V) (pair : ℝ × ℝ)
    (rest : List (ℝ × ℝ)) (K : Kernel V) :
    qaoaCircuitHeisenberg G (pair :: rest) K =
      qaoaRoundHeisenberg G pair.1 pair.2
        (qaoaCircuitHeisenberg G rest K) := rfl

/-- Exact source-level depth theorem: each backward whole round adds at
    most one incident-closure step. The depth is the actual angle-list length,
    independent of graph size and without a fixed-degree assumption. -/
theorem qaoaCircuitHeisenberg_local
    (G : SimpleEdgePresentation V) (S : Finset V)
    (angles : List (ℝ × ℝ)) :
    ∀ K : Kernel V, IsLocalKernel S K →
      IsLocalKernel (cone G S angles.length)
        (qaoaCircuitHeisenberg G angles K) := by
  induction angles with
  | nil =>
      intro K hK
      simpa [qaoaCircuitHeisenberg, cone] using hK
  | cons pair rest ih =>
      intro K hK
      have hrest :
          IsLocalKernel (cone G S rest.length)
            (qaoaCircuitHeisenberg G rest K) :=
        ih K hK
      have hround :=
        qaoaRoundHeisenberg_local G pair.1 pair.2
          (cone G S rest.length)
          (qaoaCircuitHeisenberg G rest K) hrest
      change IsLocalKernel
        (incidentClosure G (cone G S rest.length))
        (qaoaRoundHeisenberg G pair.1 pair.2
          (qaoaCircuitHeisenberg G rest K))
      exact hround

/-- Computational-basis matrix kernel of the edge cost observable. -/
def edgeObservableKernel (e : V × V) : Kernel V :=
  diagonalKernel (edgeCostSymbol e)

/-- The actual edge observable is initially supported on its two endpoints. -/
theorem edgeObservableKernel_local (e : V × V) :
    IsLocalKernel ({e.1, e.2} : Finset V)
      (edgeObservableKernel e) := by
  exact diagonalKernel_local ({e.1, e.2} : Finset V)
    (edgeCostSymbol e) (edgeCostSymbol_local e)

/-- Matrix action of the edge kernel is the previously defined
    computational-basis edgeCost observable, not a surrogate observable. -/
theorem edgeObservableKernel_action_eq_edgeObservable
    (e : V × V) (ψ : State V) :
    kernelAction (edgeObservableKernel e) ψ = edgeObservable e ψ := by
  classical
  funext σ
  change
    (∑ τ : Configuration V,
      (if σ = τ then edgeCostSymbol e σ else 0) * ψ τ) =
      edgeCostSymbol e σ * ψ σ
  simp [ite_mul, Finset.sum_ite_eq']

/-- Finite depth-p causal cone for the defined gatewise Heisenberg
    evolution of one edge's diagonal observable. This is NOT a high-girth
    tree-transfer statement or an SK/Parisi optimality assertion. -/
theorem qaoaCircuitHeisenberg_edge_cone
    (G : SimpleEdgePresentation V)
    (angles : List (ℝ × ℝ)) (e : V × V) :
    IsLocalKernel
      (cone G ({e.1, e.2} : Finset V) angles.length)
      (qaoaCircuitHeisenberg G angles (edgeObservableKernel e)) := by
  exact qaoaCircuitHeisenberg_local
    G ({e.1, e.2} : Finset V) angles
    (edgeObservableKernel e) (edgeObservableKernel_local e)

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOARoundCone
