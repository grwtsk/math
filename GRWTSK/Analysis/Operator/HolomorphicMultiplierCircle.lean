import GRWTSK.Analysis.Operator.HolomorphicMultiplierAtomic
import Mathlib.Analysis.Complex.MeanValue

/-!
# Holomorphic evaluation from a fixed nonatomic circle measure

A positive-radius closed disk is contained in the actual selected domain. Normalized
angular Lebesgue measure on its boundary is pushed to that same domain, independently
of the symbol or section. Mean value, applied also to the holomorphic square, derives
bounded center evaluation on the historical finite-energy section quotient. The center
has zero measure. This is an analytic trace argument, not positive-atom recovery.
No area-measure identification, dense evaluation family, or section-space closedness
is asserted. Identity cocycle and unit metric are explicit throughout the section layer.
-/

namespace GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle

open Filter Topology MeasureTheory Metric Set
open scoped ENNReal
open scoped GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionInnerProduct
open scoped GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.BoundedSymbol
open scoped GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicEvaluationTopology (constantSection section_continuous)
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionLinear
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionPairing
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation
open GRWTSK.Analysis.Operator.HolomorphicMultiplierNorming
open GRWTSK.Analysis.Operator.HolomorphicMultiplierAtomic

universe u
noncomputable section

/-- Geometric data only: no measure, functional or mean-value theorem is supplied. -/
structure CircleWindow (X : Domain) where
  center : ℂ
  radius : ℝ
  radius_pos : 0 < radius
  closedBall_subset : closedBall center radius ⊆ X.carrier

namespace CircleWindow

variable {X : Domain}

/-- The evaluation point remains a point of the exact domain. -/
def centerPoint (W : CircleWindow X) : X.carrier :=
  ⟨W.center, W.closedBall_subset (mem_closedBall_self W.radius_pos.le)⟩

/-- The entire circle lies in the exact domain, including all parameter endpoints. -/
def parameter (W : CircleWindow X) (θ : ℝ) : X.carrier :=
  ⟨circleMap W.center W.radius θ,
    W.closedBall_subset (circleMap_mem_closedBall W.center W.radius_pos.le θ)⟩

theorem parameter_continuous (W : CircleWindow X) : Continuous W.parameter := by
  unfold parameter
  fun_prop [circleMap]

/-- Fixed normalized angular measure; it depends on W, not on the evaluated section. -/
def measure (W : CircleWindow X) : Measure X.carrier :=
  ENNReal.ofReal ((2 * Real.pi)⁻¹) •
    (volume.restrict (Ioc 0 (2 * Real.pi))).map W.parameter

theorem measure_univ (W : CircleWindow X) : W.measure univ = 1 := by
  rw [measure, Measure.smul_apply, smul_eq_mul,
    Measure.map_apply W.parameter_continuous.measurable MeasurableSet.univ,
    Set.preimage_univ, Measure.restrict_apply MeasurableSet.univ, univ_inter,
    Real.volume_Ioc, sub_zero,
    ← ENNReal.ofReal_mul (inv_nonneg.mpr Real.two_pi_pos.le),
    inv_mul_cancel₀ (ne_of_gt Real.two_pi_pos), ENNReal.ofReal_one]

/-- A local proof, not a newly exported global measure instance. -/
theorem measure_probability (W : CircleWindow X) : IsProbabilityMeasure W.measure :=
  ⟨W.measure_univ⟩

