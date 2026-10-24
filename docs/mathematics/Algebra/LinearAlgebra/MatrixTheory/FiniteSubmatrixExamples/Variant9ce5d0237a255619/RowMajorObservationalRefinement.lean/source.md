# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteSubmatrixExamples.Variant9ce5d0237a255619.RowMajorObservationalRefinement

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe8d6933319c8b6216ad800f50a4a62c9ce28447` · SHA-256 `bed46f9c732a534656a371d78214aa6521325ed89eea6e888f7e1bcfd72798a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
RowMajorObservationalRefinement — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 9ce5d0237a255619d4fe1f6fac7bc294492c30a6c2e282b50fe04e41d7421817
Organized SHA-256: 5fcdf0b66da4626f08445bc7e1212d83d8641f82765ce7ab14bf96415442d25f
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Full ArrayBacked reifications and complete ArrayBackedRefinement.replace retain all toMatrix equations. Observational equality and exact row-major locus membership do not establish raw array/proof-field equality, destructive update behavior or runtime performance. -/

import BitMatrix.Surgery.Submatrix
import BitMatrix.Network.IntegralPermutationLift

import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteSubmatrixExamples.Variant9ce5d0237a255619.NoncontiguousLocalReplacement
/-!
# Tests for exact binary submatrix surgery

The selected rows and columns are non-contiguous, so the examples exercise the
ordered global embeddings rather than a rectangular offset shortcut.
-/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteSubmatrixExamples.Variant9ce5d0237a255619

namespace BitMatrix.Tests.SubmatrixSurgery

open BitMatrix.Geometry
open BitMatrix.Surgery
open BitMatrix.Surgery.SubmatrixSurgery

/-! ## Row-major runtime refinement -/

def sampleMatrixArrayBacked : BitMatrix.ArrayBacked 3 4 :=
  BitMatrix.ArrayBacked.ofMatrix sampleMatrix

def replacementArrayBacked :
    BitMatrix.ArrayBacked sampleLocus.rows.card sampleLocus.columns.card :=
  BitMatrix.ArrayBacked.ofMatrix replacement

def sampleRuntimeSurgery :
    BitMatrix.Surgery.ArrayBackedRefinement sampleMatrixArrayBacked sampleLocus :=
  BitMatrix.Surgery.ArrayBackedRefinement.replace
    sampleMatrixArrayBacked sampleLocus replacementArrayBacked

example : sampleMatrixArrayBacked.toMatrix = sampleMatrix := by simp [sampleMatrixArrayBacked]

example : replacementArrayBacked.toMatrix = replacement := by simp [replacementArrayBacked]

example :
    sampleRuntimeSurgery.result.toMatrix = sampleSurgery.result := by
  calc
    sampleRuntimeSurgery.result.toMatrix =
        BitMatrix.implantSubmatrix sampleMatrixArrayBacked.toMatrix sampleLocus
          replacementArrayBacked.toMatrix := by
      simp [sampleRuntimeSurgery,
        BitMatrix.Surgery.ArrayBackedRefinement.replace_result_refines
          sampleMatrixArrayBacked sampleLocus replacementArrayBacked]
    _ = BitMatrix.implantSubmatrix sampleMatrix sampleLocus replacement := by
      simp [sampleMatrixArrayBacked, replacementArrayBacked]
    _ = sampleSurgery.result := sampleSurgery.result_spec.symm

example :
    BitMatrix.ArrayBacked.flatIdx (0 : Fin 3) (1 : Fin 4) ∈
      sampleLocus.rowMajorOffsets := by
  native_decide

example :
    BitMatrix.ArrayBacked.flatIdx (1 : Fin 3) (1 : Fin 4) ∉
      sampleLocus.rowMajorOffsets := by
  native_decide

example (i : Fin 3) (j : Fin 4) :
    BitMatrix.ArrayBacked.flatIdx i j ∈ sampleLocus.rowMajorOffsets ↔
      i ∈ sampleLocus.rows ∧ j ∈ sampleLocus.columns :=
  sampleLocus.flatIdx_mem_rowMajorOffsets_iff i j

end BitMatrix.Tests.SubmatrixSurgery

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteSubmatrixExamples.Variant9ce5d0237a255619
```
