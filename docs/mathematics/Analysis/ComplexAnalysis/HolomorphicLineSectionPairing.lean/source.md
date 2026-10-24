# Complete source: GRWTSK.Analysis.Complex.HolomorphicLineSectionPairing

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `975c08d73459b86c39e12761831fcfb980676165` · SHA-256 `374941c13adeb3fad5f98bf2d075560c5c0249d86a9c61a46be12b24675071c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Complex.HolomorphicLineSectionLinear
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap
import Mathlib.Tactic.Ring

/-!
# Integrable Hermitian pairing on the existing section quotient

Polarization expresses the actual fiber pairing in terms of four intrinsic squared lengths.
Finite-energy closure therefore supplies integrability without a global continuous choice of
frame. Both representatives may change independently on null sets. All gauge statements use
the same measure and the constructed transported metric. No completion or normed-space instance
is supplied, and no integral outside the finite-energy domain is used as a pairing certificate.
-/

namespace GRWTSK.Analysis.Complex.HolomorphicLineSectionPairing

open MeasureTheory
open scoped ENNReal
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineGauge
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicLineGaugeMetric
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.Complex.HolomorphicLineSectionLinear

universe u
noncomputable section
variable {ι : Type u} {D : IndexedDomainCover ι} {C E : Cocycle D}

/-- Real squared length, before taking an extended integral. -/
def realSquare (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (s : BundleSection C hOpen) (x : D.X.carrier) : ℝ :=
  M.squaredNorm hOpen x (s.value x)

/-- The pairing uses the existing intrinsic fiber metric, not separately chosen coordinates. -/
def pairDensity (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (s t : BundleSection C hOpen) (x : D.X.carrier) : ℂ :=
  M.pairing hOpen x (s.value x) (t.value x)

theorem realSquare_continuous (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (s : BundleSection C hOpen) : Continuous (realSquare M hOpen s) :=
  (M.squaredNorm_total_continuous hOpen).comp s.continuous_totalSection

theorem realSquare_nonneg (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (s : BundleSection C hOpen) (x : D.X.carrier) : 0 ≤ realSquare M hOpen s x :=
  M.squaredNorm_nonneg hOpen x (s.value x)

/-- The finiteness proof is exactly the historical energy-subtype proof. -/
theorem realSquare_integrable (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s : FiniteEnergySection M μ hOpen) :
    Integrable (realSquare M hOpen s.1) μ := by
  refine ⟨(realSquare_continuous M hOpen s.1).measurable.aestronglyMeasurable, ?_⟩
  apply (hasFiniteIntegral_iff_ofReal
    (Filter.Eventually.of_forall (realSquare_nonneg M hOpen s.1))).mpr
  exact s.2

/-- Sign convention: conjugate-linear in the first slot and linear in the second. -/
theorem weightedPair_polarization (r : ℝ) (a b : ℂ) :
    weightedPair r a b = ((1 / 4 : ℝ) : ℂ) *
      (((r * Complex.normSq (a + b) : ℝ) : ℂ) -
        ((r * Complex.normSq (a + (-1 : ℂ) * b) : ℝ) : ℂ) -
        Complex.I * (((r * Complex.normSq (a + Complex.I * b) : ℝ) : ℂ) -
          ((r * Complex.normSq (a + (-Complex.I) * b) : ℝ) : ℂ))) := by
  apply Complex.ext <;>
    simp [weightedPair, Complex.normSq_apply, Complex.mul_re, Complex.mul_im] <;> ring

/-- The four terms are squared lengths of actual holomorphic section operations. -/
theorem pairDensity_polarization (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (s t : BundleSection C hOpen) :
    pairDensity M hOpen s t = fun x => ((1 / 4 : ℝ) : ℂ) *
      ((realSquare M hOpen (sectionAdd s t) x : ℂ) -
        (realSquare M hOpen (sectionAdd s (sectionSMul (-1) t)) x : ℂ) -
        Complex.I * ((realSquare M hOpen (sectionAdd s (sectionSMul Complex.I t)) x : ℂ) -
          (realSquare M hOpen (sectionAdd s (sectionSMul (-Complex.I) t)) x : ℂ))) := by
  funext x
  exact weightedPair_polarization (M.atPoint x) (s.value x) (t.value x)

/-- Intrinsic continuity does not require continuity of the preferred-chart selector. -/
theorem pairDensity_continuous (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (s t : BundleSection C hOpen) : Continuous (pairDensity M hOpen s t) := by
  have hQ (v : BundleSection C hOpen) :
      Continuous (fun x => (realSquare M hOpen v x : ℂ)) :=
    Complex.continuous_ofReal.comp (realSquare_continuous M hOpen v)
  rw [pairDensity_polarization]
  exact continuous_const.mul
    (((hQ _).sub (hQ _)).sub (continuous_const.mul ((hQ _).sub (hQ _))))

/-- Cross-pairing integrability is derived, not supplied as a new assumption. -/
theorem pairDensity_integrable (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s t : FiniteEnergySection M μ hOpen) :
    Integrable (pairDensity M hOpen s.1 t.1) μ := by
  have hQ (v : FiniteEnergySection M μ hOpen) :
      Integrable (fun x => (realSquare M hOpen v.1 x : ℂ)) μ :=
    (realSquare_integrable M μ hOpen v).ofReal
  have h1 := hQ (finiteAdd M μ hOpen s t)
  have h2 := hQ (finiteAdd M μ hOpen s (finiteSMul M μ hOpen (-1) t))
  have h3 := hQ (finiteAdd M μ hOpen s (finiteSMul M μ hOpen Complex.I t))
  have h4 := hQ (finiteAdd M μ hOpen s (finiteSMul M μ hOpen (-Complex.I) t))
  rw [pairDensity_polarization]
  exact ((h1.sub h2).sub ((h3.sub h4).const_mul Complex.I)).const_mul ((1 / 4 : ℝ) : ℂ)

/-- Integrability above prevents the Bochner integral's nonintegrable-zero default. -/
def sectionPairing (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s t : FiniteEnergySection M μ hOpen) : ℂ :=
  ∫ x, pairDensity M hOpen s.1 t.1 x ∂μ

/-- Both representatives may change on independently specified null sets. -/
theorem sectionPairing_congr_ae (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s t s' t' : FiniteEnergySection M μ hOpen)
    (hs : AEEqual μ hOpen s.1 s'.1) (ht : AEEqual μ hOpen t.1 t'.1) :
    sectionPairing M μ hOpen s t = sectionPairing M μ hOpen s' t' := by
  apply integral_congr_ae
  filter_upwards [hs, ht] with x hx hy
  simp only [pairDensity, hx, hy]

theorem sectionPairing_conj (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s t : FiniteEnergySection M μ hOpen) :
    (starRingEnd ℂ) (sectionPairing M μ hOpen s t) = sectionPairing M μ hOpen t s := by
  calc
    (starRingEnd ℂ) (sectionPairing M μ hOpen s t) =
        ∫ x, (starRingEnd ℂ) (pairDensity M hOpen s.1 t.1 x) ∂μ :=
      integral_conj.symm
    _ = sectionPairing M μ hOpen t s := by
      apply integral_congr_ae
      filter_upwards [] with x
      exact M.pairing_conj_symm hOpen x (s.1.value x) (t.1.value x)

theorem sectionPairing_add_right (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s t v : FiniteEnergySection M μ hOpen) :
    sectionPairing M μ hOpen s (finiteAdd M μ hOpen t v) =
      sectionPairing M μ hOpen s t + sectionPairing M μ hOpen s v := by
  change (∫ x, M.pairing hOpen x (s.1.value x) (t.1.value x + v.1.value x) ∂μ) = _
  simp_rw [MetricWeights.pairing_add_right]
  exact integral_add (pairDensity_integrable M μ hOpen s t)
    (pairDensity_integrable M μ hOpen s v)

theorem sectionPairing_smul_right (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (c : ℂ) (s t : FiniteEnergySection M μ hOpen) :
    sectionPairing M μ hOpen s (finiteSMul M μ hOpen c t) =
      c * sectionPairing M μ hOpen s t := by
  change (∫ x, M.pairing hOpen x (s.1.value x) (c • t.1.value x) ∂μ) = _
  simp_rw [MetricWeights.pairing_smul_right]
  exact integral_const_mul c _

/-- Real conversion is used only after the finite-energy proof has supplied integrability. -/
theorem sectionPairing_self (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s : FiniteEnergySection M μ hOpen) :
    sectionPairing M μ hOpen s s = ((energy M μ hOpen s.1).toReal : ℂ) := by
  have hQ := realSquare_integrable M μ hOpen s
  calc
    sectionPairing M μ hOpen s s = ∫ x, (realSquare M hOpen s.1 x : ℂ) ∂μ := by
      apply integral_congr_ae
      filter_upwards [] with x
      exact M.pairing_self hOpen x (s.1.value x)
    _ = ((∫ x, realSquare M hOpen s.1 x ∂μ : ℝ) : ℂ) := integral_complex_ofReal
    _ = ((energy M μ hOpen s.1).toReal : ℂ) := by
      exact congrArg (fun r : ℝ => (r : ℂ)) (integral_eq_lintegral_of_nonneg_ae
        (Filter.Eventually.of_forall (realSquare_nonneg M hOpen s.1)) hQ.1)

/-- The old setoid, not energy equality, supplies well-definedness in both arguments. -/
def quotientPairing (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q r : SectionQuotient M μ hOpen) : ℂ :=
  Quotient.liftOn₂ q r (sectionPairing M μ hOpen)
    (sectionPairing_congr_ae M μ hOpen)

@[simp] theorem quotientPairing_classOf (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s t : FiniteEnergySection M μ hOpen) :
    quotientPairing M μ hOpen (classOf M μ hOpen s) (classOf M μ hOpen t) =
      sectionPairing M μ hOpen s t := rfl

theorem quotientPairing_conj (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q r : SectionQuotient M μ hOpen) :
    (starRingEnd ℂ) (quotientPairing M μ hOpen q r) = quotientPairing M μ hOpen r q := by
  refine Quotient.inductionOn₂ q r ?_
  intro s t
  exact sectionPairing_conj M μ hOpen s t

theorem quotientPairing_add_right (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q r v : SectionQuotient M μ hOpen) :
    quotientPairing M μ hOpen q (quotientAdd M μ hOpen r v) =
      quotientPairing M μ hOpen q r + quotientPairing M μ hOpen q v := by
  refine Quotient.inductionOn₃ q r v ?_
  intro s t w
  exact sectionPairing_add_right M μ hOpen s t w

theorem quotientPairing_smul_right (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (c : ℂ) (q r : SectionQuotient M μ hOpen) :
    quotientPairing M μ hOpen q (quotientSMul M μ hOpen c r) =
      c * quotientPairing M μ hOpen q r := by
  refine Quotient.inductionOn₂ q r ?_
  intro s t
  exact sectionPairing_smul_right M μ hOpen c s t

theorem quotientPairing_add_left (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q r v : SectionQuotient M μ hOpen) :
    quotientPairing M μ hOpen (quotientAdd M μ hOpen q r) v =
      quotientPairing M μ hOpen q v + quotientPairing M μ hOpen r v := by
  calc
    quotientPairing M μ hOpen (quotientAdd M μ hOpen q r) v =
        (starRingEnd ℂ) (quotientPairing M μ hOpen v (quotientAdd M μ hOpen q r)) :=
      (quotientPairing_conj M μ hOpen v (quotientAdd M μ hOpen q r)).symm
    _ = (starRingEnd ℂ) (quotientPairing M μ hOpen v q + quotientPairing M μ hOpen v r) :=
      congrArg (starRingEnd ℂ) (quotientPairing_add_right M μ hOpen v q r)
    _ = _ := by rw [map_add, quotientPairing_conj, quotientPairing_conj]

theorem quotientPairing_smul_left (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (c : ℂ) (q r : SectionQuotient M μ hOpen) :
    quotientPairing M μ hOpen (quotientSMul M μ hOpen c q) r =
      (starRingEnd ℂ) c * quotientPairing M μ hOpen q r := by
  calc
    quotientPairing M μ hOpen (quotientSMul M μ hOpen c q) r =
        (starRingEnd ℂ) (quotientPairing M μ hOpen r (quotientSMul M μ hOpen c q)) :=
      (quotientPairing_conj M μ hOpen r (quotientSMul M μ hOpen c q)).symm
    _ = (starRingEnd ℂ) (c * quotientPairing M μ hOpen r q) :=
      congrArg (starRingEnd ℂ) (quotientPairing_smul_right M μ hOpen c r q)
    _ = _ := by rw [map_mul, quotientPairing_conj]

theorem quotientPairing_self (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen) :
    quotientPairing M μ hOpen q q = ((quotientEnergy M μ hOpen q).toReal : ℂ) := by
  refine Quotient.inductionOn q ?_
  intro s
  exact sectionPairing_self M μ hOpen s

theorem quotientPairing_self_nonneg (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen) :
    0 ≤ (quotientPairing M μ hOpen q q).re := by
  rw [quotientPairing_self]
  exact ENNReal.toReal_nonneg

theorem quotientPairing_self_im (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen) :
    (quotientPairing M μ hOpen q q).im = 0 := by
  rw [quotientPairing_self]
  rfl

/-- Definiteness is on the existing a.e. quotient, not on arbitrary pointwise representatives. -/
theorem quotientPairing_self_eq_zero_iff (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen) :
    quotientPairing M μ hOpen q q = 0 ↔ q = quotientZero M μ hOpen := by
  rw [quotientPairing_self]
  constructor
  · intro h
    have hr : (quotientEnergy M μ hOpen q).toReal = 0 := congrArg Complex.re h
    have he := (ENNReal.toReal_eq_zero_iff.mp hr).resolve_right
      (ne_of_lt (quotientEnergy_lt_top M μ hOpen q))
    exact (quotientEnergy_eq_zero_iff M μ hOpen q).mp he
  · intro h
    have he := (quotientEnergy_eq_zero_iff M μ hOpen q).mpr h
    simp only [he, ENNReal.toReal_zero, Complex.ofReal_zero]

/-- Gauge transport keeps both sections, the measure and the constructed metric bound together. -/
theorem sectionPairing_gauge (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (s t : FiniteEnergySection M μ hOpen) :
    sectionPairing (transportMetric G M) μ hOpen
        (finiteEnergyEquiv G M μ hOpen s) (finiteEnergyEquiv G M μ hOpen t) =
      sectionPairing M μ hOpen s t := by
  apply integral_congr_ae
  filter_upwards [] with x
  change (transportMetric G M).pairing hOpen x
    ((G.bundleSectionEquiv hOpen s.1).value x) ((G.bundleSectionEquiv hOpen t.1).value x) = _
  rw [G.bundleSectionEquiv_value, G.bundleSectionEquiv_value]
  exact pairing_transport G M hOpen x (s.1.value x) (t.1.value x)

theorem quotientPairing_gauge (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (q r : SectionQuotient M μ hOpen) :
    quotientPairing (transportMetric G M) μ hOpen
        (gaugeEquiv G M μ hOpen q) (gaugeEquiv G M μ hOpen r) =
      quotientPairing M μ hOpen q r := by
  refine Quotient.inductionOn₂ q r ?_
  intro s t
  exact sectionPairing_gauge G M μ hOpen s t

/-- Infinite energy cannot be admitted by exploiting the integral's default value zero. -/
theorem infiniteEnergy_self_not_integrable (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s : BundleSection C hOpen) (hs : energy M μ hOpen s = ∞) :
    ¬ Integrable (pairDensity M hOpen s s) μ := by
  intro h
  have hQ : Integrable (realSquare M hOpen s) μ := by
    apply h.re.congr
    filter_upwards [] with x
    change (M.pairing hOpen x (s.value x) (s.value x)).re = _
    rw [M.pairing_self]
    rfl
  have hf : energy M μ hOpen s < ∞ :=
    (hasFiniteIntegral_iff_ofReal
      (Filter.Eventually.of_forall (realSquare_nonneg M hOpen s))).mp hQ.2
  rw [hs] at hf
  exact (lt_irrefl _) hf

/-- Point-mass pairing evaluates the actual fiber form at precisely its support point. -/
theorem sectionPairing_dirac (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (x : D.X.carrier) (s t : FiniteEnergySection M (Measure.dirac x) hOpen) :
    sectionPairing M (Measure.dirac x) hOpen s t = M.pairing hOpen x (s.1.value x) (t.1.value x) :=
  integral_dirac _ x

namespace Fixtures

open GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy.Fixtures
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient.Fixtures

/-- A complex cross-pairing is not its real part and does not forget argument order. -/
theorem imaginary_pairing :
    sectionPairing (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
      (constantAt 1 zeroPoint) (constantAt Complex.I zeroPoint) = Complex.I := by
  rw [sectionPairing_dirac]
  change weightedPair 1 1 Complex.I = Complex.I
  simp [weightedPair]

theorem reversed_imaginary_pairing :
    sectionPairing (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
      (constantAt Complex.I zeroPoint) (constantAt 1 zeroPoint) = -Complex.I := by
  rw [← sectionPairing_conj, imaginary_pairing]
  simp

end Fixtures
end
end GRWTSK.Analysis.Complex.HolomorphicLineSectionPairing
```
