# Complete source: GRWTSK.NumberTheory.Primes.GoldbachTwoArcThetaTransfer

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17b89fc582127fcf9ce729f4b394c8f0f623ed6d` · SHA-256 `7323c12e1f9591df45fc5c409a5de99d1d6968d6cbf03d27b45dda55cc099c46`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachTwoArcRationalBudget
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# The actual q=1,2 progression prefixes from one theta estimate

The only even prime is retained explicitly. These finite identities connect
the scalar prime-only theta supplier to the existing residue and frequency
budgets; they do not supply a prime-distribution theorem.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachTwoArcThetaTransfer

open scoped BigOperators Real
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachPrefixDiscrepancy
open GRWTSK.NumberTheory.Primes.GoldbachPrefixArcTransfer
open GRWTSK.NumberTheory.Primes.GoldbachTwoArcRationalBudget

noncomputable section

/-- The actual even-prime mass through the inclusive cutoff. -/
def goldbachPrimeTwoCorrection (k : ℕ) : ℝ :=
  if 2 ≤ k then Real.log 2 else 0

theorem goldbachPrimeTwoCorrection_bounds (k : ℕ) :
    0 ≤ goldbachPrimeTwoCorrection k ∧ goldbachPrimeTwoCorrection k ≤ Real.log 2 := by
  have hL : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  unfold goldbachPrimeTwoCorrection
  split_ifs <;> constructor <;> linarith

/-- Exact support of the even residue, including the prime two. -/
theorem primeLogWeight_even_indicator (n : ℕ) :
    (if n % 2 = 0 then primeLogWeight n else 0) =
      if n = 2 then Real.log 2 else 0 := by
  by_cases hn : n = 2
  · subst n
    norm_num [primeLogWeight]
  · by_cases hp : Nat.Prime n
    · have hm : n % 2 = 1 := hp.eq_two_or_odd.resolve_left hn
      simp [hm, hn]
    · simp [primeLogWeight, hp, hn]

/-- Exact odd-prime weight; the exceptional even atom is subtracted once. -/
theorem primeLogWeight_odd_indicator (n : ℕ) :
    (if n % 2 = 1 then primeLogWeight n else 0) =
      primeLogWeight n - (if n = 2 then Real.log 2 else 0) := by
  by_cases hn : n = 2
  · subst n
    norm_num [primeLogWeight]
  · by_cases hp : Nat.Prime n
    · have hm : n % 2 = 1 := hp.eq_two_or_odd.resolve_left hn
      simp [hm, hn]
    · simp [primeLogWeight, hp, hn]

theorem goldbachResiduePrimeLogTotal_one_zero (k : ℕ) :
    goldbachResiduePrimeLogTotal k 1 0 = goldbachPrimeLogTotal k := by
  simp only [goldbachResiduePrimeLogTotal, goldbachPrimeLogTotal,
    Finset.sum_filter, Nat.mod_one, ite_true]

theorem goldbachResiduePrimeLogTotal_two_zero (k : ℕ) :
    goldbachResiduePrimeLogTotal k 2 0 = goldbachPrimeTwoCorrection k := by
  classical
  simp only [goldbachResiduePrimeLogTotal, Finset.sum_filter]
  simp_rw [primeLogWeight_even_indicator]
  simp [goldbachPrimeTwoCorrection]

theorem goldbachResiduePrimeLogTotal_two_one (k : ℕ) :
    goldbachResiduePrimeLogTotal k 2 1 =
      goldbachPrimeLogTotal k - goldbachPrimeTwoCorrection k := by
  classical
  simp only [goldbachResiduePrimeLogTotal, Finset.sum_filter]
  simp_rw [primeLogWeight_odd_indicator]
  rw [Finset.sum_sub_distrib]
  simp [goldbachPrimeLogTotal, goldbachPrimeTwoCorrection]

/-- The residue prefix equals its actual finite mass minus the complete
integer baseline. This identity also retains non-reduced residues. -/
theorem goldbachResiduePrefixDiscrepancy_eq_mass (k q r : ℕ) :
    goldbachResiduePrefixDiscrepancy k q r =
      (goldbachResiduePrimeLogTotal k q r : ℂ) -
        (k + 1 : ℂ) * (if q.Coprime r then (Nat.totient q : ℂ)⁻¹ else 0) := by
  classical
  simp [goldbachResiduePrefixDiscrepancy, goldbachResidueDiscrepancyCoefficient,
    goldbachResiduePrimeLogTotal, Finset.sum_filter, Finset.sum_sub_distrib,
    nsmul_eq_mul]
  apply Finset.sum_congr rfl
  intro n hn
  split_ifs <;> rfl

/-- No frequency-zero endpoint is removed: the main term is k+1. -/
theorem goldbachResiduePrefixDiscrepancy_one_zero (k : ℕ) :
    goldbachResiduePrefixDiscrepancy k 1 0 =
      ((goldbachPrimeLogTotal k - (k + 1 : ℝ) : ℝ) : ℂ) := by
  simp [goldbachResiduePrefixDiscrepancy_eq_mass,
    goldbachResiduePrimeLogTotal_one_zero]

/-- The odd progression differs from the q=1 prefix by its exact prime-two
correction, which is zero below two and log 2 thereafter. -/
theorem goldbachResiduePrefixDiscrepancy_two_one (k : ℕ) :
    goldbachResiduePrefixDiscrepancy k 2 1 =
      goldbachResiduePrefixDiscrepancy k 1 0 -
        (goldbachPrimeTwoCorrection k : ℂ) := by
  rw [goldbachResiduePrefixDiscrepancy_eq_mass,
    goldbachResiduePrimeLogTotal_two_one,
    goldbachResiduePrefixDiscrepancy_one_zero]
  push_cast
  norm_num
  ring

theorem norm_goldbachResiduePrefixDiscrepancy_one_zero (k : ℕ) :
    ‖goldbachResiduePrefixDiscrepancy k 1 0‖ =
      |goldbachPrimeLogTotal k - (k + 1 : ℝ)| := by
  rw [goldbachResiduePrefixDiscrepancy_one_zero, Complex.norm_real, Real.norm_eq_abs]

theorem norm_goldbachResiduePrefixDiscrepancy_two_one_le
    (k : ℕ) :
    ‖goldbachResiduePrefixDiscrepancy k 2 1‖ ≤
      |goldbachPrimeLogTotal k - (k + 1 : ℝ)| + Real.log 2 := by
  rw [goldbachResiduePrefixDiscrepancy_two_one]
  calc
    ‖goldbachResiduePrefixDiscrepancy k 1 0 - (goldbachPrimeTwoCorrection k : ℂ)‖ ≤
        ‖goldbachResiduePrefixDiscrepancy k 1 0‖ + ‖(goldbachPrimeTwoCorrection k : ℂ)‖ :=
      norm_sub_le _ _
    _ ≤ |goldbachPrimeLogTotal k - (k + 1 : ℝ)| + Real.log 2 := by
      rw [norm_goldbachResiduePrefixDiscrepancy_one_zero]
      apply add_le_add_right
      simpa [abs_of_nonneg (goldbachPrimeTwoCorrection_bounds k).1] using
        (goldbachPrimeTwoCorrection_bounds k).2

/-- Only q=1,2 are used. Non-reduced residues are still charged by the exact
mass in the inherited budget; this is a reduced-prefix bound family. -/
def goldbachTwoArcReducedPrefixBound (B : ℝ) (q _r : ℕ) : ℝ :=
  if q = 2 then B + Real.log 2 else B

/-- The single scalar all-prefix hypothesis pays every required reduced
prefix at Q=2, rather than presupposing the whole progression supplier. -/
theorem goldbachTwoArcReducedPrefixBounds_of_theta
    {N : ℕ} {B : ℝ} (hB : 0 ≤ B)
    (hθ : ∀ k ≤ N, |goldbachPrimeLogTotal k - (k + 1 : ℝ)| ≤ B) :
    ∀ q, 0 < q → q ≤ 2 → ∀ r, r < q → q.Coprime r →
      0 ≤ goldbachTwoArcReducedPrefixBound B q r ∧
        ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤
          goldbachTwoArcReducedPrefixBound B q r := by
  intro q hq hq2 r hr hc
  have hcases : q = 1 ∨ q = 2 := by omega
  rcases hcases with rfl | rfl
  · have hr0 : r = 0 := by omega
    subst r
    change 0 ≤ B ∧ ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k 1 0‖ ≤ B
    refine ⟨hB, ?_⟩
    intro k hk
    rw [norm_goldbachResiduePrefixDiscrepancy_one_zero]
    exact hθ k hk
  · have hcases : r = 0 ∨ r = 1 := by omega
    rcases hcases with rfl | rfl
    · norm_num at hc
    · change 0 ≤ B + Real.log 2 ∧
        ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k 2 1‖ ≤ B + Real.log 2
      refine ⟨add_nonneg hB (Real.log_nonneg (by norm_num)), ?_⟩
      intro k hk
      exact (norm_goldbachResiduePrefixDiscrepancy_two_one_le k).trans
        (add_le_add_left (hθ k hk) _)

/-- A scalar universal theta rate becomes the existing all-residue supplier
with the same every-even tail, no prime-power replacement, and Q exactly 2. -/
theorem goldbachReducedPrefixSupplier_two_of_theta
    {N₀ : ℕ} {ε : ℝ} (hθ : GoldbachThetaPrefixSupplier N₀ ε) :
    GoldbachReducedPrefixSupplier N₀ (fun _ => 2)
      (fun N => goldbachTwoArcReducedPrefixBound (ε * (N + 1 : ℝ))) := by
  intro N hN htwo heven
  exact goldbachTwoArcReducedPrefixBounds_of_theta
    (mul_nonneg hθ.1 (by positivity)) (hθ.2 N hN htwo heven)

end
end GRWTSK.NumberTheory.Primes.GoldbachTwoArcThetaTransfer
```
