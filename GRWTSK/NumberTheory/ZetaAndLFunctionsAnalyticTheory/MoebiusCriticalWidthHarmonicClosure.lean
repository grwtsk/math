/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCriticalWidthSmoothBirth
import Mathlib.NumberTheory.Harmonic.Bounds
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Discharge the harmonic endpoint in the critical-width smooth source

At pinned Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612,
`harmonic_eq_sum_Icc` and `harmonic_floor_le_one_add_log`
give the original positive-index harmonic endpoint bound as an
ordinary Lean source proof candidate, without adding an axiom.

This leaves a SINGLE arithmetic-free analytic premise: the local
birth-integral comparison against the exact finite harmonic sum.
The downstream fixed-G all-positive-rate source remains conditional
on that localized estimate, not on signed Möbius cancellation.
-/

namespace GRWTSK.NumberTheory.Moebius.CriticalWidthHarmonicClosure

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointGapLocalization
open GRWTSK.NumberTheory.Moebius.CriticalWidthSmoothBirth
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof

/-- The exact `EndpointHarmonicBound` proposition already named in
MoebiusEndpointGapLocalization is supplied from pinned Mathlib, with
its ORIGINAL floor(exp T) and the source's inclusive [1,N] index. -/
theorem endpointHarmonicBound_from_pinned_mathlib :
    EndpointHarmonicBound := by
  intro T hT
  have hy : (1 : ℝ) ≤ Real.exp T := by
    simpa only [Real.exp_zero] using
      (Real.exp_le_exp.mpr hT)
  have hh := harmonic_floor_le_one_add_log (Real.exp T) hy
  have hsum :
      (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, (n : ℝ)⁻¹) =
        (harmonic ⌊Real.exp T⌋₊ : ℝ) := by
    simp only [harmonic_eq_sum_Icc, Rat.cast_sum,
      Rat.cast_inv, Rat.cast_natCast]
  calc
    (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, (n : ℝ)⁻¹) =
        (harmonic ⌊Real.exp T⌋₊ : ℝ) := hsum
    _ ≤ 1 + Real.log (Real.exp T) := hh
    _ = 1 + T := by rw [Real.log_exp]

/-- The precise remaining real-variable integral supplier. It is a
SOURCE-bound unsigned bound, not a Möbius correlation estimate,
and does not assume RH. -/
def CriticalLocalBirthIntegralBound
    (eta : ℝ → ℝ) (κ : ℝ) : Prop :=
  ∀ T : ℝ, 0 ≤ T →
    criticalUnsignedDefect eta κ T ≤
      (8 * Real.sqrt (Real.exp 1) * κ ^ 2) *
        (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, (n : ℝ)⁻¹)

/-- The harmonic component is no longer an unresolved hypothesis:
the ONLY remaining premise for the linear source allowance is the
literal real-integral/smoothing comparison above. -/
theorem criticalUnsignedLinearBudget_of_local
    (eta : ℝ → ℝ) (κ : ℝ)
    (hlocal : CriticalLocalBirthIntegralBound eta κ) :
    CriticalUnsignedLinearBudget eta κ := by
  intro T hT
  have hH := endpointHarmonicBound_from_pinned_mathlib T hT
  have hK : 0 ≤ 8 * Real.sqrt (Real.exp 1) * κ ^ 2 := by
    positivity
  calc
    criticalUnsignedDefect eta κ T ≤
      (8 * Real.sqrt (Real.exp 1) * κ ^ 2) *
        (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, (n : ℝ)⁻¹) :=
      hlocal T hT
    _ ≤ (8 * Real.sqrt (Real.exp 1) * κ ^ 2) *
        (1 + T) :=
      mul_le_mul_of_nonneg_left hH hK

/-- Fixed-G critical-width return now consumes ONLY the localized
unsigned integral estimate: its harmonic conversion is proved above.
The RH-strength signed source estimate is not supplied here. -/
theorem denseLongGapAllRateOn_iff_critical_of_local
    (eta : ℝ → ℝ) (κ : ℝ) (G : Set ℝ)
    (hκ : 0 < κ) (hκ1 : κ ≤ 1)
    (hη : ContDiff ℝ ∞ eta)
    (hzero : ∀ x : ℝ, x ≤ 0 → eta x = 0)
    (hη0 : ∀ x : ℝ, 0 ≤ eta x)
    (hη1 : ∀ x : ℝ, eta x ≤ 1)
    (hlocal : CriticalLocalBirthIntegralBound eta κ) :
    DenseLongGapAllRateOn G ↔
      CriticalDenseAllPositiveRatesOn eta κ G :=
  denseLongGapAllRateOn_iff_critical eta κ G
    hκ hκ1 hη hzero hη0 hη1
    (criticalUnsignedLinearBudget_of_local eta κ hlocal)

end GRWTSK.NumberTheory.Moebius.CriticalWidthHarmonicClosure
