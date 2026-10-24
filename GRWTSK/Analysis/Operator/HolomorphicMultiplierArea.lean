import GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaMean
import GRWTSK.Analysis.Operator.HolomorphicMultiplierCircleMixture
import Mathlib.MeasureTheory.Integral.Lebesgue.Map
import Mathlib.MeasureTheory.Measure.Restrict

/-!
# Evaluation on the existing section quotient for actual complex area

Area is the pullback of complex Lebesgue measure to the exact domain subtype, not a
normalized, atomic, or circle-mixture measure. The preceding disk estimate supplies the
local-to-global energy inequality. On the identity bundle with unit metric, it derives
bounded point evaluation on the old a.e. quotient. Finite total area supplies the unit
section as a detector at every point, hence the old representation is isometric and has
closed operator image. No completeness or pointwise realization of completed sections,
nontrivial-bundle frame, star closure, or differential-domain assertion is introduced.
-/

namespace GRWTSK.Analysis.Operator.HolomorphicMultiplierArea

open Filter Topology MeasureTheory Metric Set
open scoped ENNReal
open scoped GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionInnerProduct
open scoped GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.BoundedSymbol
open scoped GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicEvaluationTopology (constantSection)
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionCompletion
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaMean
open GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation
open GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm
open GRWTSK.Analysis.Operator.HolomorphicMultiplierComplete
open GRWTSK.Analysis.Operator.HolomorphicMultiplierNorming
open GRWTSK.Analysis.Operator.HolomorphicMultiplierAtomic (PositiveAtom)
open GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle
open GRWTSK.Analysis.Operator.HolomorphicMultiplierCircleMixture (centeredWindow centeredWindow_center)

universe u
noncomputable section

/-- Unnormalized Lebesgue area on this exact subtype; no new MeasureSpace instance. -/
def areaMeasure (X : Domain) : Measure X.carrier :=
  Measure.comap (fun x : X.carrier => (x : ℂ)) (volume : Measure ℂ)

/-- The inclusion pushes subtype area to restriction of the same ambient area. -/
theorem areaMeasure_map (X : Domain) (hX : MeasurableSet X.carrier) :
    (areaMeasure X).map (fun x : X.carrier => (x : ℂ)) =
      (volume : Measure ℂ).restrict X.carrier :=
  map_comap_subtype_coe hX volume

theorem areaMeasure_univ (X : Domain) (hX : MeasurableSet X.carrier) :
    areaMeasure X univ = (volume : Measure ℂ) X.carrier := by
  simpa only [areaMeasure, image_univ, Subtype.range_coe] using
    comap_subtype_coe_apply hX (volume : Measure ℂ) (univ : Set X.carrier)

theorem areaMeasure_singleton (X : Domain) (hX : MeasurableSet X.carrier) (x : X.carrier) :
    areaMeasure X {x} = 0 := by
  rw [areaMeasure, comap_subtype_coe_apply hX, Set.image_singleton]
  exact measure_singleton x.1

/-- Exact integration binding; measurable embedding permits arbitrary lower integrands. -/
theorem lintegral_areaMeasure (X : Domain) (hX : MeasurableSet X.carrier)
    (f : ℂ → ℝ≥0∞) :
    (∫⁻ x, f x.1 ∂areaMeasure X) = ∫⁻ z in X.carrier, f z :=
  lintegral_subtype_comap hX f

variable {ι : Type u} {D : IndexedDomainCover ι}

/-- The old identity-metric energy is exactly the domain's ambient area lower integral. -/
theorem energy_area_eq (hOpen : D.IsOpenCover)
    (s : BundleSection (Cocycle.identity D) hOpen) :
    energy (MetricWeights.identity D) (areaMeasure D.X) hOpen s =
      ∫⁻ z in D.X.carrier, ENNReal.ofReal (‖ambientRepresentative D.X s.value z‖ ^ 2) := by
  rw [← lintegral_areaMeasure D.X (coveredDomain_isOpen D hOpen).measurableSet]
  apply lintegral_congr
  intro x
  rw [ambientRepresentative_apply D.X s.value x.1 x.2]
  change ENNReal.ofReal (1 * Complex.normSq (s.value x)) = _
  rw [one_mul, Complex.normSq_eq_norm_sq]

