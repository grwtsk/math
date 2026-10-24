# Complete source: GRWTSK.Algebra.LinearAlgebra.MorphismFactorization.Variant809022aa6516fb1c02276445dfbf44d8ebeb6d46a6d006c22647ab40e4315b91

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c92f1fc8b662e4d59c2b463c55bdc55e1b92ed87` · SHA-256 `809022aa6516fb1c02276445dfbf44d8ebeb6d46a6d006c22647ab40e4315b91`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Morphism

namespace Surface.Legacy

structure BinaryLogicMatrixMorphismFactorization
    (aRows aCols bRows bCols cRows cCols : Nat) where
  left : BinaryLogicMatrixMorphism aRows aCols bRows bCols
  right : BinaryLogicMatrixMorphism bRows bCols cRows cCols
  composite : BinaryLogicMatrixMorphism aRows aCols cRows cCols
  factorsComposite : Prop
  claimBoundary : String

theorem morphismFactorization_projects_certificate
    (F : BinaryLogicMatrixMorphismFactorization
      aRows aCols bRows bCols cRows cCols) :
    F.factorsComposite -> F.factorsComposite := by
  intro h
  exact h

theorem morphismFactorization_not_flow_claim
    (F : BinaryLogicMatrixMorphismFactorization
      aRows aCols bRows bCols cRows cCols) :
    F.claimBoundary = F.claimBoundary := by
  rfl

end Surface.Legacy
```
