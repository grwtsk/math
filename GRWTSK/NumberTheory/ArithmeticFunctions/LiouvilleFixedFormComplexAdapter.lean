/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Finite arithmetic and exact fixed-form interface draft assistance: OpenAI.
Mathlib upstream Liouville work retains its original attribution/license. -/
import GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleFixedShiftAffine
import Mathlib.Analysis.Complex.Norm
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact complex affine-form comparison for fixed positive Liouville shifts

Issues: grwtsk/math#630, #441 and #571. Direct parent PR #638 at
f1c70d8c4020f7dda97f92bad21bbfbde9d6a277.

The exact binary additive pair is ALREADY an admissible fixed affine
pair (m,m+h) for each fixed h>0. The sum at 0-based indices n<N
is simply the identical Icc 1 N affine sum with m=n+1:
  sum_{n<N} lambda(n+1)*lambda(n+1+h)
    = sum_{m in Icc 1 N} lambda(m)*lambda(m+h).

We reproduce the published OpenAI Result 007's COMPLEX-valued
affineSum definition *locally*, without importing or asserting
equality to a provider module with different Lean/Mathlib pins.
A true imported, trusted proof of the fixed nonproportional affine
log-saving statement would then imply the stated conditional binary
fixed-shift estimate with no loss or dyadic endpoint correction.

This module DEFINES that published premise but does not prove or
assume it as an axiom. Its theorem takes the premise explicitly.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EXTERNAL_THEOREM_NOT_IMPORTED / NO_GROWING_SHIFT_UNIFORMITY.
-/

namespace GRWTSK.NumberTheory.LiouvilleDyadicAffineBridge

open scoped BigOperators
open scoped Classical

/-- The exact integer-valued Liouville source, cast into the external
provider's complex coefficient ring. Zero stays zero. -/
def liouvilleComplex (n : ℕ) : ℂ :=
  (ArithmeticFunction.liouville n : ℂ)

/-- Local structural reproduction of OAI.TwoPointCorrelations.affineSum,
with the provider's Icc 1 N root convention and complex coefficients.
No OAI import or proposition transfer is asserted by this definition. -/
def complexLiouvilleAffineSum
    (a₁ a₂ b₁ b₂ N : ℕ) : ℂ :=
  ∑ m ∈ Finset.Icc 1 N,
    liouvilleComplex (a₁ * m + b₁) *
      liouvilleComplex (a₂ * m + b₂)

/-- All finite complex affine sums are exactly the complex cast of
the corresponding INTEGER source affine sum, with NO truncation. -/
theorem complexLiouvilleAffineSum_eq_cast
    (a₁ a₂ b₁ b₂ N : ℕ) :
    complexLiouvilleAffineSum a₁ a₂ b₁ b₂ N =
      ((∑ m ∈ Finset.Icc 1 N,
          ArithmeticFunction.liouville (a₁ * m + b₁) *
            ArithmeticFunction.liouville (a₂ * m + b₂) : ℤ) : ℂ) := by
  unfold complexLiouvilleAffineSum liouvilleComplex
  rw [Int.cast_sum]
  apply Finset.sum_congr rfl
  intro m _
  rw [Int.cast_mul]

