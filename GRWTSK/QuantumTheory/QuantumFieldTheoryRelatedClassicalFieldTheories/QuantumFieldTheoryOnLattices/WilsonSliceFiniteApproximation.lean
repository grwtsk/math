/- Copyright (c) 2026 grwtsk contributors. MIT.
All imported Mathlib, SU(2), Haar and GRWTSK mathematics retain attribution
and their original licenses. -/
import GRWTSK.MeasureAndIntegration.RealKernelQuadratic
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceFiniteMomentOperator

/-!
# Source-exact finite-rank approximation of the actual invariant Wilson map

The bare exponential kernel is compressed by the actual orthogonal
projection. The existing temporal-gauge quadratic identity and the actual
invariant-continuous density identify that compression with invariantOperator.
The Taylor compression is the constructed finite moment operator. Therefore
the uniform factorial kernel remainder bounds their ACTUAL operator difference.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology ComplexConjugate
open Filter

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceFiniteApproximation
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceFeatures
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceContinuousOperatorQuadratic
open GRWTSK.Geometry.GaugeTheory.WilsonSliceInvariantContinuousDensity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceContinuousStrictPositivity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2StrictPositivity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceFiniteMomentOperator
open GRWTSK.Geometry.GaugeTheory.WilsonSliceTaylorRemainder
open GRWTSK.Analysis.InnerProductSpace.FiniteGramCompression
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramExponential
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramIntegral
open GRWTSK.Analysis.Integration.RealKernelQuadratic


variable (L : ℕ) [NeZero L]

def ambientFeature (β : ℝ) (m : ℕ) (i : WordIndex L m) : C(Slice L SU2, ℝ) :=
  Real.sqrt (coefficient L β i.1.val) • weightedWord L β i.2

/-- The whole Taylor kernel is the Gram kernel of the complete finite word inventory. -/
theorem featureKernel_eq_bareTaylor (β : ℝ) (hβ : 0 ≤ β) (m : ℕ) :
    featureKernel (ambientFeature L β m) = bareTaylorKernel L β m := by
  ext p
  have hdegree (n : Fin m) :
      (∑ w : Fin n.val → SliceCoordinate L,
        ambientFeature L β m ⟨n,w⟩ p.1 * ambientFeature L β m ⟨n,w⟩ p.2) =
        halfSpatialWeight L β p.1 * halfSpatialWeight L β p.2 *
          coefficient L β n.val * gram (sliceFeatures L) p.1 p.2 ^ n.val := by
    rw [gram_pow_words, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro w _
    change (Real.sqrt (coefficient L β n.val) *
      (halfSpatialWeight L β p.1 * wordFeature (sliceFeatures L) w p.1)) *
      (Real.sqrt (coefficient L β n.val) *
      (halfSpatialWeight L β p.2 * wordFeature (sliceFeatures L) w p.2)) = _
    calc
      _ = halfSpatialWeight L β p.1 * halfSpatialWeight L β p.2 *
          (Real.sqrt (coefficient L β n.val)) ^ 2 *
          (wordFeature (sliceFeatures L) w p.1 * wordFeature (sliceFeatures L) w p.2) := by ring
      _ = _ := by rw [Real.sq_sqrt (coefficient_nonnegative L hβ n.val)]
  change (∑ i : WordIndex L m, ambientFeature L β m i p.1 * ambientFeature L β m i p.2) = _
  rw [Fintype.sum_sigma]
  simp_rw [hdegree]
  simp only [coefficient]
  rw [Fin.sum_univ_eq_sum_range]
  change (∑ n ∈ Finset.range m,
    halfSpatialWeight L β p.1 * halfSpatialWeight L β p.2 *
      (Real.exp (-β * (spatialLinkCount L : ℝ)) * ((β / 2) ^ n / (n.factorial : ℝ))) *
      gram (sliceFeatures L) p.1 p.2 ^ n) = _
  simp only [bareTaylorKernel, normalizedTaylor, taylorKernel, Finset.mul_sum, mul_pow]
  apply Finset.sum_congr rfl
  intro n _
  ring

/-- The finite operator is a literal compression of the literal Taylor kernel map. -/
theorem finiteOperator_eq_compressedTaylor (β : ℝ) (hβ : 0 ≤ β) (m : ℕ) :
    finiteOperator L β m = compress (gaugeInvariantSpace L)
      (GRWTSK.Analysis.Integration.ContinuousKernelL2Bound.operator (sliceHaar L) (bareTaylorKernel L β m)) := by
  rw [← featureKernel_eq_bareTaylor L β hβ m, operator_featureKernel,
    compress_gramOperator]
  congr 1
  funext i
  simp only [ambientFeature, map_smul, feature, projectedWord, ambientWord]

private theorem bareKernel_symmetric (β : ℝ) (a b : Slice L SU2) :
    bareKernel L β (a,b) = bareKernel L β (b,a) := by
  change halfSpatialWeight L β a * halfSpatialWeight L β b * sliceWilsonProduct L β a b = _
  rw [W_eq_exp_gram, W_eq_exp_gram, gram_symm (sliceFeatures L) b a]
  ring

private theorem compressedBare_quadratic_embedding (β : ℝ) (hβ : 0 ≤ β)
    (f : invariantContinuousSpace L) :
    inner ℝ (invariantEmbedding L f)
      (compress (gaugeInvariantSpace L) (GRWTSK.Analysis.Integration.ContinuousKernelL2Bound.operator (sliceHaar L) (bareKernel L β))
        (invariantEmbedding L f)) =
      inner ℝ (invariantEmbedding L f) (invariantOperator L β hβ (invariantEmbedding L f)) := by
  have hk : quadraticIntegral (sliceHaar L) (fun a b => bareKernel L β (a,b))
      (complexify f.val) =
      (Real.exp (-β * (spatialLinkCount L : ℝ)) : ℂ) *
        quadraticIntegral (sliceHaar L)
          (fun a b => Real.exp ((β / 2) * gram (sliceFeatures L) a b))
          (complexObservable L (weightedRealObservable L β f.val)) := by
    unfold quadraticIntegral
    rw [← integral_const_mul]
    apply integral_congr_ae
    exact ae_of_all _ (fun p => by
      simp only [bareKernel, W_eq_exp_gram, complexify, complexObservable,
        weightedRealObservable, Complex.conj_ofReal, Complex.ofReal_mul]
      ring)
  rw [compress_pairing, invariantEmbedding_coe, inner_operator_continuous, hk]
  have ht : inner ℝ (invariantEmbedding L f) (invariantOperator L β hβ (invariantEmbedding L f)) =
      (GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeQuadratic.sliceQuadratic L β
        (complexObservable L f.val)).re := inner_operator_of_continuous L β hβ f.val
  rw [ht, sliceQuadratic_re_eq_expGram L β f.val f.property]
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]

/-- Existing gauge reduction plus actual density identifies the LIMIT operator, not a model. -/
theorem invariantOperator_eq_compressedBare (β : ℝ) (hβ : 0 ≤ β) :
    invariantOperator L β hβ = compress (gaugeInvariantSpace L)
      (GRWTSK.Analysis.Integration.ContinuousKernelL2Bound.operator (sliceHaar L) (bareKernel L β)) := by
  apply eq_of_quadratic_eq _ _ (invariantOperator_isSymmetric L β hβ)
    (compress_isSymmetric _ _ (operator_isSymmetric _ _ (bareKernel_symmetric L β)))
  intro h
  have hc : IsClosed {v : gaugeInvariantSpace L |
      inner ℝ v (compress (gaugeInvariantSpace L)
        (GRWTSK.Analysis.Integration.ContinuousKernelL2Bound.operator (sliceHaar L) (bareKernel L β)) v) =
      inner ℝ v (invariantOperator L β hβ v)} :=
    isClosed_eq (continuous_id.inner (ContinuousLinearMap.continuous _))
      (continuous_id.inner (ContinuousLinearMap.continuous _))
  have hs : Set.range (invariantEmbedding L) ⊆ {v : gaugeInvariantSpace L |
      inner ℝ v (compress (gaugeInvariantSpace L)
        (GRWTSK.Analysis.Integration.ContinuousKernelL2Bound.operator (sliceHaar L) (bareKernel L β)) v) =
      inner ℝ v (invariantOperator L β hβ v)} := by
    rintro v ⟨f,rfl⟩
    exact compressedBare_quadratic_embedding L β hβ f
  exact ((closure_minimal hs hc) ((invariantEmbedding_denseRange L) h)).symm

/-- Full operator-norm tail on the ACTUAL invariant Hilbert space. -/
theorem norm_invariant_sub_finite_le (β : ℝ) (hβ : 0 ≤ β) (m : ℕ) :
    ‖invariantOperator L β hβ - finiteOperator L β m‖ ≤ tailAllowance L β m := by
  rw [invariantOperator_eq_compressedBare, finiteOperator_eq_compressedTaylor L β hβ m]
  have he : compress (gaugeInvariantSpace L) (GRWTSK.Analysis.Integration.ContinuousKernelL2Bound.operator (sliceHaar L) (bareKernel L β)) -
      compress (gaugeInvariantSpace L) (GRWTSK.Analysis.Integration.ContinuousKernelL2Bound.operator (sliceHaar L) (bareTaylorKernel L β m)) =
      compress (gaugeInvariantSpace L)
        (GRWTSK.Analysis.Integration.ContinuousKernelL2Bound.operator (sliceHaar L) (bareKernel L β) -
          GRWTSK.Analysis.Integration.ContinuousKernelL2Bound.operator (sliceHaar L) (bareTaylorKernel L β m)) := by
    ext x : 1
    simp only [compress, ContinuousLinearMap.sub_apply, ContinuousLinearMap.comp_apply, map_sub]
  rw [he]
  apply (norm_compress_le _ _).trans
  apply GRWTSK.Analysis.Integration.ContinuousKernelL2Bound.norm_operator_sub_le _ _ _ (tailAllowance_nonnegative L hβ m)
  intro a b
  simpa only [Real.norm_eq_abs] using bareTaylorKernel_error L hβ m a b

/-- Positive remainder and its quantitative upper form bound are both retained. -/
theorem remainder_quadratic_bounds (β : ℝ) (hβ : 0 < β) (m : ℕ) (h : gaugeInvariantSpace L) :
    0 ≤ inner ℝ h ((invariantOperator L β hβ.le - finiteOperator L β m) h) ∧
    inner ℝ h ((invariantOperator L β hβ.le - finiteOperator L β m) h) ≤
      tailAllowance L β m * ‖h‖ ^ 2 := by
  refine ⟨remainder_quadratic_nonnegative L β hβ m h, ?_⟩
  calc
    _ ≤ |inner ℝ h ((invariantOperator L β hβ.le - finiteOperator L β m) h)| := le_abs_self _
    _ ≤ ‖h‖ * ‖(invariantOperator L β hβ.le - finiteOperator L β m) h‖ := abs_real_inner_le_norm _ _
    _ ≤ ‖h‖ * (‖invariantOperator L β hβ.le - finiteOperator L β m‖ * ‖h‖) :=
      mul_le_mul_of_nonneg_left (ContinuousLinearMap.le_opNorm _ _) (norm_nonneg _)
    _ ≤ ‖h‖ * (tailAllowance L β m * ‖h‖) := by
      gcongr
      exact norm_invariant_sub_finite_le L β hβ.le m
    _ = _ := by ring

theorem finiteOperator_tendsto (β : ℝ) (hβ : 0 ≤ β) :
    Tendsto (finiteOperator L β) atTop (𝓝 (invariantOperator L β hβ)) := by
  apply Metric.tendsto_atTop.mpr
  intro ε hε
  obtain ⟨N,hN⟩ := Metric.tendsto_atTop.mp (tailAllowance_tendsto_zero L β) ε hε
  refine ⟨N, fun m hm => ?_⟩
  have ht := hN m hm
  rw [dist_zero_right, Real.norm_eq_abs,
    abs_of_nonneg (tailAllowance_nonnegative L hβ m)] at ht
  rw [dist_eq_norm, norm_sub_rev]
  exact (norm_invariant_sub_finite_le L β hβ m).trans_lt ht

end GRWTSK.Geometry.GaugeTheory.WilsonSliceFiniteApproximation
