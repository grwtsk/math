# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BitSquare.Variant1100bd09a80d36573e2836e2086f0221475c065e6321cda2cdced3c0fd9fc02c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5837c7f408ef023532da895a57d9a7c7303cffaa` · SHA-256 `e0334324d9dceff93d3e751cb3961ac6dd6044f2204b8a2aaf8e4bc5f4700069`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResolvedSquare.Variant7b7fb7e20a79597215f4bd6dbc6ab536e4b2f480ce317ee70851c0d3da2558c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7b7fb7e20a79597215f4bd6dbc6ab536e4b2f480ce317ee70851c0d3da2558c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ResolvedSquare.Variant7b7fb7e20a79597215f4bd6dbc6ab536e4b2f480ce317ee70851c0d3da2558c7","mathematical_subject":"Foundations.Unclassified","original_sha256":"7b7fb7e20a79597215f4bd6dbc6ab536e4b2f480ce317ee70851c0d3da2558c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/contracts/ContractElements/BitSquare.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Exact square element with explicit validity

An invalid cell is unresolved.  Its stored value is canonically zero, but it
cannot be read as the proposition `false`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResolvedSquare.Variant7b7fb7e20a79597215f4bd6dbc6ab536e4b2f480ce317ee70851c0d3da2558c7

namespace URSM.Contracts

abbrev BitSquare (n : Nat) := Fin n → Fin n → Bool

structure ResolvedSquare (n : Nat) where
  bits : BitSquare n
  valid : BitSquare n
  invalidZero :
    ∀ i j, valid i j = false → bits i j = false

namespace ResolvedSquare

def read?
    (plane : ResolvedSquare n)
    (i j : Fin n) : Option Bool :=
  if plane.valid i j = true then some (plane.bits i j) else none

@[simp] theorem read?_eq_none_of_invalid
    (plane : ResolvedSquare n)
    (i j : Fin n)
    (invalid : plane.valid i j = false) :
    plane.read? i j = none := by
  simp [read?, invalid]

@[simp] theorem read?_eq_some_of_valid
    (plane : ResolvedSquare n)
    (i j : Fin n)
    (valid : plane.valid i j = true) :
    plane.read? i j = some (plane.bits i j) := by
  simp [read?, valid]

def fullyResolved (bits : BitSquare n) : ResolvedSquare n where
  bits := bits
  valid := fun _ _ ↦ true
  invalidZero := by
    intro i j impossible
    simp at impossible

def unresolved : ResolvedSquare n where
  bits := fun _ _ ↦ false
  valid := fun _ _ ↦ false
  invalidZero := by simp

@[simp] theorem fullyResolved_read
    (bits : BitSquare n)
    (i j : Fin n) :
    (fullyResolved bits).read? i j = some (bits i j) := by
  simp [fullyResolved, read?]

@[simp] theorem unresolved_read
    (i j : Fin n) :
    (unresolved : ResolvedSquare n).read? i j = none := by
  simp [unresolved, read?]

end ResolvedSquare

end URSM.Contracts
```
