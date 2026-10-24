# Complete source: GRWTSK.InformationTheory.Huffman.Bounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb9bf59c507e727aef8d34827adf353c3f1ab108` · SHA-256 `524e1a88b733e803426253444e6b415ef759228d7b12d73a0a6b1982504fd2b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.InformationTheory.Huffman.CheckedArithmetic

/-!
# Integer and index domains of the Huffman source functions

The source inventory admits at most 32 MiB per Python file. With at most 256
leaves, the separately proved tree-depth bound gives at most 255 bits per
symbol. Those premises imply the numeric bounds below without a Huffman
optimality assumption. In particular, the conservative bit-position bound
exceeds 32-bit `usize`: the 64-bit platform premise is explicit.

Source coverage:
* `Tree::from_weights`: `merge_checked_of_mass` covers each checked merge.
* `Tree::bit_len`: `inventory_dot_checked` covers its checked mul/add fold.
* `compressed_len`: quotient/remainder ceiling and checked platform conversion.
* `encode`: count/position increments and packed-byte indices.
* `decode`: histogram increments, output length and packed-byte indices.
* Python `_packed_shape` and `_huffman_decode`: identical natural bounds;
  Python does not have the Rust `u64`/`usize` overflow boundary.

Allocation success, pointer provenance, array implementations and executable
language semantics are not premises silently added to these numeric facts.
-/

namespace GRWTSK.InformationTheory.Huffman.Bounds

open CheckedArithmetic

def maxFileBytes : Nat := 32 * 1024 * 1024
def maxCorpusBytes : Nat := 512 * 1024 * 1024
def maxCodeBits : Nat := 255
def maxFileBits : Nat := maxFileBytes * maxCodeBits
def maxFileCompressedBytes : Nat := 1069547520

theorem maxFileBytes_value : maxFileBytes = 33554432 := by decide
theorem maxCorpusBytes_value : maxCorpusBytes = 536870912 := by decide
theorem maxFileBits_value : maxFileBits = 8556380160 := by decide
theorem maxU64_value : maxU64 = 18446744073709551615 := by decide

/-- The exact Rust `bit_len / 8 + u64::from(bit_len % 8 != 0)` expression. -/
def compressedByteLen (bits : Nat) : Nat :=
  bits / 8 + if bits % 8 = 0 then 0 else 1

theorem compressedByteLen_eq_ceil (bits : Nat) :
    compressedByteLen bits = (bits + 7) / 8 := by
  have hmod := Nat.mod_lt bits (by decide : 0 < 8)
  have hdecomp := Nat.div_add_mod bits 8
  unfold compressedByteLen
  split <;> omega

theorem compressedByteLen_monotone {left right : Nat} (bound : left ≤ right) :
    compressedByteLen left ≤ compressedByteLen right := by
  rw [compressedByteLen_eq_ceil, compressedByteLen_eq_ceil]
  exact Nat.div_le_div_right (Nat.add_le_add_right bound 7)

theorem compressedByteLen_le_self (bits : Nat) : compressedByteLen bits ≤ bits := by
  have hmod := Nat.mod_lt bits (by decide : 0 < 8)
  have hdecomp := Nat.div_add_mod bits 8
  unfold compressedByteLen
  split <;> omega

theorem compressedByteLen_u64_bound (bits : Nat) (bound : bits ≤ maxU64) :
    compressedByteLen bits ≤ 2305843009213693952 := by
  rw [maxU64_value] at bound
  rw [compressedByteLen_eq_ceil]
  omega

/-- This addition is safe for every `u64`, including `u64::MAX`. The proof
uses the actual quotient/remainder expression, not a bounded `(bits+7)`. -/
theorem compressed_len_add_checked (bits : Nat) (bound : bits ≤ maxU64) :
    checkedAdd (bits / 8) (if bits % 8 = 0 then 0 else 1) =
      some (compressedByteLen bits) := by
  apply (checkedAdd_eq_some_iff _ _ _).mpr
  exact ⟨Nat.le_trans (compressedByteLen_le_self bits) bound, rfl⟩

theorem compressed_len_max : compressedByteLen maxU64 = 2305843009213693952 := by
  decide

theorem naive_ceil_add_overflows : checkedAdd maxU64 7 = none := by decide

/-- Natural-value meaning of Rust `usize::try_from` on a `wordBits` platform. -/
def checkedUsize (wordBits value : Nat) : Option Nat :=
  if value < 2 ^ wordBits then some value else none

theorem checkedUsize_eq_some_iff (wordBits value result : Nat) :
    checkedUsize wordBits value = some result ↔ value < 2 ^ wordBits ∧ result = value := by
  unfold checkedUsize
  split <;> simp_all [eq_comm] <;> omega

theorem checkedUsize_eq_none_iff (wordBits value : Nat) :
    checkedUsize wordBits value = none ↔ 2 ^ wordBits ≤ value := by
  simp [checkedUsize]

theorem compressed_len_64 (bits : Nat) (bound : bits ≤ maxU64) :
    checkedUsize 64 (compressedByteLen bits) = some (compressedByteLen bits) := by
  apply (checkedUsize_eq_some_iff _ _ _).mpr
  have h := compressedByteLen_u64_bound bits bound
  exact ⟨by omega, rfl⟩

def weightSum (pairs : List (Nat × Nat)) : Nat := (pairs.map Prod.fst).sum

theorem products_le_weightSum_mul (pairs : List (Nat × Nat)) (codeBound : Nat)
    (lengths : ∀ pair ∈ pairs, pair.2 ≤ codeBound) :
    products pairs ≤ weightSum pairs * codeBound := by
  induction pairs with
  | nil => simp [products, weightSum]
  | cons pair tail ih =>
    have head := Nat.mul_le_mul_left pair.1 (lengths pair (by simp))
    have rest := ih (fun row hr => lengths row (by simp [hr]))
    simp only [products, weightSum, List.map_cons, List.sum_cons] at *
    rw [Nat.add_mul]
    exact Nat.add_le_add head rest

theorem inventory_products_bound (pairs : List (Nat × Nat))
    (source : weightSum pairs ≤ maxFileBytes)
    (lengths : ∀ pair ∈ pairs, pair.2 ≤ maxCodeBits) :
    products pairs ≤ maxFileBits := by
  exact Nat.le_trans (products_le_weightSum_mul pairs maxCodeBits lengths)
    (Nat.mul_le_mul_right maxCodeBits source)

theorem maxFileBits_le_u64 : maxFileBits ≤ maxU64 := by decide

/-- Exact success of every multiplication and addition in `Tree::bit_len`.
The `weightSum` and path-length premises are discharged by the source-frequency
and 256-leaf tree theorems, rather than by an inverse-codec assumption. -/
theorem inventory_dot_checked (pairs : List (Nat × Nat))
    (source : weightSum pairs ≤ maxFileBytes)
    (lengths : ∀ pair ∈ pairs, pair.2 ≤ maxCodeBits) :
    dotFrom 0 pairs = some (products pairs) := by
  apply (dotFrom_eq_some_iff pairs 0 (products pairs) (by decide)).mpr
  constructor
  · simpa using Nat.le_trans (inventory_products_bound pairs source lengths)
      maxFileBits_le_u64
  · simp

/-- Queue mass conservation supplies `submass` for the two popped entries. -/
theorem merge_checked_of_mass (left right mass : Nat)
    (submass : left + right ≤ mass) (bounded : mass ≤ maxU64) :
    checkedAdd left right = some (left + right) := by
  exact (checkedAdd_eq_some_iff left right (left + right)).mpr
    ⟨Nat.le_trans submass bounded, rfl⟩

theorem inventory_compressed_bound (bits : Nat) (bound : bits ≤ maxFileBits) :
    compressedByteLen bits ≤ maxFileCompressedBytes := by
  exact Nat.le_trans (compressedByteLen_monotone bound) (by decide)

theorem inventory_compressed_32 (bits : Nat) (bound : bits ≤ maxFileBits) :
    checkedUsize 32 (compressedByteLen bits) = some (compressedByteLen bits) := by
  apply (checkedUsize_eq_some_iff _ _ _).mpr
  have h := inventory_compressed_bound bits bound
  change compressedByteLen bits ≤ 1069547520 at h
  exact ⟨by omega, rfl⟩

/-- A natural-to-word cast is exact under the structural 255-bit path bound.
The source now additionally checks `u64::try_from(code.len())`; the following
checked-conversion theorem states that explicit success condition. -/
theorem code_length_u64_cast (length : Nat) (bound : length ≤ maxCodeBits) :
    (UInt64.ofNat length).toNat = length := by
  apply UInt64.toNat_ofNat_of_lt'
  change length < 18446744073709551616
  change length ≤ 255 at bound
  omega

theorem code_length_u64_checked (length : Nat) (bound : length ≤ maxCodeBits) :
    checkedUsize 64 length = some length := by
  apply (checkedUsize_eq_some_iff _ _ _).mpr
  change length ≤ 255 at bound
  exact ⟨by omega, rfl⟩

/-- Every byte indexes the 256-element frequency and code tables. -/
theorem symbol_index_bound (symbol : UInt8) : symbol.toNat < 256 := symbol.toNat_lt

theorem inventory_position_64 (bits : Nat) (bound : bits ≤ maxFileBits) :
    bits < 2 ^ 64 := by
  rw [maxFileBits_value] at bound
  omega

theorem inventory_position_bound_exceeds_32 : 2 ^ 32 < maxFileBits := by decide

/-- The encoder's explicit `usize::try_from(bit_len)` guard refuses this
conservative bound on 32-bit platforms even though compressed bytes would fit. -/
theorem position_limit_32_refuses_max_bound : checkedUsize 32 maxFileBits = none := by
  decide

theorem inventory_position_platform (wordBits bits : Nat)
    (capacity : maxFileBits < 2 ^ wordBits) (bound : bits ≤ maxFileBits) :
    checkedUsize wordBits bits = some bits := by
  exact (checkedUsize_eq_some_iff wordBits bits bits).mpr
    ⟨Nat.lt_of_le_of_lt bound capacity, rfl⟩

/-- An unchecked `position += 1` stays representable when the total number
of meaningful bits fits in `usize`. The strict loop condition is essential. -/
theorem position_successor_fits (wordBits position bits : Nat)
    (capacity : bits < 2 ^ wordBits) (beforeEnd : position < bits) :
    position + 1 < 2 ^ wordBits := by omega

theorem packed_index_bound (position bits : Nat) (beforeEnd : position < bits) :
    position / 8 < compressedByteLen bits := by
  rw [compressedByteLen_eq_ceil]
  omega

theorem packed_shift_bound (position : Nat) : 7 - position % 8 < 8 := by
  omega

theorem padding_shift_bound (bits : Nat) : (8 - bits % 8) % 8 < 8 :=
  Nat.mod_lt _ (by decide)

theorem packed_index_usize (wordBits position bits : Nat)
    (beforeEnd : position < bits) (capacity : compressedByteLen bits < 2 ^ wordBits) :
    checkedUsize wordBits (position / 8) = some (position / 8) := by
  exact (checkedUsize_eq_some_iff _ _ _).mpr
    ⟨Nat.lt_trans (packed_index_bound position bits beforeEnd) capacity, rfl⟩

/-- Applies to encoder histogram counts and decoder observed counts: before
emitting the next byte/bit, a particular count is bounded by iterations so far. -/
theorem increment_before_end (count position limit : Nat)
    (counted : count ≤ position) (beforeEnd : position < limit)
    (bounded : limit ≤ maxU64) :
    checkedSucc count = some (count + 1) := by
  exact (checkedSucc_eq_some_iff count (count + 1)).mpr ⟨by omega, rfl⟩

theorem inventory_output_64 (length : Nat) (bound : length ≤ maxFileBytes) :
    checkedUsize 64 length = some length := by
  apply (checkedUsize_eq_some_iff _ _ _).mpr
  rw [maxFileBytes_value] at bound
  exact ⟨by omega, rfl⟩

theorem inventory_total_add_32 (total next : Nat)
    (prior : total ≤ maxCorpusBytes) (file : next ≤ maxFileBytes) :
    checkedUsize 32 (total + next) = some (total + next) := by
  apply (checkedUsize_eq_some_iff _ _ _).mpr
  rw [maxCorpusBytes_value] at prior
  rw [maxFileBytes_value] at file
  exact ⟨by omega, rfl⟩

end GRWTSK.InformationTheory.Huffman.Bounds
```
