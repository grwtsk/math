-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NullCenteredSphereShadow.Variant627c9d16b7d59a6cf99c3704dfecb5888d547d3679c9185330289f59e4b445f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"627c9d16b7d59a6cf99c3704dfecb5888d547d3679c9185330289f59e4b445f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.NullCenteredSphereShadow.Variant627c9d16b7d59a6cf99c3704dfecb5888d547d3679c9185330289f59e4b445f5","mathematical_subject":"Computation.DataStructures","original_sha256":"627c9d16b7d59a6cf99c3704dfecb5888d547d3679c9185330289f59e4b445f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/PrismaticGeometry/Sphere.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NullCenteredSphereShadow.Variant627c9d16b7d59a6cf99c3704dfecb5888d547d3679c9185330289f59e4b445f5

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
