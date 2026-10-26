/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and licenses. -/

import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAMixerKernelSupport

set_option autoImplicit false

/-!
# Whole-graph MaxCut cost conjugation: exactly one incident-neighborhood step

The finite graph uses exactly one oriented representative per underlying
undirected edge. A complex operator kernel is local to S when transitions
outside S vanish and paired flips outside S preserve its matrix entries.

The full cost phase is decomposed into edges originally incident to S and
edges disjoint from S. For a nonzero entry of an S-local kernel, the row
and column spins agree at the endpoints of every disjoint edge, so the
entire disjoint factor is equal in the two configurations and cancels by
unit modulus. Incident phases depend only on incidentClosure G S.

Consequently the *actual full cost layer*, represented both as an
amplitude action and as diagonal matrix multiplication, obeys the
one-step Heisenberg support bound

  IsLocalKernel S K ->
  IsLocalKernel (incidentClosure G S) (fullCostConjugate G gamma K).

Crucially, the split is by edges incident to the ORIGINAL support S.
This is not an iterative union of endpoints of every graph edge.
No complete QAOA round/circuit support induction, high-girth/tree
identification, fixed-word SK transfer or Parisi limit is asserted.

This file is a source-level proof candidate pending real Lean elaboration,
fresh kernel checking and a transitive axiom audit.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOACostLayerCone

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QuantumMaxCut
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAFiniteLocality
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAGateFactorization
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAOperatorSupport
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAMixerKernelSupport

variable {V : Type*} [Fintype V] [DecidableEq V]

/-- Whether an edge touches the original observable support S. -/
def touches (S : Finset V) (e : V × V) : Prop :=
  e.1 ∈ S ∨ e.2 ∈ S

/-- Exactly the represented undirected edges touching S. -/
def incidentEdges (G : SimpleEdgePresentation V) (S : Finset V) :
    Finset (V × V) :=
  G.edges.filter (touches S)

/-- Exactly the represented undirected edges disjoint from S. -/
def remoteEdges (G : SimpleEdgePresentation V) (S : Finset V) :
    Finset (V × V) :=
  G.edges.filter (fun e => ¬ touches S e)

/-- The real MaxCut contribution of edges originally incident to S. -/
noncomputable def incidentCost
    (G : SimpleEdgePresentation V) (S : Finset V)
    (σ : Configuration V) : ℝ :=
  ∑ e ∈ incidentEdges G S, pauliZEdgeCost (σ e.1) (σ e.2)

/-- The real MaxCut contribution of edges disjoint from S. -/
noncomputable def remoteCost
    (G : SimpleEdgePresentation V) (S : Finset V)
    (σ : Configuration V) : ℝ :=
  ∑ e ∈ remoteEdges G S, pauliZEdgeCost (σ e.1) (σ e.2)

/-- Every graph edge belongs to exactly one of the two cost sums. -/
theorem incidentCost_add_remoteCost
    (G : SimpleEdgePresentation V) (S : Finset V)
    (σ : Configuration V) :
    incidentCost G S σ + remoteCost G S σ = cutSize G σ := by
  unfold incidentCost remoteCost incidentEdges remoteEdges
  rw [cutSize_eq_pauliZ_sum]
  exact Finset.sum_filter_add_sum_filter_not G.edges
    (touches S) (fun e => pauliZEdgeCost (σ e.1) (σ e.2))

