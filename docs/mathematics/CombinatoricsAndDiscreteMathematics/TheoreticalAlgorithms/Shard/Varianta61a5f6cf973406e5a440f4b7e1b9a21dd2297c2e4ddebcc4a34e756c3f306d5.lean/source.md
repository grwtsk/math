# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Shard.Varianta61a5f6cf973406e5a440f4b7e1b9a21dd2297c2e4ddebcc4a34e756c3f306d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78d9ccb99e8b8737296ede78698a6e0781b17881` · SHA-256 `702ff36c3acbf57d9bea5aa77a734de60f00dc6563e42ee0f42c5e1d5ee0e8a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModuleShard.Variantff201f968755c05467feb67a46186d347b00e0bf47df8785293f73701f4f5f9a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ff201f968755c05467feb67a46186d347b00e0bf47df8785293f73701f4f5f9a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ModuleShard.Variantff201f968755c05467feb67a46186d347b00e0bf47df8785293f73701f4f5f9a","mathematical_subject":"Computation.DataStructures","original_sha256":"ff201f968755c05467feb67a46186d347b00e0bf47df8785293f73701f4f5f9a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Extractor/Shard.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["late_preamble_command","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import Mathematics.Extractor.Completeness

/-!
# Content-addressed per-module extraction shards
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModuleShard.Variantff201f968755c05467feb67a46186d347b00e0bf47df8785293f73701f4f5f9a

namespace Mathematics.Extractor

open Mathematics

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

end Mathematics.Extractor
```
