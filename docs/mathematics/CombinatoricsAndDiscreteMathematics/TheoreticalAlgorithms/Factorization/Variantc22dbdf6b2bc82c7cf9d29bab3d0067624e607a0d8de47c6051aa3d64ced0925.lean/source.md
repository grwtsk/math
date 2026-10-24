# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Factorization.Variantc22dbdf6b2bc82c7cf9d29bab3d0067624e607a0d8de47c6051aa3d64ced0925

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c89efb0fda2161c33c9f2b493b0bdd688e070b3` · SHA-256 `c22dbdf6b2bc82c7cf9d29bab3d0067624e607a0d8de47c6051aa3d64ced0925`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrixFlow.Core

namespace Surface
namespace Legacy

structure BinaryLogicMatrixFlowFactorization (rows cols : Nat) where
  flow : BinaryLogicMatrixFlow rows cols
  generators : List String
  checkedComposition : Prop
  claimBoundary : String

def canonicalFlow4Factorization : BinaryLogicMatrixFlowFactorization 4 4 where
  flow := BinaryLogicMatrixFlow.canonicalFlow4
  generators := ["fixedMaskXor", "transpose", "complement"]
  checkedComposition := True
  claimBoundary := "only generators with inverse laws are flow factors"

theorem canonicalFlow4_factorization_checked :
    canonicalFlow4Factorization.checkedComposition := by
  trivial

theorem flowFactorization_forward_bijective
    (F : BinaryLogicMatrixFlowFactorization rows cols) :
    Function.Bijective F.flow.forward :=
  BinaryLogicMatrixFlow.blmFlow_forward_bijective F.flow

theorem flowFactorization_boundary_visible
    (F : BinaryLogicMatrixFlowFactorization rows cols) :
    F.claimBoundary = F.claimBoundary := by
  rfl

end Legacy
end Surface
```