/-- Local Bochner integrability is proved before its conversion to a lower integral. -/
theorem window_integral_le_energy (W : CircleWindow D.X) (hOpen : D.IsOpenCover)
    (s : BundleSection (Cocycle.identity D) hOpen) :
    ENNReal.ofReal (∫ z in closedBall W.center W.radius,
      ‖ambientRepresentative D.X s.value z‖ ^ 2) ≤
      energy (MetricWeights.identity D) (areaMeasure D.X) hOpen s := by
  have hd := (ambientRepresentative_differentiableOn D.X (identitySymbol hOpen s)).mono
    W.closedBall_subset
  have hi := (square_integrable hd).2
  rw [ofReal_integral_eq_lintegral_ofReal hi
    (Eventually.of_forall (fun z => sq_nonneg (‖ambientRepresentative D.X s.value z‖))),
    energy_area_eq hOpen s]
  exact lintegral_mono' (Measure.restrict_mono W.closedBall_subset le_rfl) le_rfl

/-- This estimate still allows infinite global energy and infinite total area. -/
theorem window_energy_bound (W : CircleWindow D.X) (hOpen : D.IsOpenCover)
    (s : BundleSection (Cocycle.identity D) hOpen) :
    ENNReal.ofReal ((Real.pi * W.radius ^ 2) * ‖s.value W.centerPoint‖ ^ 2) ≤
      energy (MetricWeights.identity D) (areaMeasure D.X) hOpen s :=
  (ENNReal.ofReal_le_ofReal (window_bundleSection_area_bound W hOpen s)).trans
    (window_integral_le_energy W hOpen s)

/-- In this area/holomorphic setting zero energy forces the center value to vanish. -/
theorem value_zero_of_energy_zero (W : CircleWindow D.X) (hOpen : D.IsOpenCover)
    (s : BundleSection (Cocycle.identity D) hOpen)
    (hs : energy (MetricWeights.identity D) (areaMeasure D.X) hOpen s = 0) :
    s.value W.centerPoint = 0 := by
  have hb := window_energy_bound W hOpen s
  rw [hs] at hb
  have hp : 0 < Real.pi * W.radius ^ 2 := mul_pos Real.pi_pos (sq_pos_of_pos W.radius_pos)
  have he : (Real.pi * W.radius ^ 2) * ‖s.value W.centerPoint‖ ^ 2 ≤ 0 :=
    ENNReal.ofReal_eq_zero.mp (le_antisymm hb bot_le)
  have hsq : ‖s.value W.centerPoint‖ ^ 2 ≤ 0 :=
    (mul_le_mul_left hp).mp (by simpa only [mul_zero] using he)
  exact norm_eq_zero.mp (sq_eq_zero_iff.mp (le_antisymm hsq (sq_nonneg _)))

/-- The local estimate proves compatibility with the original a.e. relation. -/
theorem ae_value_eq (W : CircleWindow D.X) (hOpen : D.IsOpenCover)
    (s t : BundleSection (Cocycle.identity D) hOpen)
    (h : AEEqual (areaMeasure D.X) hOpen s t) :
    s.value W.centerPoint = t.value W.centerPoint := by
  let f : HolomorphicSection D.X := identitySymbol hOpen s - identitySymbol hOpen t
  let d := scalarSection D hOpen f
  have hd : energy (MetricWeights.identity D) (areaMeasure D.X) hOpen d = 0 := by
    apply (energy_eq_zero_iff _ _ _ _).mpr
    filter_upwards [h] with x hx
    change s.value x - t.value x = 0
    exact sub_eq_zero.mpr hx
  have hz := value_zero_of_energy_zero W hOpen d hd
  change s.value W.centerPoint - t.value W.centerPoint = 0 at hz
  exact sub_eq_zero.mp hz

/-- For actual holomorphic identity-bundle sections, area-a.e. equality is pointwise equality. -/
theorem aeEqual_area_iff (hOpen : D.IsOpenCover)
    (s t : BundleSection (Cocycle.identity D) hOpen) :
    AEEqual (areaMeasure D.X) hOpen s t ↔ ∀ x, s.value x = t.value x := by
  constructor
  · intro h x
    have he := ae_value_eq (centeredWindow D.X (coveredDomain_isOpen D hOpen) x) hOpen s t h
    simpa only [centeredWindow_center] using he
  · exact fun h => Eventually.of_forall h

