/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleCausalEnergyTarget
import Mathlib

/-!
# Exact 2-adic residue precision for the ORIGINAL signed Liouville source

This module maps the true integer ArithmeticFunction.liouville coefficient to
ZMod 2 and ZMod 4. Modulo 2 collapses +1 and -1; modulo 4 separates
them for all positive integer indices. Thus the second residue stage
is faithful on individual original signs, but NOT on arbitrary integer sums
or on the original real terminal-weighted Gram.

A separate integer modulus-64 uniqueness lemma records a complete finite
range/carry budget for any signed 16-entry integer packet in [-16,16].
It DOES NOT clear the actual rational weights of the Liouville energy,
construct prismatic RΓ, or prove a zeta multiplicity class vanishes.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.LiouvillePadicSignFidelity

open GRWTSK.NumberTheory.LiouvilleCausalEnergy

/-- The exact integer source before its already-existing real cast. -/
def actualCoefficientInt (n : ℕ) : ℤ :=
  ArithmeticFunction.liouville n

theorem coefficient_eq_actual_integer_cast (n : ℕ) :
    coefficient n = (actualCoefficientInt n : ℝ) := rfl

/-- This is an elementary parity fact; no probabilistic sign model. -/
private theorem negativeOnePower_values (k : ℕ) :
    (-1 : ℤ) ^ k = 1 ∨ (-1 : ℤ) ^ k = -1 := by
  induction k with
  | zero =>
      simp
  | succ k ih =>
      rcases ih with h | h
      · right
        simp [pow_succ, h]
      · left
        simp [pow_succ, h]

/-- Every positive true Liouville coefficient is one of the two signed
integer units, with all prime powers retained. -/
theorem actualCoefficientInt_sign (n : ℕ) (hn : 1 ≤ n) :
    actualCoefficientInt n = 1 ∨ actualCoefficientInt n = -1 := by
  have hne : n ≠ 0 := by omega
  unfold actualCoefficientInt
  rw [ArithmeticFunction.liouville_apply hne]
  exact negativeOnePower_values (ArithmeticFunction.cardFactors n)

/-- First 2-adic stage of the actual arithmetic sign. -/
def firstResidue (n : ℕ) : ZMod 2 := actualCoefficientInt n

/-- Second 2-adic stage of the actual arithmetic sign. -/
def secondResidue (n : ℕ) : ZMod 4 := actualCoefficientInt n

/-- At residue precision one the sign information has been lost. -/
theorem firstResidue_eq_one (n : ℕ) (hn : 1 ≤ n) :
    firstResidue n = 1 := by
  rcases actualCoefficientInt_sign n hn with h | h
  · simp [firstResidue, h]
  · norm_num [firstResidue, h]

/-- The sign pair is explicitly distinct at precision two. -/
theorem secondResidue_distinguishes_sign :
    ((1 : ℤ) : ZMod 4) ≠ ((-1 : ℤ) : ZMod 4) := by
  norm_num

/-- A complete sign restriction is required: ZMod 4 is not a faithful
representation of unrestricted integers. -/
theorem secondResidue_general_integer_loss :
    ((1 : ℤ) : ZMod 4) = ((5 : ℤ) : ZMod 4) ∧
    (1 : ℤ) ≠ 5 := by
  norm_num

/-- The actual finite integer signs remain separated at the second stage. -/
theorem secondResidue_injective_on_signs
    (a b : ℤ) (ha : a = 1 ∨ a = -1) (hb : b = 1 ∨ b = -1)
    (h : (a : ZMod 4) = (b : ZMod 4)) : a = b := by
  rcases ha with rfl | rfl <;> rcases hb with rfl | rfl
  all_goals norm_num at *

/-- An actual source-to-residue map retains every individual positive
Liouville coefficient at this precision. No coefficient is replaced. -/
theorem actual_sign_eq_of_secondResidue_eq
    (m n : ℕ) (hm : 1 ≤ m) (hn : 1 ≤ n)
    (h : secondResidue m = secondResidue n) :
    actualCoefficientInt m = actualCoefficientInt n := by
  apply secondResidue_injective_on_signs
    (actualCoefficientInt m) (actualCoefficientInt n)
  · exact actualCoefficientInt_sign m hm
  · exact actualCoefficientInt_sign n hn
  · simpa [secondResidue] using h

/-- Complete finite loss payment: modulo 64 is injective on the entire
closed integer interval [-16,16], since its diameter 32 is below 64.
This is an integer statement, not a weighted-real packet statement. -/
theorem integer_packet16_mod64_unique
    (a b : ℤ)
    (ha : -16 ≤ a ∧ a ≤ 16)
    (hb : -16 ≤ b ∧ b ≤ 16)
    (hmod : a % 64 = b % 64) : a = b := by
  omega

end GRWTSK.NumberTheory.LiouvillePadicSignFidelity
