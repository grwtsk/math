# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SlotMap.Variantf97ca5bc894168b09dd072e091a45b2cec079bace5f8525272fcb5f98b0bd540

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4cf568c57a612479d2b3d188d56de22a3f8a8b41` · SHA-256 `7a22632b3de54e7debe911e760bb92cb545bf380d1b0267a3794922ee153c447`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SlotEmbedding.Variant82a24b53cafbf7e1a98b73639132fa5ff705a40b8b711a862a491e33a2e5e975","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"82a24b53cafbf7e1a98b73639132fa5ff705a40b8b711a862a491e33a2e5e975","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.SlotEmbedding.Variant82a24b53cafbf7e1a98b73639132fa5ff705a40b8b711a862a491e33a2e5e975","mathematical_subject":"Logic.Foundations","original_sha256":"82a24b53cafbf7e1a98b73639132fa5ff705a40b8b711a862a491e33a2e5e975","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/contracts/ContractElements/SlotMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ContractElements.BitSquare

/-! # Logical-to-physical square embedding. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SlotEmbedding.Variant82a24b53cafbf7e1a98b73639132fa5ff705a40b8b711a862a491e33a2e5e975

namespace URSM.Contracts

structure SlotEmbedding (n S : Nat) where
  encode : Fin n → Fin S
  decode : Fin S → Option (Fin n)
  leftInverse : ∀ i, decode (encode i) = some i
  rightExact : ∀ s i, decode s = some i → encode i = s

namespace SlotEmbedding

theorem encode_injective
    (slot : SlotEmbedding n S) :
    Function.Injective slot.encode := by
  intro left right equal
  have decoded := congrArg slot.decode equal
  simpa [slot.leftInverse] using decoded

def pad
    (slot : SlotEmbedding n S)
    (matrix : BitSquare n) : BitSquare S :=
  fun i j ↦
    match slot.decode i, slot.decode j with
    | some a, some b => matrix a b
    | _, _ => false

@[simp] theorem pad_on_image
    (slot : SlotEmbedding n S)
    (matrix : BitSquare n)
    (i j : Fin n) :
    slot.pad matrix (slot.encode i) (slot.encode j) = matrix i j := by
  simp [pad, slot.leftInverse]

theorem pad_zero_of_row_unmapped
    (slot : SlotEmbedding n S)
    (matrix : BitSquare n)
    (i j : Fin S)
    (unmapped : slot.decode i = none) :
    slot.pad matrix i j = false := by
  simp [pad, unmapped]

theorem pad_zero_of_column_unmapped
    (slot : SlotEmbedding n S)
    (matrix : BitSquare n)
    (i j : Fin S)
    (unmapped : slot.decode j = none) :
    slot.pad matrix i j = false := by
  simp [pad, unmapped]

end SlotEmbedding

end URSM.Contracts
```