/-- No representative is selected: the lift uses the derived area-a.e. compatibility. -/
def value (W : CircleWindow D.X) (hOpen : D.IsOpenCover) :
    SectionQuotient (MetricWeights.identity D) (areaMeasure D.X) hOpen → ℂ :=
  Quotient.lift (s := finiteEnergySetoid (MetricWeights.identity D) (areaMeasure D.X) hOpen)
    (fun s => s.1.value W.centerPoint) (fun s t h => ae_value_eq W hOpen s.1 t.1 h)

@[simp] theorem value_classOf (W : CircleWindow D.X) (hOpen : D.IsOpenCover)
    (s : FiniteEnergySection (MetricWeights.identity D) (areaMeasure D.X) hOpen) :
    value W hOpen (classOf (MetricWeights.identity D) (areaMeasure D.X) hOpen s) =
      s.1.value W.centerPoint := rfl

/-- Only finite-energy input licenses real conversion; finite total area is not assumed. -/
theorem value_sq_bound (W : CircleWindow D.X) (hOpen : D.IsOpenCover)
    (q : SectionQuotient (MetricWeights.identity D) (areaMeasure D.X) hOpen) :
    (Real.pi * W.radius ^ 2) * ‖value W hOpen q‖ ^ 2 ≤ ‖q‖ ^ 2 := by
  refine Quotient.inductionOn q ?_
  intro s
  have h := ENNReal.toReal_mono (ne_of_lt s.2) (window_energy_bound W hOpen s.1)
  rw [ENNReal.toReal_ofReal (mul_nonneg
    (mul_pos Real.pi_pos (sq_pos_of_pos W.radius_pos)).le (sq_nonneg _))] at h
  simpa only [value_classOf, norm_sq_eq_energy, quotientEnergy_classOf] using h

