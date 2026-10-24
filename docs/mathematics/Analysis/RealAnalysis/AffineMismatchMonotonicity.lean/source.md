# Complete source: GRWTSK.Analysis.RealAnalysis.AffineMismatchMonotonicity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48fe3212ee8f70c71c20434d5b9eda00adfc6338` · SHA-256 `efd2c06d959d6e5b38d120d41493beba029c1766b2ec3fdda3a0b76527162432`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Affine scalar mismatch monotonicity
ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas/direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
Source original SHA-256: a4473ad538118e4a9c2fa70ca06fc271e9ef59212c8b4a138d281866feae0cc7
Manual conceptual split; uncompiled and not mathematically admitted.
These provisional roles and computational characterizations are user-supplied.
Existing source attribution, source identities and notices remain preserved in the immutable source archive.
The original local-candidate/AI notice and unsplit-source scope disclaimer below are copied unchanged. These generic identities do not identify actual Abel rows, establish a compensated budget or prove the Riemann hypothesis.
-/
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Tactic

/-!
Generic compression algebra for the exact signed source energy.
These lemmas do not identify the two actual Abel rows or prove their compensated budget.
AI attribution: OpenAI Codex. Local candidate; no accepted-source claim.
-/

set_option autoImplicit false
namespace GRWTSK.Analysis.RealAnalysis.AffineMismatchMonotonicity
open scoped RealInnerProductSpace
variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℝ H]

/-- A Bessel lower bound for mismatch points in the wrong direction for the required upper bound. -/
theorem mismatch_lower_is_signed_lower (G P D J : ℝ)
    (hP : J ≤ P) : G + (P - D) / 4 ≥ G + (J - D) / 4 := by
  linarith

end GRWTSK.Analysis.RealAnalysis.AffineMismatchMonotonicity
```
