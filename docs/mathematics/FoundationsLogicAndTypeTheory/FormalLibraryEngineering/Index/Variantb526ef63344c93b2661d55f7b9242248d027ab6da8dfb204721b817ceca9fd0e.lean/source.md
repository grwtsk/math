# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Index.Variantb526ef63344c93b2661d55f7b9242248d027ab6da8dfb204721b817ceca9fd0e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71bbffbc1872be0eb74eea021a5f3ad8d1712f50` · SHA-256 `6019d43a3d770470a3e51dcde2f04150efa6c8c6e6b05c5c48f85b08c66666c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Index.Variant8444d33b5e5b0d317695fa9e5cf61517e48abf7a4470b4958b08c3ad1f67113d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8444d33b5e5b0d317695fa9e5cf61517e48abf7a4470b4958b08c3ad1f67113d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Index.Variant8444d33b5e5b0d317695fa9e5cf61517e48abf7a4470b4958b08c3ad1f67113d","mathematical_subject":"Foundations.Unclassified","original_sha256":"8444d33b5e5b0d317695fa9e5cf61517e48abf7a4470b4958b08c3ad1f67113d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Discovery/Index.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.Id

/-!
# Discovery index

Declarations and concepts coexist in one advisory kernel index without becoming
the same semantic type.  The constructor records which side of the assignment
boundary an item inhabits.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Index.Variant8444d33b5e5b0d317695fa9e5cf61517e48abf7a4470b4958b08c3ad1f67113d

namespace Mathematics.Discovery

open Mathematics

inductive Index
  | entity (id : EntityId)
  | concept (id : ConceptId)
  deriving DecidableEq, Repr, Inhabited

@[simp] theorem entity_ne_concept
    (entityId : EntityId) (conceptId : ConceptId) :
    Index.entity entityId ≠ Index.concept conceptId := by
  intro equality
  cases equality

end Mathematics.Discovery
```
