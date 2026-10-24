# Complete source: GRWTSK.Analysis.Convolution.CompactProfileDifferentialMoments

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0555bde7a08a8c69773fd92e064ccaa17befc691` · SHA-256 `969b1dc8d12cc291db311d5093ddcc0da75724bf3cadd57a7daa9ecbde1566a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Convolution.CompactProfileFirstPoleMoment
import GRWTSK.Analysis.Convolution.CompactProfileHigherDerivatives
import GRWTSK.Analysis.Integration.CompactWeightedDerivativeMoments

/-!
# The actual correlation differential expression's two moments

Uses the existing actual zeroth correlation pole identity
through its proved native normalization equality and the new full first moment.
Only the actual C2 correlation is used; the source is not assumed C-infinity.
Generic weighted integration by parts retains the genuine regularity and
endpoint hypotheses. No exp/log Jacobian, discrete kernel price or native budget
is supplied by this moment identity.
-/

namespace GRWTSK.Analysis.Convolution.CompactProfileDifferentialMoments

open MeasureTheory
open GRWTSK.ProofHorizon.CorkscrewChamberCap
open ArithmeticSupplier SourceRegularity SourceHigherRegularity
open GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

noncomputable section

/-- Both genuine weighted integrabilities and both moments of the literal expression. -/
theorem actual_differential_moments_zero {A : ℝ} (hA : 1 ≤ A) :
    Integrable (fun x : ℝ ↦ Real.exp ((1 / 2 : ℝ) * x) *
      (deriv (deriv (correlation A)) x - (1 / 2 : ℝ) * deriv (correlation A) x)) ∧
    Integrable (fun x : ℝ ↦ x * Real.exp ((1 / 2 : ℝ) * x) *
      (deriv (deriv (correlation A)) x - (1 / 2 : ℝ) * deriv (correlation A) x)) ∧
    (∫ x : ℝ, Real.exp ((1 / 2 : ℝ) * x) *
      (deriv (deriv (correlation A)) x - (1 / 2 : ℝ) * deriv (correlation A) x)) = 0 ∧
    (∫ x : ℝ, x * Real.exp ((1 / 2 : ℝ) * x) *
      (deriv (deriv (correlation A)) x - (1 / 2 : ℝ) * deriv (correlation A) x)) = 0 := by
  have positive : 0 < A := by linarith
  have zero : (∫ x : ℝ, Real.exp ((1 / 2 : ℝ) * x) * correlation A x) = 0 := by
    rw [correlation_eq_native positive]
    exact CorrelationMoment.full_correlation_moment_zero A hA
  have firstZero : (∫ x : ℝ, x * Real.exp ((1 / 2 : ℝ) * x) * correlation A x) = 0 :=
    CompactProfileFirstPoleMoment.first_pole_correlation_integral_zero positive (by norm_num)
  exact GRWTSK.Analysis.Integration.CompactWeightedDerivativeMoments.differential_moments_zero
    (correlation_contDiff_two positive) (correlation_hasCompactSupport positive)
    (1 / 2) (1 / 2) zero firstZero

end

end GRWTSK.Analysis.Convolution.CompactProfileDifferentialMoments
```
