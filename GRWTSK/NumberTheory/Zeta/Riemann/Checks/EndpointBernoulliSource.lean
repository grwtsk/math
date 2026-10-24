/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.EndpointBernoulliResidual
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.EndpointJetRefinement

set_option autoImplicit false

/-!
# Source-only closure of the literal endpoint candidate's analytic remainder input

This module supplies the EXACT old uniform-source premise. It does not weaken the
literal center, disks, finite coefficient inventory, presentation constants or
Newton tolerances. All new and inherited scripts, including expensive finite
reductions, remain NOT_RUN / NOT_KERNEL_AUDITED. No accepted zero certificate,
ordinal zero number, complete count, critical-line theorem, prime theorem or RH
result follows from the existence of this unelaborated source file.
-/
namespace GRWTSK.RiemannHypothesis.Checks.EndpointBernoulliSource

open Metric Set
open GRWTSK.Analysis.ErrorBounds
open GRWTSK.Analysis.ComplexAnalysis
open RationalComplexEnclosure
open EndpointCorrectedNewtonCandidate (center centerData innerRadius outerRadius)
open scoped BigOperators

/-- One rational size bound controls every complex point of the old OUTER disk. -/
theorem outer_bounds {z : ℂ}
    (hz : z ∈ closedBall (toComplex center) (outerRadius : ℝ)) :
    (1 / 4 : ℝ) ≤ z.re ∧ ‖z‖ ≤ 15 ∧ z ≠ 1 := by
  have hB : ‖toComplex center‖ + (outerRadius : ℝ) ≤ 15 := by
    calc
      _ ≤ (RationalNewtonDisk.magnitude center : ℝ) + outerRadius :=
        add_le_add_right (RationalNewtonDisk.norm_le_magnitude center) _
      _ ≤ 15 := by norm_num [RationalNewtonDisk.magnitude, center, outerRadius]
  have h := ZetaDiskCauchyBounds.disk_bounds (c := toComplex center)
    (S := (outerRadius : ℝ)) (σ := (1 / 4 : ℝ)) (δ := (1 / 4 : ℝ)) (B := 15)
    (by norm_num) (by norm_num) (by norm_num [center, toComplex, outerRadius])
    (by norm_num [center, toComplex, outerRadius]) hB hz
  exact ⟨h.1, h.2.2.1, h.2.2.2⟩

/-- Strict rational arithmetic only. The conservative allowance is below 10^-16. -/
theorem rational_remainder_budget :
    (2154410000 / 4710128697246244834921603689 : ℚ) < 1 / 10 ^ 16 := by decide

/-- The earlier uniform source inequality is now derived from the actual residual
identity and the whole-tail majorant; no numerical accuracy argument is an input. -/
theorem uniform_source : ∀ z ∈ closedBall (toComplex center) (outerRadius : ℝ),
    ‖riemannZeta z - EndpointCorrectedJet.model 81 8 z‖ ≤ (1 / 10 ^ 16 : ℝ) := by
  intro z hz
  obtain ⟨hl, hb, hp⟩ := outer_bounds hz
  have hpos : 0 < z.re := lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1 / 4) hl
  have hid := EndpointBernoulliResidual.source_residual_succ (N := 81) (by decide) 7 hpos hp
  change riemannZeta z - EndpointCorrectedJet.model 81 8 z =
    PeriodicBernoulliMellin.remainder 16 (81 : ℝ) z at hid
  rw [hid]
  exact (EndpointBernoulliResidual.remainder_sixteen_bound hpos.le hb).trans
    (le_of_lt (by exact_mod_cast rational_remainder_budget))

/-- No analytic or finite-evaluation premise remains in this SOURCE CANDIDATE.
Its acceptance still requires the entire pinned proof/import/axiom stack. -/
theorem centerEstimates : CauchyNewtonWitness.CenterEstimates center centerData :=
  EndpointJetRefinement.centerEstimates_of_uniform_source uniform_source

/-- The old local conclusion at the old radius, not a new zero inventory or RH.
SOURCE CANDIDATE ONLY: neither this theorem nor its prerequisites were executed. -/
theorem unique_simple_point :
    ∃ z : CanonicalZeroDivisor.ZeroPoint, ‖z.1 - toComplex center‖ ≤ (innerRadius : ℝ) ∧
      CanonicalZeroDivisor.multiplicity z = 1 ∧
      ∀ v : CanonicalZeroDivisor.ZeroPoint, ‖v.1 - toComplex center‖ ≤ (innerRadius : ℝ) → v = z :=
  EndpointCorrectedNewtonCandidate.unique_point_of_centerEstimates centerEstimates

/-- At order zero the seam assumption is false; that recurrence is not generalized. -/
theorem degree_one_seam_must_not_cancel :
    PeriodicBernoulli.value 1 1 ≠ PeriodicBernoulli.value 1 0 := by
  norm_num [PeriodicBernoulli.value_first]

/-- A zero number of cells contributes zero, not an infinite-tail certificate. -/
theorem empty_block_is_zero (m N : ℕ) (s : ℂ) :
    BernoulliMellinRecurrence.block m N 0 s = 0 := by
  simp [BernoulliMellinRecurrence.block]

/-- The coefficient bound is conservative: it is not falsely declared the supremum. -/
theorem periodic_bound_is_not_zero :
    PeriodicBernoulli.majorant 16 > 0 ∧ PeriodicBernoulli.majorant 16 < 2000 := by
  rw [PeriodicBernoulli.sixteenth_majorant]
  norm_num

/-- The comparison deliberately uses the weaker sigma=0 tail majorant, not a
numerically substituted fractional power 81^(-1/4). -/
theorem rational_budget_identity :
    ((∏ j ∈ Finset.range 16, (15 + (j : ℚ))) / (16.factorial : ℚ) *
      (2000 / (15 * (81 : ℚ) ^ 15))) =
      2154410000 / 4710128697246244834921603689 := by decide

end GRWTSK.RiemannHypothesis.Checks.EndpointBernoulliSource
