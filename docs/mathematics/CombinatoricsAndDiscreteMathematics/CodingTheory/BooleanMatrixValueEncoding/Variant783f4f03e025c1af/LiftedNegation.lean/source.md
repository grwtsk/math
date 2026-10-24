# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.BooleanMatrixValueEncoding.Variant783f4f03e025c1af.LiftedNegation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8da4a6a97a5abf605c8cf3495018f04a2a3355b` · SHA-256 `04178a449d36d38920937a42ed89dbda62dcfac2beb1f00e7c44fb59acefeb68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
LiftedNegation
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 783f4f03e025c1afe6891f650f3d865acce84661ec898afb0f5c1cee1d6e94bf
Organized SHA-256: d9a97f315f595f194b60460f48f9c5d7686429724983b3285acb51deea5f46bd
PMD: 510.7.090 coding theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: physical GRWTSK subject placement only. Exact original namespace blocks, imported provider names, fields, hypotheses, equations and proofs are preserved. Historical provider lookup is unreplayed; the archive path is not an activated import alias. Distinct historical candidate versions are isolated and are not claimed compatible for coimport. No extra algebraic, analytic or computational acceptance claim is added.
-/

import BooleanMatrix.Codec.Lift
import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.BooleanMatrixValueEncoding.Variant783f4f03e025c1af.BooleanCodec

/-!
# Boolean values encoded as BooleanMatrices
-/

namespace BooleanMatrix
namespace Codec

/-- Boolean negation represented as a matrix application. -/
def boolNot : Application :=
  lift bool bool (fun bit => !bit)

@[simp]
theorem boolNot_encode
    (value : Bool) :
    boolNot (bool.encode value) =
      bool.encode (!value) :=
  lift_encode bool bool (fun bit => !bit) value

end Codec
end BooleanMatrix
```
