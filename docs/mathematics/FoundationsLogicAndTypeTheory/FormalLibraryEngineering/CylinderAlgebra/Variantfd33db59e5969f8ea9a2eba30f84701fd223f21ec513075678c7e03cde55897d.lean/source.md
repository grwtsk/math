# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CylinderAlgebra.Variantfd33db59e5969f8ea9a2eba30f84701fd223f21ec513075678c7e03cde55897d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16cf96fea657e8e1cfd82b4f35144c0ced4bcd8e` · SHA-256 `fd33db59e5969f8ea9a2eba30f84701fd223f21ec513075678c7e03cde55897d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Finite-stage cylinder observables

Every cylinder observable names a finite representing stage.
-/

namespace Mathematics.StratifiedBoundary

structure CylinderObservable (Observable : Type u) where
  stage : Nat
  observable : Observable
  finiteRepresentationRef : String

structure CylinderAlgebraPresentation
    (Observable : Type u) where
  sameObservable :
    CylinderObservable Observable →
      CylinderObservable Observable →
      Prop
  equivalenceCertificateRef : String
  noCompletedRuntimeObject : Bool := true
  noCompletedRuntimeObject_exact :
    noCompletedRuntimeObject = true

end Mathematics.StratifiedBoundary
```
