/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSignDyadicLDL

/-!
# Packed integer replay of a dyadic LDL certificate

Pack each column of the factor in a positive integer base. The weighted
linear combination of those packed columns has the Gram row as its digits.
A bound on every possible entry of the difference between the Gram and the
target makes the packed identity injective on that difference. In particular,
if its packed value is zero, the first digit is divisible by the base and
has absolute value smaller than the base, so it vanishes. The proof repeats
on the remaining digits. The strict bound is essential since digits equal
to the base can cancel with the next digit.

The checks bind the proposed packed columns to the factor, the packed rows
to the target, and the digit bound to the target and factor entries and the
pivots. The arithmetic proof is deterministic. There are quadratically many
integer operations on the packed rows and columns, with integer size growing
with the dimension and the base width. Sign return shares the existing
dyadic LDL congruence theorem. Packet decoding and independent mathematical
review remain separate.
-/

set_option autoImplicit false

open Matrix

namespace GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL

open QuadraticCertificates

variable {n : ℕ}

/-- Horner evaluation of the signed little-endian integer digits. -/
def packDigits (base : ℕ) (digits : Fin n → ℤ) : ℤ :=
  (List.ofFn digits).foldr (fun d v => d + (base : ℤ) * v) 0

theorem packDigits_eq_sum (base : ℕ) (digits : Fin n → ℤ) :
    packDigits base digits = ∑ i, digits i * (base : ℤ) ^ i.val := by
  induction n with
  | zero => simp [packDigits]
  | succ n ih =>
    simp only [packDigits, List.ofFn_succ, List.foldr_cons, Fin.sum_univ_succ, Fin.val_zero,
      pow_zero, mul_one, Fin.val_succ, pow_succ]
    rw [← packDigits, ih, Finset.mul_sum]
    congr 1
    apply Finset.sum_congr rfl
    intro i _
    ring

private theorem packDigits_eq_zero (base : ℕ) (hbase : 0 < base)
    (digits : Fin n → ℤ) (hbound : ∀ i, (digits i).natAbs < base)
    (hzero : packDigits base digits = 0) : ∀ i, digits i = 0 := by
  induction n with
  | zero => intro i; exact Fin.elim0 i
  | succ n ih =>
    let tail : Fin n → ℤ := fun i => digits i.succ
    have heq : digits 0 + (base : ℤ) * packDigits base tail = 0 := by
      simpa only [packDigits, List.ofFn_succ, List.foldr_cons, tail] using hzero
    have hdvd : (base : ℤ) ∣ digits 0 :=
      ⟨-packDigits base tail, by linarith only [heq]⟩
    have hfirst : digits 0 = 0 := Int.eq_zero_of_dvd_of_natAbs_lt_natAbs hdvd (by simpa using hbound 0)
    rw [hfirst, zero_add] at heq
    have htail : packDigits base tail = 0 :=
      (mul_eq_zero.mp heq).resolve_left (by exact_mod_cast hbase.ne')
    exact Fin.cases hfirst (ih tail (fun i => hbound i.succ) htail)

/-- Recover every signed coefficient when the packed difference is zero and
each difference digit has absolute value strictly below the base. -/
theorem eq_of_packDigits_eq (base : ℕ) (hbase : 0 < base) (x y : Fin n → ℤ)
    (hbound : ∀ i, (x i - y i).natAbs < base)
    (hpack : packDigits base x = packDigits base y) : x = y := by
  have hdiff : packDigits base (fun i => x i - y i) = 0 := by
    simp only [packDigits_eq_sum, sub_mul, Finset.sum_sub_distrib]
    rw [packDigits_eq_sum, packDigits_eq_sum] at hpack
    exact sub_eq_zero.mpr hpack
  exact funext (fun i => sub_eq_zero.mp (packDigits_eq_zero base hbase _ hbound hdiff i))

/-- Common nonnegative entry magnitudes for a packed replay. -/
structure PackingBounds where
  target : ℕ
  factor : ℕ
  pivot : ℕ

/-- A global bound for any target-minus-Gram digit. -/
def packingDifferenceBound (n : ℕ) (limits : PackingBounds) : ℕ :=
  limits.target + n * limits.factor ^ 2 * limits.pivot

/-- Test one full row of target and factor bounds, including its pivot. -/
def checkPackingBounds (limits : PackingBounds) (target factor : Matrix (Fin n) (Fin n) ℤ)
    (pivots : Fin n → ℤ) (i : Fin n) : Bool :=
  decide (0 ≤ pivots i ∧ (pivots i).natAbs ≤ limits.pivot ∧
    ∀ j, (target i j).natAbs ≤ limits.target ∧ (factor i j).natAbs ≤ limits.factor)

/-- Verify one witness column against the literal factor column. -/
def checkPackedColumn (base : ℕ) (factor : Matrix (Fin n) (Fin n) ℤ)
    (packedColumns : Fin n → ℤ) (k : Fin n) : Bool :=
  decide (packedColumns k = packDigits base (fun j => factor j k))

/-- One exact integer equality checks the proposed Gram row in packed form. -/
def checkPackedRow (base : ℕ) (target factor : Matrix (Fin n) (Fin n) ℤ)
    (pivots packedColumns : Fin n → ℤ) (i : Fin n) : Bool :=
  decide (packDigits base (target i) = (List.ofFn fun k => factor i k * pivots k * packedColumns k).sum)

private theorem abs_gramNumerator_le (limits : PackingBounds)
    (factor : Matrix (Fin n) (Fin n) ℤ) (pivots : Fin n → ℤ)
    (hfactor : ∀ i j, (factor i j).natAbs ≤ limits.factor)
    (hpivots : ∀ i, (pivots i).natAbs ≤ limits.pivot) (i j : Fin n) :
    |gramNumerator factor pivots i j| ≤ (n : ℤ) * (limits.factor : ℤ) ^ 2 * limits.pivot := by
  unfold gramNumerator
  refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
  calc
    _ ≤ ∑ _ : Fin n, (limits.factor : ℤ) * limits.pivot * limits.factor := by
      apply Finset.sum_le_sum
      intro k _
      rw [abs_mul, abs_mul]
      gcongr
      · rw [Int.abs_eq_natAbs]
        exact_mod_cast hfactor i k
      · rw [Int.abs_eq_natAbs]
        exact_mod_cast hpivots k
      · rw [Int.abs_eq_natAbs]
        exact_mod_cast hfactor j k
    _ = _ := by simp; ring

private theorem pack_gramNumerator (base : ℕ) (factor : Matrix (Fin n) (Fin n) ℤ)
    (pivots : Fin n → ℤ) (i : Fin n) :
    packDigits base (gramNumerator factor pivots i) =
      ∑ k, factor i k * pivots k * packDigits base (fun j => factor j k) := by
  simp only [packDigits_eq_sum, gramNumerator, Finset.sum_mul, Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro k _
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- Exact packed replay recovers the target numerators and all pivot signs. -/
theorem checkPackedRows_implies_checkRow (base : ℕ) (limits : PackingBounds)
    (hbase : packingDifferenceBound n limits < base)
    {target factor : Matrix (Fin n) (Fin n) ℤ} {pivots packedColumns : Fin n → ℤ}
    (hbound : ∀ i, checkPackingBounds limits target factor pivots i = true)
    (hcolumn : ∀ k, checkPackedColumn base factor packedColumns k = true)
    (hrow : ∀ i, checkPackedRow base target factor pivots packedColumns i = true)
    (i : Fin n) : checkRow target factor pivots i = true := by
  have hdata (i : Fin n) : 0 ≤ pivots i ∧ (pivots i).natAbs ≤ limits.pivot ∧
      ∀ j, (target i j).natAbs ≤ limits.target ∧ (factor i j).natAbs ≤ limits.factor :=
    of_decide_eq_true (hbound i)
  have hcol (k : Fin n) : packedColumns k = packDigits base (fun j => factor j k) :=
    of_decide_eq_true (hcolumn k)
  have hrow' : packDigits base (target i) = packDigits base (gramNumerator factor pivots i) := by
    rw [pack_gramNumerator]
    have h : packDigits base (target i) =
        (List.ofFn fun k => factor i k * pivots k * packedColumns k).sum := of_decide_eq_true (hrow i)
    simpa only [List.sum_ofFn, hcol] using h
  have hdiff (j : Fin n) : (target i j - gramNumerator factor pivots i j).natAbs < base := by
    have ht : |target i j| ≤ (limits.target : ℤ) := by
      rw [Int.abs_eq_natAbs]
      exact_mod_cast ((hdata i).2.2 j).1
    have hg := abs_gramNumerator_le limits factor pivots
      (fun i j => ((hdata i).2.2 j).2) (fun i => (hdata i).2.1) i j
    have h : |target i j - gramNumerator factor pivots i j| ≤ (packingDifferenceBound n limits : ℤ) := by
      calc
        _ ≤ |target i j| + |gramNumerator factor pivots i j| := abs_sub _ _
        _ ≤ _ := by simpa [packingDifferenceBound] using add_le_add ht hg
    have hb : (packingDifferenceBound n limits : ℤ) < (base : ℤ) := by exact_mod_cast hbase
    have hc := h.trans_lt hb
    rw [Int.abs_eq_natAbs] at hc
    exact_mod_cast hc
  have hEq := eq_of_packDigits_eq base (Nat.zero_le _ |>.trans_lt hbase) _ _ hdiff hrow'
  unfold checkRow
  exact @decide_eq_true _ (@instDecidableAnd _ _ (Int.decLe _ _) Fintype.decidableForallFintype)
    ⟨(hdata i).1, fun j => congrFun hEq j⟩

/-- Packed replay implies acceptance by the exact uncompressed dyadic checker. -/
theorem checkPackedRows_implies_check (base : ℕ) (limits : PackingBounds)
    (hbase : packingDifferenceBound n limits < base)
    {target factor : Matrix (Fin n) (Fin n) ℤ} {pivots packedColumns : Fin n → ℤ}
    (hbound : ∀ i, checkPackingBounds limits target factor pivots i = true)
    (hcolumn : ∀ k, checkPackedColumn base factor packedColumns k = true)
    (hrow : ∀ i, checkPackedRow base target factor pivots packedColumns i = true) :
    check target factor pivots = true :=
  @decide_eq_true _ Fintype.decidableForallFintype
    (checkPackedRows_implies_checkRow base limits hbase hbound hcolumn hrow)

/-- Return the finite real sign from separately kernel-replayed bounds,
packed column identities, and packed row identities. -/
theorem checkPackedRows_posSemidef (bits base : ℕ) (limits : PackingBounds)
    (hbase : packingDifferenceBound n limits < base)
    {target factor : Matrix (Fin n) (Fin n) ℤ} {pivots packedColumns : Fin n → ℤ}
    (hbound : ∀ i, checkPackingBounds limits target factor pivots i = true)
    (hcolumn : ∀ k, checkPackedColumn base factor packedColumns k = true)
    (hrow : ∀ i, checkPackedRow base target factor pivots packedColumns i = true) :
    ((targetValue bits target).map (Rat.castHom ℝ)).PosSemidef :=
  checkRows_posSemidef bits (checkPackedRows_implies_checkRow base limits hbase hbound hcolumn hrow)

section Replay

private def packedTarget : Matrix (Fin 2) (Fin 2) ℤ := !![48, -24; -24, 28]
private def packedFactor : Matrix (Fin 2) (Fin 2) ℤ := !![4, 0; -2, 4]
private def packedPivots : Fin 2 → ℤ := ![3, 1]
private def packedColumns : Fin 2 → ℤ := ![-508, 1024]

example : ((targetValue 2 packedTarget).map (Rat.castHom ℝ)).PosSemidef :=
  checkPackedRows_posSemidef 2 256 ⟨48, 4, 3⟩
    (by decide +kernel) (factor := packedFactor) (pivots := packedPivots)
    (packedColumns := packedColumns)
    (by decide +kernel) (by decide +kernel) (by decide +kernel)

example : checkPackedRow 256 !![48, -23; -24, 28] packedFactor packedPivots packedColumns 0 =
    false := by decide +kernel

-- A digit equal to the base can carry into the next signed digit.
example : packDigits 100 (![100, -1] : Fin 2 → ℤ) = 0 := by decide +kernel

end Replay

end GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL
