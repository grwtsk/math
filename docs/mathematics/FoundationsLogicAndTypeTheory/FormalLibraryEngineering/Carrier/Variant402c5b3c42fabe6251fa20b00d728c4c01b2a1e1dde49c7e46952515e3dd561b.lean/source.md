# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Carrier.Variant402c5b3c42fabe6251fa20b00d728c4c01b2a1e1dde49c7e46952515e3dd561b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2a8320742a3751659bdfd47c0d130f6361ee209` · SHA-256 `db32f5d9e2aa679539fff9056848698993eef462e9f9a4db3ec085869f8c219d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvidenceAvailability.Variant147a2a9f9b08e96566e281c46cb9e557534d27b35d0e03793ce42adec99ba027","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"147a2a9f9b08e96566e281c46cb9e557534d27b35d0e03793ce42adec99ba027","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.EvidenceAvailability.Variant147a2a9f9b08e96566e281c46cb9e557534d27b35d0e03793ce42adec99ba027","mathematical_subject":"Foundations.Unclassified","original_sha256":"147a2a9f9b08e96566e281c46cb9e557534d27b35d0e03793ce42adec99ba027","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/Carrier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Resolution.Kind

/-!
# Non-collapsing square-carrier coordinates

Availability, checker validity, and theorem status occupy distinct channels.
An unresolved cell is therefore not an encoding of false.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvidenceAvailability.Variant147a2a9f9b08e96566e281c46cb9e557534d27b35d0e03793ce42adec99ba027

namespace Mathematics.Resolution

inductive EvidenceAvailability
  | missing
  | supplied
  deriving DecidableEq, Repr

inductive EvidenceValidity
  | unchecked
  | accepted
  | rejected
  deriving DecidableEq, Repr

inductive TheoremCoordinate
  | certifiedTrue
  | certifiedFalse
  | unknown
  deriving DecidableEq, Repr

structure ResolutionCarrierCell where
  availability : EvidenceAvailability
  validity : EvidenceValidity
  theoremStatus : TheoremCoordinate
  frequency : Nat
  deriving DecidableEq, Repr

def ResolutionCarrierCell.ofStatus :
    ProofStatus → Nat → ResolutionCarrierCell
  | .proved, frequency =>
      ⟨.supplied, .accepted, .certifiedTrue, frequency⟩
  | .unknownMissing, frequency =>
      ⟨.missing, .unchecked, .unknown, frequency⟩
  | .unknownUnaccepted, frequency =>
      ⟨.supplied, .rejected, .unknown, frequency⟩

theorem unresolved_status_is_not_false
    (status : ProofStatus)
    (unresolved : status ≠ .proved)
    (frequency : Nat) :
    (ResolutionCarrierCell.ofStatus status frequency).theoremStatus =
      TheoremCoordinate.unknown := by
  cases status <;> simp_all [ResolutionCarrierCell.ofStatus]

end Mathematics.Resolution
```
