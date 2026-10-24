# Complete source: GRWTSK.Algebra.UniversalAlgebra.Module.Variantee2ff7a0311ff44280c3c06bf6710a175beaf04f490498b079897e815acc06be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ce9e2b9e16096fcda9e190c8364200fdbac4ea5` · SHA-256 `ee2ff7a0311ff44280c3c06bf6710a175beaf04f490498b079897e815acc06be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Algebra.Rat
import Mathlib.Data.Complex.Module

-- Test that the `SMul ℚ ℂ` instance is correct.
example : (Complex.SMul.instSMulRealComplex : SMul ℚ ℂ) = (Algebra.toSMul : SMul ℚ ℂ) := by
  with_reducible_and_instances rfl
```
