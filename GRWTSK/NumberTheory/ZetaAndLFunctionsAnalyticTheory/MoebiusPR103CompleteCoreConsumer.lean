/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Research/formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPR103ClosureAndCausalBridges
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusTwoPrimeRateFrontier
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCompleteSignedProfileClassicalPNT
import Mathlib

/-!
# Complete original signed Mobius profile: executable-shape consumer

Unlike an unrestricted abstract Gram majorant, this theorem consumes
the exact existing source-specific proposition
FullOriginalProfileTwoSidedBudgetTarget. It PROVES the complete
real exponential scalar absorption in Lean source candidate form,
keeping the full original profileCore rho T, both ordered sign
orientations, all squareful zeros, original birth support,
diagonal and separately accounted complete negative cube packets.

The earlier FullOriginalProfileTwoSidedBudgetTarget is a written
mathematical source proof but still an UNPROVED Lean Prop. Here we do
NOT treat its truth as a given theorem: it is an explicit parameter.
The PR103 zeta-to-Mertens Perron/contour step remains the equally
explicit ZeroFreeToMertensPowerBridge parameter.

In contrast, the causal velocity-to-energy real-calculus gate and
the polynomial exponential inequalities receive actual proof bodies
in MoebiusPR103ClosureAndCausalBridges. All source files remain
not compiled or kernel checked in this session.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PR103CompleteCoreConsumer

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvillePR103FixedPower
open GRWTSK.NumberTheory.Moebius.PR103ClosureAndCausalBridges
open GRWTSK.NumberTheory.Moebius.StrongFixedPowerPR103
open GRWTSK.NumberTheory.Moebius.CompleteSignedProfilePNT
open GRWTSK.NumberTheory.Moebius.TwoPrimeRateFrontier

/-- Explicit allowance from the ORIGINAL geometric pair masks:
both diagonal payments, the full odd-divisor credit magnitude,
and the short-gap, low-index and high-gcd original exclusions.
Each denominator has a strictly positive width in the consumer. -/
def geometricScalarAllowance (rho rate : ℝ) : ℝ :=
  8 / rate ^ 2 +
    16 / (rate - 1 / 2) +
    32 / (rate - 1 / 2) ^ 2 +
    64 / (rate - rho) +
    8 / (rate - rho) ^ 2

/-- Real-source scalar step. GIVEN the actual full source packet
comparison and a globally uniform original causal energy envelope,
the true complete signed profile has a two-sided fixed-rate bound.
This is a genuine proof body, not a trusted declaration or a restatement of
FullOriginalProfileTwoSidedBudgetTarget. -/
theorem full_original_core_fixed_rate_of_energy
    {rho rate : ℝ}
    (hSource : FullOriginalProfileTwoSidedBudgetTarget)
    (hrho : (1 / 2 : ℝ) ≤ rho)
    (hrho1 : rho < 1)
    (hRateRho : rho < rate)
    (hRateHalf : (1 / 2 : ℝ) < rate)
    (hEnergy : FixedRateUpper pickupEnergy rate) :
    FixedRateUpper
      (fun T => |profileCore rho T|) rate := by
  obtain ⟨B, hB, hEnergyBound⟩ := hEnergy
  have hrPos : 0 < rate := by linarith
  have hHalf : 0 < rate - 1 / 2 := by linarith
  have hGap : 0 < rate - rho := by linarith
  have hK : 0 ≤ B + geometricScalarAllowance rho rate := by
    unfold geometricScalarAllowance
    positivity
  refine ⟨B + geometricScalarAllowance rho rate, hK, ?_⟩
  intro T hT
  have hZero :=
    polynomialExponentialAbsorption_source_proof rate T hrPos hT
  have hHalfPoly :=
    polynomialExponentialAbsorption_source_proof
      (rate - 1 / 2) T hHalf hT
  have hGapPoly :=
    polynomialExponentialAbsorption_source_proof
      (rate - rho) T hGap hT
  have hExpHalf :
      Real.exp ((rate - 1 / 2) * T) * Real.exp (T / 2) =
        Real.exp (rate * T) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hExpGap :
      Real.exp ((rate - rho) * T) * Real.exp (rho * T) =
        Real.exp (rate * T) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hDiag :
      4 * T ^ 2 ≤
        (8 / rate ^ 2) * Real.exp (rate * T) := by
    calc
      4 * T ^ 2 ≤
          4 * (2 * Real.exp (rate * T) / rate ^ 2) :=
        mul_le_mul_of_nonneg_left hZero.2 (by norm_num)
      _ = (8 / rate ^ 2) * Real.exp (rate * T) := by ring
  have hOddLin :
      16 * T * Real.exp (T / 2) ≤
        (16 / (rate - 1 / 2)) * Real.exp (rate * T) := by
    calc
      16 * T * Real.exp (T / 2) ≤
          16 * (Real.exp ((rate - 1 / 2) * T) /
            (rate - 1 / 2)) * Real.exp (T / 2) := by
        exact mul_le_mul_of_nonneg_right
          (mul_le_mul_of_nonneg_left hHalfPoly.1 (by norm_num))
          (Real.exp_pos _).le
      _ = (16 / (rate - 1 / 2)) * Real.exp (rate * T) := by
        rw [← hExpHalf]
        ring
  have hOddSq :
      16 * T ^ 2 * Real.exp (T / 2) ≤
        (32 / (rate - 1 / 2) ^ 2) * Real.exp (rate * T) := by
    calc
      16 * T ^ 2 * Real.exp (T / 2) ≤
          16 * (2 * Real.exp ((rate - 1 / 2) * T) /
            (rate - 1 / 2) ^ 2) * Real.exp (T / 2) := by
        exact mul_le_mul_of_nonneg_right
          (mul_le_mul_of_nonneg_left hHalfPoly.2 (by norm_num))
          (Real.exp_pos _).le
      _ = (32 / (rate - 1 / 2) ^ 2) * Real.exp (rate * T) := by
        rw [← hExpHalf]
        ring
  have hOdd :
      16 * T * (1 + T) * Real.exp (T / 2) ≤
        (16 / (rate - 1 / 2) +
          32 / (rate - 1 / 2) ^ 2) *
            Real.exp (rate * T) := by
    calc
      _ = 16 * T * Real.exp (T / 2) +
          16 * T ^ 2 * Real.exp (T / 2) := by ring
      _ ≤
          (16 / (rate - 1 / 2)) * Real.exp (rate * T) +
          (32 / (rate - 1 / 2) ^ 2) * Real.exp (rate * T) :=
        add_le_add hOddLin hOddSq
      _ = _ := by ring
  have hGeoLin :
      64 * T * Real.exp (rho * T) ≤
        (64 / (rate - rho)) * Real.exp (rate * T) := by
    calc
      64 * T * Real.exp (rho * T) ≤
          64 * (Real.exp ((rate - rho) * T) /
            (rate - rho)) * Real.exp (rho * T) := by
        exact mul_le_mul_of_nonneg_right
          (mul_le_mul_of_nonneg_left hGapPoly.1 (by norm_num))
          (Real.exp_pos _).le
      _ = (64 / (rate - rho)) * Real.exp (rate * T) := by
        rw [← hExpGap]
        ring
  have hGeoSq :
      4 * T ^ 2 * Real.exp (rho * T) ≤
        (8 / (rate - rho) ^ 2) * Real.exp (rate * T) := by
    calc
      4 * T ^ 2 * Real.exp (rho * T) ≤
          4 * (2 * Real.exp ((rate - rho) * T) /
            (rate - rho) ^ 2) * Real.exp (rho * T) := by
        exact mul_le_mul_of_nonneg_right
          (mul_le_mul_of_nonneg_left hGapPoly.2 (by norm_num))
          (Real.exp_pos _).le
      _ = (8 / (rate - rho) ^ 2) * Real.exp (rate * T) := by
        rw [← hExpGap]
        ring
  have hGeo :
      (64 * T + 4 * T ^ 2) * Real.exp (rho * T) ≤
        (64 / (rate - rho) +
          8 / (rate - rho) ^ 2) * Real.exp (rate * T) := by
    calc
      _ = 64 * T * Real.exp (rho * T) +
          4 * T ^ 2 * Real.exp (rho * T) := by ring
      _ ≤
          (64 / (rate - rho)) * Real.exp (rate * T) +
          (8 / (rate - rho) ^ 2) * Real.exp (rate * T) :=
        add_le_add hGeoLin hGeoSq
      _ = _ := by ring
  have hTrue := hSource rho T hrho hrho1 hT
  calc
    |profileCore rho T| ≤
        pickupEnergy T + 4 * T ^ 2 +
        16 * T * (1 + T) * Real.exp (T / 2) +
        (64 * T + 4 * T ^ 2) * Real.exp (rho * T) := hTrue
    _ ≤
        B * Real.exp (rate * T) +
          (8 / rate ^ 2) * Real.exp (rate * T) +
          (16 / (rate - 1 / 2) +
            32 / (rate - 1 / 2) ^ 2) * Real.exp (rate * T) +
          (64 / (rate - rho) +
            8 / (rate - rho) ^ 2) * Real.exp (rate * T) := by
      exact add_le_add
        (add_le_add (add_le_add (hEnergyBound T hT) hDiag) hOdd) hGeo
    _ = (B + geometricScalarAllowance rho rate) *
          Real.exp (rate * T) := by
      unfold geometricScalarAllowance
      ring

/-- Precise all-moduli source premise -> exact mod-one -> true
Mertens power (only via explicit classical contour hypothesis) ->
the NOW WRITTEN original velocity-to-energy proof ->
complete signed R_(7/10) at the genuine 1867/2500 rate.
The original full source-packet comparison remains visible. -/
theorem PR103_full_original_core_rate
    (hDirichlet : PR103DirichletStatement)
    (hContour : ZeroFreeToMertensPowerBridge)
    (hSource : FullOriginalProfileTwoSidedBudgetTarget) :
    FixedRateUpper
      (fun T => |profileCore (7 / 10) T|) (1867 / 2500 : ℝ) := by
  have hZeta : ExternalPR103ZetaNonvanishing :=
    PR103_mod_one_zeta_of_exact_candidate hDirichlet
  have hTheta0 :
      externalPR103Theta < (4367 / 5000 : ℝ) := by
    norm_num [externalPR103Theta]
  obtain ⟨C, hMertens⟩ :=
    hContour externalPR103Theta (4367 / 5000)
      hTheta0 (by norm_num) (by norm_num) hZeta
  have hEnergy :
      FixedRateUpper pickupEnergy
        (2 * (4367 / 5000 : ℝ) - 1) :=
    pickupEnergy_fixedRate_of_mertens_envelope
      pickupVelocityPowerEnergyTransfer_source_proof
      (by norm_num) hMertens
  have hRate : 2 * (4367 / 5000 : ℝ) - 1 = 1867 / 2500 := by
    norm_num
  rw [hRate] at hEnergy
  exact full_original_core_fixed_rate_of_energy hSource
    (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) hEnergy

/-- The complete ORIGINAL endpoint (not just R_(7/10)) inherits
the same fixed PR103 conditional rate. The sole still missing
arithmetic theorem is the classical contour input, not an extra
separate physical integration assumption. -/
theorem PR103_complete_original_endpoint_rate
    (hDirichlet : PR103DirichletStatement)
    (hContour : ZeroFreeToMertensPowerBridge) :
    FixedRateUpper endpointSum (1867 / 2500 : ℝ) := by
  have hZeta : ExternalPR103ZetaNonvanishing :=
    PR103_mod_one_zeta_of_exact_candidate hDirichlet
  have hTheta0 :
      externalPR103Theta < (4367 / 5000 : ℝ) := by
    norm_num [externalPR103Theta]
  obtain ⟨C, hMertens⟩ :=
    hContour externalPR103Theta (4367 / 5000)
      hTheta0 (by norm_num) (by norm_num) hZeta
  have hEnergy :
      FixedRateUpper pickupEnergy
        (2 * (4367 / 5000 : ℝ) - 1) :=
    pickupEnergy_fixedRate_of_mertens_envelope
      pickupVelocityPowerEnergyTransfer_source_proof
      (by norm_num) hMertens
  have hRate : 2 * (4367 / 5000 : ℝ) - 1 = 1867 / 2500 := by
    norm_num
  rw [hRate] at hEnergy
  exact endpointSum_fixedRate_of_pickupEnergy
    (by norm_num) hEnergy

end GRWTSK.NumberTheory.Moebius.PR103CompleteCoreConsumer
