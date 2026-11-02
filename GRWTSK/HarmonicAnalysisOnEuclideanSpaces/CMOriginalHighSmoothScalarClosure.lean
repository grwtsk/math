/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMOriginalHighSmoothGeometricSummation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusHighSmoothAllRateProof
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic

/-!
# Discharge the original fixed-bank geometric high-shell scalar gate

The original true-prime-bank high source is unchanged: the selected
integers are those with a large B-smooth DIVISOR, not necessarily
B-smooth integers. The two elementary estimates
``two_sqrt_le_linear_rate`` and ``one_add_div_pow_le_exp_rate``
are already present in grwtsk/math. We apply them to the exact
dyadic time (s+1)*log 2, convert the original sqrt(2^s)
amplitude to an exponential, and match the previously authored
canonical scalar factor and ratio.

Nothing here bounds the remaining original low-source signed
correlations, assumes RH, or imports external arithmetic input.
All theorem scripts remain source candidates pending pinned replay.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothScalarClosure

open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.HighSmoothAllRateProof
open GRWTSK.Analysis.AsymptoticAnalysis.ArithmeticGridSubexponential
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveHighSmoothAllShell
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothDirectEnergy
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothGeometricSummation

private theorem log_two_times_dyadic (s : ℕ) :
    Real.log (2 * (((2 ^ s : ℕ) : ℝ))) = dyadicTime (s + 1) := by
  have he : (((2 ^ (s + 1) : ℕ) : ℝ)) =
      2 * (((2 ^ s : ℕ) : ℝ)) := by
    push_cast [pow_succ]
    ring
  rw [← he]
  exact log_dyadic_cutoff (s + 1)

private theorem dyadicTime_succ (s : ℕ) :
    dyadicTime (s + 1) = dyadicTime s + Real.log (2 : ℝ) := by
  unfold dyadicTime time
  push_cast
  ring

/-- The exact sqrt source factor at original N=2^s; no approximate
real/natural conversion or source-invented amplitude. -/
theorem inv_sqrt_dyadic_as_exp (s : ℕ) :
    (Real.sqrt (((2 ^ s : ℕ) : ℝ)))⁻¹ =
      Real.sqrt (2 : ℝ) * Real.exp (-dyadicTime (s + 1) / 2) := by
  have hsqrt : Real.sqrt (((2 ^ s : ℕ) : ℝ)) =
      Real.exp (dyadicTime s / 2) := by
    rw [← exp_dyadicTime, Real.sqrt_eq_rpow,
      Real.rpow_def_of_pos (Real.exp_pos _), Real.log_exp]
    congr 1
    ring
  have hsqrt2 : Real.sqrt (2 : ℝ) =
      Real.exp (Real.log 2 / 2) := by
    rw [Real.sqrt_eq_rpow,
      Real.rpow_def_of_pos (by norm_num : (0 : ℝ) < 2)]
    congr 1
    ring
  calc
    (Real.sqrt (((2 ^ s : ℕ) : ℝ)))⁻¹ =
        (Real.exp (dyadicTime s / 2))⁻¹ := by rw [hsqrt]
    _ = Real.exp (-(dyadicTime s / 2)) :=
      (Real.exp_neg _).symm
    _ = Real.sqrt (2 : ℝ) * Real.exp (-dyadicTime (s + 1) / 2) := by
      rw [hsqrt2, ← Real.exp_add]
      congr 1
      rw [dyadicTime_succ]
      ring

/-- The two imported scalar estimates already suffice at the exact
source time, with no use of the original Möbius signs. -/
theorem highShellCost_le_canonical_factor
    (B : PrimeBand) (s : ℕ) :
    highShellCost B s ≤
      canonicalShellFactor B * canonicalShellRatio ^ s := by
  let a : ℝ := Real.log 2
  let T : ℝ := dyadicTime (s + 1)
  let r : ℕ := B.primes.card
  let C : ℝ := (1 + 8 * ((r : ℝ) + 1) / a) ^ r
  have ha : 0 < a := Real.log_pos (by norm_num)
  have hT : 0 ≤ T := dyadicTime_nonnegative (s + 1)
  have hTtime : T = (((s + 1 : ℕ) : ℝ)) * a := by
    dsimp [T, a, dyadicTime, time]
    ring
  have hnormalize :
      highShellCost B s =
        (2 * Real.sqrt 2 * Real.exp (-T / 2)) *
          Real.exp (2 * Real.sqrt T) * (1 + T / a) ^ r := by
    unfold highShellCost
    rw [log_two_times_dyadic s, inv_sqrt_dyadic_as_exp s]
    dsimp [T, a, r]
    ring
  have hroot :
      Real.exp (2 * Real.sqrt T) ≤
        Real.exp 4 * Real.exp (T / 4) := by
    have hh : 2 * Real.sqrt T ≤ 4 + T / 4 := by
      convert two_sqrt_le_linear_rate (1 / 2) T (by norm_num) hT using 1
      <;> ring
    calc
      Real.exp (2 * Real.sqrt T) ≤ Real.exp (4 + T / 4) :=
        Real.exp_le_exp.mpr hh
      _ = Real.exp 4 * Real.exp (T / 4) := Real.exp_add _ _
  have hpoly :
      (1 + T / a) ^ r ≤ C * Real.exp (T / 8) := by
    have hp := one_add_div_pow_le_exp_rate r a (1 / 4) T
      ha (by norm_num) hT
    have hc : (1 + 2 * ((r : ℝ) + 1) / ((1 / 4 : ℝ) * a)) =
        1 + 8 * ((r : ℝ) + 1) / a := by
      field_simp [ha.ne']
      ring
    have he : ((1 / 4 : ℝ) / 2) * T = T / 8 := by ring
    rw [hc, he] at hp
    exact hp
  have hproduct :
      Real.exp (2 * Real.sqrt T) * (1 + T / a) ^ r ≤
        (Real.exp 4 * Real.exp (T / 4)) *
          (C * Real.exp (T / 8)) := by
    gcongr
    · exact hroot
    · exact hpoly
  have hrate :
      Real.exp (-T / 8) = canonicalShellRatio ^ (s + 1) := by
    calc
      Real.exp (-T / 8) =
          Real.exp ((((s + 1 : ℕ) : ℝ)) * (-(a / 8))) := by
            rw [hTtime]
            congr 1
            ring
      _ = (Real.exp (-(a / 8))) ^ (s + 1) := by
            rw [Real.exp_nat_mul]
      _ = canonicalShellRatio ^ (s + 1) := by
            rfl
  calc
    highShellCost B s =
        2 * Real.sqrt 2 * Real.exp (-T / 2) *
          (Real.exp (2 * Real.sqrt T) * (1 + T / a) ^ r) := by
            rw [hnormalize]
            ring
    _ ≤ 2 * Real.sqrt 2 * Real.exp (-T / 2) *
          ((Real.exp 4 * Real.exp (T / 4)) *
            (C * Real.exp (T / 8))) :=
      mul_le_mul_of_nonneg_left hproduct (by positivity)
    _ = 2 * Real.sqrt 2 * Real.exp 4 * C *
          Real.exp (-T / 8) := by
      have he :
          Real.exp (-T / 2) * Real.exp (T / 4) *
            Real.exp (T / 8) = Real.exp (-T / 8) := by
        rw [← Real.exp_add, ← Real.exp_add]
        congr 1
        ring
      rw [← he]
      ring
    _ = canonicalShellFactor B * canonicalShellRatio ^ s := by
      rw [hrate, pow_succ]
      dsimp [canonicalShellFactor, C, r, a]
      ring

/-- Actual closure of the previously OPEN pure scalar source proposition,
with exactly its original canonical ratio and factor. -/
theorem canonicalShellScalarDecay_proof : CanonicalShellScalarDecay := by
  intro B s
  exact highShellCost_le_canonical_factor B s

/-- No extra arithmetic or smoothing premise remains in the scalar
fixed-bank high-wave envelope, at the source-proof-candidate level. -/
theorem globalHighEnvelope_proof : GlobalHighEnvelope :=
  globalHighEnvelope_of_canonical_scalar canonicalShellScalarDecay_proof

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothScalarClosure
