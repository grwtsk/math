import Boolean.Cube.PrismaticGeometry.Prism

/-!
# n-sphere shadows around a null point

n-sphere shadows are finite geometric shadows: a direction frame, a finite
cell complex, a closed sphere chain, and angle-ratio charts. Coverage and
ratio compatibility are supplied proof fields. Analytic completion requires
`PrismaticGeometryAnalyticLimit`, and δ-ring/prismatic realization requires
`PrismaticGeometryRealization` (both in the Realization module); nothing
analytic or prismatic is asserted here.

Object index: `NullCenteredSphereShadow`, `AngularChart`, `RatioSphere`,
`ratioSphere_sound`.
-/

universe u

namespace Boolean
namespace Cube
namespace PrismaticGeometry

/-- A finite n-sphere shadow around a null point. -/
structure NullCenteredSphereShadow where
  dim : Nat
  directionFrame : DirectionFrame
  complex : FiniteCellComplex
  sphereChain : Chain complex dim
  sphereClosed : ClosedChain complex dim sphereChain
  radiusLabel : String
  angularCoordinateHash : Nat
  finiteSound : Prop
  finiteSoundProof : finiteSound

/-- An angular chart over a sphere shadow: angle coordinates for a finite
list of directions. -/
structure AngularChart
    (S : NullCenteredSphereShadow) where
  chartLabel : String
  chartDirections : List S.directionFrame.Direction
  angleCoordinate :
    S.directionFrame.Direction → AngleRatio
  chartSound : Prop
  chartSoundProof : chartSound

/-- A sphere presented as ratios around the null point: charts, angular
coverage, and ratio compatibility, all proof-carrying. -/
structure RatioSphere
    (S : NullCenteredSphereShadow) where
  charts : List (AngularChart S)
  coversAngularDirections : Prop
  coversProof : coversAngularDirections
  ratioCompatibility : Prop
  ratioCompatibilityProof : ratioCompatibility

theorem ratioSphere_sound
    {S : NullCenteredSphereShadow}
    (R : RatioSphere S) :
    R.coversAngularDirections ∧ R.ratioCompatibility :=
  ⟨R.coversProof, R.ratioCompatibilityProof⟩

end PrismaticGeometry
end Cube
end Boolean
