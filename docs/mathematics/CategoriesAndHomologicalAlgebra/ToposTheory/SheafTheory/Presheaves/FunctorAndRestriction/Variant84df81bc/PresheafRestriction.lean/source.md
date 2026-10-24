# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.ToposTheory.SheafTheory.Presheaves.FunctorAndRestriction.Variant84df81bc.PresheafRestriction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4f511a4d6541d3b8d276ce30ebc74a720962f9c` · SHA-256 `f2a693648510401ee2ce39f01ee39ea6a17c776adfc6c1a9e852c19102417a2c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Contravariant type-valued functor wrapper and its restriction map
ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas/direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
Source original SHA-256: 84df81bc1c14c5c864d3cfa22c3dfaee74060d0a8e5c9ed227940d6834cd2aa7
Manual conceptual split; uncompiled and not mathematically admitted.
These provisional roles and computational characterizations are user-supplied.
Existing source attribution, source identities and notices remain preserved in the immutable source archive.
Only the Presheaf record and direct functor-map restriction are materialized. The source IsSheaf locality/gluing fields are arbitrary Prop values and remain archived.
The exact legacy Folder.Site.Cover import remains unresolved; no cover/topology or sheaf condition is inferred.
-/
import Folder.Site.Cover

/-!
# Folder.Sheaf.Basic

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: sheaf.basic
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.ToposTheory.SheafTheory.Presheaves.FunctorAndRestriction.Variant84df81bc

open CategoryTheory Opposite

universe u v w

structure Presheaf (C : Type u) [Category.{v} C] where
  F : Cᵒᵖ ⥤ Type w

namespace Presheaf

def restrict
    {C : Type u} [Category.{v} C]
    (P : Presheaf C)
    {U V : C}
    (f : U ⟶ V)
    (s : P.F.obj (op V)) :
    P.F.obj (op U) :=
  P.F.map f.op s

end Presheaf


end GRWTSK.CategoriesAndHomologicalAlgebra.ToposTheory.SheafTheory.Presheaves.FunctorAndRestriction.Variant84df81bc
```