/-- Any vertex of an edge touching S lies in its one-step closure. -/
theorem endpoint_mem_incidentClosure
    (G : SimpleEdgePresentation V) (S : Finset V)
    (e : V × V) (he : e ∈ G.edges) (ht : touches S e)
    (w : V) (hw : w ∈ ({e.1, e.2} : Finset V)) :
    w ∈ incidentClosure G S := by
  unfold incidentClosure
  apply Finset.mem_union.mpr
  right
  apply Finset.mem_biUnion.mpr
  refine ⟨e, he, ?_⟩
  have ht' : e.1 ∈ S ∨ e.2 ∈ S := ht
  simpa [ht'] using hw

/-- The incident-edge energy depends only on spins within the one-step
    closure; edges not originally incident to S are never introduced. -/
theorem incidentCost_eq_of_agree_on_closure
    (G : SimpleEdgePresentation V) (S : Finset V)
    (σ τ : Configuration V)
    (h : ∀ w ∈ incidentClosure G S, σ w = τ w) :
    incidentCost G S σ = incidentCost G S τ := by
  unfold incidentCost
  apply Finset.sum_congr rfl
  intro e he
  have he' : e ∈ G.edges ∧ touches S e := by
    simpa [incidentEdges] using (Finset.mem_filter.mp he)
  have hu : σ e.1 = τ e.1 :=
    h e.1 (endpoint_mem_incidentClosure G S e he'.1 he'.2 e.1 (by simp))
  have hv : σ e.2 = τ e.2 :=
    h e.2 (endpoint_mem_incidentClosure G S e he'.1 he'.2 e.2 (by simp))
  rw [hu, hv]

/-- The actual phase of the full graph's finite MaxCut cost layer. -/
noncomputable def fullCostPhase
    (G : SimpleEdgePresentation V) (γ : ℝ)
    (σ : Configuration V) : ℂ :=
  Complex.exp (-Complex.I * (γ : ℂ) * (cutSize G σ : ℂ))

/-- The incident part of that same phase, not a new cost convention. -/
noncomputable def incidentPhase
    (G : SimpleEdgePresentation V) (γ : ℝ) (S : Finset V)
    (σ : Configuration V) : ℂ :=
  Complex.exp (-Complex.I * (γ : ℂ) * (incidentCost G S σ : ℂ))

/-- The disjoint part of that same phase. -/
noncomputable def remotePhase
    (G : SimpleEdgePresentation V) (γ : ℝ) (S : Finset V)
    (σ : Configuration V) : ℂ :=
  Complex.exp (-Complex.I * (γ : ℂ) * (remoteCost G S σ : ℂ))

/-- The full phase is exactly the one used by the earlier QAOA cost gate. -/
theorem costLayer_apply_fullCostPhase
    (G : SimpleEdgePresentation V) (γ : ℝ)
    (ψ : State V) (σ : Configuration V) :
    costLayer G γ ψ σ = fullCostPhase G γ σ * ψ σ := rfl

/-- The new notation also equals the actual product of single-edge phases. -/
theorem fullCostPhase_eq_edgePhase_product
    (G : SimpleEdgePresentation V) (γ : ℝ)
    (σ : Configuration V) :
    fullCostPhase G γ σ = ∏ e ∈ G.edges, edgePhase γ e σ := by
  have h := costLayer_apply_eq_edgePhase_prod G γ
    (fun _ => (1 : ℂ)) σ
  simpa [costLayer, diagonal, fullCostPhase] using h

/-- Exact phase splitting with neither a double edge count nor a global
    phase ambiguity. -/
theorem fullCostPhase_eq_incident_mul_remote
    (G : SimpleEdgePresentation V) (γ : ℝ)
    (S : Finset V) (σ : Configuration V) :
    fullCostPhase G γ σ =
      incidentPhase G γ S σ * remotePhase G γ S σ := by
  have hsum := incidentCost_add_remoteCost G S σ
  calc
    fullCostPhase G γ σ =
        Complex.exp (-Complex.I * (γ : ℂ) * (cutSize G σ : ℂ)) := rfl
    _ = Complex.exp (-Complex.I * (γ : ℂ) *
          ((incidentCost G S σ + remoteCost G S σ : ℝ) : ℂ)) := by
          rw [hsum]
    _ = Complex.exp
          (-Complex.I * (γ : ℂ) * (incidentCost G S σ : ℂ) +
            -Complex.I * (γ : ℂ) * (remoteCost G S σ : ℂ)) := by
          congr 1
          push_cast
          ring
    _ = incidentPhase G γ S σ * remotePhase G γ S σ := by
          rw [Complex.exp_add]
          rfl

/-- The incident phase is local to the original one-step closure. -/
theorem incidentPhase_local
    (G : SimpleEdgePresentation V) (γ : ℝ) (S : Finset V) :
    IsLocalDiagonal (incidentClosure G S) (incidentPhase G γ S) := by
  intro σ τ h
  have hc := incidentCost_eq_of_agree_on_closure G S σ τ h
  change
    Complex.exp (-Complex.I * (γ : ℂ) * (incidentCost G S σ : ℂ)) =
      Complex.exp (-Complex.I * (γ : ℂ) * (incidentCost G S τ : ℂ))
  rw [hc]

/-- The disjoint cost has equal eigenvalues on any nonzero entry of an
    S-local operator: outside S, the two spin configurations agree. -/
theorem remoteCost_eq_of_kernel_ne_zero
    (G : SimpleEdgePresentation V) (S : Finset V)
    (K : Kernel V) (hK : IsLocalKernel S K)
    (σ τ : Configuration V) (hNZ : K σ τ ≠ 0) :
    remoteCost G S σ = remoteCost G S τ := by
  unfold remoteCost
  apply Finset.sum_congr rfl
  intro e he
  have hr : ¬ touches S e := by
    exact (Finset.mem_filter.mp (show
      e ∈ G.edges.filter (fun f => ¬ touches S f) from he)).2
  have hu : e.1 ∉ S := by
    intro hh
    exact hr (Or.inl hh)
  have hv : e.2 ∉ S := by
    intro hh
    exact hr (Or.inr hh)
  have hσu : σ e.1 = τ e.1 := by
    by_contra hne
    exact hNZ (hK.zero_of_outside σ τ e.1 hu hne)
  have hσv : σ e.2 = τ e.2 := by
    by_contra hne
    exact hNZ (hK.zero_of_outside σ τ e.2 hv hne)
  rw [hσu, hσv]

/-- The remote phase has unit complex norm square. -/
private theorem remotePhase_normSq_one
    (G : SimpleEdgePresentation V) (γ : ℝ) (S : Finset V)
    (σ : Configuration V) :
    Complex.normSq (remotePhase G γ S σ) = 1 := by
  have harg :
      -Complex.I * (γ : ℂ) * (remoteCost G S σ : ℂ) =
        Complex.I * ((-(γ * remoteCost G S σ) : ℝ) : ℂ) := by
    push_cast
    ring
  unfold remotePhase
  rw [harg, Complex.normSq_eq_norm_sq,
    Complex.norm_exp_I_mul_ofReal]
  norm_num

/-- Conjugating and multiplying the same remote phase gives one. -/
theorem remotePhase_conj_mul_self
    (G : SimpleEdgePresentation V) (γ : ℝ) (S : Finset V)
    (σ : Configuration V) :
    Complex.conj (remotePhase G γ S σ) *
      remotePhase G γ S σ = 1 := by
  calc
    _ = (Complex.normSq (remotePhase G γ S σ) : ℂ) :=
      (Complex.normSq_eq_conj_mul_self
        (z := remotePhase G γ S σ)).symm
    _ = 1 := by
      rw [remotePhase_normSq_one]
      norm_num

/-- Complex conjugation distributes over products; it is harmless here
    whether its general ring-star formulation reverses factor order. -/
private theorem phase_conj_mul (a b : ℂ) :
    Complex.conj (a * b) = Complex.conj a * Complex.conj b := by
  calc
    _ = Complex.conj b * Complex.conj a := by
      simpa only [Complex.star_def] using (star_mul a b)
    _ = Complex.conj a * Complex.conj b := mul_comm _ _

/-- Entrywise diagonal cost-layer Heisenberg conjugation. -/
noncomputable def fullCostConjugate
    (G : SimpleEdgePresentation V) (γ : ℝ)
    (K : Kernel V) : Kernel V :=
  fun σ τ => Complex.conj (fullCostPhase G γ σ) *
    K σ τ * fullCostPhase G γ τ

/-- Conjugation by the incident-only phase from the original S. -/
noncomputable def incidentCostConjugate
    (G : SimpleEdgePresentation V) (γ : ℝ)
    (S : Finset V) (K : Kernel V) : Kernel V :=
  fun σ τ => Complex.conj (incidentPhase G γ S σ) *
    K σ τ * incidentPhase G γ S τ

/-- Every disjoint edge cancels *before* incident cost conjugation,
    so the support cannot proliferate to unrelated graph edges. -/
theorem fullCostConjugate_eq_incidentCostConjugate
    (G : SimpleEdgePresentation V) (γ : ℝ)
    (S : Finset V) (K : Kernel V) (hK : IsLocalKernel S K) :
    fullCostConjugate G γ K = incidentCostConjugate G γ S K := by
  funext σ τ
  by_cases hzero : K σ τ = 0
  · simp [fullCostConjugate, incidentCostConjugate, hzero]
  · have hremoteCost :=
      remoteCost_eq_of_kernel_ne_zero G S K hK σ τ hzero
    have hremote :
        remotePhase G γ S τ = remotePhase G γ S σ := by
      unfold remotePhase
      rw [← hremoteCost]
    have hunit := remotePhase_conj_mul_self G γ S σ
    change
      Complex.conj (fullCostPhase G γ σ) * K σ τ *
        fullCostPhase G γ τ =
      Complex.conj (incidentPhase G γ S σ) * K σ τ *
        incidentPhase G γ S τ
    rw [fullCostPhase_eq_incident_mul_remote G γ S σ,
        fullCostPhase_eq_incident_mul_remote G γ S τ]
    rw [hremote]
    rw [phase_conj_mul]
    calc
      Complex.conj (incidentPhase G γ S σ) *
        Complex.conj (remotePhase G γ S σ) * K σ τ *
          (incidentPhase G γ S τ * remotePhase G γ S σ) =
        (Complex.conj (remotePhase G γ S σ) *
          remotePhase G γ S σ) *
          (Complex.conj (incidentPhase G γ S σ) *
            K σ τ * incidentPhase G γ S τ) := by ring
      _ = Complex.conj (incidentPhase G γ S σ) *
            K σ τ * incidentPhase G γ S τ := by
          rw [hunit]
          ring

/-- Diagonal phase conjugation preserves any larger support which
    already contains the observable and the phase dependence. -/
private theorem phaseConjugation_local
    (S T : Finset V) (hST : S ⊆ T)
    (f : Configuration V → ℂ) (hf : IsLocalDiagonal T f)
    (K : Kernel V) (hK : IsLocalKernel S K) :
    IsLocalKernel T
      (fun σ τ => Complex.conj (f σ) * K σ τ * f τ) := by
  have hKT : IsLocalKernel T K := local_mono S T K hST hK
  refine ⟨?_, ?_⟩
  · intro σ τ v hv hdiff
    simp [hKT.zero_of_outside σ τ v hv hdiff]
  · intro σ τ v hv
    have hσ := localDiagonal_flipInvariant T f hf v hv σ
    have hτ := localDiagonal_flipInvariant T f hf v hv τ
    change
      Complex.conj (f (flipAt v σ)) *
        K (flipAt v σ) (flipAt v τ) * f (flipAt v τ) =
      Complex.conj (f σ) * K σ τ * f τ
    rw [hσ, hτ, hKT.flip_pair σ τ v hv]

/-- The incident phase only enlarges support to the original one-step
    graph closure, which contains the original support. -/
theorem incidentCostConjugate_local
    (G : SimpleEdgePresentation V) (γ : ℝ)
    (S : Finset V) (K : Kernel V) (hK : IsLocalKernel S K) :
    IsLocalKernel (incidentClosure G S)
      (incidentCostConjugate G γ S K) := by
  exact phaseConjugation_local S (incidentClosure G S)
    (subset_incidentClosure G S)
    (incidentPhase G γ S) (incidentPhase_local G γ S)
    K hK

/-- The whole-graph cost layer has exactly one-step support propagation.
    This is a non-diagonal kernel theorem without degree/girth assumptions. -/
theorem fullCostConjugate_local
    (G : SimpleEdgePresentation V) (γ : ℝ)
    (S : Finset V) (K : Kernel V) (hK : IsLocalKernel S K) :
    IsLocalKernel (incidentClosure G S)
      (fullCostConjugate G γ K) := by
  rw [fullCostConjugate_eq_incidentCostConjugate G γ S K hK]
  exact incidentCostConjugate_local G γ S K hK

/-- The exact diagonal kernel for the already defined amplitude cost gate. -/
noncomputable def costKernel
    (G : SimpleEdgePresentation V) (γ : ℝ) : Kernel V :=
  diagonalKernel (fullCostPhase G γ)

/-- The matrix action of the cost kernel equals the previous amplitude
    costLayer, with no scalar or sign ambiguity. -/
theorem costKernel_action_eq_costLayer
    (G : SimpleEdgePresentation V) (γ : ℝ) (ψ : State V) :
    kernelAction (costKernel G γ) ψ = costLayer G γ ψ := by
  funext σ
  change
    (∑ τ : Configuration V,
      (if σ = τ then fullCostPhase G γ σ else 0) * ψ τ) =
      fullCostPhase G γ σ * ψ σ
  simp [ite_mul, Finset.sum_ite_eq', costLayer_apply_fullCostPhase]

/-- Left multiplication by a diagonal kernel selects its row phase. -/
theorem kernelComposition_diagonal_left
    (f : Configuration V → ℂ) (K : Kernel V)
    (σ τ : Configuration V) :
    kernelComposition (diagonalKernel f) K σ τ =
      f σ * K σ τ := by
  classical
  unfold kernelComposition diagonalKernel
  simp [ite_mul, Finset.sum_ite_eq']

/-- Right multiplication by a diagonal kernel selects its column phase. -/
theorem kernelComposition_diagonal_right
    (f : Configuration V → ℂ) (K : Kernel V)
    (σ τ : Configuration V) :
    kernelComposition K (diagonalKernel f) σ τ =
      K σ τ * f τ := by
  classical
  unfold kernelComposition diagonalKernel
  simp [mul_ite, Finset.sum_ite_eq']

/-- The whole-graph conjugation above is the actual two-sided matrix
    multiplication by the conjugate-phase kernel and the cost kernel. -/
theorem fullCostConjugate_eq_kernelComposition
    (G : SimpleEdgePresentation V) (γ : ℝ) (K : Kernel V) :
    fullCostConjugate G γ K =
      kernelComposition
        (diagonalKernel (fun σ => Complex.conj (fullCostPhase G γ σ)))
        (kernelComposition K (costKernel G γ)) := by
  funext σ τ
  rw [kernelComposition_diagonal_left,
      kernelComposition_diagonal_right]
  rfl

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOACostLayerCone
