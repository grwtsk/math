/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Data.Nat.Digits.Lemmas
import Mathlib.Algebra.BigOperators.Intervals
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCovarianceGrid

/-!
# Packed convolution for the radius-two covariance moments

The little-endian natural-number packing identity groups a finite
product by the sum of its two digit indices. A strict digit bound
precludes carries, so division and remainder recover that
convolution coefficient. For the radius-two geometry the receiving
signals are reversed, with the first power translated by nine times
the signal scale. The Toeplitz and Hankel output positions use
different origins. The decoder removes the first-power offset and
restores the sign of the odd Toeplitz reciprocal before dividing by
the two dyadic scales.

The return identifies the three gridded covariance evaluations
for arbitrary supplied signal numerators satisfying the magnitude
bound. Checking concrete input and output bytes and literal scalar
soundness are separate premises. This derivation is a positional
arithmetic identity. Independent mathematical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.PackedCovarianceConvolution

open scoped BigOperators

/-- Unsigned little-endian fixed-base packing, including leading zero digits. -/
def pack (base count : ℕ) (a : ℕ → ℕ) : ℕ :=
  ∑ k ∈ Finset.range count, a k * base^k

/-- The coefficient of the product at k, summing over the right operand. -/
def coefficient (nx ny : ℕ) (a b : ℕ → ℕ) (k : ℕ) : ℕ :=
  ∑ j ∈ Finset.range ny, (if j ≤ k ∧ k-j < nx then a (k-j) else 0) * b j

