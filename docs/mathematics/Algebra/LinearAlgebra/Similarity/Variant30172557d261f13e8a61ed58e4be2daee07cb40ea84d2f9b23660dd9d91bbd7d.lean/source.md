# Complete source: GRWTSK.Algebra.LinearAlgebra.Similarity.Variant30172557d261f13e8a61ed58e4be2daee07cb40ea84d2f9b23660dd9d91bbd7d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a7491d99e9c0c4a82e4ad9a97b69cfb137c9fc5` · SHA-256 `30172557d261f13e8a61ed58e4be2daee07cb40ea84d2f9b23660dd9d91bbd7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Token

namespace Surface.Legacy

structure MatrixSimilarity where
  numerator : Nat
  denominator : Nat
  denominator_pos : 0 < denominator
  bounded : numerator ≤ denominator

def similarityValue (s : MatrixSimilarity) : Rat :=
  (s.numerator : Rat) / (s.denominator : Rat)

def similarityGE
    (s : MatrixSimilarity)
    (threshold : Rat) : Prop :=
  threshold ≤ similarityValue s

inductive SimilarityMode
| supportJaccard
| normalizedHammingComplement
| factorOverlap
| spectralKernelOverlap
| declaredCustomExact
deriving DecidableEq, Repr

structure SimilarityThreshold where
  value : Rat
  lowerBound : 0 ≤ value
  upperBound : value ≤ 1

theorem matrixSimilarity_denominator_ne_zero
    (s : MatrixSimilarity) :
    s.denominator ≠ 0 := by
  exact Nat.ne_of_gt s.denominator_pos

theorem matrixSimilarity_operational_boundary
    (s : MatrixSimilarity) :
    s.numerator ≤ s.denominator := by
  exact s.bounded

end Surface.Legacy
```
