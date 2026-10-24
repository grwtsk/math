import GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaComplete
import Mathlib.Analysis.InnerProductSpace.Dual
import Mathlib.Analysis.InnerProductSpace.Adjoint

/-!
# Actual-area reproducing vectors and realized multiplier action

The old completion, measure, metric, inner product and holomorphic realization are retained.
Evaluation is the historical bounded extension, not a new supplied functional. Riesz supplies
its representing vector. The kernel is positive semidefinite; positive diagonal values require
nonzero evaluation, supplied here under finite total area. No ambient L2 model, explicit disk
kernel, general bundle metric, star-closed symbol algebra or differential domain is asserted.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaReproducing

open Filter Topology MeasureTheory
open scoped ENNReal BigOperators
open scoped GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionInnerProduct
open scoped GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierRepresentation.BoundedSymbol
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionCompletion
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaLocalUniform
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaComplete
open GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierRepresentation
open GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierArea
open GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierComplete (coveredDomain_isOpen)
open GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierCircle (CircleWindow)
open GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierCircleMixture
  (centeredWindow centeredWindow_center)

universe u
noncomputable section
variable {ι : Type u} {D : IndexedDomainCover ι}

/-- Only an abbreviation: the historical actual-area completion. -/
abbrev AreaCompletion (hOpen : D.IsOpenCover) :=
  SectionCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen

/-- Extend the old evaluation along the old canonical embedding. -/
def completedEvaluation (W : CircleWindow D.X) (hOpen : D.IsOpenCover) :
    AreaCompletion hOpen →L[ℂ] ℂ :=
  extendLinear (MetricWeights.identity D) (areaMeasure D.X) hOpen (functional W hOpen)

@[simp] theorem completedEvaluation_toCompletion (W : CircleWindow D.X)
    (hOpen : D.IsOpenCover) (q : AreaQuotient hOpen) :
    completedEvaluation W hOpen
      (toCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen q) =
        functional W hOpen q :=
  extendLinear_toCompletion _ _ _ _ q

/-- Agreement now holds on EVERY completed vector via the proved area-specific inverse. -/
theorem completedEvaluation_eq_value (W : CircleWindow D.X) (hOpen : D.IsOpenCover)
    (v : AreaCompletion hOpen) :
    completedEvaluation W hOpen v =
      (completedRealization hOpen v : Section D.X) W.centerPoint := by
  obtain ⟨q, rfl⟩ := toCompletion_surjective hOpen v
  rw [completedEvaluation_toCompletion, completedRealization_toCompletion]
  exact functional_eq_realization W hOpen q

theorem completedEvaluation_bound (W : CircleWindow D.X) (hOpen : D.IsOpenCover)
    (v : AreaCompletion hOpen) :
    ‖completedEvaluation W hOpen v‖ ≤ (Real.sqrt (Real.pi * W.radius ^ 2))⁻¹ * ‖v‖ := by
  obtain ⟨q, rfl⟩ := toCompletion_surjective hOpen v
  rw [completedEvaluation_toCompletion, toCompletion_norm]
  exact value_norm_bound W hOpen q

theorem completedEvaluation_norm_le (W : CircleWindow D.X) (hOpen : D.IsOpenCover) :
    ‖completedEvaluation W hOpen‖ ≤ (Real.sqrt (Real.pi * W.radius ^ 2))⁻¹ :=
  (completedEvaluation W hOpen).opNorm_le_bound
    (inv_nonneg.mpr (Real.sqrt_nonneg _)) (completedEvaluation_bound W hOpen)

/-- Changing an estimating window at one center does not change the extended functional. -/
theorem completedEvaluation_congr (W V : CircleWindow D.X) (hOpen : D.IsOpenCover)
    (h : W.centerPoint = V.centerPoint) :
    completedEvaluation W hOpen = completedEvaluation V hOpen := by
  ext v
  rw [completedEvaluation_eq_value, completedEvaluation_eq_value, h]

/-- The choice only provides an estimating disk; value and measure are fixed. -/
def evaluationAt (hOpen : D.IsOpenCover) (x : D.X.carrier) : AreaCompletion hOpen →L[ℂ] ℂ :=
  completedEvaluation (centeredWindow D.X (coveredDomain_isOpen D hOpen) x) hOpen

@[simp] theorem evaluationAt_eq_value (hOpen : D.IsOpenCover) (x : D.X.carrier)
    (v : AreaCompletion hOpen) :
    evaluationAt hOpen x v = (completedRealization hOpen v : Section D.X) x := by
  simpa only [evaluationAt, centeredWindow_center] using
    completedEvaluation_eq_value (centeredWindow D.X (coveredDomain_isOpen D hOpen) x) hOpen v

theorem evaluationAt_eq_completedEvaluation (W : CircleWindow D.X) (hOpen : D.IsOpenCover) :
    evaluationAt hOpen W.centerPoint = completedEvaluation W hOpen := by
  ext v
  rw [evaluationAt_eq_value, completedEvaluation_eq_value]

@[simp] theorem evaluationAt_toCompletion (hOpen : D.IsOpenCover) (x : D.X.carrier)
    (q : AreaQuotient hOpen) :
    evaluationAt hOpen x (toCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen q) =
      (realization hOpen q : Section D.X) x := by
  rw [evaluationAt_eq_value, completedRealization_toCompletion]

/-- The original quotient multiplier acts on the original realized holomorphic function. -/
theorem realization_multiplier (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X)
    (q : AreaQuotient hOpen) :
    realization hOpen (quotientRepresentation (MetricWeights.identity D) (areaMeasure D.X)
      hOpen f q) = f.1 * realization hOpen q := by
  refine Quotient.inductionOn q ?_
  intro s
  apply Subtype.ext
  funext x
  rfl

/-- No density-only substitution: area surjectivity binds the action on all completed vectors. -/
theorem completedRealization_multiplier (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X)
    (v : AreaCompletion hOpen) :
    completedRealization hOpen
      (completedRepresentation (MetricWeights.identity D) (areaMeasure D.X) hOpen f v) =
        f.1 * completedRealization hOpen v := by
  obtain ⟨q, rfl⟩ := toCompletion_surjective hOpen v
  rw [completedRepresentation_toCompletion, completedRealization_toCompletion,
    completedRealization_toCompletion]
  exact realization_multiplier hOpen f q

theorem evaluationAt_multiplier (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X)
    (x : D.X.carrier) (v : AreaCompletion hOpen) :
    evaluationAt hOpen x
      (completedRepresentation (MetricWeights.identity D) (areaMeasure D.X) hOpen f v) =
        f.value x * evaluationAt hOpen x v := by
  rw [evaluationAt_eq_value, completedRealization_multiplier, evaluationAt_eq_value]
  rfl

/-- Riesz constructs the vector from the actual functional using the completed inner product. -/
def kernelVector (hOpen : D.IsOpenCover) (x : D.X.carrier) : AreaCompletion hOpen :=
  (InnerProductSpace.toDual ℂ (AreaCompletion hOpen)).symm (evaluationAt hOpen x)

theorem kernelVector_evaluation (hOpen : D.IsOpenCover) (x : D.X.carrier)
    (v : AreaCompletion hOpen) :
    inner ℂ (kernelVector hOpen x) v = evaluationAt hOpen x v :=
  InnerProductSpace.toDual_symm_apply

theorem kernelVector_reproduces (hOpen : D.IsOpenCover) (x : D.X.carrier)
    (v : AreaCompletion hOpen) :
    inner ℂ (kernelVector hOpen x) v = (completedRealization hOpen v : Section D.X) x := by
  rw [kernelVector_evaluation, evaluationAt_eq_value]

/-- Equality against all vectors uniquely determines the same representing vector. -/
theorem kernelVector_unique (hOpen : D.IsOpenCover) (x : D.X.carrier)
    (k : AreaCompletion hOpen)
    (hk : ∀ v, inner ℂ k v = (completedRealization hOpen v : Section D.X) x) :
    k = kernelVector hOpen x :=
  ext_inner_right ℂ (fun v => (hk v).trans (kernelVector_reproduces hOpen x v).symm)

theorem kernelVector_norm (hOpen : D.IsOpenCover) (x : D.X.carrier) :
    ‖kernelVector hOpen x‖ = ‖evaluationAt hOpen x‖ :=
  (InnerProductSpace.toDual ℂ (AreaCompletion hOpen)).symm.norm_map _

/-- The representing vector realizes a finite-energy holomorphic section with the old energy. -/
theorem kernelVector_energy (hOpen : D.IsOpenCover) (x : D.X.carrier) :
    scalarEnergy hOpen (completedRealization hOpen (kernelVector hOpen x)) =
      ENNReal.ofReal (‖evaluationAt hOpen x‖ ^ 2) := by
  rw [completedRealization_energy, completionEnergy, kernelVector_norm]

/-- The variable order is K(z,w) = k_w(z) = inner(k_z,k_w). -/
def kernel (hOpen : D.IsOpenCover) (z w : D.X.carrier) : ℂ :=
  (completedRealization hOpen (kernelVector hOpen w) : Section D.X) z

theorem kernel_eq_inner (hOpen : D.IsOpenCover) (z w : D.X.carrier) :
    kernel hOpen z w = inner ℂ (kernelVector hOpen z) (kernelVector hOpen w) :=
  (kernelVector_reproduces hOpen z (kernelVector hOpen w)).symm

/-- Holomorphy is inherited from the SAME area-specific completed realization. -/
theorem kernel_holomorphic (hOpen : D.IsOpenCover) (w : D.X.carrier) :
    ExtendsHolomorphically D.X (fun z => kernel hOpen z w) :=
  (completedRealization hOpen (kernelVector hOpen w)).2

theorem kernel_conj_symm (hOpen : D.IsOpenCover) (z w : D.X.carrier) :
    star (kernel hOpen z w) = kernel hOpen w z := by
  rw [kernel_eq_inner, kernel_eq_inner]
  exact inner_conj_symm _ _

theorem kernel_diagonal (hOpen : D.IsOpenCover) (x : D.X.carrier) :
    kernel hOpen x x = (‖evaluationAt hOpen x‖ : ℂ) ^ 2 := by
  rw [kernel_eq_inner, inner_self_eq_norm_sq_to_K, kernelVector_norm]

theorem kernel_diagonal_bound (W : CircleWindow D.X) (hOpen : D.IsOpenCover) :
    (kernel hOpen W.centerPoint W.centerPoint).re ≤
      ((Real.sqrt (Real.pi * W.radius ^ 2))⁻¹) ^ 2 := by
  rw [kernel_diagonal, ← Complex.ofReal_pow, Complex.ofReal_re,
    evaluationAt_eq_completedEvaluation]
  exact (sq_le_sq₀ (norm_nonneg _) (inv_nonneg.mpr (Real.sqrt_nonneg _))).mpr
    (completedEvaluation_norm_le W hOpen)

/-- Positivity is a finite Gram identity, not an assumed positive-definiteness certificate. -/
theorem kernel_gram (hOpen : D.IsOpenCover) {κ : Type*} (S : Finset κ)
    (p : κ → D.X.carrier) (c : κ → ℂ) :
    (∑ i ∈ S, ∑ j ∈ S, star (c i) * c j * kernel hOpen (p i) (p j)) =
      inner ℂ (∑ i ∈ S, c i • kernelVector hOpen (p i))
        (∑ j ∈ S, c j • kernelVector hOpen (p j)) := by
  simp only [sum_inner, inner_sum, inner_smul_left, inner_smul_right,
    starRingEnd_apply, kernel_eq_inner, mul_assoc]

theorem kernel_gram_nonneg (hOpen : D.IsOpenCover) {κ : Type*} (S : Finset κ)
    (p : κ → D.X.carrier) (c : κ → ℂ) :
    0 ≤ (∑ i ∈ S, ∑ j ∈ S, star (c i) * c j * kernel hOpen (p i) (p j)).re := by
  rw [kernel_gram]
  exact inner_self_nonneg

/-- Finite area supplies nonzero OLD evaluation; composing through completion retains it. -/
theorem evaluationAt_ne_zero (hOpen : D.IsOpenCover)
    (hArea : (volume : Measure ℂ) D.X.carrier < ∞) (x : D.X.carrier) :
    evaluationAt hOpen x ≠ 0 := by
  intro h
  apply (finiteAreaPointPortAt hOpen hArea x).nonzero
  ext q
  refine Quotient.inductionOn q ?_
  intro s
  have he := congrArg (fun T : AreaCompletion hOpen →L[ℂ] ℂ =>
    T (toCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen
      (classOf (MetricWeights.identity D) (areaMeasure D.X) hOpen s))) h
  rw [evaluationAt_toCompletion, realization_classOf] at he
  exact ((finiteAreaPointPortAt hOpen hArea x).on_class s).trans he

theorem kernelVector_ne_zero (hOpen : D.IsOpenCover)
    (hArea : (volume : Measure ℂ) D.X.carrier < ∞) (x : D.X.carrier) :
    kernelVector hOpen x ≠ 0 := by
  intro h
  apply evaluationAt_ne_zero hOpen hArea x
  ext v
  rw [← kernelVector_evaluation, h, inner_zero_left]
  rfl

