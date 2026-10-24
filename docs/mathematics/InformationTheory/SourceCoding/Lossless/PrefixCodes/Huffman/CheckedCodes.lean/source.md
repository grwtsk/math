# Complete source: GRWTSK.InformationTheory.Huffman.CheckedCodes

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73b8589a671c50c13c0aee8723f57ce3cb93ef66` · SHA-256 `6ef617246c70856d452305c2957b65b8510a37de8372412901a3d228ee2471df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.InformationTheory.Huffman.SourceBounds

/-!
# The complete checked arithmetic order of Rust `Tree::bit_len`

The source first converts `code.len()` with `u64::try_from`, then performs
`weight.checked_mul(code_len)`, then `total.checked_add(bits)`. This literal
natural-value model includes all three refusal points in that order.

For arbitrary synthetic code lists, conversion is an additional condition:
zero times an unrepresentable code length does not bypass it. For trees
actually built from the byte alphabet, the 255-bit structural bound proves
that every conversion succeeds, and the exact earlier mul/add fold applies.
As elsewhere, correspondence of source values and heap/array representations
to these arguments is the exposed language-library boundary, not an axiom
declared by this file.
-/

namespace GRWTSK.InformationTheory.Huffman.CheckedCodes

open CheckedArithmetic Bounds BitLength

/-- Literal conversion → multiplication → addition sequence for every pair. -/
def checkedDotWithConversion : Nat → List (Nat × Nat) → Option Nat
  | total, [] => some total
  | total, pair :: tail =>
    match checkedUsize 64 pair.2 with
    | none => none
    | some codeLength =>
      match checkedMul pair.1 codeLength with
      | none => none
      | some bits =>
        match checkedAdd total bits with
        | none => none
        | some next => checkedDotWithConversion next tail

theorem checkedDotWithConversion_eq_dotFrom (pairs : List (Nat × Nat)) (total : Nat)
    (lengths : ∀ pair ∈ pairs, pair.2 < 2 ^ 64) :
    checkedDotWithConversion total pairs = dotFrom total pairs := by
  induction pairs generalizing total with
  | nil => rfl
  | cons pair tail ih =>
    have converted : checkedUsize 64 pair.2 = some pair.2 :=
      (checkedUsize_eq_some_iff _ _ _).mpr ⟨lengths pair (by simp), rfl⟩
    have tailLengths : ∀ row ∈ tail, row.2 < 2 ^ 64 :=
      fun row hr => lengths row (by simp [hr])
    simp only [checkedDotWithConversion, converted, dotFrom]
    cases product : checkedMul pair.1 pair.2 with
    | none => rfl
    | some bits =>
      change (match checkedAdd total bits with
        | none => none
        | some next => checkedDotWithConversion next tail) =
        (match checkedAdd total bits with
        | none => none
        | some next => dotFrom next tail)
      cases addition : checkedAdd total bits with
      | none => rfl
      | some next =>
        exact ih next tailLengths

def checkedBitLengthWithConversion (weights : UInt8 → Nat) (tree : Tree) : Option Nat :=
  checkedDotWithConversion 0 (weightCodePairs weights tree)

/-- Every actual source-built code length passes the new Rust conversion. -/
theorem fromWeights_code_conversions (weights : UInt8 → Nat) (tree : Tree)
    (built : fromWeights weights = some tree) :
    ∀ pair ∈ weightCodePairs weights tree, checkedUsize 64 pair.2 = some pair.2 := by
  intro pair hp
  exact code_length_u64_checked pair.2
    (SourceBounds.weightCodePairs_lengths weights tree built pair hp)

theorem fromWeights_checkedBitLength_eq (weights : UInt8 → Nat) (tree : Tree)
    (built : fromWeights weights = some tree) :
    checkedBitLengthWithConversion weights tree = checkedBitLength weights tree := by
  apply checkedDotWithConversion_eq_dotFrom
  intro pair hp
  exact ((checkedUsize_eq_some_iff _ _ _).mp
    (fromWeights_code_conversions weights tree built pair hp)).1

/-- Exact success/refusal including all three guards for a tree returned by
the actual byte-tree constructor. No per-code conversion hypothesis remains. -/
theorem fromWeights_checkedBitLength_spec (weights : UInt8 → Nat) (tree : Tree)
    (built : fromWeights weights = some tree) :
    checkedBitLengthWithConversion weights tree =
      if weightedLength weights tree ≤ maxU64
      then some (weightedLength weights tree) else none := by
  rw [fromWeights_checkedBitLength_eq weights tree built, checkedBitLength_spec]

theorem checkedBitLengthWithConversion_encodedBits (source : List UInt8) (tree : Tree)
    (built : build source = some tree) :
    checkedBitLengthWithConversion (frequencies source) tree =
      if (encodedBits source).length ≤ maxU64
      then some (encodedBits source).length else none := by
  rw [fromWeights_checkedBitLength_eq (frequencies source) tree built]
  exact checkedBitLength_encodedBits source tree built

/-- Every code-length conversion, multiplication, and addition succeeds for
an inventory-admitted input; the returned bit length equals emitted bits. -/
theorem inventory_bit_length_with_conversion (source : List UInt8) (tree : Tree)
    (built : build source = some tree) (size : source.length ≤ maxFileBytes) :
    checkedBitLengthWithConversion (frequencies source) tree =
      some (encodedBits source).length := by
  rw [fromWeights_checkedBitLength_eq (frequencies source) tree built]
  exact SourceBounds.inventory_bit_length source tree built size

/-- An unrepresentable code length refuses before the zero product, as the
actual Rust `try_from` does. This distinguishes the complete guard model. -/
theorem oversized_zero_weight_refused (total codeLength : Nat)
    (oversized : 2 ^ 64 ≤ codeLength) :
    checkedDotWithConversion total [(0, codeLength)] = none := by
  have refused := (checkedUsize_eq_none_iff 64 codeLength).mpr oversized
  simp [checkedDotWithConversion, refused]

end GRWTSK.InformationTheory.Huffman.CheckedCodes
```
