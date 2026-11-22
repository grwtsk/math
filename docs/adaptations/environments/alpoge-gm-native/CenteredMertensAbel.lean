/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE for the isolated native Alpoge Lean v4.33.1,
Mathlib 0df444a360eaa60ab8c11dca51a86af692955474.
Elaboration, fresh kernel replay and transitive axiom audit: NOT_RUN.
-/
import GRWTSK.NumberTheory.AlpogeNativeGmCenteredSlope
import Mathlib.Tactic

/-!
# Genuine Level.Gm centered weighted Mertens: finite Abel inversion

This module REUSES the original native weightedMertens and
centeredMertens defined in the pre-existing CenteredSlope source.
It does not introduce an independently maintained duplicate Mertens
sequence, a synthetic prime coefficient, or a new analytic constant.

For original signed von Mangoldt phase a_L(n)=Lambda(n)*phase_L(n):
  Psi_L(N)=N*B_L(N)-sum_(k=0)^(N-1) B_L(k).
This finite Abel inverse holds for EVERY N (including zero) without
RH. The continuous tail identity requires the separate classical PNT
in arithmetic progressions and genuine L'/L centering, NOT this file.
An eventual power saving for Psi_L is still an open analytic supplier.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.AlpogeNativeCenteredMertensAbel

open Formalism Formalism.HC
open GRWTSK.NumberTheory.AlpogeNativeGmNormalization
open GRWTSK.NumberTheory.AlpogeNativeGmCenteredSlope

/-- Actual native weighted Chebyshev prefix through N; original
von Mangoldt, actual Level.Nt, Level.wt and primitive phases. -/
def nativeChebyshevPrefix (Λ : Level) (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N,
    (ArithmeticFunction.vonMangoldt n : ℝ) * signedPhase Λ n

/-- The genuine original Chebyshev source gains exactly the
next weighted prime-power coefficient, including at ramified n. -/
theorem nativeChebyshevPrefix_succ (Λ : Level) (N : ℕ) :
    nativeChebyshevPrefix Λ (N + 1) =
      nativeChebyshevPrefix Λ N +
        (ArithmeticFunction.vonMangoldt (N + 1) : ℝ) *
          signedPhase Λ (N + 1) := by
  classical
  unfold nativeChebyshevPrefix
  rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1)]

/-- This is the **existing** upstream source weightedMertens, whose
coefficient is Lambda(n)*phase(n)/n, not the physical Weil
Lambda(n)/sqrt(n) weight. -/
theorem original_weightedMertens_succ (Λ : Level) (N : ℕ) :
    weightedMertens Λ (N + 1) =
      weightedMertens Λ N +
        (ArithmeticFunction.vonMangoldt (N + 1) : ℝ) *
          signedPhase Λ (N + 1) / ((N + 1 : ℕ) : ℝ) := by
  classical
  unfold weightedMertens
  rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1)]

/-- Exact finite partial-summation inverse for the ORIGINAL native
centered weighted Mertens source:

  Psi_L(N) = N*B_L(N) - sum_(k=0)^(N-1) B_L(k).

No partial asymptotic or zero-free premise is used, and the original
Mertens sequence is not forked. -/
theorem nativeChebyshev_from_original_weightedMertens
    (Λ : Level) (N : ℕ) :
    nativeChebyshevPrefix Λ N =
      (N : ℝ) * weightedMertens Λ N -
        ∑ k ∈ Finset.range N, weightedMertens Λ k := by
  induction N with
  | zero =>
      simp [nativeChebyshevPrefix, weightedMertens]
  | succ n ih =>
      rw [nativeChebyshevPrefix_succ,
        original_weightedMertens_succ, Finset.sum_range_succ]
      push_cast
      rw [ih]
      have hn : ((n : ℝ) + 1) ≠ 0 := by positivity
      field_simp
      ring

end GRWTSK.NumberTheory.AlpogeNativeCenteredMertensAbel
