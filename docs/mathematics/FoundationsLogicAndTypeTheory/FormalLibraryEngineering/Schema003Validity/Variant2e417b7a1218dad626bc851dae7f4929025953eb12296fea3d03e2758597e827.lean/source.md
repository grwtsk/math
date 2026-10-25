# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Schema003Validity.Variant2e417b7a1218dad626bc851dae7f4929025953eb12296fea3d03e2758597e827

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d090c1507e082408934a78ef2db1c8264bdf2ff` · SHA-256 `2e417b7a1218dad626bc851dae7f4929025953eb12296fea3d03e2758597e827`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
  set_option maxRecDepth 100000 in
    simp [generatedEntries]

theorem generated_entry_count_matches :
    generatedEntries.size = generatedEntryCount := by
  set_option maxRecDepth 100000 in
    simp [generatedEntries, generatedEntryCount]

end BitMatrix.Configuration.Schema003
```
