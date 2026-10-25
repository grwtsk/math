# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Schema003Validity.Variant8f2bd7f1ec2924d5f89a16b85f445e616c3ba96bbecf7f260b90afd40d079da5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e650244825926ed359cb34958cd76976d4ae5f1` · SHA-256 `8f2bd7f1ec2924d5f89a16b85f445e616c3ba96bbecf7f260b90afd40d079da5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Configuration.Schema003Generated
import Mathlib.Tactic

/-!
# Schema 0.0.3 validity and fail-closed policy
-/

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
