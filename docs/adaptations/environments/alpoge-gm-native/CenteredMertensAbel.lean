/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE for the isolated native Alpoge Lean v4.33.1,
Mathlib 0df444a360eaa60ab8c11dca51a86af692955474.
Elaboration, fresh kernel replay and transitive axiom audit: NOT_RUN.
-/
import GRWTSK.NumberTheory.AlpogeNativeGmNormalization
import Mathlib.Tactic

/-!
# Genuine Level.Gm centered weighted Mertens: finite Abel inversion

The original coefficients are the TRUE von Mangoldt values times
the original signed character-phase of a genuine Formalism.HC.Level.
The finite integer identities below require no Riemann Hypothesis,
zero ordinates or provider final theorem.

The analytic identity
  E_L(x) = R_L(x)/x - integral_x^infinity R_L(t)/t^2 dt
requires classical PNT in arithmetic progressions and the
nonprincipal L'/L centering limit. Those external analytic inputs
are NOT supplied by these finite arithmetic source candidates.

In particular, an eventual power saving for the actual R_L is
not assumed, proved or inferred from finite source samples.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.AlpogeNativeCenteredMertensAbel

open Formalism Formalism.HC
open GRWTSK.NumberTheory.AlpogeNativeGmNormalization

/-- The literal original native Level prime-power coefficient, retaining
actual primitive character phases, all original Level.wt and ramification. -/
def nativeCoefficient (Λ : Level) (n : ℕ) : ℝ :=
  (ArithmeticFunction.vonMangoldt n : ℝ) * signedPhase Λ n

/-- Genuine weighted Chebyshev prefix through N, reindexed from 1. -/
def nativeChebyshevPrefix (Λ : Level) (N : ℕ) : ℝ :=
  ∑ j ∈ Finset.range N, nativeCoefficient Λ (j + 1)

/-- Genuine weighted Mertens prefix through N, reindexed from 1.
Every denominator j+1 is strictly positive. -/
def nativeMertensPrefix (Λ : Level) (N : ℕ) : ℝ :=
  ∑ j ∈ Finset.range N,
    nativeCoefficient Λ (j + 1) / ((j + 1 : ℕ) : ℝ)

/-- The EXACT native centered Mertens source at an integer cutoff.
No finite approximation is smuggled in for the genuine A_Level. -/
def centeredNativeMertens (Λ : Level) (N : ℕ) : ℝ :=
  nativeMertensPrefix Λ N - Real.log (N : ℝ) +
    analyticConstant Λ - 1

/-- The original weighted Chebyshev prefix has a literal one-atom
increment at N+1. -/
theorem nativeChebyshevPrefix_succ (Λ : Level) (N : ℕ) :
    nativeChebyshevPrefix Λ (N + 1) =
      nativeChebyshevPrefix Λ N + nativeCoefficient Λ (N + 1) := by
  simp [nativeChebyshevPrefix, Finset.sum_range_succ]

/-- The original weighted Mertens prefix has a one-atom increment
with EXACT coefficient normalization 1/(N+1). -/
theorem nativeMertensPrefix_succ (Λ : Level) (N : ℕ) :
    nativeMertensPrefix Λ (N + 1) =
      nativeMertensPrefix Λ N +
        nativeCoefficient Λ (N + 1) / ((N + 1 : ℕ) : ℝ) := by
  simp [nativeMertensPrefix, Finset.sum_range_succ]

/-- Exact finite partial-summation INVERSE for the original character
Level, with no limiting argument and no RH input:

  Psi_L(N) = N*B_L(N) - sum_(k=0)^(N-1) B_L(k).

This holds for N=0 as well because both source prefixes vanish.
It is the source-level algebraic test for any proposed Chebyshev
or Mertens power bound; it does NOT establish that bound. -/
theorem nativeChebyshev_from_nativeMertens (Λ : Level) (N : ℕ) :
    nativeChebyshevPrefix Λ N =
      (N : ℝ) * nativeMertensPrefix Λ N -
        ∑ k ∈ Finset.range N, nativeMertensPrefix Λ k := by
  induction N with
  | zero =>
      simp [nativeChebyshevPrefix, nativeMertensPrefix]
  | succ n ih =>
      rw [nativeChebyshevPrefix_succ,
        nativeMertensPrefix_succ, Finset.sum_range_succ]
      push_cast
      rw [ih]
      have hn : ((n : ℝ) + 1) ≠ 0 := by positivity
      field_simp
      ring

end GRWTSK.NumberTheory.AlpogeNativeCenteredMertensAbel
