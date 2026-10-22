/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI GPT-5.6 Sol.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalQuarticProbe
import Mathlib.Tactic

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalQuarticProbe.Checks

open Filter Topology
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalQuarticProbe
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralNormalization
open GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt

/-- The critical-line probe vanishes without imposing source decay. -/
theorem critical_line_probe_zero (γ : ℝ) (n : ℕ) :
    quarticProbe 0 γ n = fun _ => 0 :=
  quarticProbe_zero_horizontal γ n

/-- The critical-line energy is exactly zero. -/
theorem critical_line_energy_zero (γ : ℝ) (n : ℕ) :
    stageEnergy (canonicalStage n) (quarticProbe 0 γ n) = 0 :=
  stageEnergy_quarticProbe_zero_horizontal γ n

/-- The exact sign witness is globally available. -/
theorem sign_witness_control :
    QuarticSignOrientationWitness :=
  quarticSignOrientationWitness

/-- A positive exact +witnessTrace orientation at unit displacement is impossible. -/
theorem no_positive_exact_orientation_at_unit :
    ¬ ∃ (w : ℝ) (n : ℕ), 0 < w ∧
      stageEnergy (canonicalStage n) (quarticProbe 1 0 n) =
        w * GRWTSK.Polynomial.ConjugateQuartic.witnessTrace 1 0 := by
  rintro ⟨w, n, hw, h⟩
  have hz := exact_positive_orientation_forces_horizontal_zero hw h
  norm_num at hz

/-- The stage remains source-fixed despite zero-parameterized probes. -/
theorem stage_source_fixed (n : ℕ) :
    canonicalStage n =
      GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentAtomStage.squareAtomStage (n + 2) :=
  rfl

/-- The first three phases remain the fixed triangle. -/
theorem triangle_remains_three :
    Nat.card GRWTSK.Geometry.ThreePlusOne.TrianglePhase = 3 := by
  norm_num [GRWTSK.Geometry.ThreePlusOne.TrianglePhase]

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalQuarticProbe.Checks
