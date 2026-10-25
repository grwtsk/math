# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Respect.Variant7f6422d47a567aca86403810c85814616ad03f80e117133ecdc2836892e74038

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43c352018ba4ef1a23828489ae2ff607c7250d26` · SHA-256 `da7384df8b7a9e08c6bc4f9792b847d705a2bb571d5c6ecf0818a952a3343562`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RespectEvidence.Variante4f199b23cd8886665d5ea5e8b0255eadcb8ecd0bd48a222f9680c05b497d917","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e4f199b23cd8886665d5ea5e8b0255eadcb8ecd0bd48a222f9680c05b497d917","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RespectEvidence.Variante4f199b23cd8886665d5ea5e8b0255eadcb8ecd0bd48a222f9680c05b497d917","mathematical_subject":"Foundations.Unclassified","original_sha256":"e4f199b23cd8886665d5ea5e8b0255eadcb8ecd0bd48a222f9680c05b497d917","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Juris/Respect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Capability.Scope

/-!
# Scope-confined respect evidence

Respect records exact post-authorization performance counts.  It is evidence,
not a grant constructor.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RespectEvidence.Variante4f199b23cd8886665d5ea5e8b0255eadcb8ecd0bd48a222f9680c05b497d917

namespace Mathematics.Juris

open Mathematics.Capability

structure RespectEvidence where
  participant : PrincipalId
  scope : OperationalCapability
  eligible : Nat
  scopeConformant : Nat
  replayStable : Nat
  boundaryFaithful : Nat
  challengeSurvived : Nat
  correctionsCompleted : Nat
  violations : Nat
  evidenceDigest : Digest

def RespectEvidence.AppliesTo
    (evidence : RespectEvidence)
    (scope : OperationalCapability) : Prop :=
  evidence.scope = scope

def RespectEvidence.impliesTrust
    (_ : RespectEvidence) : Bool :=
  false

@[simp] theorem trust_not_implied_by_respect
    (evidence : RespectEvidence) :
    evidence.impliesTrust = false :=
  rfl

theorem respect_is_scope_bound
    (evidence : RespectEvidence)
    (otherScope : OperationalCapability)
    (different : evidence.scope ≠ otherScope) :
    ¬ evidence.AppliesTo otherScope := by
  exact different

end Mathematics.Juris
```
