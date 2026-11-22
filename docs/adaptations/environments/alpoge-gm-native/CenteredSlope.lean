/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
ISOLATED SOURCE_PROOF_CANDIDATE: Alpoge Lean 4.33.1 /
Mathlib 0df444a360eaa60ab8c11dca51a86af692955474.
Elaboration, axioms, fresh kernel replay: NOT_RUN.
-/
import GRWTSK.NumberTheory.AlpogeNativeGmNormalization
import Mathlib.Tactic

/-!
# Exact native Gm integer slope and centered weighted Mertens supplier

The original source Level.Gm is not assumed to satisfy any RH-strength
bound. Its FIRST integer difference can be expressed exactly using
the original signed characters and true von Mangoldt coefficients.

The centered weighted Mertens rate is a NEW SEPARATE analytic
hypothesis, not an imported RH conclusion. Proving an eventually
strong enough rate is still the hard analytic supplier. The trivial
Euler/logarithmic derivative corrections remain on the exact source.

The simple logarithmic derivative difference inequality needed below
is included as an EXPLICIT hLogStep when not yet Lean-elaborated in
the pinned source. The adjacent .md gives its complete calculus proof.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.AlpogeNativeGmCenteredSlope
open Formalism Formalism.HC
open GRWTSK.NumberTheory.AlpogeNativeGmNormalization
open scoped BigOperators

/-- Original Level weights and actual Lambda(n) divided by n.
No exceptional family is silently excluded. -/
def weightedMertens (Λ : Level) (n : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 n,
    (ArithmeticFunction.vonMangoldt m : ℝ) *
       signedPhase Λ m / (m : ℝ)

/-- The exact finite difference of x log x at two adjacent
integer source samples. -/
def logarithmicStep (n : ℕ) : ℝ :=
  ((n + 1 : ℕ) : ℝ) * Real.log ((n + 1 : ℕ) : ℝ) -
    (n : ℝ) * Real.log (n : ℝ)

/-- A weighted Mertens-type centered arithmetic source:
the constant is precisely gamma + sum genuine Lprime/L(1,chi). -/
def centeredMertens (Λ : Level) (n : ℕ) : ℝ :=
  weightedMertens Λ n - Real.log (n : ℝ) +
    analyticConstant Λ - 1

/-- Actual smoothed von Mangoldt source has an EXACT unit-step
finite difference. All sums are in the original closed cutoff,
and the newly entering term at m=n+1 is literally zero. -/
theorem signedSmoothedPrimeHead_integer_step
    (Λ : Level) (n : ℕ) (hn : 1 ≤ n) :
    signedSmoothedPrimeHead Λ ((n + 1 : ℕ) : ℝ) -
      signedSmoothedPrimeHead Λ (n : ℝ) =
        weightedMertens Λ n := by
  classical
  have hnFloor : ⌊(n : ℝ)⌋₊ = n := Nat.floor_natCast _
  have hnSuccFloor : ⌊((n + 1 : ℕ) : ℝ)⌋₊ = n + 1 := Nat.floor_natCast _
  unfold signedSmoothedPrimeHead weightedMertens
  rw [hnFloor, hnSuccFloor]
  rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ n + 1)]
  have hlast :
      (ArithmeticFunction.vonMangoldt (n + 1) : ℝ) *
        signedPhase Λ (n + 1) *
        (((n + 1 : ℕ) : ℝ) / ((n + 1 : ℕ) : ℝ) - 1) = 0 := by
    have hne : ((n + 1 : ℕ) : ℝ) ≠ 0 := by positivity
    rw [div_self hne, sub_self, mul_zero]
  rw [hlast, add_zero, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  have hmpos : (0 : ℝ) < m := by
    have h := (Finset.mem_Icc.mp hm).1
    exact_mod_cast (Nat.lt_of_lt_of_le (by omega : 0 < m) (Nat.le_refl m))
  field_simp [ne_of_gt hmpos]
  ring

/-- Exact original native Gm integer slope, requiring no zero data
and no EAtH or CoreAtH premise. -/
theorem levelGm_integer_step (Λ : Level) (n : ℕ)
    (hn : 1 ≤ n) :
    Λ.Gm ((n + 1 : ℕ) : ℝ) - Λ.Gm (n : ℝ) =
      weightedMertens Λ n + analyticConstant Λ -
        logarithmicStep n := by
  have hnReal : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hnSucc : (1 : ℝ) ≤ ((n + 1 : ℕ) : ℝ) := by
    exact_mod_cast (by omega : 1 ≤ n + 1)
  rw [levelGm_eq_normalized Λ ((n + 1 : ℕ) : ℝ) hnSucc,
    levelGm_eq_normalized Λ (n : ℝ) hnReal]
  unfold normalizedGm logarithmicStep
  rw [show signedSmoothedPrimeHead Λ ((n + 1 : ℕ) : ℝ) -
      signedSmoothedPrimeHead Λ (n : ℝ) =
      weightedMertens Λ n from
        signedSmoothedPrimeHead_integer_step Λ n hn]
  ring

/-- The original centered weighted Mertens sum is the exact Gm
integer slope up to the positive logarithmic-step remainder.
The elementary convexity of x log x supplies the bound hLogStep.
This theorem does NOT assume the original power bound for Gm. -/
theorem levelGm_step_upper_of_centeredMertens
    (Λ : Level) (n : ℕ) (hn : 1 ≤ n)
    (hLogStep : Real.log (n : ℝ) + 1 ≤ logarithmicStep n) :
    Λ.Gm ((n + 1 : ℕ) : ℝ) - Λ.Gm (n : ℝ) ≤
      centeredMertens Λ n := by
  have hs := levelGm_integer_step Λ n hn
  unfold centeredMertens
  linarith

/-- A source-certified one-sided Mertens bound automatically
controls the true native Gm step at that integer. The eventual
quantifier remains a mathematical obligation for the caller. -/
theorem eventual_Gm_step_of_centeredMertens_rate
    (Λ : Level) (theta C : ℝ) (N : ℕ)
    (hLog : ∀ n : ℕ, N ≤ n → 1 ≤ n →
      Real.log (n : ℝ) + 1 ≤ logarithmicStep n)
    (hCenter : ∀ n : ℕ, N ≤ n → 1 ≤ n →
      centeredMertens Λ n ≤ C * (n : ℝ) ^ (theta - 1)) :
    ∀ n : ℕ, N ≤ n → 1 ≤ n →
      Λ.Gm ((n + 1 : ℕ) : ℝ) - Λ.Gm (n : ℝ) ≤
        C * (n : ℝ) ^ (theta - 1) := by
  intro n hN hn
  exact (levelGm_step_upper_of_centeredMertens Λ n hn
    (hLog n hN hn)).trans (hCenter n hN hn)

end GRWTSK.NumberTheory.AlpogeNativeGmCenteredSlope
