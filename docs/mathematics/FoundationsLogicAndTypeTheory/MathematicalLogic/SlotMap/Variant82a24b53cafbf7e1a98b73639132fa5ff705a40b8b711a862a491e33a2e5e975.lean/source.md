# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SlotMap.Variant82a24b53cafbf7e1a98b73639132fa5ff705a40b8b711a862a491e33a2e5e975

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91e5353e55a4048373ec2679ff0fa1b89823e355` · SHA-256 `82a24b53cafbf7e1a98b73639132fa5ff705a40b8b711a862a491e33a2e5e975`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ContractElements.BitSquare

/-! # Logical-to-physical square embedding. -/

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
