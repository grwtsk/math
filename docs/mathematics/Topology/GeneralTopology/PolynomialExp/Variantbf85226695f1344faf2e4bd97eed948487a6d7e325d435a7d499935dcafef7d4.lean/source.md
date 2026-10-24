# Complete source: GRWTSK.Topology.GeneralTopology.PolynomialExp.Variantbf85226695f1344faf2e4bd97eed948487a6d7e325d435a7d499935dcafef7d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a471bc1af114200128ca11724ee5d5fb89354f4` · SHA-256 `bf85226695f1344faf2e4bd97eed948487a6d7e325d435a7d499935dcafef7d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.SpecialFunctions.Exp

/-!
# Limits of `P(x) / e ^ x` for a polynomial `P`

In this file we prove that $\lim_{x\to\infty}\frac{P(x)}{e^x}=0$ for any polynomial `P`.

## TODO

Add more similar lemmas: limit at `-∞`, versions with $e^{cx}$ etc.

## Keywords

polynomial, limit, exponential
-/

open Filter Topology Real

namespace Polynomial

theorem tendsto_div_exp_atTop (p : ℝ[X]) : Tendsto (fun x ↦ p.eval x / exp x) atTop (𝓝 0) := by
  induction p using Polynomial.induction_on' with
  | monomial n c => simpa [exp_neg, div_eq_mul_inv, mul_assoc]
    using tendsto_const_nhds.mul (tendsto_pow_mul_exp_neg_atTop_nhds_zero n)
  | add p q hp hq => simpa [add_div] using hp.add hq

end Polynomial
```
