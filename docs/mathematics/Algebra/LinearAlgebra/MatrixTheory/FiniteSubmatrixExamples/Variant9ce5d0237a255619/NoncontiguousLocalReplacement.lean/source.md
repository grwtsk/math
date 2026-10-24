# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteSubmatrixExamples.Variant9ce5d0237a255619.NoncontiguousLocalReplacement

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f62f820130f89a8b267cc5f428e3c7f5be9a8b7f` · SHA-256 `74fdf520e34eafecd26e911799a9a7ecbb4bcc4461ea859fe0f36ea94f18ccff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
NoncontiguousLocalReplacement — individual source review
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

/- Rows{0,2} and columns{1,3} use exact increasing global embeddings, not a contiguous rectangular offset. Preserve all cardinality/index and replacement/outside-support examples with full original i/j/h premises. Every native_decide term remains unexecuted; no global invertibility follows from local replacement. -/

import BitMatrix.Surgery.Submatrix
import BitMatrix.Network.IntegralPermutationLift

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

def sampleMatrix : BitMatrix 3 4 :=
  fun i j => decide ((i.val + j.val) % 2 = 1)

def sampleLocus : MatrixLocus 3 4 where
  rows := {0, 2}
  columns := {1, 3}

def replacement :
    BitMatrix sampleLocus.rows.card sampleLocus.columns.card :=
  fun i j => decide (i = j)

def sampleSurgery : SubmatrixSurgery sampleMatrix sampleLocus :=
  SubmatrixSurgery.replace sampleMatrix sampleLocus replacement

example : sampleLocus.rows.card = 2 := by native_decide

example : sampleLocus.columns.card = 2 := by native_decide

example : sampleLocus.rowEmbed (0 : Fin 2) = (0 : Fin 3) := by native_decide

example : sampleLocus.rowEmbed (1 : Fin 2) = (2 : Fin 3) := by native_decide

example : sampleLocus.columnEmbed (0 : Fin 2) = (1 : Fin 4) := by native_decide

example : sampleLocus.columnEmbed (1 : Fin 2) = (3 : Fin 4) := by native_decide

example :
    BitMatrix.extractSubmatrix sampleSurgery.result sampleLocus = replacement :=
  sampleSurgery.extract_result

example : sampleSurgery.result 0 1 = true := by native_decide

example : sampleSurgery.result 0 3 = false := by native_decide

example : sampleSurgery.result 2 1 = false := by native_decide

example : sampleSurgery.result 2 3 = true := by native_decide

example : sampleSurgery.result 1 2 = sampleMatrix 1 2 := by
  exact sampleSurgery.outside_unchanged 1 2 (Or.inl (by decide))

example :
    BitMatrix.implantSubmatrix sampleMatrix sampleLocus
        (BitMatrix.extractSubmatrix sampleMatrix sampleLocus) = sampleMatrix :=
  BitMatrix.implantSubmatrix_extractSubmatrix sampleMatrix sampleLocus

example {i : Fin 3} {j : Fin 4}
    (h : (i, j) ∈ BitMatrix.differenceSupport sampleSurgery.result sampleMatrix) :
    i ∈ sampleLocus.rows ∧ j ∈ sampleLocus.columns :=
  sampleSurgery.difference_support_inside h

end BitMatrix.Tests.SubmatrixSurgery

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteSubmatrixExamples.Variant9ce5d0237a255619
```
