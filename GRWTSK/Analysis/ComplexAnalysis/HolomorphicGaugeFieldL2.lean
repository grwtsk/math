import GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaGaugeTransport
import Mathlib.MeasureTheory.Function.L2Space

/-!
# Finite measurable bundle fields in a supplied holomorphic gauge

The carrier is an a.e. quotient of actual target-fiber fields, not a quotient of
holomorphic sections. Measurability is explicitly measured after the supplied inverse
gauge. The squared density is the actual transported Hermitian metric, with the same
base measure. Its equality to the normalized scalar density is proved, not a field.

This gauge-relative construction does not assume that the arbitrary preferred-chart
selector is measurable. Independence from a different trivialization and equivalence
with an intrinsic bundle-Borel definition remain separate obligations. No norm, module
or completeness instance is installed on the new quotient in this leaf.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.HolomorphicGaugeFieldL2

open MeasureTheory Set
open scoped ENNReal
open scoped GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicEvaluationTopology (section_continuous)
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGauge
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGaugeMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaComplete
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaL2
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaProjection
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaGaugeTransport
open GRWTSK.Analysis.Operator.HolomorphicMultiplierArea (areaMeasure)

universe u
noncomputable section
variable {ι : Type u} {D : IndexedDomainCover ι} {C : Cocycle D}

/-- No holomorphy, continuity or measurability is built into a raw field. -/
abbrev RawField (C : Cocycle D) (hOpen : D.IsOpenCover) :=
  (x : D.X.carrier) → (C.vectorBundleCore hOpen).Fiber x

/-- Scalar coordinates in the SUPPLIED global gauge, not the raw preferred-chart coefficients. -/
def unframe (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (s : RawField C hOpen) : Section D.X := fun x => G.symm.fiberMap hOpen x (s x)

def frame (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (f : Section D.X) : RawField C hOpen := fun x => G.fiberMap hOpen x (f x)

@[simp] theorem unframe_frame (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (f : Section D.X) : unframe G hOpen (frame G hOpen f) = f := by
  funext x
  exact G.fiberMap_symm_apply hOpen x (f x)

@[simp] theorem frame_unframe (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (s : RawField C hOpen) : frame G hOpen (unframe G hOpen s) = s := by
  funext x
  exact G.fiberMap_apply_symm hOpen x (s x)

/-- Every declared local coordinate is bound to the same normalized field. -/
theorem chart_coordinate (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (s : RawField C hOpen) (i : ι) (x : D.X.carrier) (hi : x.1 ∈ (D.U i).carrier) :
    chartCoordinate C hOpen s i x =
      unitValue (G.frame i) ⟨x.1, hi⟩ * unframe G hOpen s x := by
  have ht := G.totalMap_coordinate hOpen i
    (⟨x, unframe G hOpen s x⟩ : ((Cocycle.identity D).vectorBundleCore hOpen).TotalSpace) hi
  change chartCoordinate C hOpen (frame G hOpen (unframe G hOpen s)) i x =
    unitValue (G.frame i) ⟨x.1, hi⟩ *
      chartCoordinate (Cocycle.identity D) hOpen (unframe G hOpen s) i x at ht
  rw [frame_unframe,
    chartCoordinate_apply (Cocycle.identity D) hOpen (unframe G hOpen s) i x,
    (Cocycle.identity D).scalar_apply (D.select x) i x (D.select_mem x) hi, one_mul] at ht
  exact ht

/-- This is the target metric's squared length, NOT the unmodified model-fiber norm. -/
def square (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (s : RawField C hOpen) (x : D.X.carrier) : ℝ :=
  (transportMetric G (MetricWeights.identity D)).squaredNorm hOpen x (s x)

theorem square_eq (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (s : RawField C hOpen) (x : D.X.carrier) :
    square G hOpen s x = ‖unframe G hOpen s x‖ ^ 2 := by
  have ht := squaredNorm_transport G (MetricWeights.identity D) hOpen x
    (unframe G hOpen s x)
  rw [show G.fiberMap hOpen x (unframe G hOpen s x) = s x from
    G.fiberMap_apply_symm hOpen x (s x)] at ht
  change square G hOpen s x = 1 * Complex.normSq (unframe G hOpen s x) at ht
  simpa only [one_mul, Complex.normSq_eq_norm_sq] using ht

def fieldEnergy (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s : RawField C hOpen) : ℝ≥0∞ :=
  ∫⁻ x, ENNReal.ofReal (square G hOpen s x) ∂μ

theorem fieldEnergy_eq (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s : RawField C hOpen) :
    fieldEnergy G μ hOpen s = ∫⁻ x, ENNReal.ofReal (‖unframe G hOpen s x‖ ^ 2) ∂μ := by
  simp only [fieldEnergy, square_eq]

/-- Metric-weighted energy of the actual forward field equals the unchanged scalar energy. -/
theorem fieldEnergy_frame (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (f : Section D.X) :
    fieldEnergy G μ hOpen (frame G hOpen f) = ∫⁻ x, ENNReal.ofReal (‖f x‖ ^ 2) ∂μ := by
  rw [fieldEnergy_eq, unframe_frame]

/-- Gauge-relative measurable finite fields. Global holomorphy is deliberately absent. -/
structure FiniteField (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) where
  value : RawField C hOpen
  measurable : AEStronglyMeasurable (unframe G hOpen value) μ
  finite : fieldEnergy G μ hOpen value < ∞

/-- Actual integrable square follows from the intrinsic energy admission proof. -/
theorem square_integrable (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s : FiniteField G μ hOpen) :
    Integrable (fun x => ‖unframe G hOpen s.value x‖ ^ 2) μ := by
  refine ⟨s.measurable.norm.pow 2, ?_⟩
  apply (hasFiniteIntegral_iff_ofReal (Filter.Eventually.of_forall (fun x =>
    sq_nonneg ‖unframe G hOpen s.value x‖))).mpr
  simpa only [fieldEnergy_eq] using s.finite

theorem field_memLp (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s : FiniteField G μ hOpen) :
    MemLp (unframe G hOpen s.value) 2 μ :=
  (memLp_two_iff_integrable_sq_norm s.measurable).mpr (square_integrable G μ hOpen s)

/-- A supplied scalar L2 representative produces a genuine target-fiber field. -/
def ofMemLp (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (f : Section D.X) (hf : MemLp f 2 μ) : FiniteField G μ hOpen where
  value := frame G hOpen f
  measurable := by simpa only [unframe_frame] using hf.1
  finite := by
    rw [fieldEnergy_eq, unframe_frame]
    have hi := (memLp_two_iff_integrable_sq_norm hf.1).mp hf
    exact (hasFiniteIntegral_iff_ofReal
      (Filter.Eventually.of_forall (fun x => sq_nonneg ‖f x‖))).mp hi.2

/-- The equivalence relation is equality of actual target fiber values for the same measure. -/
def fieldSetoid (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) : Setoid (FiniteField G μ hOpen) where
  r s t := ∀ᵐ x ∂μ, s.value x = t.value x
  iseqv :=
    { refl := fun s => Filter.Eventually.of_forall (fun _ => rfl)
      symm := fun h => h.mono (fun _ hx => hx.symm)
      trans := fun h k => (h.and k).mono (fun _ hx => hx.1.trans hx.2) }

def FieldL2 (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) := Quotient (fieldSetoid G μ hOpen)

def fieldClass (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s : FiniteField G μ hOpen) : FieldL2 G μ hOpen :=
  Quotient.mk (fieldSetoid G μ hOpen) s

theorem fieldClass_eq_iff (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s t : FiniteField G μ hOpen) :
    fieldClass G μ hOpen s = fieldClass G μ hOpen t ↔ ∀ᵐ x ∂μ, s.value x = t.value x :=
  ⟨Quotient.exact, Quotient.sound⟩

/-- Different a.e.-equal scalar representatives give the same target-fiber class. -/
theorem ofMemLp_congr_ae (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (f g : Section D.X) (hf : MemLp f 2 μ) (hg : MemLp g 2 μ)
    (he : f =ᵐ[μ] g) :
    fieldClass G μ hOpen (ofMemLp G μ hOpen f hf) =
      fieldClass G μ hOpen (ofMemLp G μ hOpen g hg) := by
  apply (fieldClass_eq_iff G μ hOpen _ _).mpr
  exact he.mono (fun x hx => congrArg (G.fiberMap hOpen x) hx)

/-- Ordinary Mathlib L2 is used only after the explicit inverse-fiber normalization. -/
def toScalarL2 (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) : FieldL2 G μ hOpen → Lp ℂ 2 μ :=
  Quotient.lift (s := fieldSetoid G μ hOpen)
    (fun s => (field_memLp G μ hOpen s).toLp (unframe G hOpen s.value))
    (fun s t h => MemLp.toLp_congr _ _ (h.mono (fun x hx =>
      congrArg (G.symm.fiberMap hOpen x) hx)))

theorem toScalarL2_class_ae (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s : FiniteField G μ hOpen) :
    (toScalarL2 G μ hOpen (fieldClass G μ hOpen s) : Section D.X) =ᵐ[μ]
      unframe G hOpen s.value := (field_memLp G μ hOpen s).coeFn_toLp

def fromScalarL2 (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (g : Lp ℂ 2 μ) : FieldL2 G μ hOpen :=
  fieldClass G μ hOpen (ofMemLp G μ hOpen g g.memLp)

@[simp] theorem to_from (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (g : Lp ℂ 2 μ) :
    toScalarL2 G μ hOpen (fromScalarL2 G μ hOpen g) = g := by
  apply Lp.ext
  simpa only [ofMemLp, unframe_frame] using
    toScalarL2_class_ae G μ hOpen (ofMemLp G μ hOpen g g.memLp)

@[simp] theorem from_to (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q : FieldL2 G μ hOpen) :
    fromScalarL2 G μ hOpen (toScalarL2 G μ hOpen q) = q := by
  refine Quotient.inductionOn q ?_
  intro s
  apply (fieldClass_eq_iff G μ hOpen _ s).mpr
  filter_upwards [toScalarL2_class_ae G μ hOpen s] with x hx
  change G.fiberMap hOpen x (toScalarL2 G μ hOpen (fieldClass G μ hOpen s) x) = s.value x
  rw [hx]
  exact G.fiberMap_apply_symm hOpen x (s.value x)

/-- Both inverse identities are proved; this is not a raw-coordinate L2 identification. -/
def scalarEquiv (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) : FieldL2 G μ hOpen ≃ Lp ℂ 2 μ where
  toFun := toScalarL2 G μ hOpen
  invFun := fromScalarL2 G μ hOpen
  left_inv := from_to G μ hOpen
  right_inv := to_from G μ hOpen

/-- Intrinsic squared energy descends through fiber-value equality, not energy equality. -/
def quotientFieldEnergy (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) : FieldL2 G μ hOpen → ℝ≥0∞ :=
  Quotient.lift (s := fieldSetoid G μ hOpen) (fun s => fieldEnergy G μ hOpen s.value)
    (fun s t h => lintegral_congr_ae (h.mono (fun x hx => by
      simp only [square, hx])))

/-- The actual target metric also binds the full complex pairing. -/
theorem pairing_eq (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (s t : RawField C hOpen) (x : D.X.carrier) :
    (transportMetric G (MetricWeights.identity D)).pairing hOpen x (s x) (t x) =
      star (unframe G hOpen s x) * unframe G hOpen t x := by
  have ht := pairing_transport G (MetricWeights.identity D) hOpen x
    (unframe G hOpen s x) (unframe G hOpen t x)
  rw [G.fiberMap_apply_symm, G.fiberMap_apply_symm] at ht
  change _ = (1 : ℂ) * ((starRingEnd ℂ) (unframe G hOpen s x) * unframe G hOpen t x) at ht
  simpa only [one_mul, starRingEnd_apply] using ht

theorem pairing_cross_ae (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s t : FiniteField G μ hOpen) :
    (fun x => inner ℂ (toScalarL2 G μ hOpen (fieldClass G μ hOpen s) x)
      (toScalarL2 G μ hOpen (fieldClass G μ hOpen t) x)) =ᵐ[μ]
      fun x => (transportMetric G (MetricWeights.identity D)).pairing hOpen x (s.value x) (t.value x) := by
  filter_upwards [toScalarL2_class_ae G μ hOpen s, toScalarL2_class_ae G μ hOpen t] with x hs ht
  rw [hs, ht, RCLike.inner_apply', pairing_eq]

/-- Cross-integrability is inherited from ACTUAL scalar L2, before asserting an integral value. -/
theorem fieldPair_integrable (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s t : FiniteField G μ hOpen) :
    Integrable (fun x => (transportMetric G (MetricWeights.identity D)).pairing hOpen x
      (s.value x) (t.value x)) μ :=
  (L2.integrable_inner (𝕜 := ℂ) (toScalarL2 G μ hOpen (fieldClass G μ hOpen s))
    (toScalarL2 G μ hOpen (fieldClass G μ hOpen t))).congr (pairing_cross_ae G μ hOpen s t)

def fieldPairing (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q r : FieldL2 G μ hOpen) : ℂ :=
  inner ℂ (toScalarL2 G μ hOpen q) (toScalarL2 G μ hOpen r)

theorem fieldPairing_class (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s t : FiniteField G μ hOpen) :
    fieldPairing G μ hOpen (fieldClass G μ hOpen s) (fieldClass G μ hOpen t) =
      ∫ x, (transportMetric G (MetricWeights.identity D)).pairing hOpen x
        (s.value x) (t.value x) ∂μ := by
  rw [fieldPairing, L2.inner_def]
  exact integral_congr_ae (pairing_cross_ae G μ hOpen s t)

/-- Finite energy is preserved before converting back from real squared norms. -/
theorem quotientFieldEnergy_norm (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (q : FieldL2 G μ hOpen) :
    quotientFieldEnergy G μ hOpen q = ENNReal.ofReal (‖toScalarL2 G μ hOpen q‖ ^ 2) := by
  refine Quotient.inductionOn q ?_
  intro s
  have hs : Integrable (square G hOpen s.value) μ := by
    simpa only [square_eq] using square_integrable G μ hOpen s
  have he : fieldPairing G μ hOpen (fieldClass G μ hOpen s) (fieldClass G μ hOpen s) =
      ((fieldEnergy G μ hOpen s.value).toReal : ℂ) := by
    rw [fieldPairing_class]
    simp_rw [MetricWeights.pairing_self]
    change (∫ x, (square G hOpen s.value x : ℂ) ∂μ) = _
    rw [integral_complex_ofReal]
    exact congrArg (fun r : ℝ => (r : ℂ))
      (integral_eq_lintegral_of_nonneg_ae
        (Filter.Eventually.of_forall (fun x => by rw [square_eq]; positivity)) hs.1)
  have hr := congrArg Complex.re he
  simp only [fieldPairing, inner_self_eq_norm_sq_to_K, ← Complex.ofReal_pow, Complex.ofReal_re] at hr
  change fieldEnergy G μ hOpen s.value = _
  rw [hr, ENNReal.ofReal_toReal (ne_of_lt s.finite)]

/-- A normalized zero class means a.e. zero fiber values, not pointwise zero values. -/
theorem class_zero_iff (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s : FiniteField G μ hOpen) :
    toScalarL2 G μ hOpen (fieldClass G μ hOpen s) = 0 ↔ ∀ᵐ x ∂μ, s.value x = 0 := by
  rw [Lp.eq_zero_iff_ae_eq_zero]
  constructor
  · intro h
    filter_upwards [h, toScalarL2_class_ae G μ hOpen s] with x hx he
    have hn : unframe G hOpen s.value x = 0 := he.symm.trans hx
    calc
      s.value x = G.fiberMap hOpen x (unframe G hOpen s.value x) :=
        (G.fiberMap_apply_symm hOpen x (s.value x)).symm
      _ = G.fiberMap hOpen x 0 := congrArg (G.fiberMap hOpen x) hn
      _ = 0 := by change _ * 0 = 0; exact mul_zero _
  · intro h
    filter_upwards [h, toScalarL2_class_ae G μ hOpen s] with x hx he
    rw [he]
    simp only [unframe, hx, Gauge.fiberMap, mul_zero]

section Area

/-- Existing completed holomorphic sections are admitted to the larger measurable-field carrier. -/
def completedField (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (v : GaugeAreaCompletion G hOpen) : FiniteField G (areaMeasure D.X) hOpen where
  value := (realizedSection G hOpen v).value
  measurable := by
    have he : unframe G hOpen (realizedSection G hOpen v).value =
        realizedValue hOpen ((areaGauge G hOpen).symm v) := by
      funext x
      rw [unframe, realizedSection, G.bundleSectionEquiv_value]
      exact G.fiberMap_symm_apply hOpen x _
    rw [he]
    exact (section_continuous D.X
      (completedRealization hOpen ((areaGauge G hOpen).symm v))).measurable.aestronglyMeasurable
  finite := realizedSection_finite G hOpen v

def targetEmbedding (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (v : GaugeAreaCompletion G hOpen) : FieldL2 G (areaMeasure D.X) hOpen :=
  fieldClass G (areaMeasure D.X) hOpen (completedField G hOpen v)

/-- The intrinsic field class normalizes to the EXACT historical source-frame inclusion. -/
theorem targetEmbedding_normalizes (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (v : GaugeAreaCompletion G hOpen) :
    toScalarL2 G (areaMeasure D.X) hOpen (targetEmbedding G hOpen v) = pulledL2Inclusion G hOpen v := by
  apply Lp.ext
  filter_upwards [toScalarL2_class_ae G (areaMeasure D.X) hOpen (completedField G hOpen v),
    toL2_ae hOpen ((areaGauge G hOpen).symm v)] with x hx hy
  change _ = toL2 hOpen ((areaGauge G hOpen).symm v) x
  rw [hx, hy]
  change G.symm.fiberMap hOpen x ((realizedSection G hOpen v).value x) = _
  rw [realizedSection, G.bundleSectionEquiv_value]
  exact G.fiberMap_symm_apply hOpen x _

/-- Concrete conjugation by the proved ambient equivalence; no new metric or measure. -/
def fieldProjection (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (q : FieldL2 G (areaMeasure D.X) hOpen) : FieldL2 G (areaMeasure D.X) hOpen :=
  fromScalarL2 G (areaMeasure D.X) hOpen
    (bergmanProjection hOpen (toScalarL2 G (areaMeasure D.X) hOpen q))

@[simp] theorem fieldProjection_normalizes (G : Gauge (Cocycle.identity D) C)
    (hOpen : D.IsOpenCover) (q : FieldL2 G (areaMeasure D.X) hOpen) :
    toScalarL2 G (areaMeasure D.X) hOpen (fieldProjection G hOpen q) =
      bergmanProjection hOpen (toScalarL2 G (areaMeasure D.X) hOpen q) := to_from _ _ _ _

theorem fieldProjection_idempotent (G : Gauge (Cocycle.identity D) C)
    (hOpen : D.IsOpenCover) (q : FieldL2 G (areaMeasure D.X) hOpen) :
    fieldProjection G hOpen (fieldProjection G hOpen q) = fieldProjection G hOpen q := by
  apply (scalarEquiv G (areaMeasure D.X) hOpen).injective
  change toScalarL2 G (areaMeasure D.X) hOpen _ = toScalarL2 G (areaMeasure D.X) hOpen _
  simp only [fieldProjection_normalizes]
  exact congrArg (fun T : AmbientL2 D.X →L[ℂ] AmbientL2 D.X =>
    T (toScalarL2 G (areaMeasure D.X) hOpen q)) (bergmanProjection_idempotent hOpen)

/-- The output class is the ACTUAL target-bundle realization of the historical projected vector. -/
theorem fieldProjection_realizes (G : Gauge (Cocycle.identity D) C)
    (hOpen : D.IsOpenCover) (q : FieldL2 G (areaMeasure D.X) hOpen) :
    fieldProjection G hOpen q = targetEmbedding G hOpen
      (areaGauge G hOpen (bergmanLift hOpen (toScalarL2 G (areaMeasure D.X) hOpen q))) := by
  apply (scalarEquiv G (areaMeasure D.X) hOpen).injective
  change toScalarL2 G (areaMeasure D.X) hOpen _ = toScalarL2 G (areaMeasure D.X) hOpen _
  rw [fieldProjection_normalizes, targetEmbedding_normalizes]
  change bergmanProjection hOpen _ = l2Inclusion hOpen
    ((areaGauge G hOpen).symm (areaGauge G hOpen _))
  rw [(areaGauge G hOpen).symm_apply_apply]
  rfl

/-- Fixed points mean holomorphic normalized classes, not every arbitrary representative. -/
theorem fieldProjection_fixed_iff (G : Gauge (Cocycle.identity D) C)
    (hOpen : D.IsOpenCover) (q : FieldL2 G (areaMeasure D.X) hOpen) :
    fieldProjection G hOpen q = q ↔
      toScalarL2 G (areaMeasure D.X) hOpen q ∈ holomorphicSubspace hOpen := by
  constructor
  · intro he
    apply (bergmanProjection_eq_self_iff hOpen _).mp
    have hn := congrArg (toScalarL2 G (areaMeasure D.X) hOpen) he
    simpa only [fieldProjection_normalizes] using hn
  · intro he
    apply (scalarEquiv G (areaMeasure D.X) hOpen).injective
    exact (fieldProjection_normalizes G hOpen q).trans
      ((bergmanProjection_eq_self_iff hOpen _).mpr he)

/-- The explicit complex pairing is Hermitian-compatible with this exact projection. -/
theorem fieldProjection_pairing (G : Gauge (Cocycle.identity D) C) (hOpen : D.IsOpenCover)
    (q r : FieldL2 G (areaMeasure D.X) hOpen) :
    fieldPairing G (areaMeasure D.X) hOpen (fieldProjection G hOpen q) r =
      fieldPairing G (areaMeasure D.X) hOpen q (fieldProjection G hOpen r) := by
  simp only [fieldPairing, fieldProjection_normalizes]
  simpa only [bergmanProjection_adjoint] using
    (ContinuousLinearMap.adjoint_inner_left (bergmanProjection hOpen)
      (toScalarL2 G (areaMeasure D.X) hOpen q) (toScalarL2 G (areaMeasure D.X) hOpen r))

/-- Contraction is measured in the target metric's actual quotient energy. -/
theorem fieldProjection_energy_le (G : Gauge (Cocycle.identity D) C)
    (hOpen : D.IsOpenCover) (q : FieldL2 G (areaMeasure D.X) hOpen) :
    quotientFieldEnergy G (areaMeasure D.X) hOpen (fieldProjection G hOpen q) ≤
      quotientFieldEnergy G (areaMeasure D.X) hOpen q := by
  rw [quotientFieldEnergy_norm, quotientFieldEnergy_norm, fieldProjection_normalizes]
  apply ENNReal.ofReal_le_ofReal
  apply (sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).mpr
  exact ((bergmanProjection hOpen).le_opNorm _).trans
    (by simpa only [one_mul] using mul_le_mul_of_nonneg_right
      (bergmanProjection_norm_le hOpen) (norm_nonneg (toScalarL2 G (areaMeasure D.X) hOpen q)))

/-- Every original realized target vector is fixed; no ambient input surjectivity is asserted. -/
theorem fieldProjection_targetEmbedding (G : Gauge (Cocycle.identity D) C)
    (hOpen : D.IsOpenCover) (v : GaugeAreaCompletion G hOpen) :
    fieldProjection G hOpen (targetEmbedding G hOpen v) = targetEmbedding G hOpen v := by
  apply (scalarEquiv G (areaMeasure D.X) hOpen).injective
  change toScalarL2 G (areaMeasure D.X) hOpen _ = toScalarL2 G (areaMeasure D.X) hOpen _
  rw [fieldProjection_normalizes, targetEmbedding_normalizes]
  exact bergmanProjection_embedding hOpen ((areaGauge G hOpen).symm v)

namespace Fixtures

open GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures
  (disk diskCover diskCover_isOpen center)
open GRWTSK.Analysis.Operator.HolomorphicMultiplierArea.Fixtures
  (spike spike_center spike_ae_zero)
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaL2.Fixtures (spike_memLp)

/-- The newly admitted ambient fields may be nonholomorphic: the normalized spike is an example. -/
theorem framed_spike_zero_class {E : Cocycle diskCover} (G : Gauge (Cocycle.identity diskCover) E) :
    fieldClass G (areaMeasure disk) diskCover_isOpen
        (ofMemLp G (areaMeasure disk) diskCover_isOpen spike spike_memLp) =
      fieldClass G (areaMeasure disk) diskCover_isOpen
        (ofMemLp G (areaMeasure disk) diskCover_isOpen 0 MemLp.zero) :=
  ofMemLp_congr_ae G (areaMeasure disk) diskCover_isOpen spike 0 spike_memLp MemLp.zero spike_ae_zero

/-- Not even an arbitrary function on all field classes can recover every normalized point value. -/
theorem no_allFields_point_recovery {E : Cocycle diskCover}
    (G : Gauge (Cocycle.identity diskCover) E) :
    ¬ ∃ T : FieldL2 G (areaMeasure disk) diskCover_isOpen → ℂ,
      ∀ s : FiniteField G (areaMeasure disk) diskCover_isOpen,
        T (fieldClass G (areaMeasure disk) diskCover_isOpen s) =
          unframe G diskCover_isOpen s.value center := by
  rintro ⟨T, hT⟩
  have h1 := hT (ofMemLp G (areaMeasure disk) diskCover_isOpen spike spike_memLp)
  have h0 := hT (ofMemLp G (areaMeasure disk) diskCover_isOpen 0 MemLp.zero)
  simp only [ofMemLp, unframe_frame, spike_center, Pi.zero_apply] at h1 h0
  rw [framed_spike_zero_class G] at h1
  exact zero_ne_one (h0.symm.trans h1)

end Fixtures

end Area
end
end GRWTSK.Analysis.ComplexAnalysis.HolomorphicGaugeFieldL2