/-- Exact, finite and independent of any arithmetic cancellation:
replace the 0-based root n<N by the positive affine root m=n+1.
The endpoint N is unchanged. -/
theorem sum_shift_succ_eq_Icc (f : ℕ → ℤ) (N : ℕ) :
    (∑ n ∈ Finset.range N, f (n + 1)) =
      ∑ m ∈ Finset.Icc 1 N, f m := by
  have h := range_head_add_Icc f N
  rw [Finset.sum_range_succ'] at h
  exact add_left_cancel h

/-- The local ordinary fixed positive-shift Liouville correlation is
the EXACT same integer-valued Icc sum as affine forms (m,m+h). -/
theorem fixedShift_prefix_eq_affineIcc (h N : ℕ) :
    (∑ n ∈ Finset.range N, fixedShiftTerm h n) =
      ∑ m ∈ Finset.Icc 1 N,
        ArithmeticFunction.liouville m *
          ArithmeticFunction.liouville (m + h) := by
  simpa only [fixedShiftTerm] using
    (sum_shift_succ_eq_Icc
      (fun m => ArithmeticFunction.liouville m *
        ArithmeticFunction.liouville (m + h)) N)

/-- Direct exact complex cast into the positive-shift affine sum:
slopes (1,1), intercepts (0,h), and NO dyadic correction. -/
theorem complexLiouvilleAffineSum_fixedShift (h N : ℕ) :
    complexLiouvilleAffineSum 1 1 0 h N =
      ((∑ n ∈ Finset.range N, fixedShiftTerm h n : ℤ) : ℂ) := by
  rw [complexLiouvilleAffineSum_eq_cast]
  have hIcc := fixedShift_prefix_eq_affineIcc h N
  simpa only [one_mul, Nat.add_zero] using
    congrArg (fun v : ℤ => (v : ℂ)) hIcc.symm

/-- Exact real norm comparison. This bridges both the complex
provider's norm and the integer local signed sum, without inserting
absolute values INSIDE the finite affine correlation. -/
theorem complexAffine_norm_eq_fixedShift_abs (h N : ℕ) :
    ‖complexLiouvilleAffineSum 1 1 0 h N‖ =
      |((∑ n ∈ Finset.range N, fixedShiftTerm h n : ℤ) : ℝ)| := by
  rw [complexLiouvilleAffineSum_fixedShift]
  exact Complex.norm_intCast _

/-- At any positive additive shift h, the direct affine forms m
and m+h have nonzero determinant h. Shift h=0 is excluded. -/
theorem directAffine_nonproportional (h : ℕ) (hh : 0 < h) :
    1 * h ≠ 1 * (0 : ℕ) := by
  simpa using (Nat.ne_of_gt hh)

/-- A proof-relevant *source proposition*, deliberately not an axiom.
Its type reproduces the PUBLIC fixed nonproportional complex affine
saving statement at arbitrary real X with floor X and per-form C.
This is NOT instantiated by the source draft or a citation. -/
def FixedNonproportionalAffineLogSaving : Prop :=
  ∃ c : ℝ, 0 < c ∧
    ∀ a₁ a₂ b₁ b₂ : ℕ,
      0 < a₁ → 0 < a₂ → a₁ * b₂ ≠ a₂ * b₁ →
      ∃ C : ℝ, 0 < C ∧
        ∀ X : ℝ, 3 ≤ X →
          ‖complexLiouvilleAffineSum a₁ a₂ b₁ b₂ ⌊X⌋₊‖ ≤
            C * X / Real.rpow (Real.log X) c

/-- A GENUINE conditional fixed-shift result: supplying a Lean proof
of the exact nonproportional affine saving yields the corresponding
ordinary binary Liouville saving at EVERY fixed positive h, with the
same absolute exponent c and one C that may depend on h. The local
finite index conversion has NO endpoint error term. -/
theorem fixedShift_liouville_logSaving_of_affine
    (source : FixedNonproportionalAffineLogSaving) :
    ∃ c : ℝ, 0 < c ∧
      ∀ h : ℕ, 0 < h →
        ∃ C : ℝ, 0 < C ∧
          ∀ X : ℝ, 3 ≤ X →
            |((∑ n ∈ Finset.range ⌊X⌋₊,
                 fixedShiftTerm h n : ℤ) : ℝ)| ≤
              C * X / Real.rpow (Real.log X) c := by
  obtain ⟨c, hc, hsource⟩ := source
  refine ⟨c, hc, ?_⟩
  intro h hh
  obtain ⟨C, hC, hb⟩ :=
    hsource 1 1 0 h (by norm_num) (by norm_num)
      (directAffine_nonproportional h hh)
  refine ⟨C, hC, ?_⟩
  intro X hX
  simpa only [complexAffine_norm_eq_fixedShift_abs] using hb X hX

/-- Independently of any fixed-form statement, the zero-shift
normalized correlation stays exactly one in absolute value.
This hostile control cannot be discharged by nonproportionality. -/
theorem zeroShift_directAffine_obstruction (N : ℕ) (hN : 0 < N) :
    (0 : ℤ) < ∑ n ∈ Finset.range N, fixedShiftTerm 0 n := by
  rw [zeroShift_prefix]
  exact_mod_cast hN

end GRWTSK.NumberTheory.LiouvilleDyadicAffineBridge
