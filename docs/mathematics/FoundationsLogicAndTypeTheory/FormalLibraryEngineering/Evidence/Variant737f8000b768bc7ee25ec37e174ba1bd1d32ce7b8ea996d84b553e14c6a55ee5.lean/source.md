# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Evidence.Variant737f8000b768bc7ee25ec37e174ba1bd1d32ce7b8ea996d84b553e14c6a55ee5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed8d0cc88b4f67edfc0f7c7aed45b08f094d1b6c` · SHA-256 `216a03807cb0a63f766bdaafed6b8a52ea272960ce5ed6b2746d49553e9d3078`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvidenceKind.Variante125b622d480ce32946f4956526544cd0e91463e5b59c80df28886d70da2642d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e125b622d480ce32946f4956526544cd0e91463e5b59c80df28886d70da2642d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.EvidenceKind.Variante125b622d480ce32946f4956526544cd0e91463e5b59c80df28886d70da2642d","mathematical_subject":"Foundations.Unclassified","original_sha256":"e125b622d480ce32946f4956526544cd0e91463e5b59c80df28886d70da2642d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Authority/Evidence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Concept.Authority

/-!
# Evidence hierarchy

Contract-shaped propositions remain payloads. Theorem authority is reserved
for fixed predicates checked by Lean or reviewed imported theorems.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvidenceKind.Variante125b622d480ce32946f4956526544cd0e91463e5b59c80df28886d70da2642d

namespace Mathematics.Authority

universe u

inductive EvidenceKind
  | fixedLeanPredicate
  | reviewedImportedTheorem
  | checkedNumericalCertificate
  | contractProposition
  | runtimeObservation
  | modelInference
  deriving DecidableEq, Repr

def contributesTheoremAuthority : EvidenceKind → Bool
  | .fixedLeanPredicate => true
  | .reviewedImportedTheorem => true
  | .checkedNumericalCertificate => false
  | .contractProposition => false
  | .runtimeObservation => false
  | .modelInference => false

/-- The proposition is fixed by the framework as a function of the payload. -/
structure FixedPredicateCertificate
    (Payload : Type u) (predicate : Payload → Prop) where
  payload : Payload
  proof : predicate payload

/-- A caller-selected proposition is retained without theorem promotion. -/
structure ContractPayload where
  proposition : Prop
  witness : proposition

@[simp] theorem no_promotion_from_model :
    contributesTheoremAuthority .modelInference = false := rfl

@[simp] theorem no_promotion_from_runtime_trace :
    contributesTheoremAuthority .runtimeObservation = false := rfl

@[simp] theorem no_promotion_from_contract :
    contributesTheoremAuthority .contractProposition = false := rfl

end Mathematics.Authority
```
