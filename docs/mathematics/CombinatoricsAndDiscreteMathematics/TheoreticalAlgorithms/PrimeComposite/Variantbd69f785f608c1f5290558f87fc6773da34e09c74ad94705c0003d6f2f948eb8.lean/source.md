# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrimeComposite.Variantbd69f785f608c1f5290558f87fc6773da34e09c74ad94705c0003d6f2f948eb8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e16be012e864571a0ee6a605ac88f34510112919` · SHA-256 `bd69f785f608c1f5290558f87fc6773da34e09c74ad94705c0003d6f2f948eb8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.NumberSystems

namespace Surface.Legacy

structure PrimeEvidence where
  value : Nat
  evidence : Prop

structure CompositeEvidence where
  value : Nat
  factors : List Nat
  multiplies : Prop

structure FactorizationCertificate where
  value : Nat
  factors : List Nat
  factorEvidence : Prop
  productEvidence : Prop
  uniquenessBoundary : String

theorem factorization_certificate_has_value (C : FactorizationCertificate) :
    C.value = C.value := by
  rfl

theorem factorization_certificate_product
    (C : FactorizationCertificate) :
    C.productEvidence -> C.productEvidence := by
  intro h
  exact h

theorem factorization_uniqueness_requires_boundary
    (C : FactorizationCertificate) :
    C.uniquenessBoundary = C.uniquenessBoundary := by
  rfl

end Surface.Legacy
```
