# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Schema003Validity.Variantd8e861cc56662a0ff0ead26859bd05ad99b9080ce085c21207c612f4b01a3505

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91d0f2b72ef3f6f8c693604ada04240a0009b01e` · SHA-256 `187b91318e744ec444ed576676851730ac116b090e428d9bf98faf5fa3c546ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Valid.Variant8f2bd7f1ec2924d5f89a16b85f445e616c3ba96bbecf7f260b90afd40d079da5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8f2bd7f1ec2924d5f89a16b85f445e616c3ba96bbecf7f260b90afd40d079da5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Valid.Variant8f2bd7f1ec2924d5f89a16b85f445e616c3ba96bbecf7f260b90afd40d079da5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8f2bd7f1ec2924d5f89a16b85f445e616c3ba96bbecf7f260b90afd40d079da5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/audit/evidence-resume-workspaces/producer/9591c6ff30638559b50c01f70f8215488732641430867dc44c348c446c634ebe/workspace/Surface/BitMatrix/Configuration/Schema003Validity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Configuration.Schema003Generated
import Mathlib.Tactic

/-!
# Schema 0.0.3 validity and fail-closed policy
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Valid.Variant8f2bd7f1ec2924d5f89a16b85f445e616c3ba96bbecf7f260b90afd40d079da5

namespace BitMatrix.Configuration.Schema003

/-- Exact validity obligations of the fixed schema policy. -/
structure Valid (candidate : ConfigurationPolicy) : Prop where
  schemaVersion : candidate.schemaVersion = 3
  supersedes : candidate.supersedesSchemaVersion = 2
  positiveBitLength : 0 < candidate.bitLength
  supportedBitLength : candidate.bitLength ∈ candidate.currentSupportedBitLengths
  failClosed : candidate.failClosed = true
  rejectUnknown : candidate.rejectUnknownKeys = true
  explicitDecoderLimit : candidate.decoderExplicitMaximumRequired = true

theorem policy_valid : Valid policy where
  schemaVersion := rfl
  supersedes := rfl
  positiveBitLength := by decide
  supportedBitLength := by decide
  failClosed := rfl
  rejectUnknown := rfl
  explicitDecoderLimit := rfl

/-- Legal paths are exactly the paths emitted from the YAML authority. -/
def isLegalPath (path : String) : Bool :=
  generatedEntries.any fun entry => entry.path == path

/-- Closed-key validation. -/
def validatePath (path : String) : ValidationResult String :=
  if isLegalPath path then
    .accepted path
  else
    .rejected path "unknown schema key"

theorem unknown_path_rejected
    (path : String)
    (unknown : isLegalPath path = false) :
    validatePath path = .rejected path "unknown schema key" := by
  simp [validatePath, unknown]

theorem known_path_accepted
    (path : String)
    (known : isLegalPath path = true) :
    validatePath path = .accepted path := by
  simp [validatePath, known]

/-- Generated rows are all required members of the closed specification. -/
theorem generated_entries_required :
    generatedEntries.all (fun entry => entry.required) = true := by
  native_decide

theorem generated_entry_count_matches :
    generatedEntries.size = generatedEntryCount := by
  native_decide

end BitMatrix.Configuration.Schema003
```
