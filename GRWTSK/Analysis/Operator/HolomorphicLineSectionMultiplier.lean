import GRWTSK.Analysis.Operator.HolomorphicLineSectionBounded
import GRWTSK.Analysis.Operator.HolomorphicLinePort
import Mathlib.Analysis.Complex.Norm

/-!
# Bounded holomorphic multipliers on the historical section spaces

The symbol is an actual holomorphic section with a pointwise uniform bound. The section
map is the historical chart-compatible multiplication operator, not a supplied bounded
quotient map. Its energy estimate constructs finite-energy closure and boundedness.
The original a.e. quotient, measure, metric and completion are retained. The bound need
not be optimal, and a nonconstant symbol need not act faithfully for a selected measure.
-/

namespace GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier

open MeasureTheory
open scoped ENNReal
open scoped GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicEvaluationTopology (constantSection coordinateSection)
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGauge
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGaugeMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionLinear
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionCompletion
open GRWTSK.Analysis.Operator.HolomorphicLinePort
open GRWTSK.Analysis.Operator.HolomorphicLineSectionBounded

universe u
noncomputable section
variable {ι : Type u} {D : IndexedDomainCover ι} {C E : Cocycle D}

/-- Holomorphy and a bound on the same scalar function; no operator is a field. -/
structure BoundedMultiplier (X : Domain) where
  symbol : HolomorphicSection X
  bound : ℝ≥0
  norm_le : ∀ x : X.carrier, ‖(symbol : Section X) x‖ ≤ (bound : ℝ)

namespace BoundedMultiplier

/-- Constant symbols have an explicit, possibly zero, bound. -/
def const (X : Domain) (c : ℂ) : BoundedMultiplier X where
  symbol := constantSection X c
  bound := ‖c‖₊
  norm_le _ := le_rfl

/-- Products carry the actual product symbol and a derived product bound. -/
def mul {X : Domain} (a b : BoundedMultiplier X) : BoundedMultiplier X where
  symbol := a.symbol * b.symbol
  bound := a.bound * b.bound
  norm_le x := by
    change ‖(a.symbol : Section X) x * (b.symbol : Section X) x‖ ≤
      (a.bound : ℝ) * (b.bound : ℝ)
    rw [norm_mul]
    exact mul_le_mul (a.norm_le x) (b.norm_le x) (norm_nonneg _) a.bound.2

end BoundedMultiplier

/-- Reuse the previously constructed chart multiplication and its holomorphy proof. -/
def sectionMultiply (f : HolomorphicSection D.X) (hOpen : D.IsOpenCover)
    (s : BundleSection C hOpen) : BundleSection C hOpen :=
  (CompatibleOperators.multiplication C f).mapSection hOpen
    (CompatibleOperators.multiplication_preservesHolomorphy f) s

@[simp] theorem sectionMultiply_value (f : HolomorphicSection D.X)
    (hOpen : D.IsOpenCover) (s : BundleSection C hOpen) (x : D.X.carrier) :
    (sectionMultiply f hOpen s).value x = (f : Section D.X) x • s.value x := rfl

/-- The intrinsic metric density scales by the squared norm of this very symbol. -/
theorem density_multiply (f : HolomorphicSection D.X) (M : MetricWeights C)
    (hOpen : D.IsOpenCover) (s : BundleSection C hOpen) (x : D.X.carrier) :
    density M hOpen (sectionMultiply f hOpen s) x =
      ENNReal.ofReal (Complex.normSq ((f : Section D.X) x)) * density M hOpen s x := by
  have h : M.squaredNorm hOpen x ((sectionMultiply f hOpen s).value x) =
      Complex.normSq ((f : Section D.X) x) * M.squaredNorm hOpen x (s.value x) := by
    change M.atPoint x * Complex.normSq ((f : Section D.X) x * s.value x) =
      Complex.normSq ((f : Section D.X) x) * (M.atPoint x * Complex.normSq (s.value x))
    rw [Complex.normSq_mul]
    ring
  unfold density
  rw [h, ENNReal.ofReal_mul (Complex.normSq_nonneg _)]

theorem density_multiply_le (b : BoundedMultiplier D.X) (M : MetricWeights C)
    (hOpen : D.IsOpenCover) (s : BundleSection C hOpen) (x : D.X.carrier) :
    density M hOpen (sectionMultiply b.symbol hOpen s) x ≤
      ENNReal.ofReal ((b.bound : ℝ) ^ 2) * density M hOpen s x := by
  rw [density_multiply]
  apply mul_le_mul_right'
  apply ENNReal.ofReal_le_ofReal
  rw [Complex.normSq_eq_norm_sq]
  exact (sq_le_sq₀ (norm_nonneg _) b.bound.2).mpr (b.norm_le x)

/-- Extended energy is bounded without a finite-total-mass premise. -/
theorem energy_multiply_le (b : BoundedMultiplier D.X) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (s : BundleSection C hOpen) :
    energy M μ hOpen (sectionMultiply b.symbol hOpen s) ≤
      ENNReal.ofReal ((b.bound : ℝ) ^ 2) * energy M μ hOpen s := by
  calc
    energy M μ hOpen (sectionMultiply b.symbol hOpen s) ≤
        ∫⁻ x, ENNReal.ofReal ((b.bound : ℝ) ^ 2) * density M hOpen s x ∂μ :=
      lintegral_mono (density_multiply_le b M hOpen s)
    _ = _ := lintegral_const_mul _ (density_measurable M hOpen s)

/-- Finite-energy membership is constructed from the bound, not requested as another field. -/
def finiteMultiply (b : BoundedMultiplier D.X) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (s : FiniteEnergySection M μ hOpen) :
    FiniteEnergySection M μ hOpen :=
  ⟨sectionMultiply b.symbol hOpen s.1, lt_of_le_of_lt (energy_multiply_le b M μ hOpen s.1)
    (ENNReal.mul_lt_top (by simp) s.2)⟩

theorem aeEqual_multiply (f : HolomorphicSection D.X) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) {s t : BundleSection C hOpen} (h : AEEqual μ hOpen s t) :
    AEEqual μ hOpen (sectionMultiply f hOpen s) (sectionMultiply f hOpen t) := by
  filter_upwards [h] with x hx
  exact congrArg (fun v : (C.vectorBundleCore hOpen).Fiber x => (f : Section D.X) x • v) hx

/-- Descend through the original finite-energy setoid, not through equality of energies. -/
def quotientMultiply (b : BoundedMultiplier D.X) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    SectionQuotient M μ hOpen → SectionQuotient M μ hOpen :=
  Quotient.lift (s := finiteEnergySetoid M μ hOpen)
    (fun s => classOf M μ hOpen (finiteMultiply b M μ hOpen s))
    (fun _ _ h => (classOf_eq_iff M μ hOpen _ _).mpr (aeEqual_multiply b.symbol μ hOpen h))

@[simp] theorem quotientMultiply_classOf (b : BoundedMultiplier D.X) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (s : FiniteEnergySection M μ hOpen) :
    quotientMultiply b M μ hOpen (classOf M μ hOpen s) =
      classOf M μ hOpen (finiteMultiply b M μ hOpen s) := rfl

/-- The linear map uses the existing quotient operations and pointwise distributivity. -/
def multiplierLinearMap (b : BoundedMultiplier D.X) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    SectionQuotient M μ hOpen →ₗ[ℂ] SectionQuotient M μ hOpen where
  toFun := quotientMultiply b M μ hOpen
  map_add' q r := by
    refine Quotient.inductionOn₂ q r ?_
    intro s t
    apply (classOf_eq_iff M μ hOpen _ _).mpr
    filter_upwards [] with x
    change (b.symbol : Section D.X) x * (s.1.value x + t.1.value x) =
      (b.symbol : Section D.X) x * s.1.value x + (b.symbol : Section D.X) x * t.1.value x
    exact mul_add _ _ _
  map_smul' c q := by
    refine Quotient.inductionOn q ?_
    intro s
    apply (classOf_eq_iff M μ hOpen _ _).mpr
    filter_upwards [] with x
    change (b.symbol : Section D.X) x * (c * s.1.value x) =
      c * ((b.symbol : Section D.X) x * s.1.value x)
    exact mul_left_comm _ _ _

