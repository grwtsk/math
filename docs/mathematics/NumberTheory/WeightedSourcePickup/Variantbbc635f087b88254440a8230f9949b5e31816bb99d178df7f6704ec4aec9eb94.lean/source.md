# Complete source: GRWTSK.NumberTheory.WeightedSourcePickup.Variantbbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e090029032b0ce8c05231f93d1229884f89758b2` · SHA-256 `bbc635f087b88254440a8230f9949b5e31816bb99d178df7f6704ec4aec9eb94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier
import Mathlib.NumberTheory.Harmonic.Bounds

/-!
# Exact pickup weights for the original signed meter

Written continuation 2026-10-09. Research direction and written identities:
grwtsk contributors. Local formal adapter: OpenAI Codex. The existing source,
Möbius recording, closed cutoff and pickup retain their qualified identities.
No polynomial cross-energy estimate, RH proof or originality claim is made.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.WeightedSourcePickup
open FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel
open MeasureTheory Set
open scoped BigOperators
noncomputable section

/-- The closed-current pickup of a single integer atom. -/
def atomPickup (t : ℝ) (n : ℕ) : ℝ :=
  if (n : ℝ) ≤ Real.exp t then 2 * ((Real.sqrt n)⁻¹ - Real.exp (-t / 2)) else 0

/-- Both closed cutoffs are retained. This diagonal changes the source vector. -/
def pickupWeight (A t : ℝ) (n : ℕ) : ℝ :=
  atomPickup t n -
    (if (n : ℝ) ≤ A ^ 2 then 2 * ((Real.sqrt n)⁻¹ - A⁻¹) else 0)


theorem inverse_sqrt_eq_negative_half (n : ℕ) :
    (Real.sqrt n)⁻¹ = (n : ℝ) ^ (-(1 / 2 : ℝ)) := by
  rw [Real.rpow_neg (Nat.cast_nonneg n), ← Real.sqrt_eq_rpow]

theorem exp_reset {A : ℝ} (hA : 0 < A) :
    Real.exp (2 * Real.log A) = A ^ 2 := by
  rw [show 2 * Real.log A = Real.log A + Real.log A by ring,
    Real.exp_add, Real.exp_log hA, pow_two]

theorem exp_negative_reset {A : ℝ} (hA : 0 < A) :
    Real.exp (-(2 * Real.log A) / 2) = A⁻¹ := by
  rw [show -(2 * Real.log A) / 2 = -Real.log A by ring,
    Real.exp_neg, Real.exp_log hA]

theorem exp_half (t : ℝ) : Real.sqrt (Real.exp t) = Real.exp (t / 2) := by
  have hsq : Real.exp t = Real.exp (t / 2) ^ 2 := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  rw [hsq, Real.sqrt_sq (Real.exp_pos _).le]

theorem exp_negative_half (t : ℝ) :
    Real.exp (-t / 2) = (Real.sqrt (Real.exp t))⁻¹ := by
  rw [exp_half, show -t / 2 = -(t / 2) by ring, Real.exp_neg]

theorem cutoff_order {A t : ℝ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) : A ^ 2 ≤ Real.exp t := by
  rw [← exp_reset (by linarith : 0 < A)]
  exact Real.exp_le_exp.mpr ht

theorem weight_low {A t : ℝ} {n : ℕ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) (hn : (n : ℝ) ≤ A ^ 2) :
    pickupWeight A t n = 2 * (A⁻¹ - Real.exp (-t / 2)) := by
  simp only [pickupWeight, atomPickup, if_pos hn,
    if_pos (hn.trans (cutoff_order hA ht))]
  ring

theorem weight_middle {A t : ℝ} {n : ℕ} (hn : A ^ 2 < (n : ℝ))
    (hnt : (n : ℝ) ≤ Real.exp t) :
    pickupWeight A t n = 2 * ((Real.sqrt n)⁻¹ - Real.exp (-t / 2)) := by
  simp [pickupWeight, atomPickup, not_le.mpr hn, hnt]

theorem weight_above {A t : ℝ} {n : ℕ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) (hn : Real.exp t < (n : ℝ)) :
    pickupWeight A t n = 0 := by
  have hlo : ¬ (n : ℝ) ≤ A ^ 2 := not_le.mpr ((cutoff_order hA ht).trans_lt hn)
  simp [pickupWeight, atomPickup, not_le.mpr hn, hlo]

theorem weight_reset {A : ℝ} (hA : 1 ≤ A) (n : ℕ) :
    pickupWeight A (2 * Real.log A) n = 0 := by
  simp [pickupWeight, atomPickup, exp_reset (by linarith : 0 < A),
    exp_negative_reset (by linarith : 0 < A)]

theorem weight_upper_touch {A t : ℝ} {n : ℕ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) (hn : (n : ℝ) = Real.exp t) :
    pickupWeight A t n = 0 := by
  by_cases hlo : (n : ℝ) ≤ A ^ 2
  · have he : A ^ 2 = Real.exp t := le_antisymm (cutoff_order hA ht) (hn ▸ hlo)
    have hs : Real.sqrt (Real.exp t) = A := by
      rw [← he, Real.sqrt_sq (by linarith : 0 ≤ A)]
    rw [weight_low hA ht hlo, exp_negative_half, hs]
    ring
  · rw [weight_middle (lt_of_not_ge hlo) hn.le, hn, exp_negative_half]
    ring

theorem weight_lower_touch {A t : ℝ} {n : ℕ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) (hn : (n : ℝ) = A ^ 2) :
    pickupWeight A t n = 2 * (A⁻¹ - Real.exp (-t / 2)) :=
  weight_low hA ht hn.le

theorem weight_nonneg {A t : ℝ} {n : ℕ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) (hn : 1 ≤ n) : 0 ≤ pickupWeight A t n := by
  have hnp : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have hsp : 0 < Real.sqrt n := Real.sqrt_pos.mpr hnp
  have htail : ∀ {x : ℝ}, 0 < x → (n : ℝ) ≤ x →
      (Real.sqrt x)⁻¹ ≤ (Real.sqrt n)⁻¹ := by
    intro x _ hnx
    exact inv_anti₀ hsp (Real.sqrt_le_sqrt hnx)
  by_cases hlo : (n : ℝ) ≤ A ^ 2
  · rw [weight_low hA ht hlo]
    have he : Real.exp (-t / 2) ≤ A⁻¹ := by
      rw [← exp_negative_reset (by linarith : 0 < A)]
      exact Real.exp_le_exp.mpr (by linarith)
    positivity
  · by_cases hhi : (n : ℝ) ≤ Real.exp t
    · rw [weight_middle (lt_of_not_ge hlo) hhi]
      have he := htail (Real.exp_pos t) hhi
      rw [← exp_negative_half] at he
      positivity
    · rw [weight_above hA ht (lt_of_not_ge hhi)]

theorem weight_le_inverse_sqrt {A t : ℝ} {n : ℕ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) (hn : 1 ≤ n) :
    pickupWeight A t n ≤ 2 * (Real.sqrt n)⁻¹ := by
  have hnp : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  by_cases hlo : (n : ℝ) ≤ A ^ 2
  · rw [weight_low hA ht hlo]
    have hroot : Real.sqrt n ≤ A := by
      simpa only [Real.sqrt_sq (by linarith : 0 ≤ A)] using Real.sqrt_le_sqrt hlo
    have hi := inv_anti₀ (Real.sqrt_pos.mpr hnp) hroot
    linarith [Real.exp_pos (-t / 2)]
  · by_cases hhi : (n : ℝ) ≤ Real.exp t
    · rw [weight_middle (lt_of_not_ge hlo) hhi]
      linarith [Real.exp_pos (-t / 2)]
    · rw [weight_above hA ht (lt_of_not_ge hhi)]
      positivity

/-- Every admissible integer, including cutoff atoms and prime powers. -/
def integerInventory (A : ℝ) : Finset ℕ := Finset.Icc 1 (integerCutoff A)

/-- The weighted recording in this module, with the following exact parameterization.

def weightedRecording (A t : ℝ) : ℝ := ∑ n ∈ integerInventory A, realMoebius n * pickupWeight
A t n
-/
def weightedRecording (A t : ℝ) : ℝ :=
  ∑ n ∈ integerInventory A, realMoebius n * pickupWeight A t n

/-- The diagonal energy in this module, with the following exact parameterization.

def diagonalEnergy (A t : ℝ) : ℝ := ∑ n ∈ integerInventory A, realMoebius n ^ 2 * pickupWeight
A t n ^ 2
-/
def diagonalEnergy (A t : ℝ) : ℝ :=
  ∑ n ∈ integerInventory A, realMoebius n ^ 2 * pickupWeight A t n ^ 2


theorem moebius_square_le_one (n : ℕ) : realMoebius n ^ 2 ≤ 1 := by
  have h : |realMoebius n| ≤ 1 := by
    unfold realMoebius
    exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := n))
  nlinarith [sq_abs (realMoebius n), abs_nonneg (realMoebius n)]

theorem weight_square_le {A t : ℝ} {n : ℕ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) (hn : 1 ≤ n) :
    pickupWeight A t n ^ 2 ≤ 4 / (n : ℝ) := by
  have h0 := weight_nonneg hA ht hn
  have hu := weight_le_inverse_sqrt hA ht hn
  have hp : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have hsq := Real.sq_sqrt hp.le
  have he : (2 * (Real.sqrt n)⁻¹) ^ 2 = 4 / (n : ℝ) := by
    rw [mul_pow, inv_pow, hsq]
    ring
  rw [← he]
  exact pow_le_pow_left₀ h0 hu 2

theorem diagonal_paid {A t : ℝ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) : diagonalEnergy A t ≤ 4 + 8 * A := by
  have hsum : diagonalEnergy A t ≤
      4 * ∑ n ∈ integerInventory A, (n : ℝ)⁻¹ := by
    unfold diagonalEnergy
    rw [Finset.mul_sum]
    apply Finset.sum_le_sum
    intro n hn
    have hnl := (Finset.mem_Icc.mp hn).1
    have hw := weight_square_le hA ht hnl
    have hmul := mul_le_mul_of_nonneg_right (moebius_square_le_one n)
      (sq_nonneg (pickupWeight A t n))
    have hmul' : realMoebius n ^ 2 * pickupWeight A t n ^ 2 ≤
        pickupWeight A t n ^ 2 := by simpa only [one_mul] using hmul
    simpa only [div_eq_mul_inv] using hmul'.trans hw
  have hsumlog : (∑ n ∈ integerInventory A, (n : ℝ)⁻¹) ≤ 1 + 2 * A := by
    have hi := harmonic_floor_le_one_add_log (Real.exp (2 * A))
      (Real.one_le_exp_iff.mpr (by linarith : 0 ≤ 2 * A))
    simpa only [integerInventory, integerCutoff, harmonic_eq_sum_Icc,
      Rat.cast_sum, Rat.cast_inv, Rat.cast_natCast, Real.log_exp] using hi
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.WeightedSourcePickup
```