private theorem pack_succ (base count : ℕ) (a : ℕ → ℕ) :
    pack base (count+1) a = a 0 + base * pack base count (fun i => a (i+1)) := by
  unfold pack
  rw [Finset.sum_range_succ', Finset.mul_sum, add_comm (a 0)]
  simp only [pow_zero, mul_one]
  congr 1
  apply Finset.sum_congr rfl
  intro i _
  rw [pow_succ]
  ac_rfl

/-- A contiguous partition can bind input chunks without evaluating a
long left-associated expression for the packed integer. -/
theorem pack_append (base l r : ℕ) (a : ℕ → ℕ) :
    pack base (l+r) a =
      pack base l a + base^l * pack base r (fun j => a (l+j)) := by
  unfold pack
  rw [Finset.sum_range_add, Finset.mul_sum]
  congr 1
  apply Finset.sum_congr rfl
  intro j _
  rw [pow_add]
  dsimp only
  ac_rfl

/-- A fixed-base read recovers the supplied digit when no digit can carry. -/
theorem read_pack (base count : ℕ) (a : ℕ → ℕ)
    (hb : 0 < base) (ha : ∀ j < count, a j < base) {k : ℕ} (hk : k < count) :
    pack base count a / base^k % base = a k := by
  induction k generalizing count a with
  | zero =>
    obtain ⟨count, rfl⟩ := Nat.exists_eq_succ_of_ne_zero (by omega : count ≠ 0)
    rw [pack_succ, pow_zero, Nat.div_one, Nat.add_mul_mod_self_left, Nat.mod_eq_of_lt (ha 0 hk)]
  | succ k ih =>
    obtain ⟨count, rfl⟩ := Nat.exists_eq_succ_of_ne_zero (by omega : count ≠ 0)
    rw [pack_succ, pow_succ', ← Nat.div_div_eq_div_mul, Nat.add_mul_div_left _ _ hb,
      Nat.div_eq_of_lt (ha 0 (by omega)), zero_add]
    exact ih count (fun i => a (i+1)) (fun j hj => ha (j+1) (by omega)) (by omega)

private theorem shift_sum (base nx ny j : ℕ) (a : ℕ → ℕ) (hj : j < ny) :
    (∑ i ∈ Finset.range nx, a i * base^(i+j)) =
      ∑ k ∈ Finset.range (nx+ny), (if j ≤ k ∧ k-j < nx then a (k-j) else 0) * base^k := by
  calc
    _ = ∑ k ∈ (Finset.range (nx+ny)).filter (fun k => j ≤ k ∧ k-j < nx),
        a (k-j) * base^k := by
      apply Finset.sum_bij (fun i _ => i+j)
      · intro i hi
        simp only [Finset.mem_range] at hi
        simp only [Finset.mem_filter, Finset.mem_range]
        omega
      · intro i _ i' _ h
        omega
      · intro k hk
        simp only [Finset.mem_filter, Finset.mem_range] at hk
        exact ⟨k-j, Finset.mem_range.mpr hk.2.2, by omega⟩
      · intro i _
        rw [Nat.add_sub_cancel]
    _ = _ := by
      rw [Finset.sum_filter]
      apply Finset.sum_congr rfl
      intro k _
      split_ifs <;> simp

/-- Integer multiplication of the two packed operands evaluates the full convolution. -/
theorem pack_mul (base nx ny : ℕ) (a b : ℕ → ℕ) :
    pack base nx a * pack base ny b =
      pack base (nx+ny) (coefficient nx ny a b) := by
  calc
    _ = ∑ j ∈ Finset.range ny, (∑ i ∈ Finset.range nx, a i * base^(i+j)) * b j := by
      unfold pack
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro j _
      rw [Finset.sum_mul, Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro i _
      rw [pow_add]
      ac_rfl
    _ = ∑ j ∈ Finset.range ny,
        (∑ k ∈ Finset.range (nx+ny), (if j ≤ k ∧ k-j < nx then a (k-j) else 0) * base^k) * b j := by
      apply Finset.sum_congr rfl
      intro j hj
      rw [shift_sum base nx ny j a (Finset.mem_range.mp hj)]
    _ = _ := by
      unfold pack coefficient
      simp only [Finset.sum_mul]
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro k _
      apply Finset.sum_congr rfl
      intro j _
      ac_rfl

/-- Read a product digit from two certified packed operands without trusting a native convolution. -/
theorem read_mul (base nx ny : ℕ) (a b : ℕ → ℕ)
    (hb : 0 < base) (ha : ∀ k < nx+ny, coefficient nx ny a b k < base)
    {k : ℕ} (hk : k < nx+ny) :
    (pack base nx a * pack base ny b) / base^k % base = coefficient nx ny a b k := by
  rw [pack_mul]
  exact read_pack base _ _ hb ha hk

end GRWTSK.Algebra.LinearAlgebra.PackedCovarianceConvolution

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPackedMoments

open GRWTSK.Algebra.LinearAlgebra.PackedCovarianceConvolution
open scoped BigOperators

def base : ℕ := 2^192
def offset : ℕ := 9*2^49
def highCount : ℕ := 800000
def kernelCount : ℕ := 1199936
def hankelStart : ℕ := 400066

/-- The exact positive reciprocal grid digits in the native multiplication. -/
def kernel (p d : ℕ) : ℕ := if d = 0 then 0 else 2^56 / d^p

/-- The encoded signal power. The first power is translated so all digits are natural. -/
def signal (r : ℕ) (u : ℤ) : ℕ :=
  match r with
  | 0 => 1
  | 1 => (u + (offset : ℤ)).toNat
  | _ => u.natAbs^2

def reversedSignal (r : ℕ) (u : ℕ → ℤ) (j : ℕ) : ℕ :=
  signal r (u (highCount-1-j))

def packedKernelDigit (hankel : Bool) (p j : ℕ) : ℕ :=
  kernel p ((if hankel then hankelStart else 0) + j)

def index (hankel : Bool) (m : ℕ) : ℕ :=
  if hankel then 1200000+m-hankelStart else 1200000-m

def distance (hankel : Bool) (m q : ℕ) : ℕ :=
  if hankel then m+(400001+q) else 400001+q-m

def packedKernel (hankel : Bool) (p : ℕ) : ℕ :=
  pack base kernelCount (packedKernelDigit hankel p)

def packedSignal (r : ℕ) (u : ℕ → ℤ) : ℕ :=
  pack base highCount (reversedSignal r u)

def rawMoment (hankel : Bool) (p r m : ℕ) (u : ℕ → ℤ) : ℕ :=
  (packedKernel hankel p * packedSignal r u) / base^(index hankel m) % base

private theorem signal_bound (r : ℕ) (u : ℤ) (hu : u.natAbs ≤ offset) :
    signal r u ≤ 2^106 := by
  have hAbs : |u| ≤ (offset : ℤ) := by
    rw [Int.abs_eq_natAbs]
    exact_mod_cast hu
  have h := abs_le.mp hAbs
  have hn : 0 ≤ u + (offset : ℤ) := by omega
  cases r with
  | zero => norm_num [signal]
  | succ r =>
    cases r with
    | zero =>
      simp only [signal]
      have hNat : ((u+(offset:ℤ)).toNat : ℤ) = u+(offset:ℤ) :=
        Int.toNat_of_nonneg hn
      have h' : (u+(offset:ℤ)).toNat ≤ 2*offset := by
        exact_mod_cast (show ((u+(offset:ℤ)).toNat : ℤ) ≤ ((2*offset:ℕ):ℤ) by
          rw [hNat]
          push_cast
          omega)
      exact h'.trans (by norm_num [offset])
    | succ r =>
      exact (Nat.pow_le_pow_left hu 2).trans (by norm_num [offset])

private theorem kernel_bound (p d : ℕ) : kernel p d ≤ 2^56 := by
  unfold kernel
  split_ifs
  · positivity
  · exact Nat.div_le_self _ _

private theorem coefficient_lt (hankel : Bool) (p r : ℕ) (u : ℕ → ℤ)
    (hu : ∀ q < highCount, (u q).natAbs ≤ offset) (k : ℕ) :
    coefficient kernelCount highCount (packedKernelDigit hankel p) (reversedSignal r u) k < base := by
  have hb : (∑ _ ∈ Finset.range highCount, (2^56 * 2^106 : ℕ)) < base := by
    simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
    norm_num [base, highCount]
  apply lt_of_le_of_lt _ hb
  unfold coefficient
  apply Finset.sum_le_sum
  intro j hj
  apply Nat.mul_le_mul
  · split_ifs
    · exact kernel_bound _ _
    · positivity
  · exact signal_bound _ _ (hu _ (by
      have := Finset.mem_range.mp hj
      unfold highCount at *
      omega))

private theorem coefficient_corr (hankel : Bool) (p r m : ℕ) (u : ℕ → ℤ)
    (hm₀ : 65 ≤ m) (hm₁ : m ≤ 400000) :
    coefficient kernelCount highCount (packedKernelDigit hankel p) (reversedSignal r u)
      (index hankel m) =
    ∑ q ∈ Finset.range highCount, kernel p (distance hankel m q) * signal r (u q) := by
  unfold coefficient
  rw [← Finset.sum_range_reflect
    (fun q => kernel p (distance hankel m q) * signal r (u q)) highCount]
  apply Finset.sum_congr rfl
  intro j hj
  have hj' : j < 800000 := Finset.mem_range.mp hj
  unfold reversedSignal packedKernelDigit index distance
  cases hankel
  · simp only [Bool.false_eq_true, ↓reduceIte, zero_add]
    have hv : j ≤ 1200000-m ∧ 1200000-m-j < kernelCount := by
      simp only [kernelCount]
      omega
    rw [ite_eq_left hv, show 1200000-m-j = 400001+(highCount-1-j)-m by
      simp only [highCount]
      omega]
  · simp only [↓reduceIte]
    have hv : j ≤ 1200000+m-hankelStart ∧ 1200000+m-hankelStart-j < kernelCount := by
      simp only [kernelCount, hankelStart]
      omega
    rw [ite_eq_left hv, show hankelStart + (1200000+m-hankelStart-j) =
        m+(400001+(highCount-1-j)) by
      simp only [hankelStart, highCount]
      omega]

/-- At every retained physical mode, the native Toeplitz and Hankel output
addresses recover the correct positive-kernel, unsigned-signal moments. -/
theorem rawMoment_eq (hankel : Bool) (p r m : ℕ) (u : ℕ → ℤ)
    (hm₀ : 65 ≤ m) (hm₁ : m ≤ 400000)
    (hu : ∀ q < highCount, (u q).natAbs ≤ offset) :
    rawMoment hankel p r m u =
    ∑ q ∈ Finset.range highCount, kernel p (distance hankel m q) * signal r (u q) := by
  unfold rawMoment packedKernel packedSignal
  rw [read_mul base kernelCount highCount _ _ (by norm_num [base])
    (fun k _ => coefficient_lt hankel p r u hu k) (by cases hankel <;>
      simp only [index, Bool.false_eq_true, ↓reduceIte, hankelStart, kernelCount, highCount] <;> omega)]
  exact coefficient_corr hankel p r m u hm₀ hm₁

/-- Remove the signal offset only for the first power, then restore the
negative sign only for the odd Toeplitz reciprocal. -/
def corrected (hankel : Bool) (p r : ℕ) (digit zeroDigit : ℕ) : ℤ :=
  (if hankel then 1 else (-1 : ℤ)^p) *
    ((digit : ℤ) - if r = 1 then (offset : ℤ)*zeroDigit else 0)

private theorem correctedSignal (r : ℕ) (u : ℤ) (hr : r ≤ 2) (hu : u.natAbs ≤ offset) :
    ((signal r u : ℕ) : ℤ) - (if r = 1 then (offset : ℤ) else 0) = u^r := by
  have hAbs : |u| ≤ (offset : ℤ) := by
    rw [Int.abs_eq_natAbs]
    exact_mod_cast hu
  have h := (abs_le.mp hAbs).1
  have hn : 0 ≤ u+(offset:ℤ) := by omega
  interval_cases r
  · simp [signal]
  · simp [signal, Int.toNat_of_nonneg hn]
  · simp [signal]

/-- The actual output sign and offset decode to the exact signed integer
moment. The input signals are the supplied frozen integer numerators. -/
theorem corrected_eq (hankel : Bool) (p r m : ℕ) (u : ℕ → ℤ)
    (hm₀ : 65 ≤ m) (hm₁ : m ≤ 400000) (hr : r ≤ 2)
    (hu : ∀ q < highCount, (u q).natAbs ≤ offset) :
    corrected hankel p r (rawMoment hankel p r m u) (rawMoment hankel p 0 m u) =
      ∑ q ∈ Finset.range highCount,
        (if hankel then 1 else (-1:ℤ)^p) * (kernel p (distance hankel m q) : ℤ) * (u q)^r := by
  rw [rawMoment_eq hankel p r m u hm₀ hm₁ hu, rawMoment_eq hankel p 0 m u hm₀ hm₁ hu]
  have hSub :
      (if r = 1 then (offset : ℤ) * (↑(∑ q ∈ Finset.range highCount,
        kernel p (distance hankel m q) * signal 0 (u q)) : ℤ) else 0) =
      ∑ q ∈ Finset.range highCount, (kernel p (distance hankel m q) : ℤ) *
        (if r = 1 then (offset : ℤ) else 0) := by
    split_ifs
    · simp only [signal, mul_one, Nat.cast_sum, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro q _
      ring
    · simp
  unfold corrected
  rw [hSub, Nat.cast_sum, ← Finset.sum_sub_distrib, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro q hq
  push_cast
  rw [← mul_sub, correctedSignal r (u q) hr (hu q (Finset.mem_range.mp hq))]
  ring

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPackedMoments

noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPackedMoments

open RadiusTwoCovarianceGrid
open scoped BigOperators

def signalValue (u : ℕ → ℤ) (q : Fin highCount) : ℝ := (u q.val : ℝ) / (2:ℝ)^49

def grid (hankel : Bool) (m p : ℕ) (q : Fin highCount) : ℝ :=
  (if hankel then 1 else (-1:ℝ)^p) * reciprocalGrid56 p (distance hankel m q.val)

def decoded (hankel : Bool) (p r m : ℕ) (u : ℕ → ℤ) : ℝ :=
  (corrected hankel p r (rawMoment hankel p r m u) (rawMoment hankel p 0 m u) : ℝ) /
    ((2:ℝ)^56 * ((2:ℝ)^49)^r)

def decodedMoments (m : ℕ) (u : ℕ → ℤ) : Moments :=
  ⟨fun p r => decoded false p r m u, fun p r => decoded true p r m u⟩

/-- Decode the production products on the original dyadic scales. -/
theorem decoded_eq (hankel : Bool) (p r m : ℕ) (u : ℕ → ℤ)
    (hm₀ : 65 ≤ m) (hm₁ : m ≤ 400000) (hr : r ≤ 2)
    (hu : ∀ q < highCount, (u q).natAbs ≤ offset) :
    decoded hankel p r m u =
      ∑ q : Fin highCount, (signalValue u q)^r * grid hankel m p q := by
  unfold decoded signalValue grid
  rw [corrected_eq hankel p r m u hm₀ hm₁ hr hu, Int.cast_sum, Finset.sum_div]
  rw [Fin.sum_univ_eq_sum_range
    (fun q : ℕ => ((u q : ℝ)/(2:ℝ)^49)^r *
      ((if hankel then 1 else (-1:ℝ)^p) * reciprocalGrid56 p (distance hankel m q)))]
  apply Finset.sum_congr rfl
  intro q _
  have hd : distance hankel m q ≠ 0 := by
    cases hankel <;> simp only [distance, Bool.false_eq_true, ↓reduceIte] <;> omega
  have hs : (((if hankel then 1 else (-1:ℤ)^p) : ℤ) : ℝ) =
      (if hankel then 1 else (-1:ℝ)^p) := by
    cases hankel <;> simp
  simp only [Int.cast_mul, Int.cast_pow, Int.cast_natCast, hs, kernel,
    ite_eq_right hd, reciprocalGrid56, div_pow]
  ring

/-- The three evaluations consumed by the source comparison are exactly
the evaluations of the stored unsigned products after decoding. -/
theorem evaluate_decoded (m : ℕ) (u : ℕ → ℤ) (v W : ℝ)
    (hm₀ : 65 ≤ m) (hm₁ : m ≤ 400000)
    (hu : ∀ q < highCount, (u q).natAbs ≤ offset) :
    evaluate m v W (decodedMoments m u) =
      evaluate m v W (griddedMoments (signalValue u) (grid false m) (grid true m)) := by
  have h (b : Bool) (p r : ℕ) (hr : r ≤ 2) := decoded_eq b p r m u hm₀ hm₁ hr hu
  simp only [evaluate, decodedMoments, griddedMoments,
    h false 1 0 (by decide), h false 1 1 (by decide), h false 1 2 (by decide),
    h false 2 0 (by decide), h false 2 1 (by decide), h false 2 2 (by decide),
    h true 1 0 (by decide), h true 1 1 (by decide), h true 1 2 (by decide),
    h true 2 0 (by decide), h true 2 1 (by decide), h true 2 2 (by decide)]

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPackedMoments
