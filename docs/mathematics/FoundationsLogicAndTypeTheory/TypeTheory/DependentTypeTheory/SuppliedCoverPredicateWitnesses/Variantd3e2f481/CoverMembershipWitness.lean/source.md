# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SuppliedCoverPredicateWitnesses.Variantd3e2f481.CoverMembershipWitness

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff58418bd071645f3f739109262b4874a646922f` · SHA-256 `9457f8c9e9c4dad23d4536d4e70c2b26d46c4e03483ea9c9c005222ffc45301d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
A supplied cover family and proof of membership in the selected predicate
ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas/direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
Source original SHA-256: d3e2f481dac998db3b270b42dbee9e0b38cca4771279312e226fa88467c1f1e8
Manual conceptual split; uncompiled and not mathematically admitted.
These provisional roles and computational characterizations are user-supplied.
Existing source attribution, source identities and notices remain preserved in the immutable source archive.
The historical SiteCategory supplies Obj/Hom/id/comp without category equations; GrothendieckTopology supplies an IsCover predicate with separate named-property fields, not proved topology axioms. Optional thickening data and M_ell/String labels are retained without a geometric interpretation.
The complete CrystallineCover and actual membership projection remain together. The exact same-source SiteIndexingData companion supplies the unchanged local record representation; no existing Folder provider is aliased or replaced.
-/
import Folder.CrystallineTensor.InfinitesimalThickening
import Folder.ResearchTopos.GrothendieckTopology

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SuppliedCoverPredicateWitnesses.Variantd3e2f481.SiteIndexingData

/-!
# Folder.CrystallineTensor.CrystallineSite

Radiation role: research-boundary
BinaryMatrix spine: This module supplies an abstract site boundary, not a BinaryMatrix descent theorem.
Ontology: crystalline.site
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-tensor
-/

open Folder
open Folder.CrystallineTensor

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SuppliedCoverPredicateWitnesses.Variantd3e2f481

structure CrystallineCover
    (C : CrystallineSite)
    (X : C.Site.Obj) where
  cover : ResearchTopos.Cover C.Site X
  crystallineCompatible : C.topology.IsCover X cover

theorem crystalline_cover_is_cover
    {C : CrystallineSite}
    {X : C.Site.Obj}
    (U : CrystallineCover C X) :
    C.topology.IsCover X U.cover :=
  U.crystallineCompatible

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SuppliedCoverPredicateWitnesses.Variantd3e2f481
```
