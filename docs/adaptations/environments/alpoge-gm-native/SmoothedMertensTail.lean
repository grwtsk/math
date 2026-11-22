/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE for ORIGINAL Alpoge Lean v4.33.1,
Mathlib 0df444a360eaa60ab8c11dca51a86af692955474.
Elaboration, fresh kernel replay and transitive axiom audit: NOT_RUN.
-/
import GRWTSK.NumberTheory.AlpogeNativeCenteredMertensAbel
import GRWTSK.NumberTheory.AlpogeNativeGmCenteredSlope
import Mathlib.Tactic

/-!
# Genuine native Gm: exact Chebyshev/Mertens integer cancellation

Use ONLY the original typed Level, its original signed Phase,
true ArithmeticFunction.vonMangoldt, actual A_Level, and the
existing CenteredSlope.weightedMertens / centeredMertens.

At integer N>=1:
  Gm(N) = N * E_Level(N) - (Psi_Level(N) - N).
This is the FINITE part of the full tail identity
  Gm(x) = -x * integral_x^infinity R_Level(t)/t^2 dt.
The latter needs independently established PNT in progressions,
normalization at infinity, and a measure-theoretic limit. It is
NOT passed here as an oracle or an RH axiom.

The Mellin pole-obstruction is proved mathematically in the
adjacent .md, but is NOT asserted kernel-verified by this file.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.AlpogeNativeSmoothedMertensTail

open Formalism Formalism.HC
open GRWTSK.NumberTheory.AlpogeNativeGmNormalization
open GRWTSK.NumberTheory.AlpogeNativeGmCenteredSlope
open GRWTSK.NumberTheory.AlpogeNativeCenteredMertensAbel

/-- The exact weighted Chebyshev discrepancy of the original Level. -/
def nativeChebyshevDiscrepancy (Λ : Level) (N : ℕ) : ℝ :=
  nativeChebyshevPrefix Λ N - (N : ℝ)

/-- The literal smoothed prime-power head is N times the true weighted
Mertens prefix minus the true Chebyshev prefix. This is finite
algebra, valid at ALL natural N>=1 without RH. -/
theorem signedSmoothedPrimeHead_eq_Mertens_sub_Chebyshev
    (Λ : Level) (N : ℕ) (hN : 1 ≤ N) :
    signedSmoothedPrimeHead Λ (N : ℝ) =
      (N : ℝ) * weightedMertens Λ N -
        nativeChebyshevPrefix Λ N := by
  classical
  have hFloor : ⌊(N : ℝ)⌋₊ = N := Nat.floor_natCast _
  unfold signedSmoothedPrimeHead weightedMertens
    nativeChebyshevPrefix
  rw [hFloor, Finset.mul_sum, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  have hnPosNat : 0 < n := by
    have h := (Finset.mem_Icc.mp hn).1
    omega
  have hnPos : (0 : ℝ) < (n : ℝ) := by exact_mod_cast hnPosNat
  field_simp [ne_of_gt hnPos]
  ring

/-- The source-level exact cancellation: the ENTIRE genuine
analytic constant A_Level is retained on both sides; no zeta-zero
or FinalTheorems input is used. -/
theorem levelGm_integer_eq_centeredMertens_sub_Chebyshev
    (Λ : Level) (N : ℕ) (hN : 1 ≤ N) :
    Λ.Gm (N : ℝ) =
      (N : ℝ) * centeredMertens Λ N -
        nativeChebyshevDiscrepancy Λ N := by
  have hReal : (1 : ℝ) ≤ N := by exact_mod_cast hN
  rw [levelGm_eq_normalized Λ (N : ℝ) hReal]
  have hHead :=
    signedSmoothedPrimeHead_eq_Mertens_sub_Chebyshev Λ N hN
  unfold normalizedGm
  rw [hHead]
  unfold centeredMertens nativeChebyshevDiscrepancy
  ring

/-- A precise algebraic one-point criterion. It does not smuggle in
any bound for the original Mertens/Chebyshev discrepancy. -/
theorem levelGm_integer_upper_iff_original_source
    (Λ : Level) (N : ℕ) (hN : 1 ≤ N) (T : ℝ) :
    Λ.Gm (N : ℝ) ≤ T ↔
      (N : ℝ) * centeredMertens Λ N -
        nativeChebyshevDiscrepancy Λ N ≤ T := by
  rw [levelGm_integer_eq_centeredMertens_sub_Chebyshev Λ N hN]

end GRWTSK.NumberTheory.AlpogeNativeSmoothedMertensTail
