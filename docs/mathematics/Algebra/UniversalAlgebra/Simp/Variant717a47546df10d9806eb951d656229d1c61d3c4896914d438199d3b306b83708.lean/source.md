# Complete source: GRWTSK.Algebra.UniversalAlgebra.Simp.Variant717a47546df10d9806eb951d656229d1c61d3c4896914d438199d3b306b83708

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84afd0e85f40bc205b4614a71ac8541b323539bd` · SHA-256 `717a47546df10d9806eb951d656229d1c61d3c4896914d438199d3b306b83708`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Algebra.Pi
import Mathlib.Algebra.Algebra.Defs

/-!
Tests for the behavior of `simp`.
-/

/- Taken from [Zulip](https://leanprover.zulipchat.com/#narrow/stream/270676-lean4/
  topic/simp.20.5BX.5D.20fails.2C.20rw.20.5BX.5D.20works) -/
-- Example 1: succeeds
example {α R : Type*} [CommRing R] (f : α → R) (r : R) (a : α) :
    (r • f) a = r • (f a) := by
  simp only [Pi.smul_apply] -- succeeds

-- Example 2: used to fail, now succeeds!
example {α R : Type*} [CommRing R] (f : α → R) (r : R) (a : α) :
    (r • f) a = r • (f a) := by
  let _ : SMul R R := SMulZeroClass.toSMul
  simp only [Pi.smul_apply]
```
