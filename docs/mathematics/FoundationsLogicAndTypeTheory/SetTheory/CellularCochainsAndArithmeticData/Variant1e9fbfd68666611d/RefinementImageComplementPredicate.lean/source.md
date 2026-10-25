# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CellularCochainsAndArithmeticData.Variant1e9fbfd68666611d.RefinementImageComplementPredicate

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ddfe95e8d78e4b77645b3fab9e31fdce8cb45c51` · SHA-256 `d54b5c1c3858cb7c896ae30a0bd20d9d517c0166f689f55e9a5f5252dd535d20`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
RefinementImageComplementPredicate - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 1e9fbfd68666611d35989171c297907034ee48209c2f2910e8ef50affe38ea6f
Organized SHA-256: 74bd8605d39af73f688bc0de211651edd4d4e873fd5f5dca7740fcd4204cecb2
PMD: 510.0.010 set theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Exact endpoint/interior coordinate predicates on finite cubical addresses, the whole boundary subtype and all three original proofs, retaining hd : 0 < d for the level-zero result. The image-complement predicate for embedLow at the next level is an independent seam. No chain complex, spherical boundary, filtration inclusion or refinement theorem is supplied. All original namespace and control blocks are copied unchanged. Only listed same-source public companion imports are added; original imported providers remain literal and unreplayed.
-/

import Folder.Cellular.Cube

/-!
# Folder.Cellular.ShellFiltration

Radiation role: shell-filtration
BinaryMatrix spine: This module organizes boundary, shell, or expansion layers radiating out from BinaryMatrix-shaped finite carriers.
Ontology: cellular.shell_filtration
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: shell
-/


namespace Folder
namespace Cellular

def IsNewChildCell
    {d k : Nat}
    (y : CubeAddress d (k + 1)) : Prop :=
  ¬ ∃ x : CubeAddress d k, y = embedLow x

end Cellular
end Folder
```
