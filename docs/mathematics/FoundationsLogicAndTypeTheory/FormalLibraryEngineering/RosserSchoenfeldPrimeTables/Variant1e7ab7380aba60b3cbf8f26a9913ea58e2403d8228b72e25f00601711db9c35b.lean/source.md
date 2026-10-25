# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RosserSchoenfeldPrimeTables.Variant1e7ab7380aba60b3cbf8f26a9913ea58e2403d8228b72e25f00601711db9c35b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `367e85a52cfab57c8f7b67a5762ef0ca01f300d3` · SHA-256 `1e7ab7380aba60b3cbf8f26a9913ea58e2403d8228b72e25f00601711db9c35b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic

/-
This file stores the numerical data for `RosserSchoenfeldPrime.lean`, as well as any purely numerical computations about that data.  This file should not import any other files from the PNT+ project, other than further numerical data files.  This is to avoid these computation-intensive files from having to be repeatedly compiled.

In general, data should be moved here once we require significant numerical calculations to be performed using that data.
-/


namespace RS_prime

/- This is the optimal constant in the inequality $\psi(x) \leq c_0 x$. -/

def c₀ : ℝ := 1.03883

end RS_prime
```
