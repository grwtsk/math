import GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionEnergy
import Mathlib.Tactic.NormNum

/-!
# Almost-everywhere quotient of finite-energy holomorphic sections

The relation is equality of the actual fiber values for the selected measure, not equality
of energies. Gauge transport descends through that relation with the same measure and the
constructed transported metric. No linear structure, norm, completion, or adjoint is added.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionQuotient

open MeasureTheory
open scoped ENNReal
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicEvaluationTopology (constantSection)
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGauge
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGaugeMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionEnergy

universe u
noncomputable section
variable {ι : Type u} {D : IndexedDomainCover ι} {C E : Cocycle D}

theorem aeEqual_refl (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (s : BundleSection C hOpen) : AEEqual μ hOpen s s := by
  filter_upwards [] with x
  rfl

theorem aeEqual_symm (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    {s t : BundleSection C hOpen} (h : AEEqual μ hOpen s t) : AEEqual μ hOpen t s := by
  filter_upwards [h] with x hx
  exact hx.symm

theorem aeEqual_trans (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    {s t v : BundleSection C hOpen} (hst : AEEqual μ hOpen s t)
    (htv : AEEqual μ hOpen t v) : AEEqual μ hOpen s v := by
  filter_upwards [hst, htv] with x hx hy
  exact hx.trans hy

/-- No metric equality or representative choice is substituted for the a.e. fiber relation. -/
def finiteEnergySetoid (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) : Setoid (FiniteEnergySection M μ hOpen) where
  r s t := AEEqual μ hOpen s.1 t.1
  iseqv := {
    refl := fun s => aeEqual_refl μ hOpen s.1
    symm := fun {s t} h => aeEqual_symm μ hOpen h
    trans := fun {s t v} h k => aeEqual_trans μ hOpen h k }

/-- A quotient of the finite-energy carrier, not an ambient space of measurable sections. -/
def SectionQuotient (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) := Quotient (finiteEnergySetoid M μ hOpen)

def classOf (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (s : FiniteEnergySection M μ hOpen) : SectionQuotient M μ hOpen :=
  Quotient.mk (finiteEnergySetoid M μ hOpen) s

/-- Quotient equality retains both directions of the exact selected equivalence relation. -/
theorem classOf_eq_iff (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s t : FiniteEnergySection M μ hOpen) :
    classOf M μ hOpen s = classOf M μ hOpen t ↔ AEEqual μ hOpen s.1 t.1 :=
  ⟨fun h => Quotient.exact h, fun h => Quotient.sound h⟩

theorem classOf_surjective (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) : Function.Surjective (classOf M μ hOpen) :=
  fun q => Quotient.exists_rep q

/-- Energy is well-defined by the historical a.e.-congruence theorem, not by choosing a section. -/
def quotientEnergy (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) : SectionQuotient M μ hOpen → ℝ≥0∞ :=
  Quotient.lift (s := finiteEnergySetoid M μ hOpen) (fun s => energy M μ hOpen s.1)
    (fun s t h => energy_congr_ae M μ hOpen s.1 t.1 h)

@[simp] theorem quotientEnergy_classOf (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s : FiniteEnergySection M μ hOpen) :
    quotientEnergy M μ hOpen (classOf M μ hOpen s) = energy M μ hOpen s.1 := rfl

/-- Finiteness follows from the representative's actual subtype proof. -/
theorem quotientEnergy_lt_top (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen) :
    quotientEnergy M μ hOpen q < ∞ := by
  refine Quotient.inductionOn q ?_
  intro s
  exact s.2

theorem quotientEnergy_classOf_eq_zero_iff (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (s : FiniteEnergySection M μ hOpen) :
    quotientEnergy M μ hOpen (classOf M μ hOpen s) = 0 ↔ ∀ᵐ x ∂μ, s.1.value x = 0 :=
  energy_eq_zero_iff M μ hOpen s.1

/-- The restricted historical equivalence preserves and reflects the relation before descent. -/
theorem finiteEnergyEquiv_ae_iff (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (s t : FiniteEnergySection M μ hOpen) :
    AEEqual μ hOpen (finiteEnergyEquiv G M μ hOpen s).1
      (finiteEnergyEquiv G M μ hOpen t).1 ↔ AEEqual μ hOpen s.1 t.1 :=
  aeEqual_gauge_iff G μ hOpen s.1 t.1

/-- Inverse well-definedness is derived from the same equivalence, without metric recasting. -/
theorem finiteEnergyEquiv_symm_ae_iff (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (s t : FiniteEnergySection (transportMetric G M) μ hOpen) :
    AEEqual μ hOpen ((finiteEnergyEquiv G M μ hOpen).symm s).1
      ((finiteEnergyEquiv G M μ hOpen).symm t).1 ↔ AEEqual μ hOpen s.1 t.1 := by
  have h := finiteEnergyEquiv_ae_iff G M μ hOpen
    ((finiteEnergyEquiv G M μ hOpen).symm s)
    ((finiteEnergyEquiv G M μ hOpen).symm t)
  rw [(finiteEnergyEquiv G M μ hOpen).apply_symm_apply,
    (finiteEnergyEquiv G M μ hOpen).apply_symm_apply] at h
  exact h.symm

def gaugeForward (G : Gauge C E) (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) :
    SectionQuotient M μ hOpen → SectionQuotient (transportMetric G M) μ hOpen :=
  Quotient.lift (s := finiteEnergySetoid M μ hOpen)
    (fun s => classOf (transportMetric G M) μ hOpen (finiteEnergyEquiv G M μ hOpen s))
    (fun s t h => (classOf_eq_iff (transportMetric G M) μ hOpen _ _).mpr
      ((finiteEnergyEquiv_ae_iff G M μ hOpen s t).mpr h))

def gaugeBackward (G : Gauge C E) (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) :
    SectionQuotient (transportMetric G M) μ hOpen → SectionQuotient M μ hOpen :=
  Quotient.lift (s := finiteEnergySetoid (transportMetric G M) μ hOpen)
    (fun s => classOf M μ hOpen ((finiteEnergyEquiv G M μ hOpen).symm s))
    (fun s t h => (classOf_eq_iff M μ hOpen _ _).mpr
      ((finiteEnergyEquiv_symm_ae_iff G M μ hOpen s t).mpr h))

/-- Both quotient maps are induced by the same historical finite-energy equivalence. -/
def gaugeEquiv (G : Gauge C E) (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) :
    SectionQuotient M μ hOpen ≃ SectionQuotient (transportMetric G M) μ hOpen where
  toFun := gaugeForward G M μ hOpen
  invFun := gaugeBackward G M μ hOpen
  left_inv q := by
    refine Quotient.inductionOn q ?_
    intro s
    change classOf M μ hOpen
      ((finiteEnergyEquiv G M μ hOpen).symm (finiteEnergyEquiv G M μ hOpen s)) =
        classOf M μ hOpen s
    rw [(finiteEnergyEquiv G M μ hOpen).symm_apply_apply]
  right_inv q := by
    refine Quotient.inductionOn q ?_
    intro s
    change classOf (transportMetric G M) μ hOpen
      (finiteEnergyEquiv G M μ hOpen ((finiteEnergyEquiv G M μ hOpen).symm s)) =
        classOf (transportMetric G M) μ hOpen s
    rw [(finiteEnergyEquiv G M μ hOpen).apply_symm_apply]

@[simp] theorem gaugeEquiv_classOf (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (s : FiniteEnergySection M μ hOpen) :
    gaugeEquiv G M μ hOpen (classOf M μ hOpen s) =
      classOf (transportMetric G M) μ hOpen (finiteEnergyEquiv G M μ hOpen s) := rfl

@[simp] theorem gaugeEquiv_symm_classOf (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (s : FiniteEnergySection (transportMetric G M) μ hOpen) :
    (gaugeEquiv G M μ hOpen).symm (classOf (transportMetric G M) μ hOpen s) =
      classOf M μ hOpen ((finiteEnergyEquiv G M μ hOpen).symm s) := rfl

/-- Gauge invariance descends to classes without a chosen representative or changed measure. -/
theorem quotientEnergy_gauge (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen) :
    quotientEnergy (transportMetric G M) μ hOpen (gaugeEquiv G M μ hOpen q) =
      quotientEnergy M μ hOpen q := by
  refine Quotient.inductionOn q ?_
  intro s
  exact energy_gauge G M μ hOpen s.1

/-- Every actual section has finite energy for a point mass, since its density is finite. -/
def diracFiniteSection (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (s : BundleSection C hOpen) (x : D.X.carrier) :
    FiniteEnergySection M (Measure.dirac x) hOpen :=
  ⟨s, by
    rw [energy_dirac]
    change ENNReal.ofReal (M.squaredNorm hOpen x (s.value x)) < ∞
    simp⟩

/-- On a point mass, quotient equality sees precisely the value at its support point. -/
theorem classOf_dirac_eq_iff (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (x : D.X.carrier) (s t : FiniteEnergySection M (Measure.dirac x) hOpen) :
    classOf M (Measure.dirac x) hOpen s = classOf M (Measure.dirac x) hOpen t ↔
      s.1.value x = t.1.value x := by
  rw [classOf_eq_iff]
  simp [AEEqual, ae_dirac_eq]

namespace Fixtures

open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle.Fixtures
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionEnergy.Fixtures

def coordinateAt (x : twoCharts.X.carrier) :
    FiniteEnergySection (MetricWeights.identity twoCharts) (Measure.dirac x) twoCharts_isOpen :=
  diracFiniteSection (MetricWeights.identity twoCharts) twoCharts_isOpen coordinate x

def constantAt (c : ℂ) (x : twoCharts.X.carrier) :
    FiniteEnergySection (MetricWeights.identity twoCharts) (Measure.dirac x) twoCharts_isOpen :=
  diracFiniteSection (MetricWeights.identity twoCharts) twoCharts_isOpen
    (scalarSection twoCharts twoCharts_isOpen (constantSection twoCharts.X c)) x

theorem coordinate_zero_same_class :
    classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
        (coordinateAt zeroPoint) =
      classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
        (constantAt 0 zeroPoint) := by
  apply (classOf_dirac_eq_iff _ _ _ _ _).mpr
  rfl

/-- Equality of classes does not recover values away from the measure's support. -/
theorem same_class_not_pointwise_equal :
    classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
        (coordinateAt zeroPoint) =
      classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
        (constantAt 0 zeroPoint) ∧
      (coordinateAt zeroPoint).1.value onePoint ≠ (constantAt 0 zeroPoint).1.value onePoint := by
  refine ⟨coordinate_zero_same_class, ?_⟩
  change (1 : ℂ) ≠ 0
  exact one_ne_zero

/-- The same two sections cease to be equivalent when the support point is changed. -/
theorem changed_measure_separates :
    classOf (MetricWeights.identity twoCharts) (Measure.dirac onePoint) twoCharts_isOpen
        (coordinateAt onePoint) ≠
      classOf (MetricWeights.identity twoCharts) (Measure.dirac onePoint) twoCharts_isOpen
        (constantAt 0 onePoint) := by
  intro h
  have hx := (classOf_dirac_eq_iff _ _ _ _ _).mp h
  change (1 : ℂ) = 0 at hx
  exact one_ne_zero hx

/-- Equal scalar energies do not define the section quotient: opposite unit values remain distinct. -/
theorem equal_energy_distinct_classes :
    quotientEnergy (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
        (classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
          (constantAt 1 zeroPoint)) =
      quotientEnergy (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
        (classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
          (constantAt (-1) zeroPoint)) ∧
      classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
          (constantAt 1 zeroPoint) ≠
        classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
          (constantAt (-1) zeroPoint) := by
  constructor
  · rw [quotientEnergy_classOf, quotientEnergy_classOf, energy_dirac, energy_dirac]
    change ENNReal.ofReal (1 * Complex.normSq (1 : ℂ)) =
      ENNReal.ofReal (1 * Complex.normSq (-1 : ℂ))
    simp
  · intro h
    have hx := (classOf_dirac_eq_iff _ _ _ _ _).mp h
    change (1 : ℂ) = -1 at hx
    have hre := congrArg Complex.re hx
    norm_num at hre

end Fixtures
end
end GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionQuotient
