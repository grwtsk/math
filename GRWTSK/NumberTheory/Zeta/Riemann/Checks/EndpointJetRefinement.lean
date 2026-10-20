/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.EndpointCorrectedNewtonCandidate
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.EndpointLogRefinement
import GRWTSK.NumberTheory.Zeta.Riemann.RationalEndpointJet
import GRWTSK.Analysis.ErrorBounds.RationalRoundedExp

set_option autoImplicit false

/-!
# Constructed 81-term corrected finite jet, with the analytic remainder retained

All logarithms, exponential traces, Bernoulli corrections and arithmetic outputs
below are expressions, not imported numerical labels. Large finite decisions
have NOT been executed in Lean and may require resource or proof-script repairs.
The final actual-zeta theorem still requires a uniform source remainder on the
same complete outer disk. This file supplies NO periodic integration-by-parts
or Euler--Maclaurin remainder theorem. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.Checks.EndpointJetRefinement

open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure RationalDyadicArithmetic
open RationalNewtonDisk (magnitude)
open EndpointCorrectedNewtonCandidate (center centerData innerRadius outerRadius)
open EndpointLogRefinement (candidateLog)
open Metric Set

/-- Literal parameter and the old constructed real log determine every exponent. -/
def candidateExponent (k : ℕ) : Coordinates :=
  RationalAtanhPower.exponent center (k : ℚ) (Nat.log2 k) 32 32 160

def candidateTrace (k : ℕ) : RationalExpTrace.Trace :=
  RationalRoundedExp.trace 160 (candidateExponent k) 7 32

def candidatePower (k : ℕ) : Ball :=
  RationalAtanhPower.output center (k : ℚ) (Nat.log2 k) 32 32 160
    (magnitude (candidateExponent k)) 7 32 (candidateTrace k)

/-- Finite parameter guards only; all 81 seed/square checks are DERIVED by trace_checked. -/
theorem all_power_guards : ∀ k ∈ Finset.Icc 1 81,
    (candidateExponent k).1 ≤ 0 ∧
    (magnitude (candidateExponent k) / (2 ^ 7 : ℕ)) / (32 + 1 : ℕ) ≤ (1 / 2 : ℚ) := by
  decide

/-- The complete generated trace passes the unchanged checker for every base. -/
theorem candidate_trace_checked {k : ℕ} (hk : k ∈ Finset.Icc 1 81) :
    RationalExpTrace.check (candidateExponent k) (magnitude (candidateExponent k))
      7 32 (candidateTrace k) = true :=
  RationalRoundedExp.trace_checked 160 (all_power_guards k hk).1 7 32 (all_power_guards k hk).2

theorem candidate_power_sound {k : ℕ} (hk : k ∈ Finset.Icc 1 81) :
    Holds (candidatePower k) ((k : ℂ) ^ (-toComplex center)) := by
  simpa only [candidatePower, candidateExponent, Rat.cast_natCast] using
    RationalAtanhPower.inverse_power_sound (by decide : 0 ≤ center.1)
      (EndpointLogRefinement.all_scales_valid k hk) (candidate_trace_checked hk)

/-- Same 81 positive bases, eight Bernoulli corrections and 160-bit operation order. -/
def candidateJet : Ball × Ball :=
  RationalEndpointJet.assemble 160 center 81 8 candidateLog candidatePower

/-- Both finite functions are enclosed without ANY additional leaf accuracy premise. -/
theorem candidate_finite_jet_sound :
    Holds candidateJet.1 (EndpointCorrectedJet.model 81 8 (toComplex center)) ∧
    Holds candidateJet.2 (deriv (EndpointCorrectedJet.model 81 8) (toComplex center)) := by
  apply RationalEndpointJet.assemble_sound 160
    (by intro h; have hr := congrArg Complex.re h; norm_num [center, toComplex] at hr)
    (by decide : 1 ≤ 81) 8 candidateLog candidatePower
  · exact fun _ hk => EndpointLogRefinement.candidate_log_sound hk
  · exact fun _ hk => candidate_power_sound hk

def valuePresentationAllowance : ℚ :=
  candidateJet.1.rad + magnitude (sub centerData.value candidateJet.1.mid)

def derivativePresentationAllowance : ℚ :=
  candidateJet.2.rad + magnitude (sub centerData.derivative candidateJet.2.mid)

/-- These two finite decisions still require pinned kernel execution and resource review. -/
theorem finite_presentation_allowances :
    valuePresentationAllowance ≤ (1 / 10 ^ 17 : ℚ) ∧
    derivativePresentationAllowance ≤ (1 / 10 ^ 17 : ℚ) := by decide

/-- The target constants are the unchanged literal Newton data, with displacement paid. -/
theorem finite_presented_errors :
    ‖EndpointCorrectedJet.model 81 8 (toComplex center) - toComplex centerData.value‖ ≤
      (1 / 10 ^ 17 : ℝ) ∧
    ‖deriv (EndpointCorrectedJet.model 81 8) (toComplex center) - toComplex centerData.derivative‖ ≤
      (1 / 10 ^ 17 : ℝ) := by
  constructor
  · exact (RationalEndpointJet.presented_error candidate_finite_jet_sound.1 centerData.value).trans
      (by exact_mod_cast finite_presentation_allowances.1)
  · exact (RationalEndpointJet.presented_error candidate_finite_jet_sound.2 centerData.derivative).trans
      (by exact_mod_cast finite_presentation_allowances.2)

theorem outer_avoids_pole : ∀ z ∈ closedBall (toComplex center) (outerRadius : ℝ), z ≠ 1 := by
  intro z hz hz1
  subst z
  have hl := Complex.abs_re_le_norm ((1 : ℂ) - toComplex center)
  have hu : ‖(1 : ℂ) - toComplex center‖ ≤ (outerRadius : ℝ) := by
    simpa only [mem_closedBall, dist_eq_norm] using hz
  have hl' : (1 / 2 : ℝ) ≤ ‖(1 : ℂ) - toComplex center‖ := by
    simpa [Complex.sub_re, toComplex, center] using hl
  norm_num [outerRadius] at hu
  linarith

/-- ONLY the uniform actual-source remainder remains as a mathematical application input.
It is not constructed here; the written Bernoulli argument still needs formalization. -/
theorem centerEstimates_of_uniform_source
    (hsource : ∀ z ∈ closedBall (toComplex center) (outerRadius : ℝ),
      ‖riemannZeta z - EndpointCorrectedJet.model 81 8 z‖ ≤ (1 / 10 ^ 16 : ℝ)) :
    CauchyNewtonWitness.CenterEstimates center centerData := by
  have hS : (0 : ℝ) < outerRadius := by norm_num [outerRadius]
  have hcenter : toComplex center ∈ closedBall (toComplex center) (outerRadius : ℝ) :=
    mem_closedBall_self hS.le
  have hv := hsource (toComplex center) hcenter
  have hd := EndpointCorrectedJet.derivative_error_of_uniform_source
    (by decide : 1 ≤ 81) hS outer_avoids_pole
    (fun z hz => hsource z (sphere_subset_closedBall hz))
  rw [← EndpointCorrectedJet.deriv_model (by decide : 1 ≤ 81) 8
    (outer_avoids_pole _ hcenter)] at hd
  constructor
  · calc
      _ ≤ ‖riemannZeta (toComplex center) - EndpointCorrectedJet.model 81 8 (toComplex center)‖ +
          ‖EndpointCorrectedJet.model 81 8 (toComplex center) - toComplex centerData.value‖ := by
        simpa only [dist_eq_norm] using dist_triangle (riemannZeta (toComplex center))
          (EndpointCorrectedJet.model 81 8 (toComplex center)) (toComplex centerData.value)
      _ ≤ (1 / 10 ^ 16 : ℝ) + 1 / 10 ^ 17 := add_le_add hv finite_presented_errors.1
      _ ≤ _ := by norm_num [centerData]
  · calc
      _ ≤ ‖deriv riemannZeta (toComplex center) - deriv (EndpointCorrectedJet.model 81 8) (toComplex center)‖ +
          ‖deriv (EndpointCorrectedJet.model 81 8) (toComplex center) - toComplex centerData.derivative‖ := by
        simpa only [dist_eq_norm] using dist_triangle (deriv riemannZeta (toComplex center))
          (deriv (EndpointCorrectedJet.model 81 8) (toComplex center)) (toComplex centerData.derivative)
      _ ≤ (1 / 10 ^ 16 : ℝ) / (outerRadius : ℝ) + 1 / 10 ^ 17 :=
        add_le_add hd finite_presented_errors.2
      _ ≤ _ := by norm_num [outerRadius, centerData]

/-- A conditional local result only, with the unchanged source, radius and Newton target. -/
theorem unique_point_of_uniform_source
    (hsource : ∀ z ∈ closedBall (toComplex center) (outerRadius : ℝ),
      ‖riemannZeta z - EndpointCorrectedJet.model 81 8 z‖ ≤ (1 / 10 ^ 16 : ℝ)) :
    ∃ z : CanonicalZeroDivisor.ZeroPoint, ‖z.1 - toComplex center‖ ≤ (innerRadius : ℝ) ∧
      CanonicalZeroDivisor.multiplicity z = 1 ∧
      ∀ v : CanonicalZeroDivisor.ZeroPoint, ‖v.1 - toComplex center‖ ≤ (innerRadius : ℝ) → v = z :=
  EndpointCorrectedNewtonCandidate.unique_point_of_centerEstimates
    (centerEstimates_of_uniform_source hsource)

/-- The upstream Bernoulli convention, not a table with a changed B1 sign. -/
theorem bernoulli_coefficients_control : bernoulli 1 = -1 / 2 ∧
    [bernoulli 2, bernoulli 4, bernoulli 6, bernoulli 8, bernoulli 10,
      bernoulli 12, bernoulli 14, bernoulli 16] =
    [1 / 6, -1 / 30, 1 / 42, -1 / 30, 5 / 66, -691 / 2730, 7 / 6, -3617 / 510] := by decide

/-- Flipping the half-endpoint convention changes this finite value by ONE. -/
theorem inclusive_endpoint_control :
    EndpointCorrectedJet.model 1 0 2 = 3 / 2 ∧
      EndpointCorrectedJet.model 1 0 2 ≠ 5 / 2 := by
  norm_num [EndpointCorrectedJet.model, EndpointCorrectedJet.coefficient,
    CriticalStripHeightDescent.finiteDirichletPowerSum]

/-- At base one, the Dirichlet derivative vanishes but the endpoint derivative does not. -/
theorem endpoint_derivative_control :
    EndpointCorrectedJet.dirichletSlope 1 2 = 0 ∧
      EndpointCorrectedJet.slope 1 0 2 = -1 := by
  norm_num [EndpointCorrectedJet.dirichletSlope, EndpointCorrectedJet.slope,
    EndpointCorrectedJet.coefficient, EndpointCorrectedJet.coefficientSlope]

end GRWTSK.RiemannHypothesis.Checks.EndpointJetRefinement
