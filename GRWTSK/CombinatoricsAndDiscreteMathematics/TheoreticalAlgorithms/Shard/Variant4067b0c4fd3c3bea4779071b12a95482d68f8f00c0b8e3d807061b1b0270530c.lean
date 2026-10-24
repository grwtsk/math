-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModuleShard.Variant53e5e6203586e5c389e28aa2913d98bd818b03783c552a19a98c57e887c71889","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"53e5e6203586e5c389e28aa2913d98bd818b03783c552a19a98c57e887c71889","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ModuleShard.Variant53e5e6203586e5c389e28aa2913d98bd818b03783c552a19a98c57e887c71889","mathematical_subject":"Computation.DataStructures","original_sha256":"53e5e6203586e5c389e28aa2913d98bd818b03783c552a19a98c57e887c71889","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Extractor/Shard.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["late_preamble_command","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import MathDiscovery.Extractor.Completeness

/-!
# Content-addressed per-module extraction shards
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModuleShard.Variant53e5e6203586e5c389e28aa2913d98bd818b03783c552a19a98c57e887c71889

namespace MathDiscovery.Extractor

open MathDiscovery

structure ModuleShard where
  module : ModuleRecord
  declarations : Array DeclarationRecord
  expressions : Array ExpressionRecord
  dependencies : Array DependencyEdge
  generationRelations : Array GenerationRelation
  attributes : Array AttributeRecord
  sources : Array DeclarationSource
  trustClosures : Array TrustClosure
  diagnostics : Array ExtractionDiagnostic
  oleanDigest : Digest
  sourceDigest : Option Digest
  adapterVersion : Version
  configurationDigest : Digest
  shardDigest : Digest
  deriving DecidableEq, Repr, Inhabited

/-- Shards are reusable only under exact content-address equality. -/
def ModuleShard.ReusableWith (left right : ModuleShard) : Prop :=
  left.shardDigest = right.shardDigest

end MathDiscovery.Extractor
