# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.PredicatePreservingMatrixFunctions.Variantf1c48100df625ed4.WholePredicatePreservingApplication

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `004371c3db92be2a0bbb69af9d8c96f0db917100` · SHA-256 `9fc35eef0735c90d3e211773a8fd6e1a2fa3fe7bb10a59af263dacc9637af3b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
WholePredicatePreservingApplication — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: f1c48100df625ed48c6e8e2c96229612ed88f8e685a6da69e6061e6150c90da0
Organized SHA-256: 2718e9e2e42a0dff2b3830c617539a38b4b100845965147acdd6993282450f04
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The whole record supplies an actual source.Valid input→target.Valid(run input) proof, with exact identity and sequential composition constructors. Formats are arbitrary mathematical predicates, not acceptance labels, and no category/functor laws or decoder construction are asserted. Original provider identities and all proof bytes retained; no Lean/Lake replay or stronger domain construction. -/

import BooleanMatrix.Application.Core
import BooleanMatrix.Format

/-!
# Format-preserving BooleanMatrix applications
-/

namespace BooleanMatrix

/--
An application carrying a proof that valid source matrices produce valid
target matrices.
-/
structure TypedApplication
    (source target : Format) where
  run : Application
  preserves :
    ∀ input,
      source.Valid input →
      target.Valid (run input)

namespace TypedApplication

/-- Typed identity application. -/
def identity
    (format : Format) :
    TypedApplication format format where
  run := Application.identity
  preserves := by
    intro input valid
    exact valid

/-- Typed sequential composition. -/
def comp
    {first second third : Format}
    (after : TypedApplication second third)
    (before : TypedApplication first second) :
    TypedApplication first third where
  run := Application.comp after.run before.run
  preserves := by
    intro input valid
    exact after.preserves
      (before.run input)
      (before.preserves input valid)

end TypedApplication
end BooleanMatrix
```
