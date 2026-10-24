import GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGaugeMetric
import Mathlib.MeasureTheory.Constructions.BorelSpace.Complex
import Mathlib.MeasureTheory.Integral.Lebesgue.Countable
import Mathlib.Topology.Instances.ENNReal.Lemmas

/-!
# Measure-dependent energy of holomorphic bundle sections

The measure is explicit on the actual base subtype with its Borel measurable structure.
Energy is an extended nonnegative integral: infinite energy is not converted to a real zero.
Gauge transport retains the same measure and uses the constructed target metric. The
finite-energy carrier below is a subtype, not an almost-everywhere quotient or a Hilbert space.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionEnergy

open Filter MeasureTheory
open scoped ENNReal
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing (HolomorphicSection restrictionRingHom)
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicEvaluationTopology (constantSection coordinateSection)
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGauge
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGaugeMetric

universe u
noncomputable section
variable {ι : Type u} {D : IndexedDomainCover ι} {C E : Cocycle D}

/-- The existing fiber metric evaluated on the existing section, with no new chart choice. -/
def density (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (s : BundleSection C hOpen) (x : D.X.carrier) : ℝ≥0∞ :=
  ENNReal.ofReal (M.squaredNorm hOpen x (s.value x))

/-- Continuity is inherited from the genuine total-space metric and section maps. -/
theorem density_continuous (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (s : BundleSection C hOpen) : Continuous (density M hOpen s) :=
  ENNReal.continuous_ofReal.comp
    ((M.squaredNorm_total_continuous hOpen).comp s.continuous_totalSection)

theorem density_measurable (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (s : BundleSection C hOpen) : Measurable (density M hOpen s) :=
  (density_continuous M hOpen s).measurable

/-- The nonnegative squared length loses no zero-set information under `ofReal`. -/
theorem density_eq_zero (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (s : BundleSection C hOpen) (x : D.X.carrier) :
    density M hOpen s x = 0 ↔ s.value x = 0 := by
  rw [density, ENNReal.ofReal_eq_zero]
  constructor
  · intro h
    exact (M.squaredNorm_eq_zero hOpen x (s.value x)).mp
      (le_antisymm h (M.squaredNorm_nonneg hOpen x (s.value x)))
  · intro h
    exact ((M.squaredNorm_eq_zero hOpen x (s.value x)).mpr h).le

/-- Extended energy retains the exact supplied measure; no finite-mass hypothesis is implicit. -/
def energy (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (s : BundleSection C hOpen) : ℝ≥0∞ :=
  ∫⁻ x, density M hOpen s x ∂μ

/-- Zero energy means zero almost everywhere for this measure, not at every base point. -/
theorem energy_eq_zero_iff (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s : BundleSection C hOpen) :
    energy M μ hOpen s = 0 ↔ ∀ᵐ x ∂μ, s.value x = 0 := by
  rw [energy, lintegral_eq_zero_iff (density_measurable M hOpen s)]
  constructor
  · intro h
    filter_upwards [h] with x hx
    exact (density_eq_zero M hOpen s x).mp hx
  · intro h
    filter_upwards [h] with x hx
    exact (density_eq_zero M hOpen s x).mpr hx

/-- Equality of the exact fiber values almost everywhere, before forming any quotient. -/
def AEEqual (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (s t : BundleSection C hOpen) : Prop :=
  ∀ᵐ x ∂μ, s.value x = t.value x

theorem energy_congr_ae (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s t : BundleSection C hOpen) (h : AEEqual μ hOpen s t) :
    energy M μ hOpen s = energy M μ hOpen t := by
  apply lintegral_congr_ae
  filter_upwards [h] with x hx
  simp only [density, hx]

/-- The section map and fiber map are the same map already used in the metric theorem. -/
theorem density_gauge (G : Gauge C E) (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (s : BundleSection C hOpen) (x : D.X.carrier) :
    density (transportMetric G M) hOpen (G.bundleSectionEquiv hOpen s) x =
      density M hOpen s x := by
  unfold density
  rw [G.bundleSectionEquiv_value, squaredNorm_transport]

theorem energy_gauge (G : Gauge C E) (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s : BundleSection C hOpen) :
    energy (transportMetric G M) μ hOpen (G.bundleSectionEquiv hOpen s) =
      energy M μ hOpen s :=
  lintegral_congr (density_gauge G M hOpen s)

/-- The same measure-null relation is preserved and reflected by the invertible fiber map. -/
theorem aeEqual_gauge_iff (G : Gauge C E) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s t : BundleSection C hOpen) :
    AEEqual μ hOpen (G.bundleSectionEquiv hOpen s) (G.bundleSectionEquiv hOpen t) ↔
      AEEqual μ hOpen s t := by
  constructor
  · intro h
    filter_upwards [h] with x hx
    rw [G.bundleSectionEquiv_value, G.bundleSectionEquiv_value] at hx
    exact (G.fiberEquiv hOpen x).injective hx
  · intro h
    filter_upwards [h] with x hx
    rw [G.bundleSectionEquiv_value, G.bundleSectionEquiv_value, hx]

/-- Actual holomorphic sections of finite energy, not a completed or quotient space. -/
def FiniteEnergySection (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) :=
  {s : BundleSection C hOpen // energy M μ hOpen s < ∞}

/-- The finite-energy domain is transported by restricting the historical section equivalence. -/
def finiteEnergyEquiv (G : Gauge C E) (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) :
    FiniteEnergySection M μ hOpen ≃ FiniteEnergySection (transportMetric G M) μ hOpen where
  toFun s := ⟨G.bundleSectionEquiv hOpen s.1, by
    rw [energy_gauge]
    exact s.2⟩
  invFun t := ⟨(G.bundleSectionEquiv hOpen).symm t.1, by
    have h := energy_gauge G M μ hOpen ((G.bundleSectionEquiv hOpen).symm t.1)
    rw [(G.bundleSectionEquiv hOpen).apply_symm_apply] at h
    rw [← h]
    exact t.2⟩
  left_inv s := Subtype.ext ((G.bundleSectionEquiv hOpen).symm_apply_apply s.1)
  right_inv t := Subtype.ext ((G.bundleSectionEquiv hOpen).apply_symm_apply t.1)

@[simp] theorem finiteEnergyEquiv_value (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (s : FiniteEnergySection M μ hOpen) :
    (finiteEnergyEquiv G M μ hOpen s).1 = G.bundleSectionEquiv hOpen s.1 := rfl

/-- Point-mass energy evaluates the same continuous density at its actual support point. -/
theorem energy_dirac (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (s : BundleSection C hOpen) (x : D.X.carrier) :
    energy M (Measure.dirac x) hOpen s = density M hOpen s x :=
  lintegral_dirac' x (density_measurable M hOpen s)

/-- A scalar holomorphic section is realized in the identity bundle through exact restrictions. -/
def scalarSection (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    (f : HolomorphicSection D.X) : BundleSection (Cocycle.identity D) hOpen :=
  (identityTwistedFamily (D := D) (fun i => restrictionRingHom (D.xTo i) f) (by
    intro i j
    apply Subtype.ext
    funext z
    rfl)).realize hOpen

@[simp] theorem scalarSection_value (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    (f : HolomorphicSection D.X) (x : D.X.carrier) :
    (scalarSection D hOpen f).value x = (f : Section D.X) x := rfl

/-- In the unit metric the constant unit section has energy equal to total measure. -/
theorem unitSection_energy (D : IndexedDomainCover ι) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) :
    energy (MetricWeights.identity D) μ hOpen
      (scalarSection D hOpen (constantSection D.X 1)) = μ Set.univ := by
  change (∫⁻ _ : D.X.carrier, ENNReal.ofReal (1 * Complex.normSq (1 : ℂ)) ∂μ) = μ Set.univ
  simp

/-- Infinite mass cannot be turned into finite or zero energy by a real-valued integral default. -/
theorem unitSection_energy_infinite (D : IndexedDomainCover ι) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (hμ : μ Set.univ = ∞) :
    energy (MetricWeights.identity D) μ hOpen
      (scalarSection D hOpen (constantSection D.X 1)) = ∞ := by
  rw [unitSection_energy, hμ]

namespace Fixtures

open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle.Fixtures

def zeroPoint : twoCharts.X.carrier := ⟨0, Set.mem_univ _⟩
def onePoint : twoCharts.X.carrier := ⟨1, Set.mem_univ _⟩

def coordinate : BundleSection (Cocycle.identity twoCharts) twoCharts_isOpen :=
  scalarSection twoCharts twoCharts_isOpen (coordinateSection twoCharts.X)

theorem coordinate_energy_zero :
    energy (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint)
      twoCharts_isOpen coordinate = 0 := by
  rw [energy_dirac]
  change ENNReal.ofReal (1 * Complex.normSq (0 : ℂ)) = 0
  simp

theorem coordinate_energy_one :
    energy (MetricWeights.identity twoCharts) (Measure.dirac onePoint)
      twoCharts_isOpen coordinate = 1 := by
  rw [energy_dirac]
  change ENNReal.ofReal (1 * Complex.normSq (1 : ℂ)) = 1
  simp

/-- A nonzero probability measure can miss a nonzero section away from its support. -/
theorem zero_energy_not_pointwise_zero :
    energy (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint)
      twoCharts_isOpen coordinate = 0 ∧ ¬ ∀ x, coordinate.value x = 0 := by
  refine ⟨coordinate_energy_zero, ?_⟩
  intro h
  have h1 := h onePoint
  change (1 : ℂ) = 0 at h1
  exact one_ne_zero h1

/-- Even on the same base with the same section and metric, changing the measure changes energy. -/
theorem changing_measure_changes_energy :
    energy (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint)
      twoCharts_isOpen coordinate ≠
    energy (MetricWeights.identity twoCharts) (Measure.dirac onePoint)
      twoCharts_isOpen coordinate := by
  rw [coordinate_energy_zero, coordinate_energy_one]
  exact zero_ne_one

end Fixtures
end
end GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionEnergy
