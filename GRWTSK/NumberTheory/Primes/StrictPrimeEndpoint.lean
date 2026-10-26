/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.BoundedEnumeration
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Ring

set_option autoImplicit false

/-!
# Strict prime-count discrepancies at consecutive prime endpoints

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
Native verification is on hold. These declarations have not been compiled.

The actual zero-indexed primes and strict count are used throughout. The
inclusive count is identified separately. Finite enumeration is connected to
this exact count before passing to real discrepancies.

The estimate for a named comparison and envelope is an independent input.
There is no PNT remainder, constant gap bound, or RH/GRH conclusion here.
These are assistant-proposed P4/S2 fragments, not manuscript theorems.
Exact original versions/page hashes and missing proofs are recorded in
docs/reference/literature/reading-background/retraction-prime-endpoint-candidates-v1.md.
The two Axiom 1 PDFs remain distinct even though their extracted text agrees.
-/

namespace GRWTSK.NumberTheory.Primes.StrictPrimeEndpoint

noncomputable section

/-- The actual zero-indexed prime sequence; `primeAt 0` is two. -/
def primeAt (n : ℕ) : ℕ := Nat.nth Nat.Prime n

@[simp] theorem primeAt_zero : primeAt 0 = 2 := Nat.nth_prime_zero_eq_two

theorem primeAt_prime (n : ℕ) : Nat.Prime (primeAt n) := Nat.prime_nth_prime n

/-- The prime itself is excluded from the strict count. -/
@[simp] theorem strict_count_primeAt (n : ℕ) :
    Nat.primeCounting' (primeAt n) = n := Nat.primeCounting'_nth_eq n

/-- The inclusive convention includes that prime and therefore differs by one. -/
theorem inclusive_count_primeAt (n : ℕ) :
    Nat.primeCounting (primeAt n) = n + 1 := by
  change Nat.count Nat.Prime (primeAt n + 1) = n + 1
  rw [Nat.count_succ, if_pos (primeAt_prime n)]
  change Nat.primeCounting' (primeAt n) + 1 = n + 1
  rw [strict_count_primeAt]

/-- Any output satisfying the finite contract has the actual strict counting cardinality. -/
theorem enumeration_card_eq_strict_count {output : ℕ → Finset ℕ}
    (h : GRWTSK.NumberTheory.Primes.EnumeratesBelow output) (x : ℕ) :
    (output x).card = Nat.primeCounting' x := by
  rw [GRWTSK.NumberTheory.Primes.enumeration_unique h]
  exact Nat.primesBelow_card_eq_primeCounting' x

theorem enumeration_card_primeAt {output : ℕ → Finset ℕ}
    (h : GRWTSK.NumberTheory.Primes.EnumeratesBelow output) (n : ℕ) :
    (output (primeAt n)).card = n := by
  rw [enumeration_card_eq_strict_count h, strict_count_primeAt]

/-- Signed discrepancy of the actual strict count from a named deterministic comparison. -/
def strictCountResidual (comparison : ℕ → ℝ) (x : ℕ) : ℝ :=
  (Nat.primeCounting' x : ℝ) - comparison x

theorem strictCountResidual_primeAt (comparison : ℕ → ℝ) (n : ℕ) :
    strictCountResidual comparison (primeAt n) = (n : ℝ) - comparison (primeAt n) := by
  rw [strictCountResidual, strict_count_primeAt]

/-- The source endpoints, signs and real index increment are all retained. -/
theorem endpoint_discrepancy_eq (comparison : ℕ → ℝ) (n : ℕ) :
    (comparison (primeAt (n + 1)) - comparison (primeAt n)) - 1 =
      strictCountResidual comparison (primeAt n) -
        strictCountResidual comparison (primeAt (n + 1)) := by
  rw [strictCountResidual_primeAt, strictCountResidual_primeAt]
  simp only [Nat.cast_add, Nat.cast_one]
  ring

/-- Pointwise endpoint estimates give their sum as the complete discrepancy budget. -/
theorem endpoint_discrepancy_bound (comparison envelope : ℕ → ℝ) (n : ℕ)
    (hl : |strictCountResidual comparison (primeAt n)| ≤ envelope (primeAt n))
    (hu : |strictCountResidual comparison (primeAt (n + 1))| ≤
      envelope (primeAt (n + 1))) :
    |(comparison (primeAt (n + 1)) - comparison (primeAt n)) - 1| ≤
      envelope (primeAt n) + envelope (primeAt (n + 1)) := by
  rw [endpoint_discrepancy_eq]
  calc
    |strictCountResidual comparison (primeAt n) -
        strictCountResidual comparison (primeAt (n + 1))| =
        |strictCountResidual comparison (primeAt n) +
          -strictCountResidual comparison (primeAt (n + 1))| := by rw [sub_eq_add_neg]
    _ ≤ |strictCountResidual comparison (primeAt n)| +
        |-strictCountResidual comparison (primeAt (n + 1))| := abs_add_le _ _
    _ = |strictCountResidual comparison (primeAt n)| +
        |strictCountResidual comparison (primeAt (n + 1))| := by rw [abs_neg]
    _ ≤ envelope (primeAt n) + envelope (primeAt (n + 1)) := add_le_add hl hu

/-- Both endpoint/domain checks and nonnegativity of the proposed budget stay explicit. -/
theorem endpoint_budget_of_counting_estimate (comparison envelope : ℕ → ℝ) (x0 : ℕ)
    (hE : ∀ x, 0 ≤ envelope x)
    (hbound : ∀ x, x0 ≤ x → |strictCountResidual comparison x| ≤ envelope x)
    (n : ℕ) (hl : x0 ≤ primeAt n) (hu : x0 ≤ primeAt (n + 1)) :
    0 ≤ envelope (primeAt n) + envelope (primeAt (n + 1)) ∧
      |(comparison (primeAt (n + 1)) - comparison (primeAt n)) - 1| ≤
        envelope (primeAt n) + envelope (primeAt (n + 1)) :=
  ⟨add_nonneg (hE _) (hE _),
    endpoint_discrepancy_bound comparison envelope n
      (hbound (primeAt n) hl) (hbound (primeAt (n + 1)) hu)⟩

theorem endpoint_discrepancy_bound_of_counting_estimate
    (comparison envelope : ℕ → ℝ) (x0 : ℕ) (hE : ∀ x, 0 ≤ envelope x)
    (hbound : ∀ x, x0 ≤ x → |strictCountResidual comparison x| ≤ envelope x)
    (n : ℕ) (hl : x0 ≤ primeAt n) (hu : x0 ≤ primeAt (n + 1)) :
    |(comparison (primeAt (n + 1)) - comparison (primeAt n)) - 1| ≤
      envelope (primeAt n) + envelope (primeAt (n + 1)) :=
  (endpoint_budget_of_counting_estimate comparison envelope x0 hE hbound n hl hu).2

/-- A named C*B envelope remains a supplied estimate, with both original endpoint terms. -/
theorem endpoint_discrepancy_bound_of_scaled_estimate
    (comparison bound : ℕ → ℝ) (C : ℝ) (x0 : ℕ)
    (hC : 0 ≤ C) (hB : ∀ x, 0 ≤ bound x)
    (hbound : ∀ x, x0 ≤ x → |strictCountResidual comparison x| ≤ C * bound x)
    (n : ℕ) (hl : x0 ≤ primeAt n) (hu : x0 ≤ primeAt (n + 1)) :
    |(comparison (primeAt (n + 1)) - comparison (primeAt n)) - 1| ≤
      C * (bound (primeAt n) + bound (primeAt (n + 1))) := by
  have h := endpoint_discrepancy_bound_of_counting_estimate comparison
    (fun x => C * bound x) x0 (fun x => mul_nonneg hC (hB x)) hbound n hl hu
  simpa only [mul_add] using h

end

end GRWTSK.NumberTheory.Primes.StrictPrimeEndpoint
