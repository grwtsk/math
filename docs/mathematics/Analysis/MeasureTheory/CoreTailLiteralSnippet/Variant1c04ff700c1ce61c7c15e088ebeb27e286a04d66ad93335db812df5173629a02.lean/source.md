# Complete source: GRWTSK.Analysis.MeasureTheory.CoreTailLiteralSnippet.Variant1c04ff700c1ce61c7c15e088ebeb27e286a04d66ad93335db812df5173629a02

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3fffd9da30d4cd6aac9968cc91b14626968b6435` · SHA-256 `1c04ff700c1ce61c7c15e088ebeb27e286a04d66ad93335db812df5173629a02`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
noncomputable section
open MeasureTheory Set Complex
open CoreTailSplitScratch
open FormalResearch.RiemannHypothesis.SourceComparison
open LogarithmicResidual LogarithmicResidualTail SourceWeightedMultiplier
open HalfLineExtension MobiusEndpointBudget MobiusPoleNumerator

variable (X : ℕ) (ε : ℝ) (hX : 1 ≤ X)

example : fullResidualVector X ε hX =
    ((logResidual_memLp X ε hX).toLp (logResidual X ε) : FullH) := rfl

example (Y : ℝ) : coreResidualVector X ε hX Y =
    (((logResidual_memLp X ε hX).indicator measurableSet_Icc).toLp
      ((Icc (0 : ℝ) (Real.log Y)).indicator (logResidual X ε)) : FullH) := rfl

example : fullResidualVector X ε hX =ᵐ[volume] logResidual X ε :=
  fullResidualVector_ae X ε hX

example (Y : ℝ) : coreResidualVector X ε hX Y =ᵐ[volume]
    (Icc (0 : ℝ) (Real.log Y)).indicator (logResidual X ε) :=
  coreResidualVector_ae X ε hX Y

example (Y : ℝ) (hY : 1 ≤ Y) : fullResidualVector X ε hX =
    ((logResidual_memLp X ε hX).indicator measurableSet_Iio).toLp
      ((Iio (0 : ℝ)).indicator (logResidual X ε)) + coreResidualVector X ε hX Y +
    ((logResidual_memLp X ε hX).indicator measurableSet_Ioi).toLp
      ((Ioi (Real.log Y)).indicator (logResidual X ε)) :=
  fullResidualVector_decomposition X ε hX Y hY

example (h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h)
    (Y : ℝ) (hY : 1 ≤ Y) :
    ‖sourceMultiplier ε h hε hsmall hh (fullResidualVector X ε hX)‖ ≤
      ‖sourceMultiplier ε h hε hsmall hh (coreResidualVector X ε hX Y)‖ +
        ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
          ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ +
        ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
          (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) / Real.sqrt Y :=
  filtered_full_norm_le_core_tails X ε hX h hε hsmall hh Y hY
end
```
