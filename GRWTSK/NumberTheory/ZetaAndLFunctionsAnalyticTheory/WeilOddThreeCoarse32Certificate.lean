/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors. AI-assisted source drafting.
SOURCE_PROOF_CANDIDATE / ELABORATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddThreeCoarse32Geometry
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddThreeStageSineReturn

/-!
# Exact 32-grid integer certificate and original radius-one conductor-three return

This makes the *actual* finite comparison a `decide +kernel` theorem target,
not a supplied hypothesis or a native/unsafe oracle. Its literal expected
numerator comes from an independent Python exact-integer replay using four
contiguous original 1/128 prices per coarse cell. The existing gamma,
signed prime-power, sine-overlap and support-tail proofs are preserved.

The imported geometry theorem carries the source-to-rectangle estimate and
retains every original `Admissible χ 1 f` in the existing stage return.

The large `decide +kernel` computation is NOT_RUN at this revision. In particular,
publication of this file is not a claim that the proof has elaborated.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt
namespace CheckerCoarse32

open OddRootProjection DirichletStageChain

/-- The expected integer output of the fully source-defined coarse checker.
This statement must be *computed by the kernel*, not taken as an axiom. -/
set_option maxRecDepth 65536 in
set_option maxHeartbeats 0 in
theorem numerator_eq_literal :
    numerator = 8697122502276302315122217776404148413005475681632975 := by
  decide +kernel

/-- An ordinary exact-integer calculation, independent of analysis. -/
theorem denominator_eq_literal :
    denominator = 10106474906710399543890863104000000000000000000000000 := by
  decide

/-- The literal finite envelope is strictly below the stage-zero unit budget. -/
theorem checker_fraction_lt_one : (numerator : ℝ) / (denominator : ℝ) < 1 := by
  have hnum : numerator < denominator := by
    rw [numerator_eq_literal, denominator_eq_literal]
    decide
  have hden : (0 : ℝ) < (denominator : ℝ) := by
    norm_num [denominator, CheckerRounding.scale]
  apply (div_lt_iff₀ hden).2
  exact_mod_cast hnum

/-- The original signed conductor-three rectangle, not a model surrogate. -/
theorem q3_sineDeficitRectangle_lt_one (χ : DirichletCharacter ℂ 3)
    (hodd : gammaParity χ = 1) :
    sineDeficitRectangle 256 (q3SineDeficit χ) < 1 :=
  (rectangle_le_coarse32_fraction χ hodd).trans_lt checker_fraction_lt_one

/-- Original stage-zero inequality, for EVERY admissible radius-one test.
This is not full all-radius conductor-three GRH. -/
theorem q3_original_radius_one_stage (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hodd : gammaParity χ = 1) :
    PrimitiveStageLower χ hp hn 0 :=
  q3_primitiveStageLower_of_rectangle_le_one χ hp hn hodd
    (le_of_lt (q3_sineDeficitRectangle_lt_one χ hodd))

end CheckerCoarse32
end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt
