# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.SourceComponents.Variant17131ddf74e1ced3.GrayBitEnumeration

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a776148907448c16156622dc00ed8dfa626a8fb` · SHA-256 `c479fd7f176cba1c62b231a8daebbc7f18c4e0c5fd6f5bbf3c1b3cd660304c09`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
GrayBitEnumeration — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 17131ddf74e1ced349fdb236a51ddf600635e99de778c4a9306a1df76f65f64a
Organized SHA-256: 6e0a1ee1b3d1950e8385560e459bccb83a30fe79a3e8e8241beb9b4b277e8cf9
PMD: 510.7.090 coding theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole xor-based Gray bit, point and finite list functions. No Gray adjacency or bijection proof is supplied. Original declaration namespace and import identities remain exact. Same-source companion imports, if any, are explicit. Source documentation may describe archived workflow components. No Lean elaboration, provider activation, semantic acceptance or namespace coimport compatibility is asserted. -/

import Boolean.Matrix
import Boolean.Cube.ListTools
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.SourceComponents.Variant17131ddf74e1ced3.FiniteBooleanCarriers

namespace Boolean.Cube

universe u

/-- Gray-code bit: `g_i = b_i XOR b_{i+1}`. -/
def Hypercube.grayBit (index bit : Nat) : Bool :=
  Hypercube.bxor
    (Hypercube.bitAtNat index bit)
    (Hypercube.bitAtNat index (bit + 1))

/--
Convert an index into a Gray-code-ordered hypercube point.

The coordinate order is big-endian, matching `pointOfIndex`.
-/
def Hypercube.grayPoint (n index : Nat) : Hypercube.Point n :=
  fun i => Hypercube.grayBit index (Hypercube.tableBit n i)

/-- The Gray-code axis of dimension `bits`. -/
def Hypercube.grayAxis (bits : Nat) : List (Hypercube.Point bits) :=
  (List.range (2 ^ bits)).map (Hypercube.grayPoint bits)

end Boolean.Cube
```
