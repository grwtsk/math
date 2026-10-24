# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.DyadicSideLengths.Variant745aa34baa5761eb.DyadicSideAndSuccessorIdentity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7444dbb9e86b7e633cd40f9132684516261d8e2` · SHA-256 `43f6667542ee438c88aad55bf935c8fed5c92e7c72570d0f4bc88186c6f2c7bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
DyadicSideAndSuccessorIdentity — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 745aa34baa5761eb7609cfecee85a891ef8b18208e8d3a6a0bf4e947c5c38b1d
Organized SHA-256: ffb599f98de1c1eff209b4a450331266b001aee5b757ed4f3196840507e86279
PMD: 510.2.010 elementary number theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Two genuine seams preserve the full dyadic side definition/recurrence and the fixed-length finite coordinate-word carrier with binary-digit append, low embedding, exact coordinate equations and embedded bound proof. Only an exact same-source side component is added to the coordinate module; no original provider/import/namespace is replaced. No geometric cell complex or inverse refinement theorem is supplied. -/

import Folder.Basic

/-!
# Folder.Cellular.Cube

Radiation role: cube-address
BinaryMatrix spine: This module generalizes BinaryMatrix indexing into finite cubical address spaces or adjacency data.
Ontology: cellular.cube
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: shell
-/


namespace Folder
namespace Cellular

def cubeSide (k : Nat) : Nat :=
  2 ^ k

theorem cubeSide_succ
    (k : Nat) :
    cubeSide (k + 1) = 2 * cubeSide k := by
  unfold cubeSide
  rw [pow_succ']

end Cellular
end Folder
```
