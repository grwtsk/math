# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Conj.Variantc0ec11aa032ce9c72ae4c8a04022ff251189f9f3324b89c2ad2f54e250343c5a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b45f6900437ababe5c051bb38c138a739fad8c7d` · SHA-256 `c0ec11aa032ce9c72ae4c8a04022ff251189f9f3324b89c2ad2f54e250343c5a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.NumberTheory.LSeries.Nonvanishing

open Complex MeasureTheory Set
open scoped ComplexConjugate

example (s : ℂ) : completedRiemannZeta₀ (conj s) = conj (completedRiemannZeta₀ s) := by
  unfold completedRiemannZeta₀ HurwitzZeta.completedHurwitzZetaEven₀ WeakFEPair.Λ₀ mellin
  rw [map_div₀, map_ofNat, ← integral_conj]
  congr 1
  refine setIntegral_congr_fun measurableSet_Ioi fun x hx => ?_
  simp only [smul_eq_mul, map_mul]
  congr 1
  · rw [cpow_def_of_ne_zero (ofReal_ne_zero.mpr (ne_of_gt hx)),
      cpow_def_of_ne_zero (ofReal_ne_zero.mpr (ne_of_gt hx)), ← exp_conj, map_mul,
      ← ofReal_log (le_of_lt hx)]
    simp
  · simp [WeakFEPair.f_modif, HurwitzZeta.hurwitzEvenFEPair]
```
