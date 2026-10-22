/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Research direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT.
Mathlib retains upstream authorship and licensing. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightPsiCapacityNoGo
import Mathlib.NumberTheory.Bertrand
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Unbounded adjacent Chebyshev psi jumps on next dyadic octaves

This bounded supplier instantiates the previously open
\`UnboundedAdjacentPsiJump\` premise, using the ACTUAL Mathlib
Chebyshev staircase, von Mangoldt coefficients, Bertrand prime and
unbounded logarithm. No PNT, zero-free region, or RH theorem is used.

The exact endpoint convention is
  psi(p)-psi(p-1)=Lambda(p)=log(p)
at any prime \`p\`. For psiError(x)=psi(x)-x, the jump is log(p)-1.

Bertrand with n=2*X_j supplies 2*X_j < p <= 4*X_j.
Both p-1 and p are then inside the SAME next integer octave.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EXACT_CHEBYSHEV_PRIME_JUMP_SOURCE_DEFINED /
UNBOUNDED_DYADIC_BERTRAND_PRIME_SOURCE_DEFINED /
UNBOUNDED_ADJACENT_PSI_JUMP_SOURCE_DEFINED /
PNT_ENVELOPE_PROFILE_STILL_OPEN /
ACTUAL_NEXT_OCTAVE_RECURRENCE_ADAPTER_STILL_OPEN /
NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open Chebyshev
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- The literal Chebyshev-psi staircase gains exactly von Mangoldt's
coefficient at the top of a one-integer interval. -/
theorem chebyshevPsi_nat_prime_jump
    {p : ℕ} (hp : p.Prime) :
    ψ (p : ℝ) - ψ ((p - 1 : ℕ) : ℝ) =
      Real.log (p : ℝ) := by
  have hpred : p - 1 + 1 = p := by
    have := hp.one_le
    omega
  have hset :
      Finset.Ioc 0 p =
        insert p (Finset.Ioc 0 (p - 1)) := by
    have hs :=
      (Finset.insert_Ioc_right_eq_Ioc_succ
        (a := (0 : ℕ)) (b := p - 1)
        (by omega : (0 : ℕ) ≤ p - 1)).symm
    simpa [hpred] using hs
  have hnot : p ∉ Finset.Ioc 0 (p - 1) := by
    simp only [Finset.mem_Ioc]
    omega
  unfold Chebyshev.psi
  simp only [Nat.floor_natCast]
  rw [hset, Finset.sum_insert hnot]
  rw [ArithmeticFunction.vonMangoldt_apply_prime hp]
  ring

/-- Subtracting the consecutive integer arguments changes the psi jump
by exactly one. The -1 must not be attached to Lambda(p). -/
theorem psiError_nat_prime_jump
    {p : ℕ} (hp : p.Prime) :
    psiError (p : ℝ) -
      psiError ((p - 1 : ℕ) : ℝ) =
        Real.log (p : ℝ) - 1 := by
  have hnat : p - 1 + 1 = p := by
    have := hp.one_le
    omega
  have hreal :
      ((p - 1 : ℕ) : ℝ) + 1 = (p : ℝ) := by
    exact_mod_cast hnat
  have hdelta :
      (p : ℝ) - ((p - 1 : ℕ) : ℝ) = 1 := by
    linarith
  unfold psiError
  calc
    (ψ (p : ℝ) - (p : ℝ)) -
          (ψ ((p - 1 : ℕ) : ℝ) -
            ((p - 1 : ℕ) : ℝ)) =
        (ψ (p : ℝ) - ψ ((p - 1 : ℕ) : ℝ)) -
          ((p : ℝ) - ((p - 1 : ℕ) : ℝ)) := by
          ring
    _ = Real.log (p : ℝ) - 1 := by
      rw [chebyshevPsi_nat_prime_jump hp, hdelta]

/-- The literal dyadic endpoint 2 X_j is a power of two, with no
rounding or continuous-scale change. -/
theorem two_mul_dyadicScale_eq_pow (j : ℕ) :
    2 * dyadicScale j = 2 ^ (j + 2) := by
  change 2 * (2 ^ (j + 1)) = 2 ^ (j + 2)
  calc
    2 * (2 ^ (j + 1)) = (2 ^ (j + 1)) * 2 := by ring
    _ = 2 ^ ((j + 1) + 1) :=
      (pow_succ (2 : ℕ) (j + 1)).symm
    _ = 2 ^ (j + 2) := by
      congr 1
      omega

/-- Exact logarithmic normalization of the left endpoint of the
next octave. -/
theorem log_two_mul_dyadicScale (j : ℕ) :
    Real.log (((2 * dyadicScale j : ℕ) : ℝ)) =
      ((j : ℝ) + 2) * Real.log 2 := by
  calc
    Real.log (((2 * dyadicScale j : ℕ) : ℝ)) =
        Real.log ((2 : ℝ) ^ (j + 2)) := by
          rw [two_mul_dyadicScale_eq_pow]
          push_cast
          rfl
    _ = (j + 2 : ℕ) * Real.log (2 : ℝ) := by
      rw [Real.log_pow]
    _ = ((j : ℝ) + 2) * Real.log 2 := by
      push_cast
      ring

/-- Bertrand primes with arbitrarily large logarithm exist in actual
late next octaves. This is stronger than a single prime-witness lemma
and requires no PNT. -/
theorem exists_dyadic_bertrandPrime_log_gt
    (B : ℝ) (j₀ : ℕ) :
    ∃ j : ℕ, j₀ ≤ j ∧
      ∃ p : ℕ, p.Prime ∧
        2 * dyadicScale j < p ∧
        p ≤ 4 * dyadicScale j ∧
        B < Real.log (p : ℝ) := by
  have hlog2 : (0 : ℝ) < Real.log 2 :=
    Real.log_pos (by norm_num)
  obtain ⟨j, hj⟩ :=
    exists_nat_gt (max (j₀ : ℝ) (B / Real.log 2))
  have hj₀real : (j₀ : ℝ) < (j : ℝ) :=
    (le_max_left _ _).trans_lt hj
  have hj₀ : j₀ ≤ j := by
    exact_mod_cast (le_of_lt hj₀real)
  have hjquot : B / Real.log 2 < (j : ℝ) :=
    (le_max_right _ _).trans_lt hj
  have hB : B < (j : ℝ) * Real.log 2 :=
    (div_lt_iff₀ hlog2).mp hjquot
  have hlarge :
      B < Real.log (((2 * dyadicScale j : ℕ) : ℝ)) := by
    rw [log_two_mul_dyadicScale]
    nlinarith [hlog2]
  have hbase : 2 * dyadicScale j ≠ 0 := by
    have hpos := dyadicScale_pos j
    omega
  obtain ⟨p, hp, hleft, hright⟩ :=
    Nat.exists_prime_lt_and_le_two_mul
      (2 * dyadicScale j) hbase
  have hright' : p ≤ 4 * dyadicScale j := by
    omega
  have hleftPos :
      (0 : ℝ) < (((2 * dyadicScale j : ℕ) : ℝ)) := by
    exact_mod_cast (Nat.pos_of_ne_zero hbase)
  have hleftReal :
      (((2 * dyadicScale j : ℕ) : ℝ)) ≤ (p : ℝ) := by
    exact_mod_cast (Nat.le_of_lt hleft)
  have hlogp :
      B < Real.log (p : ℝ) :=
    hlarge.trans_le (Real.log_le_log hleftPos hleftReal)
  exact ⟨j, hj₀, p, hp, hleft, hright', hlogp⟩

/-- Discharge the parent's precise prime-jump source interface with
no zero-density, PNT, or RH premise. -/
theorem unboundedAdjacentPsiJump_of_bertrand :
    UnboundedAdjacentPsiJump := by
  intro D j₀
  obtain ⟨j, hj, p, hp, hlow, hhigh, hlog⟩ :=
    exists_dyadic_bertrandPrime_log_gt (2 * D + 1) j₀
  let m : ℕ := p - 1
  have hpred : m + 1 = p := by
    dsimp [m]
    have := hp.one_le
    omega
  have hmlow : 2 * dyadicScale j ≤ m := by
    dsimp [m]
    omega
  have hmhigh : m + 1 ≤ 4 * dyadicScale j := by
    rw [hpred]
    exact hhigh
  have hjump :
      2 * D <
        psiError ((m + 1 : ℕ) : ℝ) -
          psiError (m : ℝ) := by
    rw [hpred]
    dsimp [m]
    rw [psiError_nat_prime_jump hp]
    linarith
  refine ⟨j, hj, m, hmlow, hmhigh, ?_⟩
  exact hjump.trans_le (le_abs_self _)

end GRWTSK.RiemannHypothesis
