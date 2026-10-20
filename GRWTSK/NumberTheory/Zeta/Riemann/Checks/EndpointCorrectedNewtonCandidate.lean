/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CauchyNewtonWitness

set_option autoImplicit false

/-!
# Literal endpoint-corrected local-zeta candidate, with analytic obligations retained

The companion note gives an Euler--Maclaurin derivation and an independent
exact-rational calculation for these center data. Neither that calculation nor
its source/refinement theorem has been replayed in Lean. In particular this
module DOES NOT construct `CenterEstimates`. The final theorem keeps that exact
premise and no axiom is added. This is one disk, not a complete zero inventory.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.Checks.EndpointCorrectedNewtonCandidate

open CauchyNewtonWitness CanonicalZeroDivisor
open GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure

/-- Exact rational external parameter; no assertion of ordinal zero number. -/
def center : Coordinates := (1 / 2, 14134725141735 / 1000000000000)
def innerRadius : ℚ := 1 / 100000000
def outerRadius : ℚ := 1 / 4

/-- Presented decimal rationals include the displacement from the calculation's
binary-rational midpoint in their proposed errors. The fixed preconditioner is one. -/
def centerData : CenterData :=
  ⟨one,
    (-7637 / 200000000000000000, 59963 / 250000000000000000),
    (78329651186710129 / 100000000000000000,
      124699829747982951 / 1000000000000000000),
    1 / 1000000000000000, 1 / 1000000000000000⟩

/-- This finite arithmetic check is NOT a proof that the center enclosures are true. -/
theorem quantitative_guard : checkAt center innerRadius outerRadius centerData = true := by
  decide

/-- A strict closed-disk self-map margin, kept distinct from mere contraction. -/
theorem strict_scalar_margins :
    (279037 / 1000000000000000000 : ℚ) +
      (71133624055204295494728276960887 / 208333316666667000000000000000000) *
        (1 / 100000000) < 1 / 100000000 ∧
    (71133624055204295494728276960887 / 208333316666667000000000000000000 : ℚ) < 1 := by
  decide

/-- Deliberately retain the still-unformalized actual-zeta center estimate premise.
No source count, omitted tail, or critical-line status is inferred. -/
theorem unique_point_of_centerEstimates (he : CenterEstimates center centerData) :
    ∃ z : ZeroPoint, ‖z.1 - toComplex center‖ ≤ (innerRadius : ℝ) ∧
      multiplicity z = 1 ∧
      ∀ v : ZeroPoint, ‖v.1 - toComplex center‖ ≤ (innerRadius : ℝ) → v = z :=
  CauchyNewtonWitness.exists_unique_point quantitative_guard he

end GRWTSK.RiemannHypothesis.Checks.EndpointCorrectedNewtonCandidate
