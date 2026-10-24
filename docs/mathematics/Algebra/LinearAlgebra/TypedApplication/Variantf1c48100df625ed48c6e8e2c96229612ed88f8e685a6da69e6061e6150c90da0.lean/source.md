# Complete source: GRWTSK.Algebra.LinearAlgebra.TypedApplication.Variantf1c48100df625ed48c6e8e2c96229612ed88f8e685a6da69e6061e6150c90da0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a33161a97afffa20cda88d7f1fad11cc6604515` · SHA-256 `f1c48100df625ed48c6e8e2c96229612ed88f8e685a6da69e6061e6150c90da0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BooleanMatrix.Application.Core
import BooleanMatrix.Format

/-!
# Format-preserving BooleanMatrix applications
-/

namespace BooleanMatrix

/--
An application carrying a proof that valid source matrices produce valid
target matrices.
-/
structure TypedApplication
    (source target : Format) where
  run : Application
  preserves :
    ∀ input,
      source.Valid input →
      target.Valid (run input)

namespace TypedApplication

/-- Typed identity application. -/
def identity
    (format : Format) :
    TypedApplication format format where
  run := Application.identity
  preserves := by
    intro input valid
    exact valid

/-- Typed sequential composition. -/
def comp
    {first second third : Format}
    (after : TypedApplication second third)
    (before : TypedApplication first second) :
    TypedApplication first third where
  run := Application.comp after.run before.run
  preserves := by
    intro input valid
    exact after.preserves
      (before.run input)
      (before.preserves input valid)

end TypedApplication
end BooleanMatrix
```
