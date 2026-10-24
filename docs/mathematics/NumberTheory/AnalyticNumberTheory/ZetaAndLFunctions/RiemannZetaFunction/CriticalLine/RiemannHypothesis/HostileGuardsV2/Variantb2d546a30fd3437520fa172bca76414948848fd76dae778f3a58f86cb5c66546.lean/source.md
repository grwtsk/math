# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HostileGuardsV2.Variantb2d546a30fd3437520fa172bca76414948848fd76dae778f3a58f86cb5c66546

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `75080c7a2ba20adbd26abdf8513aa38c8b577d18` · SHA-256 `b2d546a30fd3437520fa172bca76414948848fd76dae778f3a58f86cb5c66546`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceHigherPrimePowerStorage

-- The omitted-cube source fixture is below the residual consumer scope.
example : Real.log (8 : ℝ) / 4 < 1 := by
  have h : Real.log (2 : ℝ) < 1 := by
    have hh := Real.log_lt_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
      (by norm_num : (2 : ℝ) ≠ 1)
    norm_num at hh
    exact hh
  have hlog : Real.log (8 : ℝ) = 3 * Real.log 2 := by
    convert Real.log_pow (2 : ℝ) 3 using 1 <;> norm_num
  rw [hlog]
  linarith

-- Unit-source full storage cannot be replaced by the visible square sum alone.
example {A : ℝ} (hA : 0 < A) :
    FormalResearch.RiemannHypothesis.SourceHigherPrimePowerStorage.higherSourceStorage A =
      FormalResearch.RiemannHypothesis.SourceHigherPrimePowerStorage.higherVisibleStorage A +
        (FormalResearch.RiemannHypothesis.SourceHigherPrimePowerCoefficients.higherBaseline -
          FormalResearch.RiemannHypothesis.SourceHigherPrimePowerStorage.higherVisibleBaseline A) :=
  FormalResearch.RiemannHypothesis.SourceHigherPrimePowerStorage.higherSourceStorage_padding hA
```
