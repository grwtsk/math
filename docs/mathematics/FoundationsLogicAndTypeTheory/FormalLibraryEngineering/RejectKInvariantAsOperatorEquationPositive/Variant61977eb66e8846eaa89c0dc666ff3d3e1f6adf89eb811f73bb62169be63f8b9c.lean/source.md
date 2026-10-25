# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectKInvariantAsOperatorEquationPositive.Variant61977eb66e8846eaa89c0dc666ff3d3e1f6adf89eb811f73bb62169be63f8b9c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4265d1e31d144b4b548bd4aab626342070ac1c49` · SHA-256 `61977eb66e8846eaa89c0dc666ff3d3e1f6adf89eb811f73bb62169be63f8b9c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.LinearAlgebra.FramedFiberPort
universe u v w m n
variable {R : Type u} [Ring R]
variable {E : Type v} [AddCommGroup E] [Module R E]
variable {F : Type w} [AddCommGroup F] [Module R F]
variable {M : Type m} [CommMonoid M] {N : Type n} [CommMonoid N]
variable {D : E →ₗ[R] E} {D' : F →ₗ[R] F}
-- The independent K-channel remains present; exact operator intertwining discharges the defect.
example (P : StableKOperatorPort D D' M N)
    (h : Intertwines P.linearPort D D') : P.IsExact := by
  exact (intertwines_iff_defect_eq_zero P.linearPort D D').mp h
```
