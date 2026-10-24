import GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionPairing
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Normed.Operator.LinearIsometry

/-!
# Inner-product structure on the historical finite-energy section quotient

The scoped instances below bundle the existing operations and positive-definite Hermitian
pairing. They neither change the carrier or a.e. relation nor impose a preferred representative.
The norm is constructed from that pairing. No completeness, ambient L2 identification,
pointwise separation, or section-space operator domain is asserted.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionInnerProduct

open MeasureTheory
open scoped ENNReal
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGauge
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGaugeMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionLinear
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionPairing

universe u
noncomputable section
variable {ι : Type u} {D : IndexedDomainCover ι} {C E : Cocycle D}

/-- Every group field uses an existing operation and its separately proved law. -/
scoped instance quotientAddCommGroup (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) : AddCommGroup (SectionQuotient M μ hOpen) where
  add := quotientAdd M μ hOpen
  zero := quotientZero M μ hOpen
  neg := quotientSMul M μ hOpen (-1)
  add_assoc := quotientAdd_assoc M μ hOpen
  zero_add := quotientZero_add M μ hOpen
  add_zero := quotientAdd_zero M μ hOpen
  neg_add_cancel := quotientNeg_add M μ hOpen
  add_comm := quotientAdd_comm M μ hOpen
  nsmul := nsmulRec
  zsmul := zsmulRec

/-- The complex action is the old quotient lift, not a transported replacement action. -/
scoped instance quotientModule (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) : Module ℂ (SectionQuotient M μ hOpen) where
  smul := quotientSMul M μ hOpen
  one_smul := quotientSMul_one M μ hOpen
  mul_smul := quotientSMul_mul M μ hOpen
  smul_add := quotientSMul_add M μ hOpen
  smul_zero := quotientSMul_zero M μ hOpen
  add_smul := quotientAdd_smul M μ hOpen
  zero_smul := quotientZero_smul M μ hOpen

/-- A named core with all fields supplied by the preceding pairing proofs. -/
def quotientInnerCore (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) : InnerProductSpace.Core ℂ (SectionQuotient M μ hOpen) where
  inner := quotientPairing M μ hOpen
  conj_inner_symm q r := quotientPairing_conj M μ hOpen r q
  re_inner_nonneg := quotientPairing_self_nonneg M μ hOpen
  add_left := quotientPairing_add_left M μ hOpen
  smul_left q r c := quotientPairing_smul_left M μ hOpen c q r
  definite q h := (quotientPairing_self_eq_zero_iff M μ hOpen q).mp h

/-- The norm and metric are induced by the named core, not chosen independently. -/
scoped instance quotientNormedAddCommGroup (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) : NormedAddCommGroup (SectionQuotient M μ hOpen) :=
  InnerProductSpace.Core.toNormedAddCommGroup (cd := quotientInnerCore M μ hOpen)

/-- Mathlib's inner-product structure uses the very same core and induced norm. -/
scoped instance quotientInnerProductSpace (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) : InnerProductSpace ℂ (SectionQuotient M μ hOpen) :=
  InnerProductSpace.ofCore (quotientInnerCore M μ hOpen).toPreInnerProductSpaceCore

@[simp] theorem zero_eq_operation (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) : (0 : SectionQuotient M μ hOpen) = quotientZero M μ hOpen := rfl

@[simp] theorem add_eq_operation (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q r : SectionQuotient M μ hOpen) :
    q + r = quotientAdd M μ hOpen q r := rfl

@[simp] theorem neg_eq_operation (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen) :
    -q = quotientSMul M μ hOpen (-1) q := rfl

@[simp] theorem smul_eq_operation (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (c : ℂ) (q : SectionQuotient M μ hOpen) :
    c • q = quotientSMul M μ hOpen c q := rfl

@[simp] theorem sub_eq_operations (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q r : SectionQuotient M μ hOpen) :
    q - r = quotientAdd M μ hOpen q (quotientSMul M μ hOpen (-1) r) := rfl

@[simp] theorem inner_eq_pairing (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q r : SectionQuotient M μ hOpen) :
    inner ℂ q r = quotientPairing M μ hOpen q r := rfl

@[simp] theorem inner_classOf (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s t : FiniteEnergySection M μ hOpen) :
    inner ℂ (classOf M μ hOpen s) (classOf M μ hOpen t) =
      sectionPairing M μ hOpen s t := rfl

/-- The norm is the square root of the original, finite quotient energy. -/
theorem norm_eq_sqrt_energy (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen) :
    ‖q‖ = Real.sqrt ((quotientEnergy M μ hOpen q).toReal) := by
  change Real.sqrt (quotientPairing M μ hOpen q q).re = _
  exact congrArg Real.sqrt (congrArg Complex.re (quotientPairing_self M μ hOpen q))

theorem norm_sq_eq_energy (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen) :
    ‖q‖ ^ 2 = (quotientEnergy M μ hOpen q).toReal := by
  rw [norm_eq_sqrt_energy, Real.sq_sqrt ENNReal.toReal_nonneg]

/-- Recover extended energy only after explicitly excluding infinity. -/
theorem ofReal_norm_sq_eq_energy (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen) :
    ENNReal.ofReal (‖q‖ ^ 2) = quotientEnergy M μ hOpen q := by
  rw [norm_sq_eq_energy]
  exact ENNReal.ofReal_toReal (ne_of_lt (quotientEnergy_lt_top M μ hOpen q))

theorem norm_eq_zero_iff_class (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen) :
    ‖q‖ = 0 ↔ q = quotientZero M μ hOpen := norm_eq_zero

theorem norm_classOf (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s : FiniteEnergySection M μ hOpen) :
    ‖classOf M μ hOpen s‖ = Real.sqrt ((energy M μ hOpen s.1).toReal) :=
  norm_eq_sqrt_energy M μ hOpen (classOf M μ hOpen s)

theorem pairing_norm_le (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q r : SectionQuotient M μ hOpen) :
    ‖quotientPairing M μ hOpen q r‖ ≤ ‖q‖ * ‖r‖ :=
  norm_inner_le_norm (𝕜 := ℂ) q r

theorem pairing_norm_le_energy (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q r : SectionQuotient M μ hOpen) :
    ‖quotientPairing M μ hOpen q r‖ ≤
      Real.sqrt ((quotientEnergy M μ hOpen q).toReal) *
        Real.sqrt ((quotientEnergy M μ hOpen r).toReal) := by
  simpa only [norm_eq_sqrt_energy] using pairing_norm_le M μ hOpen q r

theorem norm_add_le_sections (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q r : SectionQuotient M μ hOpen) :
    ‖quotientAdd M μ hOpen q r‖ ≤ ‖q‖ + ‖r‖ := norm_add_le q r

theorem norm_smul_sections (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (c : ℂ) (q : SectionQuotient M μ hOpen) :
    ‖quotientSMul M μ hOpen c q‖ = ‖c‖ * ‖q‖ := norm_smul c q

/-- The metric sees the energy of the difference, not a difference of energy values. -/
theorem dist_eq_sqrt_energy_sub (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q r : SectionQuotient M μ hOpen) :
    dist q r = Real.sqrt ((quotientEnergy M μ hOpen (q - r)).toReal) := by
  rw [dist_eq_norm, norm_eq_sqrt_energy]

/-- Bundle the original equivalence and its original addition/scalar laws. -/
def gaugeLinearEquiv (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    SectionQuotient M μ hOpen ≃ₗ[ℂ] SectionQuotient (transportMetric G M) μ hOpen where
  toEquiv := gaugeEquiv G M μ hOpen
  map_add' := gaugeEquiv_add G M μ hOpen
  map_smul' := gaugeEquiv_smul G M μ hOpen

/-- Same measure, constructed target metric, exact old map; no independent isometry witness. -/
def gaugeLinearIsometryEquiv (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    SectionQuotient M μ hOpen ≃ₗᵢ[ℂ] SectionQuotient (transportMetric G M) μ hOpen where
  toLinearEquiv := gaugeLinearEquiv G M μ hOpen
  norm_map' q := by
    change ‖gaugeEquiv G M μ hOpen q‖ = ‖q‖
    simpa only [norm_eq_sqrt_energy] using
      congrArg (fun e : ℝ≥0∞ => Real.sqrt e.toReal) (quotientEnergy_gauge G M μ hOpen q)

@[simp] theorem gaugeLinearIsometryEquiv_apply (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen) :
    gaugeLinearIsometryEquiv G M μ hOpen q = gaugeEquiv G M μ hOpen q := rfl

@[simp] theorem gaugeLinearIsometryEquiv_symm_apply (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (q : SectionQuotient (transportMetric G M) μ hOpen) :
    (gaugeLinearIsometryEquiv G M μ hOpen).symm q =
      (gaugeEquiv G M μ hOpen).symm q := rfl

theorem gaugeLinearIsometryEquiv_inner (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (q r : SectionQuotient M μ hOpen) :
    inner ℂ (gaugeLinearIsometryEquiv G M μ hOpen q)
        (gaugeLinearIsometryEquiv G M μ hOpen r) = inner ℂ q r :=
  quotientPairing_gauge G M μ hOpen q r

theorem gaugeLinearIsometryEquiv_isometry (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    Isometry (gaugeLinearIsometryEquiv G M μ hOpen) :=
  (gaugeLinearIsometryEquiv G M μ hOpen).isometry

/-- Zero measure yields the zero quotient, not an illicit nontriviality assumption. -/
theorem zeroMeasure_eq_zero (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (q : SectionQuotient M 0 hOpen) : q = 0 := by
  apply (quotientEnergy_eq_zero_iff M 0 hOpen q).mp
  refine Quotient.inductionOn q ?_
  intro s
  change energy M 0 hOpen s.1 = 0
  simp [energy]

namespace Fixtures

open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle.Fixtures
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionEnergy.Fixtures
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionQuotient.Fixtures

/-- Norm equality, like energy equality, does not identify arbitrary section classes. -/
theorem equal_norm_distinct_classes :
    ‖classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
        (constantAt 1 zeroPoint)‖ =
      ‖classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
        (constantAt (-1) zeroPoint)‖ ∧
      classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
          (constantAt 1 zeroPoint) ≠
        classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
          (constantAt (-1) zeroPoint) := by
  refine ⟨?_, equal_energy_distinct_classes.2⟩
  simpa only [norm_eq_sqrt_energy] using
    congrArg (fun e : ℝ≥0∞ => Real.sqrt e.toReal) equal_energy_distinct_classes.1

/-- Bundling preserves the imaginary part and the first/second argument convention. -/
theorem bundled_imaginary_pairing :
    inner ℂ
      (classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
        (constantAt 1 zeroPoint))
      (classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
        (constantAt Complex.I zeroPoint)) = Complex.I :=
  GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionPairing.Fixtures.imaginary_pairing

theorem bundled_reversed_imaginary_pairing :
    inner ℂ
      (classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
        (constantAt Complex.I zeroPoint))
      (classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
        (constantAt 1 zeroPoint)) = -Complex.I :=
  GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionPairing.Fixtures.reversed_imaginary_pairing

end Fixtures
end
end GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionInnerProduct
