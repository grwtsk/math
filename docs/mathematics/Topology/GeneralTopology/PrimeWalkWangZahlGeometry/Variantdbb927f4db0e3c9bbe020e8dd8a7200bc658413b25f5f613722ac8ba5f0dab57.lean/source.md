# Complete source: GRWTSK.Topology.GeneralTopology.PrimeWalkWangZahlGeometry.Variantdbb927f4db0e3c9bbe020e8dd8a7200bc658413b25f5f613722ac8ba5f0dab57

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61449e3268961a9688f47a1a87848b059a7ad3fa` · SHA-256 `dbb927f4db0e3c9bbe020e8dd8a7200bc658413b25f5f613722ac8ba5f0dab57`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.PrimeWalkSpatialEnergy
import Mathlib.Tactic

/-!
# Concrete Euclidean geometry and the Wang--Zahl union-bound surface

This module records the literal spatial objects and the exact logical shape
of Wang--Zahl Corollary 1.10.  In the paper, for every `ε > 0` there is an
exponent `K` (called `pWZ` here to avoid collision with the prime index)
such that every sufficiently small, lambda-dense family of essentially
distinct delta-tubes satisfies

`delta^ε * lambda^pWZ * m⁻¹ * (#tubes) * |tube| ≤ |union of shadings|`,

where `m` is the Katz--Tao Convex Wolff constant.

`WangZahlCorollary110` is an explicit proposition, not a project axiom and
not a theorem proved here.  The checked theorems below only transport a
supplied instance of that union lower bound into the packet square-function
superlevel and energy inequalities.  They do not assert a multiplicity tail,
construct a coefficient-level packet frame, or imply matrix critical decay.
-/

public section

namespace Surface.Core.PrimeWalkWangZahlGeometry

noncomputable section

open MeasureTheory Set
open scoped BigOperators ENNReal
open Surface.Core.PrimeWalkSpatialEncoding
open Surface.Core.PrimeWalkSpatialEnergy
open Surface.Core.PrimeWalkTwoScaleGrains

/-! ## Closed measurable Euclidean tubes and prisms -/

/-- An oriented rectangular prism in Euclidean three-space.  The orientation
is an isometry, so the three positive half-lengths are intrinsic side
parameters rather than display coordinates. -/
structure RectangularPrism3 where
  center : SpatialPoint
  orientation : SpatialPoint ≃ₗᵢ[ℝ] SpatialPoint
  halfLength : Fin 3 → ℝ
  halfLength_pos : ∀ i, 0 < halfLength i

/-- Closed carrier of an oriented rectangular prism. -/
@[expose]
def RectangularPrism3.carrier (prism : RectangularPrism3) :
    Set SpatialPoint :=
  {point | ∀ i, |(prism.orientation (point - prism.center)) i| ≤
    prism.halfLength i}

@[surface_novel, surface_published]
theorem RectangularPrism3.isClosed_carrier (prism : RectangularPrism3) :
    IsClosed prism.carrier := by
  rw [RectangularPrism3.carrier]
  rw [show
    {point : SpatialPoint | ∀ i,
      |(prism.orientation (point - prism.center)) i| ≤ prism.halfLength i} =
      ⋂ i : Fin 3,
        {point : SpatialPoint |
          |(prism.orientation (point - prism.center)) i| ≤
            prism.halfLength i} by
      ext point
      simp]
  exact isClosed_iInter fun i ↦ isClosed_le (by fun_prop) continuous_const

@[surface_novel, surface_published]
theorem RectangularPrism3.measurableSet_carrier
    (prism : RectangularPrism3) :
    MeasurableSet prism.carrier :=
  prism.isClosed_carrier.measurableSet

/-- The metric tube carrier already used by the packet layer is closed. -/
@[surface_novel, surface_published]
theorem UnitTube3.isClosed_carrier (tube : UnitTube3) :
    IsClosed tube.carrier := by
  unfold UnitTube3.carrier
  exact isClosed_le (Metric.continuous_infDist_pt tube.axisSegment)
    continuous_const

/-- Hence the concrete tube carrier is Lebesgue measurable. -/
@[surface_novel, surface_published]
theorem UnitTube3.measurableSet_carrier (tube : UnitTube3) :
    MeasurableSet tube.carrier :=
  (Surface.Core.PrimeWalkWangZahlGeometry.UnitTube3.isClosed_carrier
    tube).measurableSet

/-! ## Arithmetic-independent shaded tube families -/

/-- Concrete hypotheses appearing in Corollary 1.10 before the external
union-volume estimate is invoked.

Essential distinctness is the paper's literal
`|T₁ ∩ T₂| ≤ (1/2) max(|T₁|, |T₂|)`.  Lambda density is aggregate density,
not a pointwise or per-tube strengthening. -/
structure EuclideanShadedTubeFamily
    (Tube : Type*) [DecidableEq Tube] where
  tubes : Finset Tube
  delta : ℝ
  lambda : ℝ
  delta_pos : 0 < delta
  lambda_pos : 0 < lambda
  tube : Tube → UnitTube3
  common_thickness : ∀ T ∈ tubes, (tube T).thickness = delta
  shading : Tube → Set SpatialPoint
  shading_measurable : ∀ T ∈ tubes, MeasurableSet (shading T)
  shading_subset : ∀ T ∈ tubes, shading T ⊆ (tube T).carrier
  contained_unitBall : ∀ T ∈ tubes,
    (tube T).carrier ⊆ Metric.closedBall 0 1
  tubeVolume : ℝ≥0∞
  tubeVolume_ne_zero : tubeVolume ≠ 0
  tubeVolume_ne_top : tubeVolume ≠ ∞
  carrier_volume : ∀ T ∈ tubes, volume (tube T).carrier = tubeVolume
  essentiallyDistinct : ∀ T₁ ∈ tubes, ∀ T₂ ∈ tubes, T₁ ≠ T₂ →
    volume ((tube T₁).carrier ∩ (tube T₂).carrier) ≤
      (1 / 2 : ℝ≥0∞) *
        max (volume (tube T₁).carrier) (volume (tube T₂).carrier)
  lambda_dense :
    ENNReal.ofReal lambda *
        (∑ T ∈ tubes, volume (tube T).carrier) ≤
      ∑ T ∈ tubes, volume (shading T)

@[surface_novel, surface_published]
theorem EuclideanShadedTubeFamily.sum_carrier_volume
    {Tube : Type*} [DecidableEq Tube]
    (family : EuclideanShadedTubeFamily Tube) :
    (∑ T ∈ family.tubes, volume (family.tube T).carrier) =
      (family.tubes.card : ℝ≥0∞) * family.tubeVolume := by
  calc
    (∑ T ∈ family.tubes, volume (family.tube T).carrier) =
        ∑ _T ∈ family.tubes, family.tubeVolume := by
      apply Finset.sum_congr rfl
      intro T hT
      exact family.carrier_volume T hT
    _ = (family.tubes.card : ℝ≥0∞) * family.tubeVolume := by
      simp

/-- Aggregate lambda density in the cardinality-times-common-volume form
used literally by Corollary 1.10. -/
@[surface_novel, surface_published]
theorem EuclideanShadedTubeFamily.lambda_dense_card
    {Tube : Type*} [DecidableEq Tube]
    (family : EuclideanShadedTubeFamily Tube) :
    ENNReal.ofReal family.lambda *
        ((family.tubes.card : ℝ≥0∞) * family.tubeVolume) ≤
      ∑ T ∈ family.tubes, volume (family.shading T) := by
  rw [← family.sum_carrier_volume]
  exact family.lambda_dense

/-- A supplied number `m` is an upper bound for the Katz--Tao Convex Wolff
constant when every measurable convex set `W` contains at most
`m * |W| / |T|` members of the family.  Multiplying by the common tube
volume avoids division by an extended-real quantity. -/
@[expose]
noncomputable def KatzTaoConvexWolffAtMost
    {Tube : Type*} [DecidableEq Tube]
    (family : EuclideanShadedTubeFamily Tube) (m : ℝ≥0∞) : Prop := by
  classical
  exact ∀ W : Set SpatialPoint, Convex ℝ W → MeasurableSet W →
    ((family.tubes.filter fun T ↦ (family.tube T).carrier ⊆ W).card : ℝ≥0∞) *
        family.tubeVolume ≤
      m * volume W

/-- The exact lower-bound term from Corollary 1.10, with the paper's exponent
`K` renamed `pWZ` so it cannot be confused with a prime-walk index. -/
@[expose]
def wangZahlLowerTerm
    {Tube : Type*} [DecidableEq Tube]
    (family : EuclideanShadedTubeFamily Tube)
    (epsilon pWZ : ℝ) (m : ℝ≥0∞) : ℝ≥0∞ :=
  (ENNReal.ofReal family.delta).rpow epsilon *
    (ENNReal.ofReal family.lambda).rpow pWZ *
    m⁻¹ * (family.tubes.card : ℝ≥0∞) * family.tubeVolume

/-- One scale/family application of Wang--Zahl Corollary 1.10. -/
@[expose]
def WangZahlUnionLowerBoundAt
    {Tube : Type*} [DecidableEq Tube]
    (family : EuclideanShadedTubeFamily Tube)
    (epsilon pWZ : ℝ) (m : ℝ≥0∞) : Prop :=
  wangZahlLowerTerm family epsilon pWZ m ≤
    volume (finsetShadingUnion family.tubes family.shading)

/-- Exact theorem surface for Wang--Zahl Corollary 1.10.

`delta < delta₀` is the formal meaning of “delta sufficiently small.”
Using any proved upper bound `m` for the infimal Katz--Tao constant only
weakens the right-hand lower term, so the division-free predicate above is
the useful application form. -/
@[expose]
def WangZahlCorollary110 : Prop :=
  ∀ epsilon : ℝ, 0 < epsilon →
    ∃ pWZ : ℝ, 0 ≤ pWZ ∧
      ∃ delta₀ : ℝ, 0 < delta₀ ∧
        ∀ (Tube : Type) [DecidableEq Tube]
          (family : EuclideanShadedTubeFamily Tube) (m : ℝ≥0∞),
          family.delta < delta₀ →
          KatzTaoConvexWolffAtMost family m →
          WangZahlUnionLowerBoundAt family epsilon pWZ m

/-! ## Checked lower-volume and energy transport -/

/-- The only set-theoretic direction needed by the volume argument: the
shading union is a subset of the packet square-function superlevel set. -/
@[surface_novel, surface_published]
theorem wangZahlLowerTerm_le_packetSuperlevel
    {Tube : Type*} [DecidableEq Tube]
    (family : EuclideanShadedTubeFamily Tube)
    {epsilon pWZ : ℝ} {m : ℝ≥0∞}
    {G : SpatialPoint → ℝ} {threshold : ℝ}
    (hUnion : WangZahlUnionLowerBoundAt family epsilon pWZ m)
    (hInclude : finsetShadingUnion family.tubes family.shading ⊆
      spatialSuperlevelSet G threshold) :
    wangZahlLowerTerm family epsilon pWZ m ≤
      volume (spatialSuperlevelSet G threshold) := by
  exact hUnion.trans (measure_mono hInclude)

/-- Combining a supplied Wang--Zahl application with the checked Markov
inequality gives `threshold² * L_WZ ≤ packetEnergy`.  This still has no
arithmetic conclusion: calibration, coefficient-frame cancellation,
residual control, and epsilon-loss accounting remain separate obligations. -/
@[surface_novel, surface_published]
theorem threshold_sq_mul_wangZahlLowerTerm_le_packetEnergy
    {Tube : Type*} [DecidableEq Tube]
    (family : EuclideanShadedTubeFamily Tube)
    (wavePacket : Tube → SpatialSignal)
    {epsilon pWZ : ℝ} {m : ℝ≥0∞} {threshold : ℝ}
    (hPacket : ∀ T ∈ family.tubes,
      AEStronglyMeasurable (wavePacket T)
        (volume : Measure SpatialPoint))
    (hUnion : WangZahlUnionLowerBoundAt family epsilon pWZ m)
    (hInclude : finsetShadingUnion family.tubes family.shading ⊆
      spatialSuperlevelSet
        (packetSquareFunction family.tubes wavePacket) threshold) :
    (ENNReal.ofReal threshold) ^ (2 : ℕ) *
        wangZahlLowerTerm family epsilon pWZ m ≤
      packetEnergy family.tubes wavePacket := by
  calc
    (ENNReal.ofReal threshold) ^ (2 : ℕ) *
        wangZahlLowerTerm family epsilon pWZ m ≤
      (ENNReal.ofReal threshold) ^ (2 : ℕ) *
        volume
          (spatialSuperlevelSet
            (packetSquareFunction family.tubes wavePacket) threshold) := by
      gcongr
      exact wangZahlLowerTerm_le_packetSuperlevel
        family hUnion hInclude
    _ ≤ packetEnergy family.tubes wavePacket :=
      threshold_sq_mul_measure_packetSuperlevel_le_energy
        family.tubes wavePacket hPacket threshold

end

end Surface.Core.PrimeWalkWangZahlGeometry
```
