# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TraceExtension.Variant57d551bb8936d7f0e9ae8c95d97f09ed3b519dbce71d3cfc8d9dcb657b050ca4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f1f95aa7bc820d08a33d0a05b06642e260d5b0e` · SHA-256 `57d551bb8936d7f0e9ae8c95d97f09ed3b519dbce71d3cfc8d9dcb657b050ca4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Trace.CylinderTrace

/-!
# Optional completed trace extension

The cylinder trace exists independently.  Extension requires an explicit norm,
boundedness, density, and uniqueness certificate.
-/

namespace Mathematics.StratifiedBoundary

structure CylinderTraceExtensionCertificate
    (Cylinder Completed Value : Type u) where
  embed : Cylinder → Completed
  cylinderTrace : Cylinder → Value
  extension : Completed → Value
  completionNormRef : String
  boundednessProofRef : String
  densityProofRef : String
  restricts :
    ∀ cylinder,
      extension (embed cylinder) = cylinderTrace cylinder
  unique :
    ∀ candidate : Completed → Value,
      (∀ cylinder,
        candidate (embed cylinder) = cylinderTrace cylinder) →
      candidate = extension

theorem cylinder_trace_extension_unique
    {Cylinder Completed Value : Type u}
    (certificate :
      CylinderTraceExtensionCertificate
        Cylinder Completed Value)
    (candidate : Completed → Value)
    (restricts :
      ∀ cylinder,
        candidate (certificate.embed cylinder) =
          certificate.cylinderTrace cylinder) :
    candidate = certificate.extension :=
  certificate.unique candidate restricts

end Mathematics.StratifiedBoundary
```
