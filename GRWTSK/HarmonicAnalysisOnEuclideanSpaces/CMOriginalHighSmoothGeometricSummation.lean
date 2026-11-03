/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMOriginalHighSmoothDirectEnergy
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Tactic

/-!
# Fixed-bank source high-shell geometric summation

The generic finite geometric-series payment is mathematical analysis,
NOT a Möbius cancellation hypothesis. Its remaining shellwise scalar
inequality is separately exposed with explicit canonical ratio
exp(-log(2)/8). This module does not postulate any research result as
an axiom. It yields an original UNSMOOTHED high-source uniform bound
conditional only on a pure-real-variable scalar estimate.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothGeometricSummation

open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveHighSmoothAllShell
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothDirectEnergy

def highShellCost (B : PrimeBand) (s : ℕ) : ℝ :=
  2 * (Real.sqrt (((2 ^ s : ℕ) : ℝ)))⁻¹ *
    Real.exp (2 * Real.sqrt (Real.log (2 * ((2 ^ s : ℕ) : ℝ)))) *
    (1 + Real.log (2 * ((2 ^ s : ℕ) : ℝ)) / Real.log 2) ^ B.primes.card

@[simp] theorem finiteHighEnvelope_eq_cost_sum (B : PrimeBand) (j : ℕ) :
    finiteHighEnvelope B j =
      ∑ s ∈ Finset.range j, highShellCost B s := rfl

/-- Explicit scalar source-majorant, independent of all Möbius signs. -/
def ShellGeometricControl (B : PrimeBand) : Prop :=
  ∃ D q : ℝ, 0 ≤ D ∧ 0 ≤ q ∧ q < 1 ∧
    ∀ s : ℕ, highShellCost B s ≤ D * q ^ s

/-- Apply the pinned genuine geometric-series theorem to every finite
cutoff, making the bound independent of j. -/
theorem finiteHighEnvelope_uniform_of_geometric
    (B : PrimeBand) (h : ShellGeometricControl B) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ, finiteHighEnvelope B j ≤ C := by
  obtain ⟨D, q, hD, hq0, hq1, hcost⟩ := h
  have hden : 0 < 1 - q := by linarith
  refine ⟨D * (1 - q)⁻¹, mul_nonneg hD (by positivity), ?_⟩
  intro j
  have hgeom : (∑ s ∈ Finset.range j, q ^ s) ≤ (1 - q)⁻¹ := by
    calc
      (∑ s ∈ Finset.range j, q ^ s) ≤ ∑' s : ℕ, q ^ s :=
        (summable_geometric_of_lt_one hq0 hq1).sum_le_tsum
          (Finset.range j) (fun s hs => pow_nonneg hq0 s)
      _ = (1 - q)⁻¹ := tsum_geometric_of_lt_one hq0 hq1
  calc
    finiteHighEnvelope B j =
        ∑ s ∈ Finset.range j, highShellCost B s := rfl
    _ ≤ ∑ s ∈ Finset.range j, D * q ^ s := by
      apply Finset.sum_le_sum
      intro s hs
      exact hcost s
    _ = D * (∑ s ∈ Finset.range j, q ^ s) := by
      rw [Finset.mul_sum]
    _ ≤ D * (1 - q)⁻¹ := mul_le_mul_of_nonneg_left hgeom hD

theorem globalHighEnvelope_of_shell_geometric
    (h : ∀ B : PrimeBand, ShellGeometricControl B) :
    GlobalHighEnvelope := by
  intro B
  exact finiteHighEnvelope_uniform_of_geometric B (h B)

def canonicalShellRatio : ℝ := Real.exp (-(Real.log (2 : ℝ)) / 8)

theorem canonicalShellRatio_pos : 0 < canonicalShellRatio := by
  unfold canonicalShellRatio
  positivity

theorem canonicalShellRatio_lt_one : canonicalShellRatio < 1 := by
  unfold canonicalShellRatio
  have hlog : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  have hneg : -(Real.log (2 : ℝ)) / 8 < 0 := by linarith
  simpa only [Real.exp_zero] using (Real.exp_lt_exp.mpr hneg)

/-- Exact constant obtained from 2sqrt(T)<=4+T/4 and the polynomial
factor bounded by C_r exp(T/8) on T=(s+1)log(2). -/
def canonicalShellFactor (B : PrimeBand) : ℝ :=
  2 * Real.sqrt 2 * Real.exp 4 *
    (1 + 8 * ((B.primes.card : ℝ) + 1) / Real.log 2) ^ B.primes.card *
      canonicalShellRatio

theorem canonicalShellFactor_nonneg (B : PrimeBand) :
    0 ≤ canonicalShellFactor B := by
  unfold canonicalShellFactor
  have hlog : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  positivity

/-- Pure scalar analytic gate. No arithmetic cancellation is hidden here. -/
def CanonicalShellScalarDecay : Prop :=
  ∀ B : PrimeBand, ∀ s : ℕ,
    highShellCost B s ≤ canonicalShellFactor B * canonicalShellRatio ^ s

theorem globalHighEnvelope_of_canonical_scalar
    (h : CanonicalShellScalarDecay) : GlobalHighEnvelope := by
  apply globalHighEnvelope_of_shell_geometric
  intro B
  exact ⟨canonicalShellFactor B, canonicalShellRatio,
    canonicalShellFactor_nonneg B, canonicalShellRatio_pos.le,
    canonicalShellRatio_lt_one, h B⟩

/-- Original high return without ANY C-infinity birth error budget. -/
theorem originalHighWave_uniform_of_canonical_scalar
    (B : PrimeBand) (h : CanonicalShellScalarDecay) :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ j : ℕ, ∀ u : ℝ,
      |originalHighWave B j u| ≤ K :=
  originalHighWave_uniform_of_global_envelope B
    (globalHighEnvelope_of_canonical_scalar h)

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothGeometricSummation
