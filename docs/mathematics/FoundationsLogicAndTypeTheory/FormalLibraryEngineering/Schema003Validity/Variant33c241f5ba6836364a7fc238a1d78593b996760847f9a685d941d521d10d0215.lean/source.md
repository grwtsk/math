# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Schema003Validity.Variant33c241f5ba6836364a7fc238a1d78593b996760847f9a685d941d521d10d0215

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `085cc08dedd2ba79d9d97fd9c5f6c8fcb38fe8e3` · SHA-256 `beba6dbabfb0461d4b1bf9499d741b9eb987dc0b6de52ba6da8933629ed150d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Valid.Variant2e417b7a1218dad626bc851dae7f4929025953eb12296fea3d03e2758597e827","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e417b7a1218dad626bc851dae7f4929025953eb12296fea3d03e2758597e827","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Valid.Variant2e417b7a1218dad626bc851dae7f4929025953eb12296fea3d03e2758597e827","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2e417b7a1218dad626bc851dae7f4929025953eb12296fea3d03e2758597e827","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Configuration/Schema003Validity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Configuration.Schema003Generated
import Mathlib.Tactic

/-!
# Schema 0.0.3 validity and fail-closed policy
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Valid.Variant2e417b7a1218dad626bc851dae7f4929025953eb12296fea3d03e2758597e827

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
  set_option maxRecDepth 100000 in
    simp [generatedEntries]

theorem generated_entry_count_matches :
    generatedEntries.size = generatedEntryCount := by
  set_option maxRecDepth 100000 in
    simp [generatedEntries, generatedEntryCount]

end BitMatrix.Configuration.Schema003
```