theorem quotientEnergy_multiply_le (b : BoundedMultiplier D.X) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen) :
    quotientEnergy M μ hOpen (quotientMultiply b M μ hOpen q) ≤
      ENNReal.ofReal ((b.bound : ℝ) ^ 2) * quotientEnergy M μ hOpen q := by
  refine Quotient.inductionOn q ?_
  intro s
  exact energy_multiply_le b M μ hOpen s.1

/-- Real conversion is made only after proving the upper energy is finite. -/
theorem quotientMultiply_norm_le (b : BoundedMultiplier D.X) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen) :
    ‖quotientMultiply b M μ hOpen q‖ ≤ (b.bound : ℝ) * ‖q‖ := by
  have ht : ENNReal.ofReal ((b.bound : ℝ) ^ 2) * quotientEnergy M μ hOpen q < ∞ :=
    ENNReal.mul_lt_top (by simp) (quotientEnergy_lt_top M μ hOpen q)
  have hr := ENNReal.toReal_mono (ne_of_lt ht) (quotientEnergy_multiply_le b M μ hOpen q)
  rw [ENNReal.toReal_mul, ENNReal.toReal_ofReal (sq_nonneg _)] at hr
  apply (sq_le_sq₀ (norm_nonneg _) (mul_nonneg b.bound.2 (norm_nonneg q))).mp
  simpa only [mul_pow, norm_sq_eq_energy] using hr

/-- This bounded operator is produced from the symbol; boundedness is not supplied. -/
def quotientOperator (b : BoundedMultiplier D.X) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    SectionQuotient M μ hOpen →L[ℂ] SectionQuotient M μ hOpen :=
  (multiplierLinearMap b M μ hOpen).mkContinuous (b.bound : ℝ)
    (quotientMultiply_norm_le b M μ hOpen)

@[simp] theorem quotientOperator_classOf (b : BoundedMultiplier D.X) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (s : FiniteEnergySection M μ hOpen) :
    quotientOperator b M μ hOpen (classOf M μ hOpen s) =
      classOf M μ hOpen (finiteMultiply b M μ hOpen s) := rfl

theorem quotientOperator_norm_le (b : BoundedMultiplier D.X) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    ‖quotientOperator b M μ hOpen‖ ≤ (b.bound : ℝ) :=
  (quotientOperator b M μ hOpen).opNorm_le_bound b.bound.2 (quotientMultiply_norm_le b M μ hOpen)

/-- Different bound certificates, or symbols equal only a.e., produce the same operator. -/
theorem quotientOperator_congr_ae (a b : BoundedMultiplier D.X) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (h : ∀ᵐ x ∂μ, (a.symbol : Section D.X) x = (b.symbol : Section D.X) x) :
    quotientOperator a M μ hOpen = quotientOperator b M μ hOpen := by
  ext q
  refine Quotient.inductionOn q ?_
  intro s
  apply (classOf_eq_iff M μ hOpen _ _).mpr
  filter_upwards [h] with x hx
  change (a.symbol : Section D.X) x * s.1.value x = (b.symbol : Section D.X) x * s.1.value x
  rw [hx]

theorem quotientOperator_const (c : ℂ) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    quotientOperator (BoundedMultiplier.const D.X c) M μ hOpen =
      c • ContinuousLinearMap.id ℂ _ := by
  ext q
  refine Quotient.inductionOn q ?_
  intro s
  apply (classOf_eq_iff M μ hOpen _ _).mpr
  filter_upwards [] with x
  rfl

theorem quotientOperator_mul (a b : BoundedMultiplier D.X) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    quotientOperator (a.mul b) M μ hOpen =
      (quotientOperator a M μ hOpen).comp (quotientOperator b M μ hOpen) := by
  ext q
  refine Quotient.inductionOn q ?_
  intro s
  apply (classOf_eq_iff M μ hOpen _ _).mpr
  filter_upwards [] with x
  exact mul_assoc ((a.symbol : Section D.X) x) ((b.symbol : Section D.X) x) (s.1.value x)

