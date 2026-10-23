import GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle

/-!
# Measure domination and exact transfer of section evaluations

`MeasureDomination μ ν` has orientation `ν ≤ K • μ`, hence maps finite-energy
sections and their historical quotients from μ to ν. It does not identify the
measures or assert injectivity. Numerical bounds are witnesses for the same map.
A nonzero evaluation transfers only with an actual nonvanishing source section.
-/

namespace GRWTSK.Analysis.Operator.HolomorphicSectionMeasureTransfer

open Filter Topology MeasureTheory
open scoped ENNReal
open scoped GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open scoped GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.BoundedSymbol
open scoped GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.Complex.HolomorphicLineSectionLinear
open GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation
open GRWTSK.Analysis.Operator.HolomorphicMultiplierNorming
open GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle

universe u
noncomputable section
variable {ι : Type u} {D : IndexedDomainCover ι} {C : Cocycle D}

/-- Finite domination data only; no quotient map or analytic estimate is assumed. -/
structure MeasureDomination (μ ν : Measure D.X.carrier) where
  bound : ℝ≥0
  dominated : ν ≤ bound • μ

namespace MeasureDomination

variable {μ ν λ : Measure D.X.carrier}

/-- Identity and composition retain the actual intermediate measure. -/
def refl (μ : Measure D.X.carrier) : MeasureDomination (D := D) μ μ where
  bound := 1
  dominated := by simp

def comp (A : MeasureDomination (D := D) μ ν) (B : MeasureDomination (D := D) ν λ) :
    MeasureDomination (D := D) μ λ where
  bound := B.bound * A.bound
  dominated := by
    intro s
    calc
      λ s ≤ (B.bound • ν) s := B.dominated s
      _ ≤ (B.bound • (A.bound • μ)) s := by
        simpa only [Measure.smul_apply, smul_eq_mul] using
          mul_le_mul_left' (A.dominated s) (B.bound : ℝ≥0∞)
      _ = ((B.bound * A.bound) • μ) s := by rw [smul_smul]

/-- A positive weighted lower bound yields domination in the direction needed for restriction. -/
def ofPositiveWeight (w : ℝ≥0) (hw : 0 < w) (h : w • ν ≤ μ) :
    MeasureDomination (D := D) μ ν where
  bound := w⁻¹
  dominated := by
    intro s
    have hh := mul_le_mul_left' (h s) ((w⁻¹ : ℝ≥0) : ℝ≥0∞)
    simpa only [Measure.smul_apply, smul_eq_mul, ← mul_assoc, ← ENNReal.coe_mul,
      inv_mul_cancel₀ (ne_of_gt hw), ENNReal.coe_one, one_mul] using hh

/-- Domination transfers null-set statements, not point values outside their support. -/
theorem ae_transfer (A : MeasureDomination (D := D) μ ν) {p : D.X.carrier → Prop}
    (h : ∀ᵐ x ∂μ, p x) : ∀ᵐ x ∂ν, p x := by
  apply ae_iff.mpr
  have hz : (A.bound • μ) {x | ¬ p x} = 0 := by
    rw [Measure.smul_apply, ae_iff.mp h, smul_zero]
  exact le_antisymm ((A.dominated _).trans_eq hz) bot_le

/-- The density and metric stay fixed while only the measure changes. -/
theorem energy_le (A : MeasureDomination (D := D) μ ν) (M : MetricWeights C)
    (hOpen : D.IsOpenCover) (s : BundleSection C hOpen) :
    energy M ν hOpen s ≤ (A.bound : ℝ≥0∞) * energy M μ hOpen s := by
  have h := lintegral_mono' A.dominated (le_refl (density M hOpen s))
  rw [lintegral_smul_measure] at h
  simpa only [energy, smul_eq_mul] using h

/-- The underlying section is unchanged; finite membership is derived. -/
def finiteRestrict (A : MeasureDomination (D := D) μ ν) (M : MetricWeights C)
    (hOpen : D.IsOpenCover) (s : FiniteEnergySection M μ hOpen) :
    FiniteEnergySection M ν hOpen :=
  ⟨s.1, lt_of_le_of_lt (A.energy_le M hOpen s.1)
    (ENNReal.mul_lt_top (by simp) s.2)⟩

/-- Lift through the original a.e. setoids at both measures. -/
def quotientRestrict (A : MeasureDomination (D := D) μ ν) (M : MetricWeights C)
    (hOpen : D.IsOpenCover) : SectionQuotient M μ hOpen → SectionQuotient M ν hOpen :=
  Quotient.lift (s := finiteEnergySetoid M μ hOpen)
    (fun s => classOf M ν hOpen (A.finiteRestrict M hOpen s))
    (fun _ _ h => (classOf_eq_iff M ν hOpen _ _).mpr (A.ae_transfer h))

@[simp] theorem quotientRestrict_classOf (A : MeasureDomination (D := D) μ ν)
    (M : MetricWeights C) (hOpen : D.IsOpenCover) (s : FiniteEnergySection M μ hOpen) :
    A.quotientRestrict M hOpen (classOf M μ hOpen s) =
      classOf M ν hOpen (A.finiteRestrict M hOpen s) := rfl

/-- Conversion to real energy occurs only after the finite upper bound is established. -/
theorem quotientRestrict_norm_le (A : MeasureDomination (D := D) μ ν)
    (M : MetricWeights C) (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen) :
    ‖A.quotientRestrict M hOpen q‖ ≤ Real.sqrt (A.bound : ℝ) * ‖q‖ := by
  refine Quotient.inductionOn q ?_
  intro s
  have ht : (A.bound : ℝ≥0∞) * energy M μ hOpen s.1 < ∞ :=
    ENNReal.mul_lt_top (by simp) s.2
  have he := ENNReal.toReal_mono (ne_of_lt ht) (A.energy_le M hOpen s.1)
  rw [ENNReal.toReal_mul, ENNReal.coe_toReal] at he
  apply (sq_le_sq₀ (norm_nonneg _)
    (mul_nonneg (Real.sqrt_nonneg _) (norm_nonneg _))).mp
  simpa only [mul_pow, Real.sq_sqrt A.bound.2, norm_sq_eq_energy,
    quotientRestrict_classOf, quotientEnergy_classOf, finiteRestrict] using he

/-- A bounded map constructed from measure data, with the historical quotient operations. -/
def restrictionCLM (A : MeasureDomination (D := D) μ ν) (M : MetricWeights C)
    (hOpen : D.IsOpenCover) : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient M ν hOpen :=
  ({ toFun := A.quotientRestrict M hOpen
     map_add' := by
       intro q r
       refine Quotient.inductionOn₂ q r ?_
       intro s t
       apply (classOf_eq_iff M ν hOpen _ _).mpr
       filter_upwards [] with x
       rfl
     map_smul' := by
       intro c q
       refine Quotient.inductionOn q ?_
       intro s
       apply (classOf_eq_iff M ν hOpen _ _).mpr
       filter_upwards [] with x
       rfl } : SectionQuotient M μ hOpen →ₗ[ℂ] SectionQuotient M ν hOpen).mkContinuous
    (Real.sqrt (A.bound : ℝ)) (A.quotientRestrict_norm_le M hOpen)

@[simp] theorem restrictionCLM_classOf (A : MeasureDomination (D := D) μ ν)
    (M : MetricWeights C) (hOpen : D.IsOpenCover) (s : FiniteEnergySection M μ hOpen) :
    A.restrictionCLM M hOpen (classOf M μ hOpen s) =
      classOf M ν hOpen (A.finiteRestrict M hOpen s) := rfl

theorem restrictionCLM_norm_le (A : MeasureDomination (D := D) μ ν)
    (M : MetricWeights C) (hOpen : D.IsOpenCover) :
    ‖A.restrictionCLM M hOpen‖ ≤ Real.sqrt (A.bound : ℝ) :=
  (A.restrictionCLM M hOpen).opNorm_le_bound (Real.sqrt_nonneg _)
    (A.quotientRestrict_norm_le M hOpen)

/-- Bound witnesses cannot alter the underlying restriction. -/
theorem restrictionCLM_congr (A B : MeasureDomination (D := D) μ ν)
    (M : MetricWeights C) (hOpen : D.IsOpenCover) :
    A.restrictionCLM M hOpen = B.restrictionCLM M hOpen := by
  ext q
  refine Quotient.inductionOn q ?_
  intro s
  rfl

theorem restrictionCLM_refl (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) :
    (refl μ).restrictionCLM M hOpen = ContinuousLinearMap.id ℂ _ := by
  ext q
  refine Quotient.inductionOn q ?_
  intro s
  rfl

theorem restrictionCLM_comp (A : MeasureDomination (D := D) μ ν)
    (B : MeasureDomination (D := D) ν λ) (M : MetricWeights C) (hOpen : D.IsOpenCover) :
    (A.comp B).restrictionCLM M hOpen =
      (B.restrictionCLM M hOpen).comp (A.restrictionCLM M hOpen) := by
  ext q
  refine Quotient.inductionOn q ?_
  intro s
  rfl

/-- Both multiplier actions retain the same symbol, metric and underlying section. -/
theorem restrictionCLM_multiplier (A : MeasureDomination (D := D) μ ν)
    (M : MetricWeights C) (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X) :
    (A.restrictionCLM M hOpen).comp (quotientRepresentation M μ hOpen f) =
      (quotientRepresentation M ν hOpen f).comp (A.restrictionCLM M hOpen) := by
  ext q
  refine Quotient.inductionOn q ?_
  intro s
  apply (classOf_eq_iff M ν hOpen _ _).mpr
  filter_upwards [] with x
  rfl

/-- Nonzero evaluation is retained only when a source section detects this point. -/
def pullPointPort (A : MeasureDomination (D := D) μ ν) (M : MetricWeights C)
    (hOpen : D.IsOpenCover) {x : D.X.carrier} (P : PointEvaluationPort M ν hOpen x)
    (s : FiniteEnergySection M μ hOpen) (hs : s.1.value x ≠ 0) :
    PointEvaluationPort M μ hOpen x where
  functional := P.functional.comp (A.restrictionCLM M hOpen)
  on_class t := P.on_class (A.finiteRestrict M hOpen t)
  nonzero := by
    intro h
    have he := congrArg (fun T : SectionQuotient M μ hOpen →L[ℂ] ℂ =>
      T (classOf M μ hOpen s)) h
    change P.functional (A.restrictionCLM M hOpen (classOf M μ hOpen s)) = 0 at he
    rw [restrictionCLM_classOf, P.on_class] at he
    exact hs he

/-- For the identity bundle, finite mass supplies the actual unit-section detector. -/
def circlePointPort (W : CircleWindow D.X) (A : MeasureDomination (D := D) μ W.measure)
    (hOpen : D.IsOpenCover) (hμ : μ Set.univ < ∞) :
    PointEvaluationPort (MetricWeights.identity D) μ hOpen W.centerPoint :=
  A.pullPointPort (MetricWeights.identity D) hOpen (W.pointPort hOpen)
    (finiteUnit D μ hOpen hμ) (by change (1 : ℂ) ≠ 0; exact one_ne_zero)

theorem circlePointPort_norm_le (W : CircleWindow D.X)
    (A : MeasureDomination (D := D) μ W.measure) (hOpen : D.IsOpenCover)
    (hμ : μ Set.univ < ∞) :
    ‖(circlePointPort W A hOpen hμ).functional‖ ≤ Real.sqrt (A.bound : ℝ) := by
  change ‖(W.functional hOpen).comp (A.restrictionCLM (MetricWeights.identity D) hOpen)‖ ≤ _
  calc
    _ ≤ ‖W.functional hOpen‖ * ‖A.restrictionCLM (MetricWeights.identity D) hOpen‖ :=
      (W.functional hOpen).opNorm_comp_le _
    _ ≤ _ := by rw [W.functional_norm, one_mul]; exact A.restrictionCLM_norm_le _ _

/-- A zero source measure cannot dominate a probability circle by any finite constant. -/
theorem no_circle_from_zero (W : CircleWindow D.X) :
    ¬ Nonempty (MeasureDomination (D := D) (0 : Measure D.X.carrier) W.measure) := by
  rintro ⟨A⟩
  have h := A.dominated Set.univ
  simpa [W.measure_univ] using h

end MeasureDomination
end
end GRWTSK.Analysis.Operator.HolomorphicSectionMeasureTransfer
