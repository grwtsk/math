# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LimitKernel.Variantb83599df867602a29b84f859c8cb27ad7f1a5ba1ec849bd6e5cab4de595ed281

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `181e63204d6f94c2d4806de44d359798a6c7abf8` · SHA-256 `b83599df867602a29b84f859c8cb27ad7f1a5ba1ec849bd6e5cab4de595ed281`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Boundary.LimitCoupling

/-!
# Direct-or-coupling limit kernel
-/

namespace Mathematics.StratifiedBoundary

inductive LimitKernelSource
  | directConstruction
  | compatibleCouplings
deriving DecidableEq, Repr

structure ContractiveProjectiveLimitKernel
    (Kernel Measure : Type u) where
  source : LimitKernelSource
  sourceCertificateRef : String
  kernel : Kernel
  applyKernel : Kernel → Measure → Measure
  distance : Measure → Measure → Nat
  contractionNumerator : Nat
  contractionDenominator : Nat
  contractionStrict :
    contractionNumerator < contractionDenominator
  contractive :
    ∀ left right,
      contractionDenominator *
          distance
            (applyKernel kernel left)
            (applyKernel kernel right) ≤
        contractionNumerator * distance left right

theorem projective_limit_kernel_contractive
    {Kernel Measure : Type u}
    (certificate :
      ContractiveProjectiveLimitKernel Kernel Measure)
    (left right : Measure) :
    certificate.contractionDenominator *
        certificate.distance
          (certificate.applyKernel certificate.kernel left)
          (certificate.applyKernel certificate.kernel right) ≤
      certificate.contractionNumerator *
        certificate.distance left right :=
  certificate.contractive left right

end Mathematics.StratifiedBoundary
```
