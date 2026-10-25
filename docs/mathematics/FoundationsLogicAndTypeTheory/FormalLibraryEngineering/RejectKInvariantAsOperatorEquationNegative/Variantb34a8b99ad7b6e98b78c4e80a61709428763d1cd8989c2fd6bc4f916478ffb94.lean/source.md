# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectKInvariantAsOperatorEquationNegative.Variantb34a8b99ad7b6e98b78c4e80a61709428763d1cd8989c2fd6bc4f916478ffb94

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f45778feabf2e17425ac71b95bb4a4a4358a3d6d` · SHA-256 `b34a8b99ad7b6e98b78c4e80a61709428763d1cd8989c2fd6bc4f916478ffb94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.LinearAlgebra.FramedFiberPort
universe u v w m n
variable {R : Type u} [Ring R]
variable {E : Type v} [AddCommGroup E] [Module R E]
variable {F : Type w} [AddCommGroup F] [Module R F]
variable {M : Type m} [CommMonoid M] {N : Type n} [CommMonoid N]
variable {D : E →ₗ[R] E} {D' : F →ₗ[R] F}
-- Hostile mutation: equality of the K-channel cannot discharge the operator residual.
example (P : StableKOperatorPort D D' M N)
    (h : P.kZeroMap = P.kZeroMap) : P.IsExact := by
  exact h
```
