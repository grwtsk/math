import GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionCompletion
import Mathlib.Analysis.InnerProductSpace.Adjoint

/-!
# Bounded operators on section completions

Completion preserves the exact bounded map, its operator norm, composition and residuals.
The actual Hilbert adjoint is taken only on the completed carriers. A bounded adjoint
candidate on the original quotient is identified with it only through a proved pairing law.
No differential operator, unbounded domain or pointwise representative is introduced.
-/

namespace GRWTSK.Analysis.OperatorTheory.HolomorphicLineSectionBounded

open MeasureTheory
open scoped ENNReal
open scoped GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGauge
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGaugeMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionCompletion

universe u
noncomputable section
variable {ι : Type u} {D : IndexedDomainCover ι} {C E F : Cocycle D}

/-- Embed the actual bounded output, then extend along the actual dense input embedding. -/
def completeMap (M : MetricWeights C) (N : MetricWeights E)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient N μ hOpen) :
    SectionCompletion M μ hOpen →L[ℂ] SectionCompletion N μ hOpen :=
  extendLinear M μ hOpen ((toCompletion N μ hOpen).toContinuousLinearMap.comp A)

@[simp] theorem completeMap_toCompletion (M : MetricWeights C) (N : MetricWeights E)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient N μ hOpen)
    (q : SectionQuotient M μ hOpen) :
    completeMap M N μ hOpen A (toCompletion M μ hOpen q) =
      toCompletion N μ hOpen (A q) :=
  extendLinear_toCompletion M μ hOpen _ q

/-- Equality on every old class determines a continuous linear map on the completion. -/
theorem completedMap_ext (M : MetricWeights C) (N : MetricWeights E)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    {A B : SectionCompletion M μ hOpen →L[ℂ] SectionCompletion N μ hOpen}
    (h : ∀ q, A (toCompletion M μ hOpen q) = B (toCompletion M μ hOpen q)) : A = B := by
  have he := completion_ext M μ hOpen A.continuous B.continuous h
  ext x
  exact congrFun he x

/-- Neither a norm value nor a finite sample can replace the original bounded map. -/
theorem completeMap_injective (M : MetricWeights C) (N : MetricWeights E)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    Function.Injective (completeMap M N μ hOpen) := by
  intro A B h
  ext q
  apply toCompletion_injective N μ hOpen
  simpa only [completeMap_toCompletion] using
    congrArg (fun T : SectionCompletion M μ hOpen →L[ℂ] SectionCompletion N μ hOpen =>
      T (toCompletion M μ hOpen q)) h

@[simp] theorem completeMap_zero (M : MetricWeights C) (N : MetricWeights E)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    completeMap M N μ hOpen 0 = 0 := by
  apply completedMap_ext M N μ hOpen
  intro q
  simp

@[simp] theorem completeMap_add (M : MetricWeights C) (N : MetricWeights E)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (A B : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient N μ hOpen) :
    completeMap M N μ hOpen (A + B) =
      completeMap M N μ hOpen A + completeMap M N μ hOpen B := by
  apply completedMap_ext M N μ hOpen
  intro q
  simp

@[simp] theorem completeMap_sub (M : MetricWeights C) (N : MetricWeights E)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (A B : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient N μ hOpen) :
    completeMap M N μ hOpen (A - B) =
      completeMap M N μ hOpen A - completeMap M N μ hOpen B := by
  apply completedMap_ext M N μ hOpen
  intro q
  simp

@[simp] theorem completeMap_smul (M : MetricWeights C) (N : MetricWeights E)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (c : ℂ)
    (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient N μ hOpen) :
    completeMap M N μ hOpen (c • A) = c • completeMap M N μ hOpen A := by
  apply completedMap_ext M N μ hOpen
  intro q
  simp

@[simp] theorem completeMap_id (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    completeMap M M μ hOpen (ContinuousLinearMap.id ℂ _) =
      ContinuousLinearMap.id ℂ _ := by
  apply completedMap_ext M M μ hOpen
  intro q
  simp

/-- The exact middle metric and completion are retained, as is composition order. -/
@[simp] theorem completeMap_comp (M : MetricWeights C) (N : MetricWeights E)
    (P : MetricWeights F) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (B : SectionQuotient N μ hOpen →L[ℂ] SectionQuotient P μ hOpen)
    (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient N μ hOpen) :
    completeMap M P μ hOpen (B.comp A) =
      (completeMap N P μ hOpen B).comp (completeMap M N μ hOpen A) := by
  apply completedMap_ext M P μ hOpen
  intro q
  simp

/-- A bound on the dense original domain persists on every completed vector. -/
theorem completeMap_bound (M : MetricWeights C) (N : MetricWeights E)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient N μ hOpen)
    (x : SectionCompletion M μ hOpen) :
    ‖completeMap M N μ hOpen A x‖ ≤ ‖A‖ * ‖x‖ := by
  refine UniformSpace.Completion.induction_on x (isClosed_le (by fun_prop) (by fun_prop)) ?_
  intro q
  change ‖completeMap M N μ hOpen A (toCompletion M μ hOpen q)‖ ≤
    ‖A‖ * ‖toCompletion M μ hOpen q‖
  simpa only [completeMap_toCompletion, toCompletion_norm] using A.le_opNorm q

/-- Completion is isometric on bounded operators, including zero spaces. -/
theorem completeMap_norm (M : MetricWeights C) (N : MetricWeights E)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient N μ hOpen) :
    ‖completeMap M N μ hOpen A‖ = ‖A‖ := by
  apply le_antisymm
  · exact (completeMap M N μ hOpen A).opNorm_le_bound (norm_nonneg A)
      (completeMap_bound M N μ hOpen A)
  · apply A.opNorm_le_bound (norm_nonneg (completeMap M N μ hOpen A))
    intro q
    simpa only [completeMap_toCompletion, toCompletion_norm] using
      (completeMap M N μ hOpen A).le_opNorm (toCompletion M μ hOpen q)

