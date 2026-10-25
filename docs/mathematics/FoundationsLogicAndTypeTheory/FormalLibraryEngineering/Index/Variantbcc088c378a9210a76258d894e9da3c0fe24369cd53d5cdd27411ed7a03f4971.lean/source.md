# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Index.Variantbcc088c378a9210a76258d894e9da3c0fe24369cd53d5cdd27411ed7a03f4971

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d291b15cea1044f39772f40e074e923819c0bb8` · SHA-256 `58bc910363e48f479e113202d6edb626c5a89c12efde9981adbe9ab8d4d43367`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Index.Variant2357fe9b21148ad22315375f9eb05fd9505a5b20b1182a01e5c7f5597ad425a9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2357fe9b21148ad22315375f9eb05fd9505a5b20b1182a01e5c7f5597ad425a9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Index.Variant2357fe9b21148ad22315375f9eb05fd9505a5b20b1182a01e5c7f5597ad425a9","mathematical_subject":"Foundations.Unclassified","original_sha256":"2357fe9b21148ad22315375f9eb05fd9505a5b20b1182a01e5c7f5597ad425a9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Discovery/Index.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Core.Id

/-!
# Discovery index

Declarations and concepts coexist in one advisory kernel index without becoming
the same semantic type.  The constructor records which side of the assignment
boundary an item inhabits.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Index.Variant2357fe9b21148ad22315375f9eb05fd9505a5b20b1182a01e5c7f5597ad425a9

namespace MathDiscovery.Discovery

open MathDiscovery

inductive Index
  | entity (id : EntityId)
  | concept (id : ConceptId)
  deriving DecidableEq, Repr, Inhabited

@[simp] theorem entity_ne_concept
    (entityId : EntityId) (conceptId : ConceptId) :
    Index.entity entityId ≠ Index.concept conceptId := by
  intro equality
  cases equality

end MathDiscovery.Discovery
```
