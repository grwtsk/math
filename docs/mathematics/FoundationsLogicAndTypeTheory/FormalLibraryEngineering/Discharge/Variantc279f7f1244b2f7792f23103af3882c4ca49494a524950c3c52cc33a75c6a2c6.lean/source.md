# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Discharge.Variantc279f7f1244b2f7792f23103af3882c4ca49494a524950c3c52cc33a75c6a2c6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7994ce6145d16ae00d0847abfd2f1c6be28ec813` · SHA-256 `fef65cf7e34c42dfc12cd5860b78002ae274d23e9863669f17bfe58d473c79cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DischargeKind.Variant528149c424bae479d125cd3b2a6ef5eb6bf4d6f3cb1ac60da4ea5c88a0c727c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"528149c424bae479d125cd3b2a6ef5eb6bf4d6f3cb1ac60da4ea5c88a0c727c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DischargeKind.Variant528149c424bae479d125cd3b2a6ef5eb6bf4d6f3cb1ac60da4ea5c88a0c727c1","mathematical_subject":"Foundations.Unclassified","original_sha256":"528149c424bae479d125cd3b2a6ef5eb6bf4d6f3cb1ac60da4ea5c88a0c727c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Mutation/Discharge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Mutation.Problem

/-! # Certificate-gated discharge -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DischargeKind.Variant528149c424bae479d125cd3b2a6ef5eb6bf4d6f3cb1ac60da4ea5c88a0c727c1

namespace Mathematics.Mutation

inductive DischargeKind
  | clarification
  | juris
  | containment
  | rollback
  | localRepair
  | formal
  | runtime
  | representation
  | branch
  | quarantine
  | snapshotSurgery
  deriving DecidableEq, Repr

structure DischargeCandidate (Certificate : Type) where
  candidateId : StableId
  kind : DischargeKind
  admission : HardAdmission
  accepts : Certificate → Prop

def acceptsDischarge
    (candidate : DischargeCandidate Certificate)
    (certificate : Certificate) : Prop :=
  candidate.accepts certificate

structure AcceptedDischarge
    (candidate : DischargeCandidate Certificate) where
  certificate : Certificate
  accepted :
    acceptsDischarge candidate certificate

theorem discharge_requires_exact_certificate
    (candidate : DischargeCandidate Certificate)
    (discharged : AcceptedDischarge candidate) :
    ∃ certificate,
      acceptsDischarge candidate certificate :=
  ⟨discharged.certificate, discharged.accepted⟩

end Mathematics.Mutation
```
