import GRWTSK.NumberTheory.FiniteFieldsAndCommutativeRingsNumberTheoreticAspects.Binary128PolynomialBasis

/-!
# Word arithmetic in the degree-128 binary polynomial basis

Local attribution is to grwtsk contributors.

The source model follows `Binary128::mul` in
`grwtsk/noeaaeue@c1f9df7750d8bb672bbfb8f3609d21ef5f93e15d`,
`crates/noe-binary-field/src/binary128.rs`. A `BitVec 128` decodes as the
sum of its bit coefficients times successive powers of the residue of X in
`AdjoinRoot modulus`. XOR gives addition and subtraction in this quotient.

The truncated left shift omits the old top bit times X^128. Its carry test
and XOR with 0x87 restore that term, using the exact defining relation of the
same polynomial basis. The logical right shift removes the old low bit and
lowers all other degrees by one. Therefore each loop step preserves
`decodeWord acc + decodeWord multiplicand * decodeWord multiplier`.
The multiplier is zero after at most 128 right shifts, so the model's
structural recursion bound agrees with the source's early exit.

The repeated-squaring loop preserves the decoded accumulator times the
decoded current power raised to the remaining unsigned exponent. It skips
the final square when the shifted exponent is zero. The inverse guard
rejects exactly the word decoding to zero, since a degree-below-128
representative can be divisible by the modulus only when it vanishes.
For a nonzero input, multiplying the computed power by the input gives
the power 2^128 − 1, which equals one in this field.

The carry fixture multiplies the top-bit word by the word for X. Truncating
without reduction gives zero, while the modeled loop gives 0x87. The
general theorem supplies the arithmetic meaning of the modeled result in the
same quotient whose irreducibility and cardinality were proved in
`Binary128PolynomialBasis`. Linking Rust execution to this Lean model
remains a separate obligation. Independent mathematical review and novelty
assessment are pending.
-/

open Polynomial
open scoped BigOperators

namespace GRWTSK.FiniteFields.Binary128

abbrev Word := BitVec 128

local notation "Q" => AdjoinRoot modulus

/-- The residue class of the polynomial indeterminate. -/
noncomputable def rootX : Q := AdjoinRoot.mk modulus X

private noncomputable def bitValue (b : Bool) : Q := if b then 1 else 0

private noncomputable def term (word : Word) (i : ℕ) : Q :=
  bitValue (word.getLsbD i) * rootX ^ i

/-- Decode the low-order bit as the constant coefficient in the fixed basis. -/
noncomputable def decodeWord (word : Word) : Q :=
  ∑ i ∈ Finset.range 128, term word i

private theorem one_add_one_eq_zero : (1 : Q) + 1 = 0 := by
  have h : (1 : (ZMod 2)[X]) + 1 = 0 := CharTwo.add_self_eq_zero 1
  simpa only [map_add, map_one, map_zero] using congrArg (AdjoinRoot.mk modulus) h

private theorem add_self_eq_zero (x : Q) : x + x = 0 := by
  calc
    x + x = ((1 : Q) + 1) * x := by rw [add_mul, one_mul]
    _ = 0 := by rw [one_add_one_eq_zero, zero_mul]

private theorem bitValue_xor (a b : Bool) :
    bitValue (a ^^ b) = bitValue a + bitValue b := by
  cases a <;> cases b <;> simp [bitValue, one_add_one_eq_zero]

@[simp] theorem decodeWord_zero : decodeWord 0#128 = 0 := by
  simp [decodeWord, term, bitValue]

/-- XOR models addition of field elements. -/
theorem decodeWord_xor (a b : Word) :
    decodeWord (a ^^^ b) = decodeWord a + decodeWord b := by
  simp only [decodeWord, term, BitVec.getLsbD_xor, bitValue_xor, add_mul, Finset.sum_add_distrib]

/-- The same XOR also models subtraction in characteristic two. -/
theorem decodeWord_xor_sub (a b : Word) :
    decodeWord (a ^^^ b) = decodeWord a - decodeWord b := by
  have hneg := neg_eq_of_add_eq_zero_left (add_self_eq_zero (decodeWord b))
  rw [sub_eq_add_neg, hneg, decodeWord_xor]

@[simp] theorem decodeWord_one : decodeWord 1#128 = 1 := by
  unfold decodeWord
  rw [Finset.sum_eq_single 0]
  · simp [term, bitValue]
  · intro i _ hi
    simp [term, bitValue, BitVec.getLsbD_one, hi]
  · simp