/-- Nonzero radius makes every parameter fiber countable and therefore Lebesgue-null. -/
theorem measure_singleton (W : CircleWindow X) (x : X.carrier) : W.measure {x} = 0 := by
  have hc : (W.parameter ⁻¹' {x}).Countable := by
    have he : W.parameter ⁻¹' {x} = circleMap W.center W.radius ⁻¹' {x.1} := by
      ext θ
      simp only [Set.mem_preimage, Set.mem_singleton_iff, parameter, Subtype.ext_iff]
    rw [he]
    exact (Set.countable_singleton x.1).preimage_circleMap W.center W.radius_pos.ne'
  have hv : (volume : Measure ℝ) (W.parameter ⁻¹' {x}) = 0 := hc.measure_zero
  have hr : volume.restrict (Ioc 0 (2 * Real.pi)) (W.parameter ⁻¹' {x}) = 0 := by
    rw [Measure.restrict_apply
      (W.parameter_continuous.measurable (measurableSet_singleton x))]
    exact measure_mono_null Set.inter_subset_left hv
  rw [measure, Measure.smul_apply, smul_eq_mul,
    Measure.map_apply W.parameter_continuous.measurable (measurableSet_singleton x),
    hr, mul_zero]

/-- Bind integration against the constructed measure to the actual circle average. -/
theorem integral_eq_circleAverage (W : CircleWindow X) (f : Section X)
    (hf : Measurable f) :
    (∫ x, f x ∂W.measure) =
      Real.circleAverage (ambientRepresentative X f) W.center W.radius := by
  rw [measure, integral_smul_measure,
    ENNReal.toReal_ofReal (inv_nonneg.mpr Real.two_pi_pos.le),
    integral_map_of_stronglyMeasurable W.parameter_continuous.measurable hf.stronglyMeasurable,
    Real.circleAverage, intervalIntegral.integral_of_le Real.two_pi_pos.le]
  congr 1
  apply integral_congr_ae
  filter_upwards [] with θ
  exact (ambientRepresentative_apply X f _ (W.parameter θ).2).symm

/-- Mean value is derived from the supplied holomorphic section on the contained disk. -/
theorem integral_holomorphic (W : CircleWindow X) (f : HolomorphicSection X) :
    (∫ x, (f : Section X) x ∂W.measure) = (f : Section X) W.centerPoint := by
  rw [W.integral_eq_circleAverage _ (section_continuous X f).measurable]
  have hd := ambientRepresentative_differentiableOn X f
  have hmean := circleAverage_of_differentiable_on_off_countable
    (f := ambientRepresentative X (f : Section X)) (c := W.center) (R := W.radius)
    (s := ∅) Set.countable_empty
    (by simpa only [abs_of_pos W.radius_pos] using hd.continuousOn.mono W.closedBall_subset)
    (by
      intro z hz
      have hz' : z ∈ ball W.center W.radius := by
        simpa only [abs_of_pos W.radius_pos] using hz.1
      exact hd.differentiableAt (Filter.mem_of_superset (isOpen_ball.mem_nhds hz')
        (ball_subset_closedBall.trans W.closedBall_subset)))
  exact hmean.trans (ambientRepresentative_apply X (f : Section X) W.center W.centerPoint.2)

end CircleWindow

variable {ι : Type u} {D : IndexedDomainCover ι}

/-- Identity transitions make the exact fiber-value function globally holomorphic. -/
def identitySymbol (hOpen : D.IsOpenCover)
    (s : BundleSection (Cocycle.identity D) hOpen) : HolomorphicSection D.X := by
  refine ⟨s.value, (D.holomorphic_iff_restrictions hOpen s.value).mpr ?_⟩
  intro i
  have he : (fun z : (D.U i).carrier =>
      chartCoordinate (Cocycle.identity D) hOpen s.value i ⟨z.1, D.subset i z.2⟩) =
      restrict (D.xTo i) s.value := by
    funext z
    rw [chartCoordinate_apply, (Cocycle.identity D).scalar_apply
      (D.select ⟨z.1, D.subset i z.2⟩) i ⟨z.1, D.subset i z.2⟩
      (D.select_mem _) z.2]
    change 1 * s.value ⟨z.1, D.subset i z.2⟩ = s.value ⟨z.1, D.subset i z.2⟩
    exact one_mul _
  simpa only [he] using s.holomorphic i

@[simp] theorem identitySymbol_value (hOpen : D.IsOpenCover)
    (s : BundleSection (Cocycle.identity D) hOpen) (x : D.X.carrier) :
    (identitySymbol hOpen s : Section D.X) x = s.value x := rfl

namespace CircleWindow

variable (W : CircleWindow D.X) (hOpen : D.IsOpenCover)

/-- Exact center recovery is analytic, despite the center's zero measure. -/
theorem section_mean (s : BundleSection (Cocycle.identity D) hOpen) :
    (∫ x, s.value x ∂W.measure) = s.value W.centerPoint :=
  W.integral_holomorphic (identitySymbol hOpen s)

/-- Applying mean value to the holomorphic square supplies the L2 estimate below. -/
theorem section_square_mean (s : BundleSection (Cocycle.identity D) hOpen) :
    (∫ x, s.value x * s.value x ∂W.measure) =
      s.value W.centerPoint * s.value W.centerPoint :=
  W.integral_holomorphic (identitySymbol hOpen s * identitySymbol hOpen s)

/-- No representative is selected: the integral identity proves lift compatibility. -/
def value : SectionQuotient (MetricWeights.identity D) W.measure hOpen → ℂ :=
  Quotient.lift (s := finiteEnergySetoid (MetricWeights.identity D) W.measure hOpen)
    (fun s => s.1.value W.centerPoint) (fun s t h => by
      rw [← W.section_mean hOpen s.1, ← W.section_mean hOpen t.1]
      exact integral_congr_ae h)

@[simp] theorem value_classOf
    (s : FiniteEnergySection (MetricWeights.identity D) W.measure hOpen) :
    W.value hOpen (classOf (MetricWeights.identity D) W.measure hOpen s) =
      s.1.value W.centerPoint := rfl

/-- The norm of the holomorphic square is the existing identity-metric density. -/
theorem square_norm_eq_realSquare (s : BundleSection (Cocycle.identity D) hOpen)
    (x : D.X.carrier) :
    ‖s.value x * s.value x‖ = realSquare (MetricWeights.identity D) hOpen s x := by
  change ‖s.value x * s.value x‖ = 1 * Complex.normSq (s.value x)
  simp only [norm_mul, one_mul, Complex.normSq_eq_norm_sq, pow_two]

/-- The square has a genuine Bochner integral on the finite-energy domain. -/
theorem section_square_integrable
    (s : FiniteEnergySection (MetricWeights.identity D) W.measure hOpen) :
    Integrable (fun x => s.1.value x * s.1.value x) W.measure := by
  have hc := section_continuous D.X (identitySymbol hOpen s.1)
  exact (realSquare_integrable (MetricWeights.identity D) W.measure hOpen s).mono'
    (hc.mul hc).measurable.aestronglyMeasurable
    (Eventually.of_forall (fun x => (square_norm_eq_realSquare hOpen s.1 x).le))

/-- The estimate consumes the original finite-energy proof before real conversion. -/
theorem value_sq_bound (q : SectionQuotient (MetricWeights.identity D) W.measure hOpen) :
    ‖W.value hOpen q‖ ^ 2 ≤ ‖q‖ ^ 2 := by
  refine Quotient.inductionOn q ?_
  intro s
  have hi := realSquare_integrable (MetricWeights.identity D) W.measure hOpen s
  have hb : ∀ᵐ x ∂W.measure, ‖s.1.value x * s.1.value x‖ ≤
      realSquare (MetricWeights.identity D) hOpen s.1 x :=
    Eventually.of_forall (fun x => (square_norm_eq_realSquare hOpen s.1 x).le)
  have h := norm_integral_le_of_norm_le hi hb
  rw [W.section_square_mean hOpen s.1, norm_mul, ← pow_two] at h
  have he : (∫ x, realSquare (MetricWeights.identity D) hOpen s.1 x ∂W.measure) =
      (energy (MetricWeights.identity D) W.measure hOpen s.1).toReal :=
    integral_eq_lintegral_of_nonneg_ae
      (Eventually.of_forall (realSquare_nonneg (MetricWeights.identity D) hOpen s.1))
      hi.aestronglyMeasurable
  rw [he] at h
  simpa only [value_classOf, norm_sq_eq_energy, quotientEnergy_classOf] using h

theorem value_norm_bound (q : SectionQuotient (MetricWeights.identity D) W.measure hOpen) :
    ‖W.value hOpen q‖ ≤ ‖q‖ :=
  (sq_le_sq₀ (norm_nonneg _) (norm_nonneg q)).mp (W.value_sq_bound hOpen q)

/-- Bounded linearity on the old quotient is constructed from exact mean-value recovery. -/
def functional : SectionQuotient (MetricWeights.identity D) W.measure hOpen →L[ℂ] ℂ :=
  ({ toFun := W.value hOpen
     map_add' := by
       intro q r
       refine Quotient.inductionOn₂ q r ?_
       intro s t
       rfl
     map_smul' := by
       intro c q
       refine Quotient.inductionOn q ?_
       intro s
       rfl } : SectionQuotient (MetricWeights.identity D) W.measure hOpen →ₗ[ℂ] ℂ).mkContinuous 1
    (fun q => by simpa only [one_mul] using W.value_norm_bound hOpen q)

@[simp] theorem functional_classOf
    (s : FiniteEnergySection (MetricWeights.identity D) W.measure hOpen) :
    W.functional hOpen (classOf (MetricWeights.identity D) W.measure hOpen s) =
      s.1.value W.centerPoint := rfl

/-- The finite unit section proves that this evaluation has norm exactly one. -/
theorem functional_norm : ‖W.functional hOpen‖ = 1 := by
  apply le_antisymm
  · exact (W.functional hOpen).opNorm_le_bound (by norm_num)
      (fun q => by simpa only [one_mul] using W.value_norm_bound hOpen q)
  · let s := finiteUnit D W.measure hOpen (by rw [W.measure_univ]; norm_num)
    let q := classOf (MetricWeights.identity D) W.measure hOpen s
    have hq : ‖q‖ = 1 := by
      rw [norm_classOf, unitSection_energy, W.measure_univ]
      norm_num
    have hv : W.functional hOpen q = 1 := rfl
    simpa only [hv, norm_one, hq, mul_one] using (W.functional hOpen).le_opNorm q

/-- An actual port for a singleton-null point; no positive atom is requested. -/
def pointPort : PointEvaluationPort (MetricWeights.identity D) W.measure hOpen W.centerPoint where
  functional := W.functional hOpen
  on_class _ := rfl
  nonzero := by
    intro h
    have hn := W.functional_norm hOpen
    rw [h, norm_zero] at hn
    exact zero_ne_one hn

/-- The old multiplier lower-bound consumer now accepts this non-atomic producer. -/
theorem center_norm_le_operator (f : BoundedSymbol D.X) :
    ‖f.value W.centerPoint‖ ≤
      ‖completedRepresentation (MetricWeights.identity D) W.measure hOpen f‖ :=
  (W.pointPort hOpen).value_norm_le_completed f

/-- An atom-based proof cannot describe the constructed measure, even at its evaluation point. -/
theorem no_positiveAtom (x : D.X.carrier) :
    ¬ Nonempty (PositiveAtom (D := D) W.measure x) := by
  rintro ⟨A⟩
  have hp : ∀ᵐ y ∂W.measure, y ≠ x := by
    apply ae_iff.mpr
    simpa only [not_not] using W.measure_singleton x
  exact (A.ae_at hp) rfl

end CircleWindow

namespace Fixtures

open GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures

/-- One fixed circle strictly inside the historical open unit disk. -/
def halfCircle : CircleWindow disk where
  center := 0
  radius := 1 / 2
  radius_pos := by norm_num
  closedBall_subset := by
    intro z hz
    have hn : ‖z‖ ≤ (1 : ℝ) / 2 := by simpa only [mem_closedBall_zero_iff] using hz
    exact hn.trans_lt (by norm_num)

/-- A nonatomic measure and a genuine nonzero bounded holomorphic evaluation coexist. -/
theorem nonatomic_evaluation : halfCircle.measure univ = 1 ∧
    (∀ x, halfCircle.measure {x} = 0) ∧
    Nonempty (PointEvaluationPort (MetricWeights.identity diskCover)
      halfCircle.measure diskCover_isOpen halfCircle.centerPoint) ∧
    ‖halfCircle.functional diskCover_isOpen‖ = 1 :=
  ⟨halfCircle.measure_univ, halfCircle.measure_singleton,
    ⟨halfCircle.pointPort diskCover_isOpen⟩, halfCircle.functional_norm diskCover_isOpen⟩

/-- On unrestricted functions, changing a null-point value destroys pointwise recovery. -/
def spike : Section disk := Set.indicator {halfCircle.centerPoint} (fun _ => (1 : ℂ))

theorem spike_ae_zero : spike =ᵐ[halfCircle.measure] 0 := by
  have hp : ∀ᵐ x ∂halfCircle.measure, x ≠ halfCircle.centerPoint := by
    apply ae_iff.mpr
    simpa only [not_not] using
      halfCircle.measure_singleton halfCircle.centerPoint
  filter_upwards [hp] with x hx
  simp [spike, hx]

theorem spike_center : spike halfCircle.centerPoint = 1 := by simp [spike]

/-- The mean-value argument is essential: it cannot certify this unrestricted spike. -/
theorem spike_not_holomorphic : ¬ ExtendsHolomorphically disk spike := by
  intro h
  have hm := halfCircle.integral_holomorphic (⟨spike, h⟩ : HolomorphicSection disk)
  rw [integral_congr_ae spike_ae_zero, integral_zero] at hm
  exact zero_ne_one (hm.trans spike_center)

end Fixtures
end
end GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle
