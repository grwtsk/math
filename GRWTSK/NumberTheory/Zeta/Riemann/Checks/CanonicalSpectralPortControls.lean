/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI GPT-5.6 Sol.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort
import Mathlib.Tactic

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort.Checks

open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentAtomStage
open GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt

/-- The signed spectral correction is exactly the fixed positive source at
square stage two. -/
theorem square_two_exact_spectral_gram :
    stageEnergy (squareAtomStage 2) (squareRootAmplitude 2) =
      spectralCorrectionReal 2 :=
  stageEnergy_eq_spectralCorrectionReal 2 (by norm_num)

/-- Hence the finite signed spectral correction is nonnegative at this stage. -/
theorem square_two_spectral_nonnegative :
    0 ≤ spectralCorrectionReal 2 :=
  spectralCorrectionReal_nonneg 2 (by norm_num)

/-- A fixed-family quartic comparison cannot exist at horizontal displacement
one, since a valid comparison would force that displacement to be zero. -/
theorem no_canonical_comparison_at_unit_displacement :
    ¬ CanonicalQuarticComparison 1 0 := by
  intro h
  have hz := h.horizontal_displacement_eq_zero
  norm_num at hz

/-- The canonical family is chosen independently of any target zero. -/
theorem canonical_stage_is_source_fixed (n : ℕ) :
    canonicalStage n = squareAtomStage (n + 2) :=
  rfl

/-- The first three phases are still the triangular base. -/
theorem triangle_remains_three :
    Nat.card GRWTSK.Geometry.ThreePlusOne.TrianglePhase = 3 := by
  norm_num [GRWTSK.Geometry.ThreePlusOne.TrianglePhase]

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort.Checks
