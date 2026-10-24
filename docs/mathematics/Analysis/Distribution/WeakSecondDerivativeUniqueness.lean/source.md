# Complete source: GRWTSK.Analysis.Distribution.WeakSecondDerivativeUniqueness

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b11b6ce451baf386e668a95fa76477041e3c3fd9` · SHA-256 `d984b63ed0d37cd601c3cef336a7a4116bda8f357059f02969a552af217207bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Distribution.CompactProfileDilation
import Mathlib.Analysis.Distribution.AEEqOfIntegralContDiff

/-!
# Uniqueness of the prescribed weak second derivative

Smooth compact tests identify locally integrable representatives almost
everywhere. This supplies uniqueness in the exact sense of the source interface;
it does not identify arbitrary pointwise representatives or an arithmetic budget.

Research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceUniqueness

open MeasureTheory
open GRWTSK.RiemannHypothesis.SourcePairing
open SourceResidual SourceDilation

noncomputable section

theorem weak_second_derivative_ae_unique {f g h : ℝ → ℝ}
    (hg : IsWeakSecondDerivative f g) (hh : IsWeakSecondDerivative f h) :
    g =ᵐ[volume] h := by
  apply ae_eq_of_integral_contDiff_smul_eq hg.2.1 hh.2.1
  intro η smooth compact
  have left := (hg.2.2 η smooth compact).2.2
  have right := (hh.2.2 η smooth compact).2.2
  simpa only [smul_eq_mul, mul_comm] using left.trans right.symm

theorem source_realization_unique : SourceRealizationUnique := by
  intro left right A hA
  exact weak_second_derivative_ae_unique
    (left.weak_second_derivative A hA) (right.weak_second_derivative A hA)

theorem realization_second_derivative_ae_eq (r : DilationRealization)
    {A : ℝ} (hA : 1 ≤ A) :
    r.secondDerivative A =ᵐ[volume] sourceSecond A :=
  weak_second_derivative_ae_unique (r.weak_second_derivative A hA)
    (actual_weak_second_derivative (by linarith : 0 < A))

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceUniqueness
```