/-- Strict diagonal positivity is conditional; infinite-area trivial spaces are not excluded. -/
theorem kernel_diagonal_pos (hOpen : D.IsOpenCover)
    (hArea : (volume : Measure ℂ) D.X.carrier < ∞) (x : D.X.carrier) :
    0 < (kernel hOpen x x).re := by
  rw [kernel_eq_inner, inner_self_eq_norm_sq_to_K, ← Complex.ofReal_pow, Complex.ofReal_re]
  exact sq_pos_of_pos (norm_pos_iff.mpr (kernelVector_ne_zero hOpen hArea x))

/-- The actual Hilbert adjoint has the CONJUGATE symbol eigenvalue on each kernel vector. -/
theorem adjoint_multiplier_kernel (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X)
    (x : D.X.carrier) :
    (ContinuousLinearMap.adjoint
      (completedRepresentation (MetricWeights.identity D) (areaMeasure D.X) hOpen f))
        (kernelVector hOpen x) = star (f.value x) • kernelVector hOpen x := by
  apply ext_inner_right ℂ
  intro v
  rw [ContinuousLinearMap.adjoint_inner_left, kernelVector_evaluation,
    evaluationAt_multiplier, inner_smul_left, starRingEnd_apply, star_star,
    kernelVector_evaluation]

namespace Fixtures

/-- The imaginary scalar detects the conjugation convention on this SAME representation. -/
theorem phase_kernel (hOpen : D.IsOpenCover) (x : D.X.carrier) :
    (ContinuousLinearMap.adjoint (completedRepresentation (MetricWeights.identity D)
      (areaMeasure D.X) hOpen (BoundedSymbol.constants D.X Complex.I)))
        (kernelVector hOpen x) = (-Complex.I) • kernelVector hOpen x := by
  simpa using adjoint_multiplier_kernel hOpen (BoundedSymbol.constants D.X Complex.I) x

/-- The incorrect un-conjugated eigenvalue fails whenever the actual kernel vector is nonzero. -/
theorem phase_wrong_sign (hOpen : D.IsOpenCover)
    (hArea : (volume : Measure ℂ) D.X.carrier < ∞) (x : D.X.carrier) :
    (ContinuousLinearMap.adjoint (completedRepresentation (MetricWeights.identity D)
      (areaMeasure D.X) hOpen (BoundedSymbol.constants D.X Complex.I)))
        (kernelVector hOpen x) ≠ Complex.I • kernelVector hOpen x := by
  intro h
  rw [phase_kernel] at h
  have he := congrArg (evaluationAt hOpen x) h
  simp only [map_smul, smul_eq_mul, evaluationAt_eq_value] at he
  change (-Complex.I) * kernel hOpen x x = Complex.I * kernel hOpen x x at he
  have hk : kernel hOpen x x ≠ 0 := by
    intro hz
    have hp := kernel_diagonal_pos hOpen hArea x
    rw [hz, Complex.zero_re] at hp
    exact (lt_irrefl 0) hp
  have hI := mul_right_cancel₀ hk he
  have hIm := congrArg Complex.im hI
  norm_num at hIm

/-- A concrete proper-domain counterexample supplies its finite-area and point hypotheses. -/
theorem disk_phase_wrong_sign :
    let D := GRWTSK.Analysis.OperatorTheory.HolomorphicLineSectionMultiplier.Fixtures.diskCover
    let h := GRWTSK.Analysis.OperatorTheory.HolomorphicLineSectionMultiplier.Fixtures.diskCover_isOpen
    let x := GRWTSK.Analysis.OperatorTheory.HolomorphicLineSectionMultiplier.Fixtures.center
    (ContinuousLinearMap.adjoint (completedRepresentation (MetricWeights.identity D)
      (areaMeasure D.X) h (BoundedSymbol.constants D.X Complex.I)))
        (kernelVector h x) ≠ Complex.I • kernelVector h x :=
  phase_wrong_sign _ GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierArea.Fixtures.disk_finite_area _

/-- Empty Gram families have zero value; no phantom point or strict positivity is inserted. -/
theorem empty_gram (hOpen : D.IsOpenCover) {κ : Type*} (p : κ → D.X.carrier) (c : κ → ℂ) :
    (∑ i ∈ (∅ : Finset κ), ∑ j ∈ (∅ : Finset κ),
      star (c i) * c j * kernel hOpen (p i) (p j)) = 0 := by simp

end Fixtures
end
end GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaReproducing
