-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.YAxisDirection.Variant6e628ab96b4e5d5f455ce2de3d5456d63d151ee27c51d5c72b821f63bcdf707b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e628ab96b4e5d5f455ce2de3d5456d63d151ee27c51d5c72b821f63bcdf707b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.YAxisDirection.Variant6e628ab96b4e5d5f455ce2de3d5456d63d151ee27c51d5c72b821f63bcdf707b","mathematical_subject":"Foundations.Unclassified","original_sha256":"6e628ab96b4e5d5f455ce2de3d5456d63d151ee27c51d5c72b821f63bcdf707b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/Orientation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Euclidean presentation and arc orientation

Display-axis direction is explicitly distinct from intrinsic circular
orientation.  Winding remains integral.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.YAxisDirection.Variant6e628ab96b4e5d5f455ce2de3d5456d63d151ee27c51d5c72b821f63bcdf707b

namespace Mathematics.Geometry

/-- Vertical display orientation; this does not alter plane geometry. -/
inductive YAxisDirection
  | up
  | down
  deriving DecidableEq, Repr

/-- Orientation of a directed circular arc. -/
inductive ArcOrientation
  | clockwise
  | counterclockwise
  deriving DecidableEq, Repr

/-- Exact integral winding, independent of floating-point angle accumulation. -/
abbrev WindingNumber := Int

end Mathematics.Geometry
