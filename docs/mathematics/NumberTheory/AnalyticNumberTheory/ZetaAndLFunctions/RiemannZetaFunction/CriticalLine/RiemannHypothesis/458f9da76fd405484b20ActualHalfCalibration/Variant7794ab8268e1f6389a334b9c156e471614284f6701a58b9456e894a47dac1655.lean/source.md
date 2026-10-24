# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.458f9da76fd405484b20ActualHalfCalibration.Variant7794ab8268e1f6389a334b9c156e471614284f6701a58b9456e894a47dac1655

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41e79d9f94f6194fac16985567b93bf25efb5180` · SHA-256 `7794ab8268e1f6389a334b9c156e471614284f6701a58b9456e894a47dac1655`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy
import Mathlib.Analysis.SpecificLimits.Basic

/-!
The actual continuous half in optional issue #327 has an exact rational value.
This packet calibrates that value without a new improper-integral premise.
It supplies no centered Mangoldt or signed-work witness.
Mathematical direction: grwtsk contributors. Lean construction: OpenAI Codex.
-/
set_option autoImplicit false
namespace ContinuousResearch.ActualHalfCalibration
open Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
noncomputable section

theorem half_error_exact {A : ℝ} (hA : 1 ≤ A) :
    criticalContinuousMoment A + 2 =
      (272 * A ^ 2 + 14688) / (7 * A ^ 4 + 272 * A ^ 2 + 7344) := by
  rw [criticalContinuousMoment_eq_rational hA]
  have hd : 7 * A ^ 4 + 272 * A ^ 2 + 7344 ≠ 0 := by positivity
  field_simp
  ring

theorem half_error_pos {A : ℝ} (hA : 1 ≤ A) :
    0 < criticalContinuousMoment A + 2 := by
  rw [half_error_exact hA]
  positivity

theorem half_scaled_error_lt {A : ℝ} (hA : 1 ≤ A) :
    A ^ 2 * (criticalContinuousMoment A + 2) < 81 / 2 := by
  rw [half_error_exact hA]
  have hd : 0 < 7 * A ^ 4 + 272 * A ^ 2 + 7344 := by positivity
  rw [← mul_div_assoc, div_lt_iff₀ hd]
  have hs := sq_nonneg (23 * A ^ 2 - 3672)
  nlinarith [sq_nonneg A]

theorem half_error_lt {A : ℝ} (hA : 1 ≤ A) :
    criticalContinuousMoment A + 2 < (81 / 2) / A ^ 2 := by
  have hp : 0 < A := by linarith
  apply (lt_div_iff₀ (sq_pos_of_pos hp)).2
  simpa only [mul_comm] using half_scaled_error_lt hA

theorem half_error_abs_lt {A : ℝ} (hA : 1 ≤ A) :
    |criticalContinuousMoment A + 2| < (81 / 2) / A ^ 2 := by
  rw [abs_of_pos (half_error_pos hA)]
  exact half_error_lt hA

#check half_error_exact
#print axioms half_error_exact
#check half_error_pos
#print axioms half_error_pos
#check half_scaled_error_lt
#print axioms half_scaled_error_lt
#check half_error_lt
#print axioms half_error_lt
#check half_error_abs_lt
#print axioms half_error_abs_lt
end
end ContinuousResearch.ActualHalfCalibration
```
