# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LimitCoupling.Variantee0d5f609a511804ac8c42201545f89b4da123a11841f6a71097d5fe9e72b568

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4ec4f9b60a8ff829b9ce3c29df07cb8306030cd` · SHA-256 `ee0d5f609a511804ac8c42201545f89b4da123a11841f6a71097d5fe9e72b568`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Compatible coupling construction

Finite marginal contraction does not construct this certificate.  Either this
coupling object or a separate direct construction is required.
-/

namespace Mathematics.StratifiedBoundary

structure CompatibleLimitCoupling
    (FiniteKernel LimitKernel : Type u) where
  finiteKernel : Nat → FiniteKernel
  projectivelyCompatible : Prop
  compatibilityProof : projectivelyCompatible
  limitKernel : LimitKernel
  constructionValid : Prop
  constructionProof : constructionValid
  compatibilityProofRef : String
  limitKernelConstructionRef : String

theorem compatible_couplings_construct_limit_kernel
    {FiniteKernel LimitKernel : Type u}
    (certificate :
      CompatibleLimitCoupling FiniteKernel LimitKernel) :
    ∃ kernel : LimitKernel,
      kernel = certificate.limitKernel ∧
        certificate.constructionValid :=
  ⟨certificate.limitKernel, rfl, certificate.constructionProof⟩

end Mathematics.StratifiedBoundary
```