private theorem term_shiftRight_last (word : Word) : term (word >>> 1) 127 = 0 := by
  rw [term, BitVec.getLsbD_ushiftRight, BitVec.getLsbD_of_ge _ _ (by decide)]
  simp [bitValue]

private theorem term_succ (word : Word) (i : ℕ) :
    term word (i + 1) = rootX * term (word >>> 1) i := by
  simp only [term, BitVec.getLsbD_ushiftRight, Nat.add_comm 1 i, pow_succ]
  ring

private theorem decodeWord_shiftRight (word : Word) :
    decodeWord word = bitValue (word.getLsbD 0) + rootX * decodeWord (word >>> 1) := by
  have htail : decodeWord (word >>> 1) = ∑ i ∈ Finset.range 127, term (word >>> 1) i := by
    unfold decodeWord
    rw [Finset.sum_range_succ (n := 127), term_shiftRight_last, add_zero]
  calc
    decodeWord word = (∑ i ∈ Finset.range 127, term word (i + 1)) + term word 0 :=
      Finset.sum_range_succ' _ _
    _ = rootX * decodeWord (word >>> 1) + bitValue (word.getLsbD 0) := by
      rw [htail, Finset.mul_sum]
      have hconst : term word 0 = bitValue (word.getLsbD 0) := by simp [term]
      simp only [term_succ, hconst]
    _ = _ := add_comm _ _

private theorem term_shiftLeft_succ (word : Word) (i : ℕ) (hi : i < 127) :
    term (word <<< 1) (i + 1) = rootX * term word i := by
  simp only [term, BitVec.getLsbD_shiftLeft, pow_succ, Nat.add_sub_cancel]
  have hin : i + 1 < 128 := by omega
  have hout : ¬ i + 1 < 1 := by omega
  simp only [hin, hout, decide_true, decide_false, Bool.not_false, Bool.true_and]
  ring

private theorem decodeWord_shiftLeft (word : Word) :
    rootX * decodeWord word = decodeWord (word <<< 1) + bitValue (word.getLsbD 127) * rootX ^ 128 := by
  have hzero : term (word <<< 1) 0 = 0 := by simp [term, bitValue]
  have hhead : decodeWord (word <<< 1) =
      ∑ i ∈ Finset.range 127, term (word <<< 1) (i + 1) := by
    unfold decodeWord
    rw [Finset.sum_range_succ' (n := 127), hzero, add_zero]
  have hstem : rootX * (∑ i ∈ Finset.range 127, term word i) =
      ∑ i ∈ Finset.range 127, term (word <<< 1) (i + 1) := by
    rw [Finset.mul_sum]
    exact Finset.sum_congr rfl fun i hi ↦ (term_shiftLeft_succ word i (Finset.mem_range.mp hi)).symm
  have hlast : rootX * term word 127 = bitValue (word.getLsbD 127) * rootX ^ 128 := by
    change rootX * term word 127 = bitValue (word.getLsbD 127) * rootX ^ (127 + 1)
    rw [term, pow_succ]
    ring
  calc
    rootX * decodeWord word =
        rootX * ((∑ i ∈ Finset.range 127, term word i) + term word 127) :=
      congrArg (rootX * ·) (Finset.sum_range_succ _ _)
    _ = _ := by rw [mul_add, hstem, hlast, hhead]

private def reductionWord : Word := 0x87#128

private theorem reductionBits :
    ∀ i : Fin 128, reductionWord.getLsbD i =
      decide (i.val = 0 ∨ i.val = 1 ∨ i.val = 2 ∨ i.val = 7) := by decide

private theorem decodeWord_reductionWord :
    decodeWord reductionWord = rootX ^ 7 + rootX ^ 2 + rootX + 1 := by
  have hsum : (∑ i ∈ ({0, 1, 2, 7} : Finset ℕ), term reductionWord i) =
      ∑ i ∈ Finset.range 128, term reductionWord i := by
    apply Finset.sum_subset (by decide)
    intro i hi hnot
    rw [term, reductionBits ⟨i, Finset.mem_range.mp hi⟩]
    have hm : ¬ (i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 7) := by
      simpa using hnot
    simp [hm, bitValue]
  rw [decodeWord, ← hsum]
  have h0 : reductionWord.getLsbD 0 = true := by decide
  have h1 : reductionWord.getLsbD 1 = true := by decide
  have h2 : reductionWord.getLsbD 2 = true := by decide
  have h7 : reductionWord.getLsbD 7 = true := by decide
  simp [Finset.sum_insert, term, bitValue, h0, h1, h2, h7]
  ring

set_option maxRecDepth 4096 in
private theorem rootX_pow_128 :
    rootX ^ 128 = decodeWord reductionWord := by
  rw [decodeWord_reductionWord]
  have hm : AdjoinRoot.mk modulus (X ^ 128 + (X ^ 7 + X ^ 2 + X + 1)) = 0 :=
    AdjoinRoot.mk_self (f := modulus)
  have h : rootX ^ 128 + (rootX ^ 7 + rootX ^ 2 + rootX + 1) = 0 := by
    simpa only [map_add, map_pow, map_one, rootX] using hm
  calc
    rootX ^ 128 = rootX ^ 128 + ((rootX ^ 7 + rootX ^ 2 + rootX + 1) +
        (rootX ^ 7 + rootX ^ 2 + rootX + 1)) := by rw [add_self_eq_zero, add_zero]
    _ = rootX ^ 7 + rootX ^ 2 + rootX + 1 := by rw [← add_assoc, h, zero_add]

private theorem carry_eq_zero (word : Word) :
    word >>> 127 = 0#128 ↔ word.getLsbD 127 = false := by
  constructor
  · intro h
    have heq := congrArg (fun w : Word ↦ w.getLsbD 0) h
    simpa using heq
  · intro h
    apply BitVec.eq_of_getLsbD_eq_iff.mpr
    intro i _
    simp only [BitVec.getLsbD_ushiftRight, BitVec.getLsbD_zero]
    rcases Nat.eq_zero_or_pos i with rfl | hi
    · exact h
    · exact BitVec.getLsbD_of_ge word (127 + i) (by omega)

/-- One fixed-width left shift, reducing the bit shifted past position 127. -/
def shiftReduce (word : Word) : Word :=
  let carry := word >>> 127
  let shifted := word <<< 1
  if carry ≠ 0#128 then shifted ^^^ reductionWord else shifted

theorem decodeWord_shiftReduce (word : Word) :
    decodeWord (shiftReduce word) = rootX * decodeWord word := by
  rw [decodeWord_shiftLeft, rootX_pow_128]
  unfold shiftReduce
  dsimp only
  by_cases hc : word >>> 127 = 0#128
  · have h := (carry_eq_zero word).mp hc
    simp only [hc, ne_self_iff_false, ite_false, h, bitValue, Bool.false_eq_true, zero_mul, add_zero]
  · have h : word.getLsbD 127 = true := by simpa [carry_eq_zero] using hc
    rw [ite_eq_left hc]
    simp only [h, bitValue, ite_true, decodeWord_xor, one_mul]

private theorem and_one_eq_zero (word : Word) :
    word &&& 1#128 = 0#128 ↔ word.getLsbD 0 = false := by
  constructor
  · intro h
    have heq := congrArg (fun w : Word ↦ w.getLsbD 0) h
    simpa using heq
  · intro h
    apply BitVec.eq_of_getLsbD_eq_iff.mpr
    intro i _
    by_cases hi : i = 0
    · subst i
      simp only [BitVec.getLsbD_and, BitVec.getLsbD_one, BitVec.getLsbD_zero, h, Bool.false_and]
    · simp only [BitVec.getLsbD_and, BitVec.getLsbD_one, BitVec.getLsbD_zero, hi, decide_false,
        Bool.and_false]

private def mulLoop : ℕ → Word → Word → Word → Word
  | 0, _, _, acc => acc
  | fuel + 1, multiplicand, multiplier, acc =>
    if multiplier = 0#128 then acc
    else
      mulLoop fuel (shiftReduce multiplicand) (multiplier >>> 1)
        (if multiplier &&& 1#128 ≠ 0#128 then acc ^^^ multiplicand else acc)

private theorem shiftRight_one_fuel (w : Word) (fuel : ℕ) :
    (w >>> 1) >>> fuel = w >>> (fuel + 1) := by
  apply BitVec.eq_of_getLsbD_eq_iff.mpr
  intro i _
  simp only [BitVec.getLsbD_ushiftRight]
  congr 1
  omega

private theorem mulLoop_invariant (fuel : ℕ) (a b acc : Word) (hzero : b >>> fuel = 0#128) :
    decodeWord (mulLoop fuel a b acc) = decodeWord acc + decodeWord a * decodeWord b := by
  induction fuel generalizing a b acc with
  | zero =>
    rw [BitVec.ushiftRight_zero] at hzero
    simp [mulLoop, hzero]
  | succ fuel ih =>
    by_cases hb : b = 0#128
    · simp [mulLoop, hb]
    · have hshift : (b >>> 1) >>> fuel = 0#128 := by
        rwa [shiftRight_one_fuel]
      rw [mulLoop, ite_eq_right hb, ih _ _ _ hshift, decodeWord_shiftReduce,
        decodeWord_shiftRight b]
      by_cases hc : b &&& 1#128 = 0#128
      · have h := (and_one_eq_zero b).mp hc
        simp only [hc, ne_self_iff_false, ite_false, h, bitValue, Bool.false_eq_true, zero_add]
        ring
      · have h : b.getLsbD 0 = true := by simpa [and_one_eq_zero] using hc
        rw [ite_eq_left hc]
        simp only [h, bitValue, ite_true, decodeWord_xor]
        ring

/-- LSB-first shift-and-reduce multiplication with a redundant 128-step bound. -/
def multiplyWords (a b : Word) : Word :=
  mulLoop 128 a b 0#128

/-- The word loop decodes to the product in the fixed quotient. -/
theorem decodeWord_multiplyWords (a b : Word) :
    decodeWord (multiplyWords a b) = decodeWord a * decodeWord b := by
  rw [multiplyWords, mulLoop_invariant _ _ _ _ (BitVec.ushiftRight_eq_zero (by decide)),
    decodeWord_zero, zero_add]

-- The high bit multiplied by X needs reduction. Dropping the carry would give zero.
example : multiplyWords (1#128 <<< 127) 2#128 = 0x87#128 := by decide

private def powLoop : ℕ → Word → Word → Word → Word
  | 0, result, _, _ => result
  | fuel + 1, result, power, exponent =>
    if exponent = 0#128 then result
    else
      let nextResult := if exponent &&& 1#128 ≠ 0#128 then multiplyWords result power else result
      let nextExponent := exponent >>> 1
      let nextPower := if nextExponent ≠ 0#128 then multiplyWords power power else power
      powLoop fuel nextResult nextPower nextExponent

private theorem decodeWord_powLoop_power (power exponent : Word) :
    decodeWord (if exponent ≠ 0#128 then multiplyWords power power else power) ^ exponent.toNat =
      decodeWord power ^ (2 * exponent.toNat) := by
  by_cases h : exponent = 0#128
  · simp [h]
  · rw [ite_eq_left h, decodeWord_multiplyWords, ← pow_two, ← pow_mul]

private theorem powLoop_invariant (fuel : ℕ) (r p e : Word) (hzero : e >>> fuel = 0#128) :
    decodeWord (powLoop fuel r p e) = decodeWord r * decodeWord p ^ e.toNat := by
  induction fuel generalizing r p e with
  | zero =>
    rw [BitVec.ushiftRight_zero] at hzero
    simp [powLoop, hzero]
  | succ fuel ih =>
    by_cases he : e = 0#128
    · simp [powLoop, he]
    · have hs : (e >>> 1) >>> fuel = 0#128 := by rwa [shiftRight_one_fuel]
      rw [powLoop, ite_eq_right he, ih _ _ _ hs, decodeWord_powLoop_power]
      have hhalf : (e >>> 1).toNat = e.toNat / 2 := by
        rw [BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow]
      have hsplit : e.toNat = e.toNat % 2 + 2 * (e >>> 1).toNat := by
        rw [hhalf, Nat.mod_add_div]
      have hparity : e &&& 1#128 = 0#128 ↔ e.toNat % 2 = 0 := by
        rw [and_one_eq_zero]
        exact (Nat.mod_two_eq_zero_iff_testBit_zero (x := e.toNat)).symm
      conv_rhs => rw [hsplit, pow_add]
      by_cases hbit : e &&& 1#128 = 0#128
      · simp only [hbit, ne_self_iff_false, ite_false, hparity.mp hbit, pow_zero, one_mul]
      · have hodd : e.toNat % 2 = 1 := by
          have : e.toNat % 2 ≠ 0 := mt hparity.mpr hbit
          omega
        rw [ite_eq_left hbit, decodeWord_multiplyWords, hodd, pow_one, mul_assoc]

/-- Repeated squaring with the source's early exit and last-square elision. -/
def powWords (word exponent : Word) : Word :=
  powLoop 128 1#128 word exponent

/-- Repeated squaring decodes to the power with the unsigned word exponent. -/
theorem decodeWord_powWords (word exponent : Word) :
    decodeWord (powWords word exponent) = decodeWord word ^ exponent.toNat := by
  rw [powWords, powLoop_invariant _ _ _ _ (BitVec.ushiftRight_eq_zero (by decide)),
    decodeWord_one, one_mul]

private noncomputable def polynomialWord (word : Word) : (ZMod 2)[X] :=
  ∑ i ∈ Finset.range 128, if word.getLsbD i then X ^ i else 0

private theorem decodeWord_eq_mk (word : Word) :
    decodeWord word = AdjoinRoot.mk modulus (polynomialWord word) := by
  rw [decodeWord, polynomialWord, map_sum]
  apply Finset.sum_congr rfl
  intro i _
  cases h : word.getLsbD i <;> simp [term, bitValue, h, rootX]

private theorem polynomialWord_coeff (word : Word) (n : ℕ) :
    (polynomialWord word).coeff n = if word.getLsbD n then 1 else 0 := by
  unfold polynomialWord
  rw [finsetSum_coeff]
  rw [Finset.sum_eq_single n]
  · cases word.getLsbD n <;> simp
  · intro i _ hi
    cases word.getLsbD i <;> simp [coeff_X_pow, Ne.symm hi]
  · intro hn
    have hn' : 128 ≤ n := Nat.le_of_not_gt (by simpa using hn)
    simp [BitVec.getLsbD_of_ge word n hn']

set_option maxRecDepth 4096 in
/-- The zero guard detects exactly the zero element of the quotient. -/
theorem decodeWord_eq_zero_iff (word : Word) : decodeWord word = 0 ↔ word = 0#128 := by
  refine ⟨fun h ↦ ?_, fun h ↦ h ▸ decodeWord_zero⟩
  have hmk : AdjoinRoot.mk modulus (polynomialWord word) = 0 :=
    (decodeWord_eq_mk word).symm.trans h
  have hdvd : modulus ∣ polynomialWord word :=
    (AdjoinRoot.mk_eq_zero (f := modulus) (g := polynomialWord word)).mp hmk
  have hdegree : (polynomialWord word).natDegree ≤ 127 := by
    refine natDegree_le_iff_coeff_eq_zero.mpr fun n hn ↦ ?_
    rw [polynomialWord_coeff, BitVec.getLsbD_of_ge word n (by omega)]
    rfl
  have hz : polynomialWord word = 0 := by
    by_contra hnz
    have hp : modulus.natDegree ≤ (polynomialWord word).natDegree := natDegree_le_of_dvd hdvd hnz
    rw [natDegree_modulus] at hp
    omega
  apply BitVec.eq_of_getLsbD_eq_iff.mpr
  intro i _
  have hc := polynomialWord_coeff word i
  rw [hz, coeff_zero] at hc
  cases hb : word.getLsbD i
  · simp
  · simp [hb] at hc

private def inverseExponent : Word := 0xfffffffffffffffffffffffffffffffe#128

/-- Reject the zero word and use exponent 2^128 − 2 on every other input. -/
def checkedInverseWord (word : Word) : Option Word :=
  if word = 0#128 then none else some (powWords word inverseExponent)

theorem checkedInverseWord_none_iff (word : Word) :
    checkedInverseWord word = none ↔ word = 0#128 := by
  by_cases h : word = 0#128 <;> simp [checkedInverseWord, h]

/-- A returned inverse word decodes to a multiplicative inverse. -/
theorem checkedInverseWord_sound (word inverse : Word) (h : checkedInverseWord word = some inverse) :
    decodeWord word * decodeWord inverse = 1 := by
  have hw : word ≠ 0#128 := by
    intro hz
    simp [checkedInverseWord, hz] at h
  have hnz : decodeWord word ≠ 0 := mt (decodeWord_eq_zero_iff word).mp hw
  have hinv : powWords word inverseExponent = inverse := by
    simpa [checkedInverseWord, hw] using h
  rw [← hinv, decodeWord_powWords, ← pow_succ']
  let : Fact (Irreducible modulus) := ⟨irreducible_modulus⟩
  let : Module.Finite (ZMod 2) Q :=
    Module.Finite.of_basis (AdjoinRoot.powerBasis irreducible_modulus.ne_zero).basis
  let : Finite Q := Module.finite_of_finite (ZMod 2)
  let : Fintype Q := Fintype.ofFinite Q
  have hf := FiniteField.pow_card_sub_one_eq_one (decodeWord word) hnz
  rw [Fintype.card_eq_nat_card, natCard_quotient] at hf
  exact hf

-- The zero exponent returns the multiplicative identity, including at base zero.
example : powWords 0#128 0#128 = 1#128 := by decide

end GRWTSK.FiniteFields.Binary128