/-- The original quotient gauge, without changing its measure or transported metric. -/
def quotientGaugeMap (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    SectionQuotient M μ hOpen →L[ℂ] SectionQuotient (transportMetric G M) μ hOpen :=
  (gaugeLinearIsometryEquiv G M μ hOpen).toLinearIsometry.toContinuousLinearMap

/-- The historical completed gauge, not a separately selected isometry. -/
def completionGaugeMap (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    SectionCompletion M μ hOpen →L[ℂ] SectionCompletion (transportMetric G M) μ hOpen :=
  (gaugeCompletionEquiv G M μ hOpen).toLinearIsometry.toContinuousLinearMap

@[simp] theorem completeMap_gauge (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    completeMap M (transportMetric G M) μ hOpen (quotientGaugeMap G M μ hOpen) =
      completionGaugeMap G M μ hOpen := by
  apply completedMap_ext M (transportMetric G M) μ hOpen
  intro q
  rw [completeMap_toCompletion]
  exact (gaugeCompletion_toCompletion G M μ hOpen q).symm

/-- Bounded operator residual on the original quotient, in its exact direction. -/
def gaugeDefect (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient M μ hOpen)
    (B : SectionQuotient (transportMetric G M) μ hOpen →L[ℂ]
      SectionQuotient (transportMetric G M) μ hOpen) :=
  (quotientGaugeMap G M μ hOpen).comp A - B.comp (quotientGaugeMap G M μ hOpen)

def completedGaugeDefect (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient M μ hOpen)
    (B : SectionQuotient (transportMetric G M) μ hOpen →L[ℂ]
      SectionQuotient (transportMetric G M) μ hOpen) :=
  (completionGaugeMap G M μ hOpen).comp (completeMap M M μ hOpen A) -
    (completeMap (transportMetric G M) (transportMetric G M) μ hOpen B).comp
      (completionGaugeMap G M μ hOpen)

theorem completeMap_gaugeDefect (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient M μ hOpen)
    (B : SectionQuotient (transportMetric G M) μ hOpen →L[ℂ]
      SectionQuotient (transportMetric G M) μ hOpen) :
    completeMap M (transportMetric G M) μ hOpen (gaugeDefect G M μ hOpen A B) =
      completedGaugeDefect G M μ hOpen A B := by
  simp only [gaugeDefect, completedGaugeDefect, completeMap_sub, completeMap_comp,
    completeMap_gauge]

/-- A nonzero bounded residual cannot vanish or lose norm merely through completion. -/
theorem completedGaugeDefect_norm (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient M μ hOpen)
    (B : SectionQuotient (transportMetric G M) μ hOpen →L[ℂ]
      SectionQuotient (transportMetric G M) μ hOpen) :
    ‖completedGaugeDefect G M μ hOpen A B‖ = ‖gaugeDefect G M μ hOpen A B‖ := by
  rw [← completeMap_gaugeDefect, completeMap_norm]

theorem completedGaugeDefect_eq_zero_iff (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient M μ hOpen)
    (B : SectionQuotient (transportMetric G M) μ hOpen →L[ℂ]
      SectionQuotient (transportMetric G M) μ hOpen) :
    completedGaugeDefect G M μ hOpen A B = 0 ↔ gaugeDefect G M μ hOpen A B = 0 := by
  rw [← norm_eq_zero, completedGaugeDefect_norm, norm_eq_zero]

/-- An adjoint candidate must be bounded on the original quotient and satisfy its pairing law. -/
theorem completeMap_adjoint_of_pairing (M : MetricWeights C) (N : MetricWeights E)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient N μ hOpen)
    (S : SectionQuotient N μ hOpen →L[ℂ] SectionQuotient M μ hOpen)
    (h : ∀ x y, inner ℂ (S y) x = inner ℂ y (A x)) :
    completeMap N M μ hOpen S = ContinuousLinearMap.adjoint (completeMap M N μ hOpen A) := by
  apply (ContinuousLinearMap.eq_adjoint_iff _ _).mpr
  intro y x
  refine UniformSpace.Completion.induction_on₂ y x
    (isClosed_eq (by fun_prop) (by fun_prop)) ?_
  intro q r
  change inner ℂ (completeMap N M μ hOpen S (toCompletion N μ hOpen q))
      (toCompletion M μ hOpen r) =
    inner ℂ (toCompletion N μ hOpen q)
      (completeMap M N μ hOpen A (toCompletion M μ hOpen r))
  simpa only [completeMap_toCompletion, toCompletion_inner] using h r q

/-- Conjugation of any actual bounded operator on the completed source space. -/
def gaugeConjugate (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (A : SectionCompletion M μ hOpen →L[ℂ] SectionCompletion M μ hOpen) :
    SectionCompletion (transportMetric G M) μ hOpen →L[ℂ]
      SectionCompletion (transportMetric G M) μ hOpen :=
  (completionGaugeMap G M μ hOpen).comp
    (A.comp (gaugeCompletionEquiv G M μ hOpen).symm.toLinearIsometry.toContinuousLinearMap)

@[simp] theorem gaugeConjugate_apply (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (A : SectionCompletion M μ hOpen →L[ℂ] SectionCompletion M μ hOpen)
    (y : SectionCompletion (transportMetric G M) μ hOpen) :
    gaugeConjugate G M μ hOpen A y =
      gaugeCompletionEquiv G M μ hOpen (A ((gaugeCompletionEquiv G M μ hOpen).symm y)) := rfl

/-- Adjoint covariance uses the constructed unitary between the two completed metrics. -/
theorem gaugeConjugate_adjoint (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (A : SectionCompletion M μ hOpen →L[ℂ] SectionCompletion M μ hOpen) :
    ContinuousLinearMap.adjoint (gaugeConjugate G M μ hOpen A) =
      gaugeConjugate G M μ hOpen (ContinuousLinearMap.adjoint A) := by
  symm
  apply (ContinuousLinearMap.eq_adjoint_iff _ _).mpr
  intro x y
  let U := gaugeCompletionEquiv G M μ hOpen
  change inner ℂ (U (ContinuousLinearMap.adjoint A (U.symm x))) y =
    inner ℂ x (U (A (U.symm y)))
  rw [U.inner_map_eq_flip, ContinuousLinearMap.adjoint_inner_left]
  simpa only [U.apply_symm_apply] using
    (U.inner_map_map (U.symm x) (A (U.symm y))).symm

/-- The zero source residual identifies the completed target with this exact conjugate. -/
theorem completed_conjugacy_of_defect_zero (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient M μ hOpen)
    (B : SectionQuotient (transportMetric G M) μ hOpen →L[ℂ]
      SectionQuotient (transportMetric G M) μ hOpen)
    (h : gaugeDefect G M μ hOpen A B = 0) :
    completeMap (transportMetric G M) (transportMetric G M) μ hOpen B =
      gaugeConjugate G M μ hOpen (completeMap M M μ hOpen A) := by
  have hd := (completedGaugeDefect_eq_zero_iff G M μ hOpen A B).mpr h
  ext y
  let U := gaugeCompletionEquiv G M μ hOpen
  have hv := congrArg (fun T : SectionCompletion M μ hOpen →L[ℂ]
      SectionCompletion (transportMetric G M) μ hOpen => T (U.symm y)) hd
  change U (completeMap M M μ hOpen A (U.symm y)) -
    completeMap (transportMetric G M) (transportMetric G M) μ hOpen B
      (U (U.symm y)) = 0 at hv
  rw [U.apply_symm_apply] at hv
  exact (sub_eq_zero.mp hv).symm

/-- Exact quotient intertwining also binds the actual completed adjoints. -/
theorem completed_adjoint_of_defect_zero (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient M μ hOpen)
    (B : SectionQuotient (transportMetric G M) μ hOpen →L[ℂ]
      SectionQuotient (transportMetric G M) μ hOpen)
    (h : gaugeDefect G M μ hOpen A B = 0) :
    ContinuousLinearMap.adjoint
        (completeMap (transportMetric G M) (transportMetric G M) μ hOpen B) =
      gaugeConjugate G M μ hOpen (ContinuousLinearMap.adjoint (completeMap M M μ hOpen A)) := by
  rw [completed_conjugacy_of_defect_zero G M μ hOpen A B h, gaugeConjugate_adjoint]

namespace Fixtures

open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle.Fixtures
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionEnergy.Fixtures
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionCompletion.Fixtures

abbrev DiracSpace := SectionCompletion (MetricWeights.identity twoCharts)
  (Measure.dirac zeroPoint) twoCharts_isOpen

theorem diracUnit_ne_zero : (diracVector 1 : DiracSpace) ≠ 0 := by
  intro h
  have hp := completed_imaginary_pairing
  rw [h, inner_zero_left] at hp
  exact Complex.I_ne_zero hp.symm

/-- The completion-of-identity theorem cannot be replaced by an always-zero extension. -/
theorem completedIdentity_ne_zero :
    (ContinuousLinearMap.id ℂ DiracSpace) ≠ 0 := by
  intro h
  have he := congrArg (fun T : DiracSpace →L[ℂ] DiracSpace => T (diracVector 1)) h
  exact diracUnit_ne_zero (by simpa using he)

def phaseOperator : DiracSpace →L[ℂ] DiracSpace :=
  Complex.I • ContinuousLinearMap.id ℂ DiracSpace

/-- The phase example is the completion of the existing quotient's scalar action. -/
theorem phase_is_completed_scalar :
    completeMap (MetricWeights.identity twoCharts) (MetricWeights.identity twoCharts)
        (Measure.dirac zeroPoint) twoCharts_isOpen
        (Complex.I • ContinuousLinearMap.id ℂ _) = phaseOperator := by
  rw [completeMap_smul, completeMap_id]
  rfl

/-- Holomorphic constant multiplication does not imply a self-adjoint section operator. -/
theorem phase_adjoint : ContinuousLinearMap.adjoint phaseOperator =
    (-Complex.I) • ContinuousLinearMap.id ℂ DiracSpace := by
  symm
  apply (ContinuousLinearMap.eq_adjoint_iff _ _).mpr
  intro x y
  simp [phaseOperator, inner_smul_left, inner_smul_right]

theorem phase_not_self_adjoint : ContinuousLinearMap.adjoint phaseOperator ≠ phaseOperator := by
  intro h
  rw [phase_adjoint] at h
  have he := congrArg (fun T : DiracSpace →L[ℂ] DiracSpace => T (diracVector 1)) h
  change (-Complex.I) • diracVector 1 = Complex.I • diracVector 1 at he
  have he' := congrArg (fun v : DiracSpace => Complex.I • v) he
  have hleft : Complex.I * (-Complex.I) = (1 : ℂ) := by
    rw [mul_neg, ← pow_two, Complex.I_sq, neg_neg]
  have hright : Complex.I * Complex.I = (-1 : ℂ) := by rw [← pow_two, Complex.I_sq]
  simp only [smul_smul, hleft, hright, one_smul, neg_one_smul] at he'
  have hsum : diracVector 1 + diracVector 1 = (0 : DiracSpace) :=
    (congrArg (fun v : DiracSpace => diracVector 1 + v) he').trans (add_neg_cancel _)
  have htwo : (2 : ℂ) • (diracVector 1 : DiracSpace) = 0 := by
    simpa only [two_smul] using hsum
  exact diracUnit_ne_zero ((smul_eq_zero.mp htwo).resolve_left (by norm_num))

end Fixtures
end
end GRWTSK.Analysis.OperatorTheory.HolomorphicLineSectionBounded
