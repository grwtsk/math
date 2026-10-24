# Complete source: GRWTSK.Analysis.IntegralTransforms.CompactProfileLogarithmicRegularity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3df198a1cf7b07f0df23f89fd32ebf643f8bea3` · SHA-256 `4c7017f373ac63b90812f43a4c00409177c5f699f0c48091986859e8c1ce3db5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Convolution.CompactProfileHigherDerivatives
import GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileRegularity

/-!
# Regularity at zero of the actual logarithmic correlation summand

The actual correlation is C4 and supplies a C2 differential
expression. Its literal lower support tail supplies a complete zero neighborhood
after logarithmic pullback, including all nonpositive arguments. This does not
assert C-infinity of the source, correlation or kernel, or an arithmetic budget.
-/

open scoped Topology

namespace GRWTSK.Analysis.IntegralTransforms.CompactProfileLogarithmicRegularity

open Filter Set
open GRWTSK.ProofHorizon.CorkscrewChamberCap
open ArithmeticSupplier SourceRegularity SourceHigherRegularity
open GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

noncomputable section

/-- Both actual derivatives vanish on the strict lower correlation support tail. -/
theorem correlation_derivatives_zero_left {A t : ℝ} (hA : 0 < A) (ht : t < -(2 * A)) :
    deriv (correlation A) t = 0 ∧ deriv (deriv (correlation A)) t = 0 := by
  have localZero : correlation A =ᶠ[𝓝 t] fun _ ↦ (0 : ℝ) := by
    filter_upwards [Iio_mem_nhds ht] with u hu
    rw [correlation_eq_native hA]
    exact CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs A u hA
      (by linarith [show u < -(2 * A) from hu, neg_le_abs u])
  have firstZero : deriv (correlation A) =ᶠ[𝓝 t] fun _ ↦ (0 : ℝ) := by
    filter_upwards [localZero.deriv] with u hu
    simpa using hu
  constructor
  · exact (hasDerivAt_const t (0 : ℝ)).congr_of_eventuallyEq localZero |>.deriv
  · exact (hasDerivAt_const t (0 : ℝ)).congr_of_eventuallyEq firstZero |>.deriv

/-- A complete lower zero half-line for the actual summand includes the singular point. -/
theorem actual_logarithmic_profile_zero_left {A t x : ℝ} (hA : 0 < A)
    (hx : x < Real.exp (-(2 * A) - t)) :
    Real.log x / Real.sqrt x * (deriv (deriv (correlation A)) (t + Real.log x) -
      (1 / 2 : ℝ) * deriv (correlation A) (t + Real.log x)) = 0 := by
  apply LogarithmicProfileRegularity.logarithmic_profile_zero_left
    (F := fun u : ℝ ↦ deriv (deriv (correlation A)) u -
      (1 / 2 : ℝ) * deriv (correlation A) u) (lo := -(2 * A)) (t := t) _ hx
  intro u hu
  obtain ⟨firstZero, secondZero⟩ := correlation_derivatives_zero_left hA hu
  rw [firstZero, secondZero]
  ring

/-- The literal logarithmic summand is globally C2 for every positive source scale. -/
theorem actual_logarithmic_profile_contDiff_two {A : ℝ} (hA : 0 < A) (t : ℝ) :
    ContDiff ℝ 2 (fun x : ℝ ↦ Real.log x / Real.sqrt x *
      (deriv (deriv (correlation A)) (t + Real.log x) -
        (1 / 2 : ℝ) * deriv (correlation A) (t + Real.log x))) := by
  have first : ContDiff ℝ 2 (deriv (correlation A)) :=
    (correlation_first_contDiff_three hA).of_le (by norm_num)
  have profile : ContDiff ℝ 2 (fun u : ℝ ↦ deriv (deriv (correlation A)) u -
      (1 / 2 : ℝ) * deriv (correlation A) u) :=
    (correlation_second_contDiff_two hA).sub (contDiff_const.mul first)
  apply LogarithmicProfileRegularity.logarithmic_profile_contDiff (lo := -(2 * A)) profile _ t
  intro u hu
  obtain ⟨firstZero, secondZero⟩ := correlation_derivatives_zero_left hA hu
  rw [firstZero, secondZero]
  ring

end

end GRWTSK.Analysis.IntegralTransforms.CompactProfileLogarithmicRegularity
```
