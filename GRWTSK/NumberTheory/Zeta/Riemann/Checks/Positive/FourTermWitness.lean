/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.PowerTaylor
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFourTermWitness

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.FourTermWitnessChecks

open CriticalStripHeightDescent

example : |Real.log (3 / 2 : ℝ) - 152 / 375| ≤ 1 / 6250 :=
  FourTermWitness.log_three_halves_enclosed

example : |Real.log (3 : ℝ) - 11104 / 10125| ≤ 1331 / 506250 :=
  FourTermWitness.log_three_enclosed

example : |Real.log (4 : ℝ) - 112 / 81| ≤ 2 / 405 :=
  FourTermWitness.log_four_enclosed

-- The complete finite record is constructed, not an assumption of this fixture.
example : FinitePowerEnclosure 4 FourTermWitness.center := FourTermWitness.enclosure

example : FourTermWitness.enclosure.endpoint_error = (1 / 16 : ℝ) := rfl

example : FourTermWitness.enclosure.sourceError (1 / 2) ≤ (53 / 128 : ℝ) :=
  FourTermWitness.source_error_le

example : SampleVariationPatch poleNormalizedZeta FourTermWitness.disk :=
  FourTermWitness.patch

example : FiniteVariationCover poleNormalizedZeta FourTermWitness.disk :=
  FourTermWitness.cover

example : FourTermWitness.cover.count = 1 := rfl

example : FourTermWitness.disk.Nonempty :=
  ⟨FourTermWitness.center, by norm_num [FourTermWitness.disk]⟩

example {z : ℂ} (hz : z ∈ FourTermWitness.disk) :
    (127 / 512 : ℝ) ≤ ‖poleNormalizedZeta z‖ := FourTermWitness.norm_lower_on_disk hz

example : NoTargetZero FourTermWitness.disk := FourTermWitness.noTargetZero_disk

example {z : ℂ} (hz : z ∈ FourTermWitness.disk) : (1 / 16 : ℝ) < z.im :=
  FourTermWitness.disk_above_old_seed hz

-- This regression intentionally states a DISK theorem, not WindowRH 1 or RH.
example : (53 / 128 : ℝ) + 45 * (1 / 512) < 3 / 4 := by norm_num

-- Rounding cannot be omitted from the represented budget, nor may the final
-- base-four power be reused without multiplying its endpoint error by four.
example : 4 * (1 / 64 : ℝ) = 1 / 16 := by norm_num
example : ¬ (4 * (1 / 64 : ℝ) ≤ 1 / 64) := by norm_num

end GRWTSK.RiemannHypothesis.Checks.FourTermWitnessChecks