/-- Multiplication commutes with the actual pointwise-linear gauge, not a new frame map. -/
theorem quotientOperator_gauge (b : BoundedMultiplier D.X) (G : Gauge C E)
    (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (q : SectionQuotient M μ hOpen) :
    gaugeEquiv G M μ hOpen (quotientOperator b M μ hOpen q) =
      quotientOperator b (transportMetric G M) μ hOpen (gaugeEquiv G M μ hOpen q) := by
  refine Quotient.inductionOn q ?_
  intro s
  apply (classOf_eq_iff (transportMetric G M) μ hOpen _ _).mpr
  filter_upwards [] with x
  change (G.bundleSectionEquiv hOpen (sectionMultiply b.symbol hOpen s.1)).value x =
    (sectionMultiply b.symbol hOpen (G.bundleSectionEquiv hOpen s.1)).value x
  simp only [Gauge.bundleSectionEquiv_value, sectionMultiply_value]
  exact (G.fiberEquiv hOpen x).map_smul ((b.symbol : Section D.X) x) (s.1.value x)

theorem multiplier_gaugeDefect_zero (b : BoundedMultiplier D.X) (G : Gauge C E)
    (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    gaugeDefect G M μ hOpen (quotientOperator b M μ hOpen)
      (quotientOperator b (transportMetric G M) μ hOpen) = 0 := by
  ext q
  exact sub_eq_zero.mpr (quotientOperator_gauge b G M μ hOpen q)

/-- Completion consumes the newly constructed bounded map, not a replacement supplier. -/
def completedOperator (b : BoundedMultiplier D.X) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    SectionCompletion M μ hOpen →L[ℂ] SectionCompletion M μ hOpen :=
  completeMap M M μ hOpen (quotientOperator b M μ hOpen)

@[simp] theorem completedOperator_toCompletion (b : BoundedMultiplier D.X) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (s : FiniteEnergySection M μ hOpen) :
    completedOperator b M μ hOpen (toCompletion M μ hOpen (classOf M μ hOpen s)) =
      toCompletion M μ hOpen (classOf M μ hOpen (finiteMultiply b M μ hOpen s)) :=
  completeMap_toCompletion M M μ hOpen _ _

theorem completedOperator_norm_le (b : BoundedMultiplier D.X) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    ‖completedOperator b M μ hOpen‖ ≤ (b.bound : ℝ) := by
  rw [completedOperator, completeMap_norm]
  exact quotientOperator_norm_le b M μ hOpen

theorem completedOperator_mul (a b : BoundedMultiplier D.X) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    completedOperator (a.mul b) M μ hOpen =
      (completedOperator a M μ hOpen).comp (completedOperator b M μ hOpen) := by
  simp only [completedOperator, quotientOperator_mul, completeMap_comp]

theorem completedOperator_gauge (b : BoundedMultiplier D.X) (G : Gauge C E)
    (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    completedOperator b (transportMetric G M) μ hOpen =
      gaugeConjugate G M μ hOpen (completedOperator b M μ hOpen) :=
  completed_conjugacy_of_defect_zero G M μ hOpen _ _ (multiplier_gaugeDefect_zero b G M μ hOpen)

/-- This is completed-adjoint covariance, not holomorphy of the conjugated scalar symbol. -/
theorem completedOperator_adjoint_gauge (b : BoundedMultiplier D.X) (G : Gauge C E)
    (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    ContinuousLinearMap.adjoint (completedOperator b (transportMetric G M) μ hOpen) =
      gaugeConjugate G M μ hOpen (ContinuousLinearMap.adjoint (completedOperator b M μ hOpen)) := by
  rw [completedOperator_gauge b G M μ hOpen, gaugeConjugate_adjoint]

namespace Fixtures

/-- A proper open complex domain; the coordinate symbol is bounded here, not on all of C. -/
def disk : Domain := ⟨{z : ℂ | ‖z‖ < 1}⟩

def diskCover : IndexedDomainCover PUnit where
  X := disk
  U _ := disk
  subset _ := Set.Subset.refl _
  cover _ hz := ⟨PUnit.unit, hz⟩

theorem diskCover_isOpen : diskCover.IsOpenCover :=
  ⟨fun _ => isOpen_lt continuous_norm continuous_const⟩

def diskCoordinate : BoundedMultiplier disk where
  symbol := coordinateSection disk
  bound := 1
  norm_le x := x.2.le

def center : disk.carrier := ⟨0, by change ‖(0 : ℂ)‖ < 1; norm_num⟩
def halfPoint : disk.carrier := ⟨(1 : ℂ) / 2, by change ‖(1 : ℂ) / 2‖ < 1; norm_num⟩

theorem diskCoordinate_nonconstant :
    ¬ ∃ c : ℂ, ∀ x : disk.carrier, (diskCoordinate.symbol : Section disk) x = c := by
  rintro ⟨c, hc⟩
  have h := (hc center).trans (hc halfPoint).symm
  change (0 : ℂ) = 1 / 2 at h
  norm_num at h

/-- A nonconstant, bounded symbol can act as zero for a nonzero probability measure. -/
theorem diskCoordinate_operator_zero :
    quotientOperator diskCoordinate (MetricWeights.identity diskCover)
      (Measure.dirac center) diskCover_isOpen = 0 := by
  calc
    quotientOperator diskCoordinate (MetricWeights.identity diskCover)
        (Measure.dirac center) diskCover_isOpen =
      quotientOperator (BoundedMultiplier.const disk 0) (MetricWeights.identity diskCover)
        (Measure.dirac center) diskCover_isOpen := by
      apply quotientOperator_congr_ae
      simp only [ae_dirac_eq]
      rfl
    _ = 0 := by rw [quotientOperator_const]; simp

/-- Hence the supplied bound 1 is not an exact operator-norm formula. -/
theorem diskCoordinate_norm_strict :
    ‖quotientOperator diskCoordinate (MetricWeights.identity diskCover)
      (Measure.dirac center) diskCover_isOpen‖ < (diskCoordinate.bound : ℝ) := by
  rw [diskCoordinate_operator_zero]
  change ‖(0 : SectionQuotient (MetricWeights.identity diskCover) (Measure.dirac center)
    diskCover_isOpen →L[ℂ] SectionQuotient (MetricWeights.identity diskCover)
      (Measure.dirac center) diskCover_isOpen)‖ < 1
  simp

/-- The same symbol acts nontrivially after changing only the support point. -/
theorem diskCoordinate_operator_ne_zero_at_half :
    quotientOperator diskCoordinate (MetricWeights.identity diskCover)
      (Measure.dirac halfPoint) diskCover_isOpen ≠ 0 := by
  intro h
  let M := MetricWeights.identity diskCover
  let s := diracFiniteSection M diskCover_isOpen
    (scalarSection diskCover diskCover_isOpen (constantSection disk 1)) halfPoint
  have he := congrArg (fun T : SectionQuotient M (Measure.dirac halfPoint) diskCover_isOpen →L[ℂ]
      SectionQuotient M (Measure.dirac halfPoint) diskCover_isOpen =>
        T (classOf M (Measure.dirac halfPoint) diskCover_isOpen s)) h
  change classOf M (Measure.dirac halfPoint) diskCover_isOpen
      (finiteMultiply diskCoordinate M (Measure.dirac halfPoint) diskCover_isOpen s) =
    classOf M (Measure.dirac halfPoint) diskCover_isOpen
      (finiteZero M (Measure.dirac halfPoint) diskCover_isOpen) at he
  have hv := (classOf_dirac_eq_iff M diskCover_isOpen halfPoint _ _).mp he
  change ((1 : ℂ) / 2) * 1 = 0 at hv
  norm_num at hv

end Fixtures
end
end GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier
