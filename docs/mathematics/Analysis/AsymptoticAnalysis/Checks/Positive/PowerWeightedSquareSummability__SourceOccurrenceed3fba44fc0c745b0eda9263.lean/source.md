# Complete source: GRWTSK.Analysis.Asymptotics.Checks.Positive.PowerWeightedSquareSummability

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `471dc5e287c20510bdcda142f2e7ec70ec4d0565` · SHA-256 `2c920b608eddf49a9744e82159be6823fab7fd629e63fe73b2e3c1ab7363c08d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.AsymptoticAnalysis.PowerWeightedSquareSummability

open GRWTSK.Analysis.Asymptotics.PowerWeightedSquareSummability

example (f : ℕ → ℝ) {C α q : ℝ}
    (hf0 : f 0 = 0)
    (hf : ∀ n : ℕ, 1 ≤ n → |f n| ≤ C * (n : ℝ) ^ α)
    (hexp : 2 * α - q < -1) :
    Summable (fun n : ℕ => f n ^ 2 * (n : ℝ) ^ (-q)) :=
  summable_sq_mul_rpow_of_abs_le_rpow f hf0 hf hexp

#print axioms GRWTSK.Analysis.Asymptotics.PowerWeightedSquareSummability.summable_sq_mul_rpow_of_abs_le_rpow
```