theorem value_norm_bound (W : CircleWindow D.X) (hOpen : D.IsOpenCover)
    (q : SectionQuotient (MetricWeights.identity D) (areaMeasure D.X) hOpen) :
    ‖value W hOpen q‖ ≤ (Real.sqrt (Real.pi * W.radius ^ 2))⁻¹ * ‖q‖ := by
  have hp : 0 < Real.pi * W.radius ^ 2 := mul_pos Real.pi_pos (sq_pos_of_pos W.radius_pos)
  have hs : 0 < Real.sqrt (Real.pi * W.radius ^ 2) := Real.sqrt_pos.mpr hp
  have hsq : (Real.sqrt (Real.pi * W.radius ^ 2) * ‖value W hOpen q‖) ^ 2 ≤ ‖q‖ ^ 2 := by
    rw [mul_pow, Real.sq_sqrt hp.le]
    exact value_sq_bound W hOpen q
  have hle := (sq_le_sq₀ (mul_nonneg hs.le (norm_nonneg _)) (norm_nonneg q)).mp hsq
  calc
    ‖value W hOpen q‖ = (Real.sqrt (Real.pi * W.radius ^ 2))⁻¹ *
        (Real.sqrt (Real.pi * W.radius ^ 2) * ‖value W hOpen q‖) := by
      rw [← mul_assoc, inv_mul_cancel₀ hs.ne', one_mul]
    _ ≤ _ := mul_le_mul_of_nonneg_left hle (inv_nonneg.mpr hs.le)

/-- Bounded complex linearity is constructed from the old quotient operations and local estimate. -/
def functional (W : CircleWindow D.X) (hOpen : D.IsOpenCover) :
    SectionQuotient (MetricWeights.identity D) (areaMeasure D.X) hOpen →L[ℂ] ℂ :=
  ({ toFun := value W hOpen
     map_add' := by
       intro q r
       refine Quotient.inductionOn₂ q r ?_
       intro s t
       rfl
     map_smul' := by
       intro c q
       refine Quotient.inductionOn q ?_
       intro s
       rfl } : SectionQuotient (MetricWeights.identity D) (areaMeasure D.X) hOpen →ₗ[ℂ] ℂ).mkContinuous
    (Real.sqrt (Real.pi * W.radius ^ 2))⁻¹ (value_norm_bound W hOpen)

@[simp] theorem functional_classOf (W : CircleWindow D.X) (hOpen : D.IsOpenCover)
    (s : FiniteEnergySection (MetricWeights.identity D) (areaMeasure D.X) hOpen) :
    functional W hOpen (classOf (MetricWeights.identity D) (areaMeasure D.X) hOpen s) =
      s.1.value W.centerPoint := rfl

theorem functional_norm_le (W : CircleWindow D.X) (hOpen : D.IsOpenCover) :
    ‖functional W hOpen‖ ≤ (Real.sqrt (Real.pi * W.radius ^ 2))⁻¹ :=
  (functional W hOpen).opNorm_le_bound (inv_nonneg.mpr (Real.sqrt_nonneg _))
    (value_norm_bound W hOpen)

/-- Different windows centered at the same point change estimates, not the evaluation map. -/
theorem functional_congr (W V : CircleWindow D.X) (hOpen : D.IsOpenCover)
    (h : W.centerPoint = V.centerPoint) : functional W hOpen = functional V hOpen := by
  ext q
  refine Quotient.inductionOn q ?_
  intro s
  exact congrArg s.1.value h

/-- Nonzero evaluation requires a real detecting section, not just an open-domain label. -/
def pointPort (W : CircleWindow D.X) (hOpen : D.IsOpenCover)
    (s : FiniteEnergySection (MetricWeights.identity D) (areaMeasure D.X) hOpen)
    (hs : s.1.value W.centerPoint ≠ 0) :
    PointEvaluationPort (MetricWeights.identity D) (areaMeasure D.X) hOpen W.centerPoint where
  functional := functional W hOpen
  on_class _ := rfl
  nonzero := by
    intro h
    have he := congrArg (fun T : SectionQuotient (MetricWeights.identity D) (areaMeasure D.X)
      hOpen →L[ℂ] ℂ => T (classOf (MetricWeights.identity D) (areaMeasure D.X) hOpen s)) h
    exact hs he

/-- Finite total ambient area supplies the historical constant-one detector. -/
def finiteAreaPointPort (W : CircleWindow D.X) (hOpen : D.IsOpenCover)
    (hArea : (volume : Measure ℂ) D.X.carrier < ∞) :
    PointEvaluationPort (MetricWeights.identity D) (areaMeasure D.X) hOpen W.centerPoint :=
  pointPort W hOpen (finiteUnit D (areaMeasure D.X) hOpen (by
    rwa [areaMeasure_univ D.X (coveredDomain_isOpen D hOpen).measurableSet]))
    (by change (1 : ℂ) ≠ 0; exact one_ne_zero)

/-- Openness selects only an estimating window; the measure stays fixed at every point. -/
def finiteAreaPointPortAt (hOpen : D.IsOpenCover)
    (hArea : (volume : Measure ℂ) D.X.carrier < ∞) (x : D.X.carrier) :
    PointEvaluationPort (MetricWeights.identity D) (areaMeasure D.X) hOpen x := by
  have P := finiteAreaPointPort (centeredWindow D.X (coveredDomain_isOpen D hOpen) x) hOpen hArea
  simpa only [centeredWindow_center] using P

/-- Constructed evaluations at all points supply the old exact norming criterion. -/
theorem area_representation_norm (hOpen : D.IsOpenCover)
    (hArea : (volume : Measure ℂ) D.X.carrier < ∞) (f : BoundedSymbol D.X) :
    ‖completedRepresentation (MetricWeights.identity D) (areaMeasure D.X) hOpen f‖ = ‖f‖ :=
  completedRepresentation_norm_eq _ _ hOpen univ dense_univ
    (fun x => finiteAreaPointPortAt hOpen hArea x.1) f

/-- The old completed algebra map gains isometry; no new operator action is selected. -/
def areaRepresentation (hOpen : D.IsOpenCover)
    (hArea : (volume : Measure ℂ) D.X.carrier < ∞) :
    BoundedSymbol D.X →ₗᵢ[ℂ]
      (SectionCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen →L[ℂ]
        SectionCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen) where
  toLinearMap := (completedAlgHom (MetricWeights.identity D) (areaMeasure D.X) hOpen).toLinearMap
  norm_map' := area_representation_norm hOpen hArea

@[simp] theorem areaRepresentation_apply (hOpen : D.IsOpenCover)
    (hArea : (volume : Measure ℂ) D.X.carrier < ∞) (f : BoundedSymbol D.X) :
    areaRepresentation hOpen hArea f =
      completedRepresentation (MetricWeights.identity D) (areaMeasure D.X) hOpen f := rfl

/-- This is closedness of the multiplier operator image, not completeness of sections. -/
theorem area_representation_closed (hOpen : D.IsOpenCover)
    (hArea : (volume : Measure ℂ) D.X.carrier < ∞) :
    IsClosed (Set.range (completedRepresentation (MetricWeights.identity D) (areaMeasure D.X) hOpen)) :=
  represented_range_isClosed _ _ hOpen univ dense_univ
    (fun x => finiteAreaPointPortAt hOpen hArea x.1)

/-- Singleton-null area evaluations cannot be replaced by atomic domination. -/
theorem no_positiveAtom (hOpen : D.IsOpenCover) (x : D.X.carrier) :
    ¬ Nonempty (PositiveAtom (D := D) (areaMeasure D.X) x) := by
  rintro ⟨A⟩
  have hp : ∀ᵐ y ∂areaMeasure D.X, y ≠ x := by
    apply ae_iff.mpr
    simpa only [not_not] using
      areaMeasure_singleton D.X (coveredDomain_isOpen D hOpen).measurableSet x
  exact (A.ae_at hp) rfl

/-- Infinite total area does not admit the unit section through real-valued defaults. -/
theorem unit_not_finite_of_infinite_area (hOpen : D.IsOpenCover)
    (hArea : (volume : Measure ℂ) D.X.carrier = ∞) :
    ¬ energy (MetricWeights.identity D) (areaMeasure D.X) hOpen
      (scalarSection D hOpen (constantSection D.X 1)) < ∞ := by
  rw [unitSection_energy, areaMeasure_univ D.X (coveredDomain_isOpen D hOpen).measurableSet, hArea]
  exact not_lt_of_ge le_rfl

namespace Fixtures

open GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures

/-- The unit disk has finite actual area; compact containment, not normalization, supplies it. -/
theorem disk_finite_area : (volume : Measure ℂ) disk.carrier < ∞ := by
  have hs : disk.carrier ⊆ closedBall (0 : ℂ) 1 := by
    intro z hz
    simpa [mem_closedBall, dist_eq_norm] using hz.le
  exact lt_of_le_of_lt (measure_mono hs) (isCompact_closedBall (0 : ℂ) 1).measure_lt_top

/-- The geometric disk uses its own area, not a selected atomic or circle-mixture model. -/
theorem disk_area_norming :
    (∀ f : BoundedSymbol disk,
      ‖completedRepresentation (MetricWeights.identity diskCover) (areaMeasure disk)
        diskCover_isOpen f‖ = ‖f‖) ∧
    IsClosed (Set.range (completedRepresentation (MetricWeights.identity diskCover)
      (areaMeasure disk) diskCover_isOpen)) :=
  ⟨area_representation_norm diskCover_isOpen disk_finite_area,
    area_representation_closed diskCover_isOpen disk_finite_area⟩

/-- A null-point spike remains a.e. zero without being holomorphic. -/
def spike : Section disk := by
  classical
  exact fun x => if x = center then 1 else 0

theorem spike_center : spike center = 1 := by simp [spike]

theorem spike_ae_zero : spike =ᵐ[areaMeasure disk] 0 := by
  have hp : ∀ᵐ x ∂areaMeasure disk, x ≠ center := by
    apply ae_iff.mpr
    simpa only [not_not] using areaMeasure_singleton disk
      (coveredDomain_isOpen diskCover diskCover_isOpen).measurableSet center
  filter_upwards [hp] with x hx
  simp [spike, hx]

theorem spike_not_holomorphic : ¬ ExtendsHolomorphically disk spike := by
  intro h
  let s := scalarSection diskCover diskCover_isOpen (⟨spike, h⟩ : HolomorphicSection disk)
  let t := scalarSection diskCover diskCover_isOpen (constantSection disk 0)
  have ha : AEEqual (areaMeasure disk) diskCover_isOpen s t := spike_ae_zero
  have he := (aeEqual_area_iff diskCover_isOpen s t).mp ha center
  change spike center = 0 at he
  rw [spike_center] at he
  exact one_ne_zero he

end Fixtures
end
end GRWTSK.Analysis.Operator.HolomorphicMultiplierArea
