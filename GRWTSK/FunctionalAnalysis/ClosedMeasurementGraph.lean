/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.InnerProductSpace.LinearPMap
import Mathlib.Tactic

/-!
# Closed energy graphs determined by bounded observations

The graph is constructed as an intersection of equalizers of continuous
linear observations. Its closedness is PROVED, rather than supplied as a
field. Complete input and energy spaces therefore give a complete graph.
If the energy restrictions jointly separate vectors, this graph is the
graph of the actual Mathlib partially defined closed linear operator.
A nonzero invisible energy vector is an explicit obstruction to that step.

The energy norm and every bounded quadratic perturbation have explicit
two-sided estimates in the complete graph norm. The intended consumer is
the fixed-window Weil translation-energy domain. To instantiate it there,
one must construct the actual bounded cutoff observations and prove their
joint separation and exact identification with the literal gamma integral.
Neither density of that operator domain nor its self-adjoint representation
is inferred from graph closedness alone.

This is a local closed-graph construction, not an adaptation of all of Kato's
representation theorem or KLMN. Source-proof candidate: elaboration, expected
signatures, fresh kernel replay, transitive axioms, independent review NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Filter Set
open scoped Topology

namespace GRWTSK.FunctionalAnalysis.ClosedMeasurementGraph

variable {𝕜 H E F ι : Type*} [RCLike 𝕜]
variable [NormedAddCommGroup H] [NormedSpace 𝕜 H]
variable [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable [NormedAddCommGroup F] [NormedSpace 𝕜 F]

/-- `A i` observes the input; `R i` is the corresponding bounded restriction
of its putative complete energy vector. All indices are retained. -/
def graph (A : ι → H →L[𝕜] F) (R : ι → E →L[𝕜] F) : Submodule 𝕜 (H × E) where
  carrier := {z | ∀ i, R i z.2 = A i z.1}
  zero_mem' := by intro i; simp
  add_mem' := by
    intro x y hx hy i
    change R i (x.2 + y.2) = A i (x.1 + y.1)
    rw [map_add, map_add, hx i, hy i]
  smul_mem' := by
    intro c x hx i
    change R i (c • x.2) = A i (c • x.1)
    rw [map_smul, map_smul, hx i]

/-- An arbitrary intersection is needed: finitely many restrictions alone
need not determine the complete energy. -/
theorem graph_isClosed (A : ι → H →L[𝕜] F) (R : ι → E →L[𝕜] F) :
    IsClosed (graph A R : Set (H × E)) := by
  have heq : (graph A R : Set (H × E)) =
      ⋂ i, {z : H × E | R i z.2 = A i z.1} := by
    ext z
    simp [graph]
  rw [heq]
  apply isClosed_iInter
  intro i
  exact isClosed_eq ((R i).continuous.comp continuous_snd)
    ((A i).continuous.comp continuous_fst)

instance graph_complete [CompleteSpace H] [CompleteSpace E]
    (A : ι → H →L[𝕜] F) (R : ι → E →L[𝕜] F) : CompleteSpace (graph A R) :=
  (graph_isClosed A R).completeSpace_coe

/-- A representation must retain enough observations to identify an energy
vector. This is not a positivity hypothesis. -/
def Separates (R : ι → E →L[𝕜] F) : Prop :=
  ∀ x y : E, (∀ i, R i x = R i y) → x = y

theorem input_injective (A : ι → H →L[𝕜] F) (R : ι → E →L[𝕜] F)
    (hR : Separates R) : Function.Injective (fun z : graph A R => z.val.1) := by
  intro x y hxy
  have he : x.val.2 = y.val.2 := hR _ _ (fun i =>
    (x.property i).trans ((congrArg (A i) hxy).trans (y.property i).symm))
  exact Subtype.ext (Prod.ext hxy he)

/-- Use Mathlib's graph-to-partial-operator construction, not a second
notion of unbounded operator. Its valid-graph condition is discharged below. -/
def operator (A : ι → H →L[𝕜] F) (R : ι → E →L[𝕜] F) : H →ₗ.[𝕜] E :=
  (graph A R).toLinearPMap

theorem operator_graph (A : ι → H →L[𝕜] F) (R : ι → E →L[𝕜] F)
    (hR : Separates R) : (operator A R).graph = graph A R := by
  apply Submodule.toLinearPMap_graph_eq
  intro z hz hzero
  apply hR
  intro i
  calc
    R i z.2 = A i z.1 := hz i
    _ = R i 0 := by simp [hzero]

theorem operator_isClosed (A : ι → H →L[𝕜] F) (R : ι → E →L[𝕜] F)
    (hR : Separates R) : (operator A R).IsClosed := by
  rw [LinearPMap.IsClosed, operator_graph A R hR]
  exact graph_isClosed A R

/-- The usual squared form norm, before a bounded perturbation. The
subtype uses the complete product max norm; the following estimates
show that this energy defines the same complete topology. -/
def graphEnergy {A : ι → H →L[𝕜] F} {R : ι → E →L[𝕜] F}
    (z : graph A R) : ℝ := ‖z.val.1‖ ^ 2 + ‖z.val.2‖ ^ 2

theorem norm_sq_le_graphEnergy {A : ι → H →L[𝕜] F} {R : ι → E →L[𝕜] F}
    (z : graph A R) : ‖z‖ ^ 2 ≤ graphEnergy z := by
  change (max ‖z.val.1‖ ‖z.val.2‖) ^ 2 ≤ ‖z.val.1‖ ^ 2 + ‖z.val.2‖ ^ 2
  rcases le_total ‖z.val.1‖ ‖z.val.2‖ with h | h
  · rw [max_eq_right h]
    nlinarith [sq_nonneg ‖z.val.1‖]
  · rw [max_eq_left h]
    nlinarith [sq_nonneg ‖z.val.2‖]

theorem graphEnergy_le_twice_norm_sq {A : ι → H →L[𝕜] F} {R : ι → E →L[𝕜] F}
    (z : graph A R) : graphEnergy z ≤ 2 * ‖z‖ ^ 2 := by
  change ‖z.val.1‖ ^ 2 + ‖z.val.2‖ ^ 2 ≤ 2 * (max ‖z.val.1‖ ‖z.val.2‖) ^ 2
  have h1 := le_max_left ‖z.val.1‖ ‖z.val.2‖
  have h2 := le_max_right ‖z.val.1‖ ‖z.val.2‖
  have hn1 := norm_nonneg z.val.1
  have hn2 := norm_nonneg z.val.2
  nlinarith

/-- Every Cauchy sequence of full input/energy pairs has a limit satisfying
ALL source observations, and convergence also holds in the squared form norm. -/
theorem exists_energy_limit [CompleteSpace H] [CompleteSpace E]
    (A : ι → H →L[𝕜] F) (R : ι → E →L[𝕜] F)
    (u : ℕ → graph A R) (hu : CauchySeq u) :
    ∃ z : graph A R, Tendsto u atTop (𝓝 z) ∧
      Tendsto (fun n => graphEnergy (u n - z)) atTop (𝓝 0) := by
  obtain ⟨z, hz⟩ := cauchySeq_tendsto_of_complete hu
  refine ⟨z, hz, ?_⟩
  have hc : Continuous (fun w : graph A R => graphEnergy w) := by
    unfold graphEnergy
    fun_prop
  have hsub : Tendsto (fun n => u n - z) atTop (𝓝 0) := by
    simpa using hz.sub tendsto_const_nhds
  simpa [graphEnergy] using hc.continuousAt.tendsto.comp hsub

/-- A bounded signed perturbation has an explicit equivalent positive form
norm. This comparison does not assert that the unshifted source is positive. -/
theorem bounded_perturbation_graph_bounds
    {A : ι → H →L[𝕜] F} {R : ι → E →L[𝕜] F}
    (b : H → ℝ) (C : ℝ) (hC : 0 ≤ C)
    (hb : ∀ x : H, |b x| ≤ C * ‖x‖ ^ 2) (z : graph A R) :
    graphEnergy z ≤ ‖z.val.2‖ ^ 2 + b z.val.1 + (C + 1) * ‖z.val.1‖ ^ 2 ∧
    ‖z.val.2‖ ^ 2 + b z.val.1 + (C + 1) * ‖z.val.1‖ ^ 2 ≤
      (2 * C + 1) * graphEnergy z := by
  obtain ⟨hlo, hhi⟩ := abs_le.mp (hb z.val.1)
  unfold graphEnergy
  constructor
  · linarith
  · nlinarith [sq_nonneg ‖z.val.2‖]

/-- An unseen nonzero energy vector makes the observation relation
multivalued over the zero input. It cannot define the intended operator. -/
theorem invisible_vector_obstruction
    (A : ι → H →L[𝕜] F) (R : ι → E →L[𝕜] F)
    (y : E) (hy : y ≠ 0) (hinvisible : ∀ i, R i y = 0) :
    ¬ Function.Injective (fun z : graph A R => z.val.1) := by
  intro hinj
  let z : graph A R := ⟨(0, y), by intro i; simpa using hinvisible i⟩
  have hz : z = 0 := hinj rfl
  have hzero : y = 0 := congrArg (fun w : graph A R => w.val.2) hz
  exact hy hzero

end GRWTSK.FunctionalAnalysis.ClosedMeasurementGraph
