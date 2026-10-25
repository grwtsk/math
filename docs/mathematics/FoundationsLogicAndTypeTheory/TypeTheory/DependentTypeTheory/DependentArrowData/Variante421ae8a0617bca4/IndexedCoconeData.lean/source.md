# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentArrowData.Variante421ae8a0617bca4.IndexedCoconeData

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6a664adaffa747ad37f10f6d31bd986e91817d5` · SHA-256 `af638d8f81d5de51e5ce8dd6e887a3482eb36a3be9823132fdc4b93c41dc6a3d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Indexed family of objects and arrows into X only: Cover has no covering axiom. The sibling SiteCategory is the exact same-source independent carrier, without added laws.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e421ae8a0617bca4bbf55840af2c4019323aaadb39c3e13a8f5ab980a13e94b7
Organized SHA-256: ad264f4e5217d706b2ecb0ffa6483fa0526aa3792925a019f7821e1b3ac3bf89
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentArrowData.Variante421ae8a0617bca4.ArrowOperations

import Folder.ResearchTopos.StableSphereSite

/-!
# Folder.ResearchTopos.GrothendieckTopology

Radiation role: research-boundary
BinaryMatrix spine: This module supplies abstract site/topology infrastructure, not a BinaryMatrix descent theorem.
Ontology: research_topos.grothendieck_topology
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: research-topos
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentArrowData.Variante421ae8a0617bca4

open Folder
open Folder.ResearchTopos

structure Cover
    (C : SiteCategory)
    (X : C.Obj) where
  Index : Type _
  obj : Index → C.Obj
  map : ∀ i, C.Hom (obj i) X

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentArrowData.Variante421ae8a0617bca4
```
