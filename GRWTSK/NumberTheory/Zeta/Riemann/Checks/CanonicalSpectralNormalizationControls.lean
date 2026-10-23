/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI GPT-5.6 Sol.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralNormalization
import Mathlib.Tactic

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralNormalization.Checks

open Filter Topology
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralNormalization
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort
open GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt

/-- Radius normalization preserves finite-stage nonnegativity. -/
theorem stage_zero_normalized_nonnegative :
    0 ≤ radiusNormalizedCorrection 0 :=
  radiusNormalizedCorrection_nonneg 0

/-- The source-geometric radius is strictly positive. -/
theorem stage_zero_radius_positive :
    0 < canonicalRadius 0 :=
  canonicalRadius_pos 0

/-- A normalized canonical comparison still cannot exist at horizontal
displacement one. -/
theorem no_normalized_comparison_at_unit_displacement :
    ¬ RadiusNormalizedQuarticComparison 1 0 := by
  intro h
  have hz := h.horizontal_displacement_eq_zero
  norm_num at hz

/-- The raw profile carries the extra finite-limit burden explicitly. -/
theorem raw_comparison_forces_finite_limit
    {α γ : ℝ} (h : CanonicalQuarticComparison α γ) :
    Tendsto canonicalCorrection atTop
      (𝓝 (h.limitWeight *
        GRWTSK.Polynomial.ConjugateQuartic.witnessTrace α γ)) :=
  h.rawCorrection_tendsto

/-- Radius normalization uses the fixed source stage, not a target-dependent
stage family. -/
theorem normalized_stage_source_fixed (n : ℕ) :
    canonicalStage n =
      GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentAtomStage.squareAtomStage (n + 2) :=
  rfl

/-- The first three phases remain the fixed triangle. -/
theorem triangle_remains_three :
    Nat.card GRWTSK.Geometry.ThreePlusOne.TrianglePhase = 3 := by
  norm_num [GRWTSK.Geometry.ThreePlusOne.TrianglePhase]

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralNormalization.Checks
