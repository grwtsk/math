module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeCritical
public import Mathlib.MeasureTheory.Function.L2Space
public import Mathlib.MeasureTheory.Function.LpSpace.Complete
public import Mathlib.MeasureTheory.Function.LpSpace.Indicator
public import Mathlib.MeasureTheory.Measure.Lebesgue.VolumeOfBalls
import Mathlib.Analysis.Normed.Operator.Bilinear
import Mathlib.Tactic

/-!
# Lossless scale-indexed spatial transport

This is the theorem-critical spatial layer for the conductor-three walk.  It
is intentionally independent of tube geometry, grains, multiplicity tails,
and Wang--Zahl hypotheses.

The one-parameter discrepancy family is losslessly represented by the complex
scalar `sqrtThree * arithmeticBias`; its norm is exactly the Euclidean matrix
operator norm.  A spatial codec embeds that scalar into genuine
`L²(ℝ³; ℂ)` and supplies a uniformly bounded left inverse.  The scale state is
indexed at every eligible-prime index `K`, and the matrix/spatial critical
decay equivalence follows using only the two uniform operator bounds.

No point evaluation of an `L²` equivalence class occurs.  The decoder is the
bounded sample readout.
-/

public section

namespace Surface.Core.PrimeWalkLosslessSpatial

noncomputable section

open Filter MeasureTheory Metric
open scoped ENNReal InnerProductSpace
open Surface.Core.AnalyticPrimeWalk
open Surface.Core.CyclicPrimeWalk
open Surface.Core.ConductorThreeCritical

/-- Euclidean three-space used by the spatial `L²` transport. -/
abbrev SpatialPoint := EuclideanSpace ℝ (Fin 3)

/-- Genuine complex `L²(ℝ³)`; elements are a.e.-equivalence classes and are
never evaluated at a point in the theorem-critical route. -/
abbrev SpatialL2 :=
  MeasureTheory.Lp (α := SpatialPoint) ℂ 2
    (volume : Measure SpatialPoint)

/-- Norm-matched scalar coordinate for the one-dimensional discrepancy
family.  Multiplication by `sqrtThree` makes its norm literally the matrix
operator norm, avoiding scale-dependent conversion constants. -/
@[expose]
def indexedMatrixAmplitude (counts : ResidueSixCounts) (K : ℕ) : ℂ :=
  ((sqrtThree * indexedArithmeticBias counts K : ℝ) : ℂ)

/-- The scalar coordinate and the genuine Euclidean discrepancy operator have
exactly the same norm. -/
@[surface_novel, surface_published]
theorem indexedMatrixAmplitude_norm (counts : ResidueSixCounts) (K : ℕ) :
    ‖indexedMatrixAmplitude counts K‖ =
      ‖indexedDiscrepancyOperator counts K‖ := by
  rw [indexedDiscrepancyOperator_norm]
  rw [indexedMatrixAmplitude, Complex.norm_real, Real.norm_eq_abs, abs_mul]
  have hSqrtThree : 0 ≤ sqrtThree := by
    exact Real.sqrt_nonneg 3
  rw [abs_of_nonneg hSqrtThree]

/-! ## Uniform bounded codec -/

/-- A scale-indexed spatial encoder with a uniformly bounded inverse on its
range.  `decoder_encoder` is the losslessness law; a right inverse on all of
the infinite-dimensional spatial `L²` space is neither needed nor claimed. -/
structure UniformLosslessSpatialCodec where
  encoder : ℕ → ℂ →L[ℂ] SpatialL2
  decoder : ℕ → SpatialL2 →L[ℂ] ℂ
  decoder_encoder : ∀ K z, decoder K (encoder K z) = z
  encoderBound : ℝ
  decoderBound : ℝ
  encoderBound_nonneg : 0 ≤ encoderBound
  decoderBound_nonneg : 0 ≤ decoderBound
  encoder_norm_le : ∀ K, ‖encoder K‖ ≤ encoderBound
  decoder_norm_le : ∀ K, ‖decoder K‖ ≤ decoderBound

/-- A normalized spatial mode produces an explicit rank-one lossless codec. -/
structure UnitSpatialProfile where
  mode : SpatialL2
  norm_mode : ‖mode‖ = 1

/-- Encode a scalar as its multiple of a normalized spatial mode. -/
@[expose]
def UnitSpatialProfile.encoder (profile : UnitSpatialProfile) :
    ℂ →L[ℂ] SpatialL2 :=
  ContinuousLinearMap.toSpanSingleton ℂ profile.mode

/-- Decode by the `L²` inner product against the same spatial mode. -/
@[expose]
def UnitSpatialProfile.decoder (profile : UnitSpatialProfile) :
    SpatialL2 →L[ℂ] ℂ :=
  innerSL ℂ profile.mode

@[surface_novel, surface_published]
theorem UnitSpatialProfile.decoder_encoder
    (profile : UnitSpatialProfile) (z : ℂ) :
    profile.decoder (profile.encoder z) = z := by
  rw [UnitSpatialProfile.decoder, UnitSpatialProfile.encoder,
    ContinuousLinearMap.toSpanSingleton_apply, innerSL_apply_apply,
    inner_smul_right]
  rw [inner_self_eq_norm_sq_to_K, profile.norm_mode]
  norm_num

/-- The rank-one encoder and decoder have uniform norm one. -/
@[expose]
def UnitSpatialProfile.codec (profile : UnitSpatialProfile) :
    UniformLosslessSpatialCodec where
  encoder := fun _ => profile.encoder
  decoder := fun _ => profile.decoder
  decoder_encoder := fun _ z => profile.decoder_encoder z
  encoderBound := 1
  decoderBound := 1
  encoderBound_nonneg := by norm_num
  decoderBound_nonneg := by norm_num
  encoder_norm_le := fun _ => by
    simp [UnitSpatialProfile.encoder, profile.norm_mode]
  decoder_norm_le := fun _ => by
    simp [UnitSpatialProfile.decoder, innerSL_apply_norm, profile.norm_mode]

/-! ## An inhabited canonical codec -/

/-- Indicator of the open unit ball, viewed as a complex spatial `L²` mode. -/
@[expose]
def unitBallIndicator : SpatialL2 :=
  indicatorConstLp 2
    (measurableSet_ball :
      MeasurableSet (Metric.ball (0 : SpatialPoint) 1))
    measure_ball_lt_top.ne (1 : ℂ)

@[surface_novel, surface_published]
theorem unitBallIndicator_ne_zero : unitBallIndicator ≠ 0 := by
  intro h
  have hNorm : ‖unitBallIndicator‖ = 0 := by rw [h, norm_zero]
  rw [unitBallIndicator,
    norm_indicatorConstLp (by norm_num) (by norm_num)] at hNorm
  have hVolume :
      0 < (volume : Measure SpatialPoint).real
        (Metric.ball (0 : SpatialPoint) 1) :=
    ENNReal.toReal_pos
      (measure_ball_pos volume (0 : SpatialPoint) zero_lt_one).ne'
      measure_ball_lt_top.ne
  norm_num at hNorm
  have hPower :
      0 < (volume : Measure SpatialPoint).real
          (Metric.ball (0 : SpatialPoint) 1) ^ (1 / 2 : ℝ) :=
    Real.rpow_pos_of_pos hVolume _
  linarith

/-- Unit normalization of the fixed ball indicator. -/
@[expose]
def normalizedUnitBallMode : SpatialL2 :=
  (‖unitBallIndicator‖ : ℂ)⁻¹ • unitBallIndicator

@[surface_novel, surface_published]
theorem normalizedUnitBallMode_norm : ‖normalizedUnitBallMode‖ = 1 := by
  rw [normalizedUnitBallMode, norm_smul, norm_inv, Complex.norm_real,
    Real.norm_of_nonneg (norm_nonneg unitBallIndicator)]
  exact inv_mul_cancel₀ (norm_ne_zero_iff.mpr unitBallIndicator_ne_zero)

/-- Concrete normalized profile used by the canonical lossless route. -/
@[expose]
def canonicalUnitSpatialProfile : UnitSpatialProfile where
  mode := normalizedUnitBallMode
  norm_mode := normalizedUnitBallMode_norm

/-- Concrete uniformly isometric codec on a fixed `L²(ℝ³)` mode. -/
@[expose]
def canonicalLosslessSpatialCodec : UniformLosslessSpatialCodec :=
  canonicalUnitSpatialProfile.codec

/-! ## Scale family and spatial critical decay -/

/-- Lossless state at a single eligible-prime scale.  `tubeScale` records the
geometric resolution that a later wave-packet extension must honor, but no
Kakeya premise is required by this functional-analytic core. -/
structure LosslessSpatialScale
    (counts : ResidueSixCounts)
    (codec : UniformLosslessSpatialCodec)
    (K : ℕ) where
  tubeScale : ℝ
  tubeScale_pos : 0 < tubeScale
  state : SpatialL2
  state_eq : state = codec.encoder K (indexedMatrixAmplitude counts K)

/-- A complete theorem-critical route supplies one lossless spatial state for
every eligible-prime index. -/
structure CompleteConductorThreeSpatialRoute (counts : ResidueSixCounts) where
  codec : UniformLosslessSpatialCodec
  scale : ∀ K, LosslessSpatialScale counts codec K

/-- Every codec gives a canonical scale family; the neutral tube scale `1`
does not assert any wave-packet or Wang--Zahl geometry. -/
@[expose]
def CompleteConductorThreeSpatialRoute.ofCodec
    (counts : ResidueSixCounts) (codec : UniformLosslessSpatialCodec) :
    CompleteConductorThreeSpatialRoute counts where
  codec := codec
  scale := fun K =>
    { tubeScale := 1
      tubeScale_pos := by norm_num
      state := codec.encoder K (indexedMatrixAmplitude counts K)
      state_eq := rfl }

/-- Inhabited actual-prime lossless route.  This is the functional-analytic
Milestone-1 route; it does not yet carry a cone/paraboloid packet frame. -/
@[expose]
def canonicalActualSpatialRoute :
    CompleteConductorThreeSpatialRoute actualResidueSixCounts :=
  CompleteConductorThreeSpatialRoute.ofCodec
    actualResidueSixCounts canonicalLosslessSpatialCodec

/-- The decoder is the bounded sample functional at scale `K`. -/
@[expose]
def CompleteConductorThreeSpatialRoute.sampleFunctional
    {counts : ResidueSixCounts}
    (route : CompleteConductorThreeSpatialRoute counts) (K : ℕ) :
    SpatialL2 →L[ℂ] ℂ :=
  route.codec.decoder K

@[surface_novel, surface_published]
theorem CompleteConductorThreeSpatialRoute.sampleFunctional_norm_le
    {counts : ResidueSixCounts}
    (route : CompleteConductorThreeSpatialRoute counts) (K : ℕ) :
    ‖route.sampleFunctional K‖ ≤ route.codec.decoderBound :=
  route.codec.decoder_norm_le K

/-- Bounded decoding reconstructs the exact norm-matched matrix coordinate. -/
@[surface_novel, surface_published]
theorem CompleteConductorThreeSpatialRoute.sample_reconstructs_matrixAmplitude
    {counts : ResidueSixCounts}
    (route : CompleteConductorThreeSpatialRoute counts) (K : ℕ) :
    route.sampleFunctional K (route.scale K).state =
      indexedMatrixAmplitude counts K := by
  rw [CompleteConductorThreeSpatialRoute.sampleFunctional,
    (route.scale K).state_eq, route.codec.decoder_encoder]

/-- Eventual critical decay of the losslessly encoded spatial states. -/
@[expose]
def SpatialCriticalDecay
    {counts : ResidueSixCounts}
    (route : CompleteConductorThreeSpatialRoute counts) : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∀ᶠ K : ℕ in atTop,
      ‖(route.scale K).state‖ ≤
        C * conductorThreeCriticalRate K

/-- Lossless uniformly bounded transport preserves and reflects the exact
critical decay rate.  No Kakeya or weak-tail statement is used. -/
@[surface_novel, surface_published]
theorem matrixCriticalDecay_iff_spatialCriticalDecay
    {counts : ResidueSixCounts}
    (route : CompleteConductorThreeSpatialRoute counts) :
    MatrixCriticalDecay counts ↔ SpatialCriticalDecay route := by
  constructor
  · rintro ⟨C, hC, hDecay⟩
    refine ⟨route.codec.encoderBound * C,
      mul_nonneg route.codec.encoderBound_nonneg hC, ?_⟩
    filter_upwards [hDecay] with K hK
    rw [(route.scale K).state_eq]
    calc
      ‖route.codec.encoder K (indexedMatrixAmplitude counts K)‖ ≤
          ‖route.codec.encoder K‖ * ‖indexedMatrixAmplitude counts K‖ :=
        ContinuousLinearMap.le_opNorm _ _
      _ ≤ route.codec.encoderBound * ‖indexedMatrixAmplitude counts K‖ := by
        gcongr
        exact route.codec.encoder_norm_le K
      _ = route.codec.encoderBound *
          ‖indexedDiscrepancyOperator counts K‖ := by
        rw [indexedMatrixAmplitude_norm]
      _ ≤ route.codec.encoderBound *
          (C * conductorThreeCriticalRate K) := by
        exact mul_le_mul_of_nonneg_left hK route.codec.encoderBound_nonneg
      _ = (route.codec.encoderBound * C) *
          conductorThreeCriticalRate K := by ring
  · rintro ⟨C, hC, hDecay⟩
    refine ⟨route.codec.decoderBound * C,
      mul_nonneg route.codec.decoderBound_nonneg hC, ?_⟩
    filter_upwards [hDecay] with K hK
    have hDecode :
        route.codec.decoder K (route.scale K).state =
          indexedMatrixAmplitude counts K :=
      route.sample_reconstructs_matrixAmplitude K
    calc
      ‖indexedDiscrepancyOperator counts K‖ =
          ‖indexedMatrixAmplitude counts K‖ :=
        (indexedMatrixAmplitude_norm counts K).symm
      _ = ‖route.codec.decoder K (route.scale K).state‖ := by rw [hDecode]
      _ ≤ ‖route.codec.decoder K‖ * ‖(route.scale K).state‖ :=
        ContinuousLinearMap.le_opNorm _ _
      _ ≤ route.codec.decoderBound * ‖(route.scale K).state‖ := by
        gcongr
        exact route.codec.decoder_norm_le K
      _ ≤ route.codec.decoderBound *
          (C * conductorThreeCriticalRate K) := by
        exact mul_le_mul_of_nonneg_left hK route.codec.decoderBound_nonneg
      _ = (route.codec.decoderBound * C) *
          conductorThreeCriticalRate K := by ring

/-- Actual-prime specialization of the lossless matrix/spatial equivalence. -/
@[surface_novel, surface_published]
theorem actualMatrixCriticalDecay_iff_spatialCriticalDecay
    (route : CompleteConductorThreeSpatialRoute actualResidueSixCounts) :
    MatrixCriticalDecay actualResidueSixCounts ↔ SpatialCriticalDecay route :=
  matrixCriticalDecay_iff_spatialCriticalDecay route

/-- Fully inhabited actual-prime specialization. -/
@[surface_novel, surface_published]
theorem actualMatrixCriticalDecay_iff_canonicalSpatialCriticalDecay :
    MatrixCriticalDecay actualResidueSixCounts ↔
      SpatialCriticalDecay canonicalActualSpatialRoute :=
  matrixCriticalDecay_iff_spatialCriticalDecay canonicalActualSpatialRoute

end

end Surface.Core.PrimeWalkLosslessSpatial
