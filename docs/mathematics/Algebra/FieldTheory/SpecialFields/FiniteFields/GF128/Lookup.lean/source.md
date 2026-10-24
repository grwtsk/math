# Complete source: GRWTSK.Algebra.FiniteField.GF128.Lookup

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `352f02dad0fe6e4dfd183e41dfb239127aaac989` · SHA-256 `e0ac6f210993f31162a569a0abcff8085fa436ea87a8e749165b77b1bd631595`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.FiniteField.GF128.Grouped

/-!
# Fixed-coefficient lookup multiplication

The Python table builder doubles the current coefficient and appends a copy of
all previous entries XORed with it. The Rust nibble table stores the same XOR
combinations with the lowest-set-bit recurrence. This module relates concrete
lookup tables to the already proved 128-bit multiply implementation.
-/
namespace GRWTSK.Algebra.FiniteField.GF128

/-- Literal Python doubling-and-concatenation table construction. -/
def pythonTable (coefficient : Word) : Nat → List Word
  | 0 => [0]
  | bits + 1 =>
    let previous := pythonTable coefficient bits
    previous ++ previous.map (fun entry => entry ^^^ iter bits coefficient)

theorem low_add_power_xor (low bits : Nat) (h : low < 2 ^ bits) :
    low + 2 ^ bits = low ^^^ 2 ^ bits := by
  rw [← Nat.or_two_pow_eq_add_of_lt h]
  apply Nat.eq_of_testBit_eq
  intro i
  simp only [Nat.testBit_or, Nat.testBit_xor, Nat.testBit_two_pow]
  by_cases hi : bits = i
  · subst i
    simp [Nat.testBit_lt_two_pow h]
  · simp [hi]

theorem ofNat_power_eq_basis (bits : Nat) :
    BitVec.ofNat 128 (2 ^ bits) = basis bits := by
  apply BitVec.eq_of_toNat_eq
  simp [basis, BitVec.toNat_shiftLeft, Nat.shiftLeft_eq]

/-- Every generated table entry equals multiplication by its represented digit. -/
theorem pythonTable_spec (coefficient : Word) (bits : Nat) (h : bits ≤ 128) :
    pythonTable coefficient bits =
      (List.range (2 ^ bits)).map (fun digit => mul coefficient (BitVec.ofNat 128 digit)) := by
  induction bits with
  | zero =>
    change [0] = [mul coefficient 0]
    exact congrArg (fun value : Word => [value]) (mul_zero_right coefficient).symm
  | succ bits ih =>
    have hb : bits < 128 := by omega
    have hp : 2 ^ (bits + 1) = 2 ^ bits + 2 ^ bits := by
      simp [Nat.pow_succ, Nat.mul_two]
    rw [pythonTable, ih (by omega), hp, List.range_add, List.map_append,
      List.map_map, List.map_map]
    apply congrArg ((List.range (2 ^ bits)).map (fun digit => mul coefficient (BitVec.ofNat 128 digit)) ++ ·)
    apply List.map_congr_left
    intro digit hd
    have hd' : digit < 2 ^ bits := List.mem_range.mp hd
    simp only [Function.comp_apply]
    rw [Nat.add_comm (2 ^ bits) digit, low_add_power_xor digit bits hd',
      BitVec.ofNat_xor, ofNat_power_eq_basis, mul_xor_right, mul_basis coefficient bits hb]

def pythonLookup (coefficient : Word) (bits digit : Nat) : Word :=
  ((pythonTable coefficient bits)[digit]?).getD 0

theorem pythonLookup_eq_mul (coefficient : Word) (bits digit : Nat)
    (hb : bits ≤ 128) (hd : digit < 2 ^ bits) :
    pythonLookup coefficient bits digit = mul coefficient (BitVec.ofNat 128 digit) := by
  rw [pythonLookup, pythonTable_spec coefficient bits hb]
  simp [List.getElem?_range hd]

/-- A bounded carryless accumulator depends only on the bits it consumes. -/
theorem mulFuel_congr_low (bits : Nat) (coefficient left right : Word)
    (h : ∀ i, i < bits → left.getLsbD i = right.getLsbD i) :
    mulFuel bits coefficient left = mulFuel bits coefficient right := by
  induction bits generalizing coefficient left right with
  | zero => rfl
  | succ bits ih =>
    rw [mulFuel, mulFuel, h 0 (by omega)]
    apply congrArg ((if right.getLsbD 0 then coefficient else 0) ^^^ ·)
    apply ih
    intro i hi
    simpa only [BitVec.getLsbD_ushiftRight] using h (1 + i) (by omega)

/-- Extracting the low digit then multiplying equals consuming that many bits. -/
theorem mul_low_digit (coefficient value : Word) (bits : Nat) (hb : bits ≤ 128) :
    mul coefficient (BitVec.ofNat 128 (value.toNat % 2 ^ bits)) =
      mulFuel bits coefficient value := by
  let digit := BitVec.ofNat 128 (value.toNat % 2 ^ bits)
  have hd : value.toNat % 2 ^ bits < 2 ^ bits := Nat.mod_lt _ (Nat.two_pow_pos bits)
  have hw : value.toNat % 2 ^ bits < 2 ^ 128 :=
    Nat.lt_of_lt_of_le hd (Nat.pow_le_pow_right (by decide) hb)
  have hz : digit >>> bits = 0 := by
    apply BitVec.eq_of_toNat_eq
    simp [digit, BitVec.toNat_ushiftRight, Nat.mod_eq_of_lt hw,
      Nat.shiftRight_eq_div_pow, Nat.div_eq_of_lt hd]
  have hc : mulFuel bits coefficient digit = mulFuel bits coefficient value := by
    apply mulFuel_congr_low
    intro i hi
    have hiw : i < 128 := by omega
    change (BitVec.ofNat 128 (value.toNat % 2 ^ bits)).getLsbD i = value.getLsbD i
    rw [BitVec.getLsbD_ofNat, Nat.testBit_mod_two_pow]
    simp only [hiw, hi, decide_true, Bool.true_and]
    rfl
  have hs := mulFuel_add bits (128 - bits) coefficient digit
  rw [Nat.add_sub_of_le hb, hz, mulFuel_zero_right, word_xor_zero] at hs
  exact hs.trans hc

/-- One actual generated table row equals the grouped accumulator block. -/
theorem pythonLookup_low_digit (coefficient value : Word) (bits : Nat) (hb : bits ≤ 128) :
    pythonLookup coefficient bits (value.toNat % 2 ^ bits) =
      mulFuel bits coefficient value := by
  rw [pythonLookup_eq_mul coefficient bits _ hb (Nat.mod_lt _ (Nat.two_pow_pos bits)),
    mul_low_digit coefficient value bits hb]

/-- Position tables are advanced by the same exact doubling operation. -/
def tableApplyFuel (bits : Nat) : Nat → Word → Word → Word
  | 0, _, _ => 0
  | chunks + 1, coefficient, value =>
    pythonLookup coefficient bits (value.toNat % 2 ^ bits) ^^^
      tableApplyFuel bits chunks (iter bits coefficient) (value >>> bits)

theorem tableApplyFuel_eq (bits chunks : Nat) (coefficient value : Word)
    (hb : bits ≤ 128) :
    tableApplyFuel bits chunks coefficient value = groupedFuel bits chunks coefficient value := by
  induction chunks generalizing coefficient value with
  | zero => rfl
  | succ chunks ih =>
    simp only [tableApplyFuel, groupedFuel, pythonLookup_low_digit coefficient value bits hb, ih]

/-- Python's sixteen cached byte-position tables compute the exact multiplier. -/
theorem python_byte_lookup_eq_mul (coefficient value : Word) :
    tableApplyFuel 8 16 coefficient value = mul coefficient value := by
  rw [tableApplyFuel_eq 8 16 coefficient value (by decide), byte_grouping]

/-- The same generated combinations support Rust's thirty-two nibble positions. -/
theorem nibble_lookup_eq_mul (coefficient value : Word) :
    tableApplyFuel 4 32 coefficient value = mul coefficient value := by
  rw [tableApplyFuel_eq 4 32 coefficient value (by decide), nibble_grouping]

/-- Rust fills nibble entries in increasing order using its previous entry at
`digit & (digit - 1)` and the doubled coefficient at the lowest set bit. -/
def rustNibbleEntry (coefficient : Word) : Nat → Word
  | 0 => 0
  | digit + 1 =>
    rustNibbleEntry coefficient ((digit + 1) &&& digit) ^^^
      iter (BitVec.ofNat 4 (digit + 1)).ctz.toNat coefficient
termination_by digit => digit
decreasing_by
  have h : (digit + 1) &&& digit ≤ digit := Nat.and_le_right
  omega

def rustNibbleTable (coefficient : Word) : List Word :=
  (List.range 16).map (rustNibbleEntry coefficient)

/-- All sixteen Rust nibble entries are the same generated combinations. -/
theorem rustNibbleTable_eq_pythonTable (coefficient : Word) :
    rustNibbleTable coefficient = pythonTable coefficient 4 := by
  have hr : List.range 16 = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15] := by decide
  rw [rustNibbleTable, hr]
  have hc1 : (BitVec.ofNat 4 1).ctz.toNat = 0 := by decide
  have hc2 : (BitVec.ofNat 4 2).ctz.toNat = 1 := by decide
  have hc3 : (BitVec.ofNat 4 3).ctz.toNat = 0 := by decide
  have hc4 : (BitVec.ofNat 4 4).ctz.toNat = 2 := by decide
  have hc5 : (BitVec.ofNat 4 5).ctz.toNat = 0 := by decide
  have hc6 : (BitVec.ofNat 4 6).ctz.toNat = 1 := by decide
  have hc7 : (BitVec.ofNat 4 7).ctz.toNat = 0 := by decide
  have hc8 : (BitVec.ofNat 4 8).ctz.toNat = 3 := by decide
  have hc9 : (BitVec.ofNat 4 9).ctz.toNat = 0 := by decide
  have hc10 : (BitVec.ofNat 4 10).ctz.toNat = 1 := by decide
  have hc11 : (BitVec.ofNat 4 11).ctz.toNat = 0 := by decide
  have hc12 : (BitVec.ofNat 4 12).ctz.toNat = 2 := by decide
  have hc13 : (BitVec.ofNat 4 13).ctz.toNat = 0 := by decide
  have hc14 : (BitVec.ofNat 4 14).ctz.toNat = 1 := by decide
  have hc15 : (BitVec.ofNat 4 15).ctz.toNat = 0 := by decide
  simp [rustNibbleEntry, pythonTable, hc1, hc2, hc3, hc4, hc5, hc6, hc7, hc8, hc9, hc10, hc11, hc12, hc13, hc14, hc15,
    BitVec.xor_assoc, BitVec.xor_comm]

def rustNibbleLookup (coefficient : Word) (digit : Nat) : Word :=
  ((rustNibbleTable coefficient)[digit]?).getD 0

theorem rustNibbleLookup_eq_pythonLookup (coefficient : Word) (digit : Nat) :
    rustNibbleLookup coefficient digit = pythonLookup coefficient 4 digit := by
  rw [rustNibbleLookup, rustNibbleTable_eq_pythonTable]
  rfl

/-- Bounded accumulation using the actual Rust recurrence-generated row. -/
def rustTableApplyFuel : Nat → Word → Word → Word
  | 0, _, _ => 0
  | chunks + 1, coefficient, value =>
    rustNibbleLookup coefficient (value.toNat % 16) ^^^
      rustTableApplyFuel chunks (iter 4 coefficient) (value >>> (4 : Nat))

theorem rustTableApplyFuel_eq (chunks : Nat) (coefficient value : Word) :
    rustTableApplyFuel chunks coefficient value = tableApplyFuel 4 chunks coefficient value := by
  induction chunks generalizing coefficient value with
  | zero => rfl
  | succ chunks ih =>
    simp only [rustTableApplyFuel, tableApplyFuel, rustNibbleLookup_eq_pythonLookup, ih]

theorem rust_nibble_lookup_eq_mul (coefficient value : Word) :
    rustTableApplyFuel 32 coefficient value = mul coefficient value := by
  rw [rustTableApplyFuel_eq, nibble_lookup_eq_mul]

end GRWTSK.Algebra.FiniteField.GF128
```
