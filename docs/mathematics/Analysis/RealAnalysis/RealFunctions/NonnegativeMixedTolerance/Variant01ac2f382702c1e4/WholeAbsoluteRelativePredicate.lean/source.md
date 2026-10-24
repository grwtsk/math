# Complete source: GRWTSK.Analysis.RealAnalysis.RealFunctions.NonnegativeMixedTolerance.Variant01ac2f382702c1e4.WholeAbsoluteRelativePredicate

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e7b0dde8003ce30d27910c6cdba4d70e60564146` · SHA-256 `f32d004176535f29cd0bc8981ebc9091ead66a18ec5dc1b0e90b21379da6063b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
WholeAbsoluteRelativePredicate — exact original pure mathematical model
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 01ac2f382702c1e4fa56d8a2c36d3761bd86c18487358c68a10fa2ed1a4b47b6
Organized SHA-256: 1984bac83874bd0f7d10bbafb70d9f3855570b3a1e8008340c5cbe67963018a1
PMD: 510.5.010.010 real functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The complete four-field nonnegative absolute/relative tolerance and exact mixed absolute/max-relative predicate form one seam. The integer alias and exact equality-to-Nat conversion relation form another. No transitivity theorem, algorithm for conversion, machine integer range, wrapping, saturation or JavaScript implementation correspondence is supplied. -/

import Mathlib.Data.Real.Basic

/-!
# Numeric representation boundaries
-/

namespace GRWTSK.Analysis.RealAnalysis.RealFunctions.NonnegativeMixedTolerance.Variant01ac2f382702c1e4

namespace BitMatrix.Runtime.Numeric
/-- Nonnegative absolute and relative tolerances. -/
structure Tolerance where
  absolute : ℝ
  relative : ℝ
  absoluteNonnegative : 0 ≤ absolute
  relativeNonnegative : 0 ≤ relative

/-- The symmetric mixed absolute/relative comparison contract. -/
def Tolerance.NearlyEqual (tolerance : Tolerance) (left right : ℝ) : Prop :=
  |left - right| ≤
    tolerance.absolute + tolerance.relative * max |left| |right|

end BitMatrix.Runtime.Numeric

end GRWTSK.Analysis.RealAnalysis.RealFunctions.NonnegativeMixedTolerance.Variant01ac2f382702c1e4
```
