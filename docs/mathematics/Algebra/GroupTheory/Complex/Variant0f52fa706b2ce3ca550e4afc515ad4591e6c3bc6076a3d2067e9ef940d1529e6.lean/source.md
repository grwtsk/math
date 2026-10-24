# Complete source: GRWTSK.Algebra.GroupTheory.Complex.Variant0f52fa706b2ce3ca550e4afc515ad4591e6c3bc6076a3d2067e9ef940d1529e6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6eaf40da1bbb478b3fec0aaa735504248f04674` · SHA-256 `0f52fa706b2ce3ca550e4afc515ad4591e6c3bc6076a3d2067e9ef940d1529e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.SemanticIdentity
import Mathlib.Algebra.Group.Hom.Basic

/-! # Dimension-explicit cubical chain complexes -/

namespace Mathematics.Cubical

universe u

/-- A concrete complex must provide the fixed predicate `∂ (∂ c) = 0`. -/
structure Complex (Chain : Type u) [AddCommMonoid Chain] where
  dimension : Nat
  boundary : Chain →+ Chain
  boundary_squared_zero : ∀ chain, boundary (boundary chain) = 0

theorem boundary_squared_zero
    {Chain : Type u} [AddCommMonoid Chain]
    (complex : Complex Chain)
    (chain : Chain) :
    complex.boundary (complex.boundary chain) = 0 :=
  complex.boundary_squared_zero chain

end Mathematics.Cubical
```
