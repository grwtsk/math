# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualTiltProjectedDivergence.Variant4f301a5dcf4e3e51cf927d027a23a11896908ff8bd5fe727fdc1e1ec94e2af56

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4e5bce03aeea9a1e0aa0eb28ff65d5b3fc0e666` · SHA-256 `4f301a5dcf4e3e51cf927d027a23a11896908ff8bd5fe727fdc1e1ec94e2af56`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualTiltProjectedGrowth

/-!
The actual moving-height projected state has an unbounded retained norm.
The convergent arithmetic mass is a fixed positive coefficient, not a state
normalization or a bound on the complete signed readout.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualTiltProjectedDivergence
open Filter
open scoped Topology
open SourceActualTiltProjectedGrowth SourceActualTiltBandProjection
open SourceActualEulerCentralFrequency SourceActualRightBumpTail SourceActualBumpMovingHeight

private theorem right_mass_pos : 0 < actualRightLineMass (3 / 2) := by
  obtain ⟨A, hA, hh⟩ := (eventually_ge_atTop (1 : ℝ)).and
    actualTiltBandState_moving_energy_eventually_lower |>.exists
  have hp : 0 < actualCentralFrequencyConstant * Real.exp (2 * A) / A ^ 10 := by
    exact div_pos (mul_pos actualCentralFrequencyConstant_pos (Real.exp_pos _))
      (pow_pos (by linarith : 0 < A) _)
  have hm : 0 < actualRightLineMass (3 / 2) *
      ‖actualTiltBandState A (actualBumpMovingHeight A (3 / 2))‖ ^ 2 := hp.trans_le hh
  exact pos_of_mul_pos_left hm (sq_nonneg _)

/-- The true moving-height band norm square has a fixed positive exponential lower bound. -/
theorem actualTiltBandState_moving_norm_sq_eventually_lower :
    ∀ᶠ A : ℝ in atTop,
      (actualCentralFrequencyConstant / actualRightLineMass (3 / 2)) *
        Real.exp (2 * A) / A ^ 10 ≤
          ‖actualTiltBandState A (actualBumpMovingHeight A (3 / 2))‖ ^ 2 := by
  filter_upwards [actualTiltBandState_moving_energy_eventually_lower] with A hh
  have hd := (div_le_iff₀ right_mass_pos).2 (by simpa only [mul_comm] using hh)
  convert hd using 1 <;> ring

/-- The actual projected energy tends to infinity along all real scales. -/
theorem actualTiltBandState_moving_norm_sq_tendsto_atTop :
    Tendsto (fun A : ℝ => ‖actualTiltBandState A (actualBumpMovingHeight A (3 / 2))‖ ^ 2)
      atTop atTop := by
  have ht : Tendsto (fun A : ℝ => Real.exp (2 * A) / A ^ 10) atTop atTop := by
    apply tendsto_atTop_mono' atTop _ (Real.tendsto_exp_div_pow_atTop 10)
    filter_upwards [eventually_ge_atTop (0 : ℝ)] with A hA
    gcongr
    linarith
  have hk : 0 < actualCentralFrequencyConstant / actualRightLineMass (3 / 2) :=
    div_pos actualCentralFrequencyConstant_pos right_mass_pos
  have hh : Tendsto (fun A : ℝ =>
      (actualCentralFrequencyConstant / actualRightLineMass (3 / 2)) *
        Real.exp (2 * A) / A ^ 10) atTop atTop := by
    convert ht.const_mul_atTop hk using 1
    ext A
    ring
  exact tendsto_atTop_mono' atTop actualTiltBandState_moving_norm_sq_eventually_lower hh

end FormalResearch.RiemannHypothesis.SourceActualTiltProjectedDivergence
```
