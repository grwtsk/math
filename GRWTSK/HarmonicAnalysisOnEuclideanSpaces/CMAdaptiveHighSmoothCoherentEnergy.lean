/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMAdaptiveHighSmoothAllShell
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMAdaptiveErrorSupportOrthogonality
import Mathlib.Tactic

/-!
# Original coherent Möbius energy from one fixed-bank low sector

The TRUE original signed causal wave, its C-infinity adaptive version,
and the literal high/low FINITE INDEX PARTITION are unchanged.
The high/low mixed term is kept in the exact square. An independent
uniform high-wave bound, proved mathematically from the source's
fixed-bank highSmoothCofactorCount_target plus a geometric-series
estimate, is an EXPLICIT UNPROVED PROP here.

The unconditional algebraic conclusions are pointwise:
  full_adaptive^2 <= 2*low^2 + 2*K^2;
  original^2 <= 4*low^2 + 4*K^2 + 2*error^2.
The reverse bounds hold as well. This reduces an eventual original
all-rate energy target to the actual low-sector energy once the
arithmetic-free high-envelope and adaptive error-integral gates
are formally checked. No low-sector arithmetic estimate or RH proof
is asserted.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveHighSmoothCoherentEnergy

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveDisjointBirth
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveHighSmoothAllShell
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveErrorSupportOrthogonality

/-- Exact original signed HIGH/LOW square with its mixed term retained. -/
theorem coherent_adaptive_high_low_signed_square
    (B : PrimeBand) (j : ℕ) (u : ℝ) :
    (adaptiveSmoothWave j u) ^ 2 =
      (highSelectedWave B j u) ^ 2 +
        2 * highSelectedWave B j u * lowSelectedWave B j u +
          (lowSelectedWave B j u) ^ 2 := by
  rw [completeWave_eq_high_add_low]
  ring

/-- The only geometric input here is a bound on the actual selected HIGH
source; it cannot be chosen by adjusting the arithmetic residue. -/
theorem high_square_le_of_abs_bound
    (B : PrimeBand) (j : ℕ) (u K : ℝ)
    (hK : |highSelectedWave B j u| ≤ K) :
    (highSelectedWave B j u) ^ 2 ≤ K ^ 2 := by
  have habs := abs_le.mp hK
  have hprod :
      0 ≤ (K - highSelectedWave B j u) *
        (K + highSelectedWave B j u) :=
    mul_nonneg (by linarith [habs.2]) (by linarith [habs.1])
  nlinarith [hprod]

/-- Pointwise upper transfer without squaring separate source sectors
until AFTER the exact high+low signed source sum has been formed. -/
theorem adaptive_full_sq_le_low_sq_of_high_bound
    (B : PrimeBand) (j : ℕ) (u K : ℝ)
    (hK : |highSelectedWave B j u| ≤ K) :
    (adaptiveSmoothWave j u) ^ 2 ≤
      2 * (lowSelectedWave B j u) ^ 2 + 2 * K ^ 2 := by
  have hsq := high_square_le_of_abs_bound B j u K hK
  rw [completeWave_eq_high_add_low]
  nlinarith [sq_nonneg (highSelectedWave B j u - lowSelectedWave B j u)]

theorem adaptive_low_sq_le_full_sq_of_high_bound
    (B : PrimeBand) (j : ℕ) (u K : ℝ)
    (hK : |highSelectedWave B j u| ≤ K) :
    (lowSelectedWave B j u) ^ 2 ≤
      2 * (adaptiveSmoothWave j u) ^ 2 + 2 * K ^ 2 := by
  have hsq := high_square_le_of_abs_bound B j u K hK
  have heq : lowSelectedWave B j u =
      adaptiveSmoothWave j u - highSelectedWave B j u := by
    have h := completeWave_eq_high_add_low B j u
    linarith
  rw [heq]
  nlinarith [sq_nonneg (adaptiveSmoothWave j u + highSelectedWave B j u)]

/-- Stronger source-facing upper transfer: the ORIGINAL pickup wave is
controlled by low selected energy, one uniform high constant and the
explicit source-minus-smooth signed defect. The original mixed products
are not deleted or assumed nonpositive. -/
theorem original_sq_le_low_and_error
    (B : PrimeBand) (j : ℕ) (u K : ℝ)
    (hK : |highSelectedWave B j u| ≤ K) :
    (originalFixedWave j u) ^ 2 ≤
      4 * (lowSelectedWave B j u) ^ 2 +
        4 * K ^ 2 + 2 * (adaptiveErrorWave j u) ^ 2 := by
  have hadapt := adaptive_full_sq_le_low_sq_of_high_bound B j u K hK
  have horig := (original_adaptive_two_square_comparisons j u).1
  nlinarith

/-- Reverse rate control, for equivalence rather than only sufficiency. -/
theorem low_sq_le_original_and_error
    (B : PrimeBand) (j : ℕ) (u K : ℝ)
    (hK : |highSelectedWave B j u| ≤ K) :
    (lowSelectedWave B j u) ^ 2 ≤
      4 * (originalFixedWave j u) ^ 2 +
        2 * K ^ 2 + 4 * (adaptiveErrorWave j u) ^ 2 := by
  have hadapt := adaptive_low_sq_le_full_sq_of_high_bound B j u K hK
  have horig := (original_adaptive_two_square_comparisons j u).2
  nlinarith

/-- Global boundedness of the TRUE high-selected finite source is the
arithmetic-free geometric-series gate left by the preceding module.
This is a Prop awaiting its source-bound finite enumeration proof,
NOT a new assumed Möbius cancellation theorem. -/
def UniformHighSelectedWave (B : PrimeBand) : Prop :=
  ∃ K : ℝ, 0 ≤ K ∧
    ∀ j : ℕ, ∀ u : ℝ, |highSelectedWave B j u| ≤ K

theorem original_sq_le_low_and_error_of_uniform
    (B : PrimeBand) (h : UniformHighSelectedWave B) :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ j : ℕ, ∀ u : ℝ,
      (originalFixedWave j u) ^ 2 ≤
        4 * (lowSelectedWave B j u) ^ 2 +
          4 * K ^ 2 + 2 * (adaptiveErrorWave j u) ^ 2 := by
  obtain ⟨K, hK, hbound⟩ := h
  exact ⟨K, hK, fun j u => original_sq_le_low_and_error B j u K (hbound j u)⟩

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveHighSmoothCoherentEnergy
