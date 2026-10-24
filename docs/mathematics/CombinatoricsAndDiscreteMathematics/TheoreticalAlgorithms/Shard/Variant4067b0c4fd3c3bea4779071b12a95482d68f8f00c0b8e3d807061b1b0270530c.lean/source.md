# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Shard.Variant4067b0c4fd3c3bea4779071b12a95482d68f8f00c0b8e3d807061b1b0270530c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f25b5f3348d24d475d7701a2158c3dcfde831c3a` · SHA-256 `e0ad7e73eb5d0617cc9114717a5075300bb8fb2434cb18dc372f32f76670ea74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
