# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.BooleanMatrixObservationExamples.Variante2320d031821bef6.WholePointwiseAbstraction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da836c12711a09ae20aad634a04dcff05c076b66` · SHA-256 `ae7f50624df5fa02bbf2208bf6f183b8ecc7221b043f89bdb74887d67a5d52c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
WholePointwiseAbstraction — exact original finite mathematical examples
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e2320d031821bef66731414cc45376758cc4360d8ae65a63abc0472a8475ee27
Organized SHA-256: 67ca7ac0d4bfb1012932f8e4368e842e585c4d080bbd6b43bbe58f6d77ac1615
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The concrete Boolean-negation refinement, exact toMatrix equality and whole property-free comparison map retain all original array-size/row/column types and generic Boolean and/not equations. Equality is observational; no raw array identity or mutable execution is claimed. Original decide/native_decide proof text is retained without execution or proof acceptance. -/

import BitMatrix.Adapters.DAFRefinement
import BitMatrix.Adapters.Fabric
import DAF.Comparison.Composition
import DAF.Fabric.Refinement

/-!
# BitMatrix-owned adapter integration tests

DAF remains provider-neutral.  Cross-boundary tests live with the BitMatrix
adapter that depends on DAF, preserving the one-way production dependency.
-/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.BooleanMatrixObservationExamples.Variante2320d031821bef6

namespace BitMatrix.Tests.Adapters

open DAF.Comparison
open DAF.Fabric

def falseMatrix : BitMatrix.ArrayBacked 1 2 :=
  BitMatrix.ArrayBacked.fill 1 2 false

example :
    (BitMatrix.Adapters.mapRefinement.{0} 1 2).abstract
        ((BitMatrix.Adapters.mapImplSystem.{0} 1 2).step Bool.not falseMatrix) =
      (BitMatrix.Adapters.mapSpecSystem.{0} 1 2).step Bool.not
        ((BitMatrix.Adapters.mapRefinement.{0} 1 2).abstract falseMatrix) :=
  BitMatrix.Adapters.mapRefinement_step_sound.{0} Bool.not falseMatrix

example : BitMatrix.Refines falseMatrix falseMatrix.toMatrix :=
  (BitMatrix.Adapters.refines_iff_abstract_eq.{0}
    falseMatrix falseMatrix.toMatrix).2 rfl

def bitMatrixAbstraction (m n : Nat) :
    Spec (BitMatrix.ArrayBacked m n) (BitMatrix m n) :=
  (BitMatrix.Adapters.mapRefinement.{0} m n).toComparisonSpec

example (A B : BitMatrix.ArrayBacked m n) :
    (bitMatrixAbstraction m n).map (A.andInPlace B) =
      BitMatrix.and ((bitMatrixAbstraction m n).map A)
        ((bitMatrixAbstraction m n).map B) := by
  simpa [bitMatrixAbstraction] using A.andInPlace_spec B

example (A : BitMatrix.ArrayBacked m n) :
    (bitMatrixAbstraction m n).map A.notInPlace =
      BitMatrix.not ((bitMatrixAbstraction m n).map A) := by
  simpa [bitMatrixAbstraction] using A.notInPlace_spec

end BitMatrix.Tests.Adapters

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.BooleanMatrixObservationExamples.Variante2320d031821bef6
```
