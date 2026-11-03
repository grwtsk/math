/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvillePrimeBandCovarianceTolerance
import Mathlib

/-!
# Uniform invertibility obstruction for changing Liouville prime bands

A finite prime band may change with time and with the requested positive
growth rate. The norm comparison is nevertheless uniform when the total
shift mass is bounded by a fixed fraction of the undelayed mass.

These scalar proofs expose their exact triangle-inequality hypotheses.
They do NOT claim the original waveform identity or its L² integrability
has been accepted in Lean, and do NOT establish new Liouville cancellation.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.LiouvilleGrowingBandUniformObstruction

/-- Sum of a per-prime mass budget, with no assumption that the band has
a fixed cardinality or depends on an arithmetic cutoff in a particular way. -/
theorem finite_band_shift_mass_le
    (P : Finset ℕ) (w b : ℕ → ℝ) (ρ : ℝ)
    (h : ∀ p ∈ P, b p ≤ ρ * w p) :
    (∑ p ∈ P, b p) ≤ ρ * (∑ p ∈ P, w p) := by
  calc
    (∑ p ∈ P, b p) ≤ ∑ p ∈ P, ρ * w p :=
      Finset.sum_le_sum h
    _ = ρ * (∑ p ∈ P, w p) := by rw [Finset.mul_sum]

/-- Uniform normalized L² *norm* sandwich. The norm variables h and r
are nonnegative, and the complete shift is controlled only after forming
its full waveform. The constants have no band-size or time dependence. -/
theorem uniform_normalized_residual_norm_sandwich
    (W κ ρ h r : ℝ)
    (hW : 0 < W) (hh : 0 ≤ h)
    (hρ : 0 ≤ ρ) (hρlt : ρ < 1)
    (hκ : κ ≤ ρ * W)
    (hreverse : W * h ≤ r + κ * h)
    (hforward : r ≤ W * h + κ * h) :
    (1 - ρ) * h ≤ r / W ∧ r / W ≤ (1 + ρ) * h := by
  have hbudget : κ * h ≤ ρ * W * h :=
    mul_le_mul_of_nonneg_right hκ hh
  constructor
  · apply (le_div_iff₀ hW).2
    nlinarith [hbudget]
  · apply (div_le_iff₀ hW).2
    nlinarith [hbudget]

/-- The one-sided source-bound implication from a normalized residual
norm estimate back to the original norm, uniformly in the band. -/
theorem uniform_norm_transfer
    (W κ ρ h r B : ℝ)
    (hW : 0 < W) (hh : 0 ≤ h) (hB : 0 ≤ B)
    (hρ : 0 ≤ ρ) (hρlt : ρ < 1)
    (hκ : κ ≤ ρ * W)
    (hreverse : W * h ≤ r + κ * h)
    (hbound : r ≤ W * B) :
    h ≤ B / (1 - ρ) := by
  have hgap : 0 < 1 - ρ := sub_pos.mpr hρlt
  have hbudget : κ * h ≤ ρ * W * h :=
    mul_le_mul_of_nonneg_right hκ hh
  have hmain : (1 - ρ) * W * h ≤ W * B := by
    nlinarith [hbudget, hreverse, hbound]
  have hcancel : (1 - ρ) * h ≤ B := by
    apply (mul_le_mul_right hW).mp
    nlinarith [hmain]
  exact (le_div_iff₀ hgap).2 hcancel

end GRWTSK.NumberTheory.LiouvilleGrowingBandUniformObstruction
