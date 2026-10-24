module

public meta import Surface.Core.Classification
public import Surface.Core.PrimeWalkTwoScaleGrains
public import Mathlib.Analysis.Fourier.FourierTransform
public import Mathlib.MeasureTheory.Function.LpSeminorm.LpNorm
import Mathlib.Tactic

/-!
# Spatial wave-packet certificates for temporal error trajectories

This module is the positive-evidence boundary between a temporal signal
`S : ℝ → ℂ` and the three-dimensional tube geometry required by Kakeya
arguments.  It deliberately provides no instance for a prime-error signal.

The carrier is a structure, rather than a global typeclass instance, because
wave-packet decompositions are highly noncanonical.  Existence is expressed by
`HasSpatialEncoding S := Nonempty (SomeSpatialEncodedTrajectory S)`.  Thus a
consumer must receive an actual certificate; there is no axiom and no field of
type `False`.

Three notions with similar notation remain separate:

* `grains.parameters.delta` is a positive real tube thickness;
* `grains.parameters.lambda` is the density parameter in the grains
  certificate;
* `amplitudeThreshold` is the square-function superlevel threshold.

Bhatt--Scholze delta-rings and algebraic prisms `(A, I)` are unrelated to all
three.  They belong to `Surface.Prismatic` in the legacy library and are not
imported here.

The optional `AssumedMultiplicityPowerLaw` below is an explicit caller-supplied
estimate for multiplicity level sets.  It is neither part of the base spatial
encoding nor labelled a Wang--Zahl theorem: their union-volume lower bound is
not the sharp Kakeya maximal-function conjecture and does not directly imply
this particular tail.
-/

public section

namespace Surface.Core.PrimeWalkSpatialEncoding

noncomputable section

open MeasureTheory Set
open scoped BigOperators ENNReal FourierTransform
open Surface.Core.PrimeWalkTwoScaleGrains

/-! ## Concrete spatial and Fourier objects -/

/-- The Euclidean spatial domain used by the tube realization. -/
abbrev SpatialPoint := EuclideanSpace ℝ (Fin 3)

/-- A temporal complex error signal. -/
abbrev ErrorTrajectory := ℝ → ℂ

/-- A complex signal on Euclidean three-space. -/
abbrev SpatialSignal := SpatialPoint → ℂ

/-- A unit-length axis segment with a positive neighbourhood thickness. -/
structure UnitTube3 where
  base : SpatialPoint
  direction : SpatialPoint
  direction_unit : ‖direction‖ = 1
  thickness : ℝ
  thickness_pos : 0 < thickness

/-- Unit line segment underlying a spatial tube. -/
@[expose]
def UnitTube3.axisSegment (tube : UnitTube3) : Set SpatialPoint :=
  segment ℝ tube.base (tube.base + tube.direction)

/-- The closed `δ`-neighbourhood of the tube's unit segment.

The diameter of a cross-section is `2δ`; this is the standard harmless
constant-factor convention for a `δ`-tube. -/
@[expose]
def UnitTube3.carrier (tube : UnitTube3) : Set SpatialPoint :=
  {point | Metric.infDist point tube.axisSegment ≤ tube.thickness}

/-- Actual vector Fourier integral on Euclidean three-space. -/
@[expose]
def spatialFourierTransform (signal : SpatialSignal) : SpatialSignal :=
  VectorFourier.fourierIntegral Real.fourierChar volume
    (innerSL ℝ).toLinearMap₁₂ signal

/-- Finite sum of the selected spatial wave packets. -/
@[expose]
def packetSum
    {Packet : Type*} [DecidableEq Packet]
    (packets : Finset Packet) (wavePacket : Packet → SpatialSignal) : SpatialSignal :=
  ∑ packet ∈ packets, wavePacket packet

/-- The residual between a spatial lift and its finite packet sum. -/
@[expose]
def reconstructionError
    {Packet : Type*} [DecidableEq Packet]
    (spatialLift : SpatialSignal) (packets : Finset Packet)
    (wavePacket : Packet → SpatialSignal) : SpatialSignal :=
  spatialLift - packetSum packets wavePacket

/-- Pointwise square function of a finite spatial packet family. -/
@[expose]
def packetSquareFunction
    {Packet : Type*} [DecidableEq Packet]
    (packets : Finset Packet) (wavePacket : Packet → SpatialSignal) :
    SpatialPoint → ℝ :=
  fun point ↦ Real.sqrt (∑ packet ∈ packets, ‖wavePacket packet point‖ ^ 2)

/-! ## A bounded temporal readout

Restriction of a general `L²(ℝ³)` function to a line is not a bounded
`L²` trace.  The readout is therefore supplied with the exact mapping and
norm-control properties needed by the reconstruction theorem.  An eventual
implementation may use Sobolev trace regularity or a smoothed transverse
profile.
-/

/-- Proof-carrying linear readout from spatial signals to temporal signals. -/
structure L2SpatialReadout where
  map : SpatialSignal →ₗ[ℂ] ErrorTrajectory
  operatorNorm : ℝ
  operatorNorm_nonneg : 0 ≤ operatorNorm
  maps_memLp : ∀ signal,
    MemLp signal 2 (volume : Measure SpatialPoint) →
      MemLp (map signal) 2 (volume : Measure ℝ)
  lpNorm_le : ∀ signal,
    MemLp signal 2 (volume : Measure SpatialPoint) →
      lpNorm (map signal) 2 (volume : Measure ℝ) ≤
        operatorNorm * lpNorm signal 2 (volume : Measure SpatialPoint)

/-! ## Tube multiplicity and the requested power-law premise -/

/-- Number of certified fine-tube carriers through a spatial point. -/
@[expose]
def tubeMultiplicity
    {FineTube CoarseTube Grain : Type*}
    [DecidableEq FineTube] [DecidableEq CoarseTube] [DecidableEq Grain]
    (grains : RobustTwoScaleGrains
      SpatialPoint FineTube CoarseTube Grain (volume : Measure SpatialPoint))
    (point : SpatialPoint) : ℕ :=
  shadingMultiplicity grains.fineTubes grains.geometry.fineCarrier point

/-- Points covered by strictly more than `N` full tube carriers. -/
@[expose]
def multiplicitySuperlevelSet
    {FineTube CoarseTube Grain : Type*}
    [DecidableEq FineTube] [DecidableEq CoarseTube] [DecidableEq Grain]
    (grains : RobustTwoScaleGrains
      SpatialPoint FineTube CoarseTube Grain (volume : Measure SpatialPoint))
    (N : ℕ) : Set SpatialPoint :=
  {point | N < tubeMultiplicity grains point}

/-- The requested Kakeya-style multiplicity tail as an explicit premise.

`alpha` is supplied by the caller; this structure does not claim that
Wang--Zahl provides a sharp maximal-function critical exponent. -/
structure AssumedMultiplicityPowerLaw
    {FineTube CoarseTube Grain : Type*}
    [DecidableEq FineTube] [DecidableEq CoarseTube] [DecidableEq Grain]
    (grains : RobustTwoScaleGrains
      SpatialPoint FineTube CoarseTube Grain (volume : Measure SpatialPoint)) where
  epsilon : ℝ
  alpha : ℝ
  constant : ℝ≥0∞
  epsilon_nonneg : 0 ≤ epsilon
  epsilon_lt_three : epsilon < 3
  alpha_pos : 0 < alpha
  constant_ne_top : constant ≠ ⊤
  bound : ∀ N : ℕ, 0 < N →
    volume (multiplicitySuperlevelSet grains N) ≤
      constant *
        (ENNReal.ofReal grains.parameters.delta).rpow (3 - epsilon) /
          (N : ℝ≥0∞).rpow alpha

/-! ## Positive spatial-encoding evidence -/

/-- A spatial wave-packet decomposition of one temporal trajectory.

Physical localization is an `L²` leakage estimate outside the actual spatial
tube.  Fourier localization is exact support in a caller-supplied frequency
cap.  Requiring exact compact support in both domains would conflict with the
uncertainty principle, so the two obligations are intentionally asymmetric. -/
structure SpatialEncodedTrajectory
    (S : ErrorTrajectory)
    (FineTube CoarseTube Grain : Type*)
    [DecidableEq FineTube] [DecidableEq CoarseTube] [DecidableEq Grain] where
  grains : RobustTwoScaleGrains
    SpatialPoint FineTube CoarseTube Grain (volume : Measure SpatialPoint)
  packetBudget : ℕ
  packet_card_le : grains.fineTubes.card ≤ packetBudget

  tubeBase : FineTube → SpatialPoint
  tubeDirection : FineTube → SpatialPoint
  tubeDirection_unit : ∀ tube ∈ grains.fineTubes, ‖tubeDirection tube‖ = 1
  spatialTube : FineTube → UnitTube3
  spatialTube_base : ∀ tube ∈ grains.fineTubes,
    (spatialTube tube).base = tubeBase tube
  spatialTube_direction : ∀ tube ∈ grains.fineTubes,
    (spatialTube tube).direction = tubeDirection tube
  spatialTube_thickness : ∀ tube ∈ grains.fineTubes,
    (spatialTube tube).thickness = grains.parameters.delta
  fineCarrier_is_spatialTube : ∀ tube ∈ grains.fineTubes,
    grains.geometry.fineCarrier tube = (spatialTube tube).carrier

  wavePacket : FineTube → SpatialSignal
  packet_integrable : ∀ tube ∈ grains.fineTubes, Integrable (wavePacket tube)
  packet_memLp : ∀ tube ∈ grains.fineTubes,
    MemLp (wavePacket tube) 2 (volume : Measure SpatialPoint)
  packetLeakage : FineTube → ℝ
  packetLeakage_nonneg : ∀ tube ∈ grains.fineTubes, 0 ≤ packetLeakage tube
  physical_localization : ∀ tube ∈ grains.fineTubes,
    lpNorm ((grains.geometry.fineCarrier tube)ᶜ.indicator (wavePacket tube))
        2 (volume : Measure SpatialPoint) ≤ packetLeakage tube

  frequencyCap : FineTube → Set SpatialPoint
  frequencyCap_measurable : ∀ tube ∈ grains.fineTubes,
    MeasurableSet (frequencyCap tube)
  frequency_localized : ∀ tube ∈ grains.fineTubes,
    Function.support (spatialFourierTransform (wavePacket tube)) ⊆
      frequencyCap tube

  spatialLift : SpatialSignal
  residual : SpatialSignal
  spatial_reconstruction :
    spatialLift = packetSum grains.fineTubes wavePacket + residual
  residual_memLp : MemLp residual 2 (volume : Measure SpatialPoint)
  reconstructionTolerance : ℝ
  reconstructionTolerance_nonneg : 0 ≤ reconstructionTolerance
  residual_lpNorm_le :
    lpNorm residual 2 (volume : Measure SpatialPoint) ≤ reconstructionTolerance

  readout : L2SpatialReadout
  readout_lift : readout.map spatialLift = S

  amplitudeThreshold : ℝ
  amplitudeThreshold_pos : 0 < amplitudeThreshold
  superlevel_eq_shadingUnion :
    spatialSuperlevelSet
        (packetSquareFunction grains.fineTubes wavePacket) amplitudeThreshold =
      finsetShadingUnion grains.fineTubes grains.fineShading

/-- Existential packaging hides the noncanonical tube, coarse-tube, and grain
index types while retaining their decidable finite interfaces. -/
structure SomeSpatialEncodedTrajectory (S : ErrorTrajectory) where
  FineTube : Type
  CoarseTube : Type
  Grain : Type
  fineTubeDecidableEq : DecidableEq FineTube
  coarseTubeDecidableEq : DecidableEq CoarseTube
  grainDecidableEq : DecidableEq Grain
  certificate : @SpatialEncodedTrajectory S FineTube CoarseTube Grain
    fineTubeDecidableEq coarseTubeDecidableEq grainDecidableEq

/-- Honest existence proposition.  No theorem in this repository currently
establishes it for the prime-error trajectory. -/
@[expose]
def HasSpatialEncoding (S : ErrorTrajectory) : Prop :=
  Nonempty (SomeSpatialEncodedTrajectory S)

/-! ## Checked consequences of a supplied certificate -/

variable
    {S : ErrorTrajectory}
    {FineTube CoarseTube Grain : Type*}
    [DecidableEq FineTube] [DecidableEq CoarseTube] [DecidableEq Grain]

/-- Pointwise form of the certified spatial reconstruction. -/
@[surface_novel, surface_published]
theorem spatial_reconstruction_apply
    (encoding : SpatialEncodedTrajectory S FineTube CoarseTube Grain)
    (point : SpatialPoint) :
    encoding.spatialLift point =
      packetSum encoding.grains.fineTubes encoding.wavePacket point +
        encoding.residual point := by
  exact congrFun encoding.spatial_reconstruction point

/-- Applying the linear readout reconstructs the temporal signal as the sum
of the read-out packets plus the read-out residual. -/
@[surface_novel, surface_published]
theorem temporal_reconstruction
    (encoding : SpatialEncodedTrajectory S FineTube CoarseTube Grain) :
    S =
      (∑ tube ∈ encoding.grains.fineTubes,
        encoding.readout.map (encoding.wavePacket tube)) +
        encoding.readout.map encoding.residual := by
  calc
    S = encoding.readout.map encoding.spatialLift := encoding.readout_lift.symm
    _ = encoding.readout.map
        (packetSum encoding.grains.fineTubes encoding.wavePacket +
          encoding.residual) := by rw [encoding.spatial_reconstruction]
    _ = encoding.readout.map
          (packetSum encoding.grains.fineTubes encoding.wavePacket) +
        encoding.readout.map encoding.residual := by
          rw [map_add]
    _ = (∑ tube ∈ encoding.grains.fineTubes,
          encoding.readout.map (encoding.wavePacket tube)) +
        encoding.readout.map encoding.residual := by
          simp [packetSum, map_sum]

/-- The read-out residual inherits the certified operator-norm loss. -/
@[surface_novel, surface_published]
theorem temporal_residual_lpNorm_le
    (encoding : SpatialEncodedTrajectory S FineTube CoarseTube Grain) :
    lpNorm (encoding.readout.map encoding.residual) 2 (volume : Measure ℝ) ≤
      encoding.readout.operatorNorm * encoding.reconstructionTolerance := by
  calc
    lpNorm (encoding.readout.map encoding.residual) 2 (volume : Measure ℝ) ≤
        encoding.readout.operatorNorm *
          lpNorm encoding.residual 2 (volume : Measure SpatialPoint) :=
      encoding.readout.lpNorm_le encoding.residual encoding.residual_memLp
    _ ≤ encoding.readout.operatorNorm * encoding.reconstructionTolerance :=
      mul_le_mul_of_nonneg_left encoding.residual_lpNorm_le
        encoding.readout.operatorNorm_nonneg

/-- The spatial packet square-function superlevel set is exactly the grain
shading union.  This direction is strong enough to transport a future lower
bound for the shading union back to the analytic superlevel set. -/
@[surface_novel, surface_published]
theorem squareSuperlevel_eq_grainShadingUnion
    (encoding : SpatialEncodedTrajectory S FineTube CoarseTube Grain) :
    spatialSuperlevelSet
        (packetSquareFunction encoding.grains.fineTubes encoding.wavePacket)
        encoding.amplitudeThreshold =
      finsetShadingUnion encoding.grains.grains encoding.grains.grainShading := by
  exact encoding.superlevel_eq_shadingUnion.trans
    (fineShadingUnion_eq_grainShadingUnion encoding.grains)

/-- Backward-compatible subset consequence of the exact equality. -/
@[surface_novel, surface_published]
theorem squareSuperlevel_subset_grainShadingUnion
    (encoding : SpatialEncodedTrajectory S FineTube CoarseTube Grain) :
    spatialSuperlevelSet
        (packetSquareFunction encoding.grains.fineTubes encoding.wavePacket)
        encoding.amplitudeThreshold ⊆
      finsetShadingUnion encoding.grains.grains encoding.grains.grainShading := by
  rw [squareSuperlevel_eq_grainShadingUnion encoding]

/-- Finite subadditivity converts the certified square-function cover into a
grain-volume upper bound. -/
@[surface_novel, surface_published]
theorem measure_squareSuperlevel_le_grain_sum
    (encoding : SpatialEncodedTrajectory S FineTube CoarseTube Grain) :
    volume
        (spatialSuperlevelSet
          (packetSquareFunction encoding.grains.fineTubes encoding.wavePacket)
          encoding.amplitudeThreshold) ≤
      ∑ grain ∈ encoding.grains.grains,
        volume (encoding.grains.grainShading grain) := by
  calc
    volume
        (spatialSuperlevelSet
          (packetSquareFunction encoding.grains.fineTubes encoding.wavePacket)
          encoding.amplitudeThreshold) ≤
        volume
          (finsetShadingUnion encoding.grains.grains
            encoding.grains.grainShading) :=
      measure_mono (squareSuperlevel_subset_grainShadingUnion encoding)
    _ ≤ ∑ grain ∈ encoding.grains.grains,
        volume (encoding.grains.grainShading grain) :=
      measure_biUnion_finset_le encoding.grains.grains
        encoding.grains.grainShading

/-- An assumed multiplicity power law is available exactly when it is supplied
as a separate overlay.  It is not a consequence of the base encoding and is
not identified with the Wang--Zahl union theorem. -/
@[surface_novel, surface_published]
theorem multiplicity_powerLaw_of_assumption
    (encoding : SpatialEncodedTrajectory S FineTube CoarseTube Grain)
    (assumption : AssumedMultiplicityPowerLaw encoding.grains)
    (N : ℕ) (hN : 0 < N) :
    volume (multiplicitySuperlevelSet encoding.grains N) ≤
      assumption.constant *
        (ENNReal.ofReal encoding.grains.parameters.delta).rpow
          (3 - assumption.epsilon) /
        (N : ℝ≥0∞).rpow assumption.alpha :=
  assumption.bound N hN

end

end Surface.Core.PrimeWalkSpatialEncoding
