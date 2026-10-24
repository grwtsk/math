# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.ToposTheory.SheafTheory.Presheaves.PartialNaturalMaps.Variantfdccdbc1.CommandInterface

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1132f7d82dc40ab5ab24d877878ab5c30a667e81` · SHA-256 `ec333403019029152e66c7080ff66845d74dcd6c405c869cf1828978a85724de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Partial natural map on a presheaf subobject domain
ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas/direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
Source original SHA-256: fdccdbc1d1a377550e06c26705c9b20072cdf47fa91ebb9bddd1a3f26d41ef79
Manual conceptual split; uncompiled and not mathematically admitted.
These provisional roles and computational characterizations are user-supplied.
Existing source attribution, source identities and notices remain preserved in the immutable source archive.
Command and run are pure mathematical interface fields here, with no IO, process execution or authority action.
The interdependent domain, partial-map, predicate and naturality fields are retained as one interface.
Legacy Folder.Sheaf.Basic and Folder.Category.Subobject dependencies remain unresolved.
-/
import Folder.Sheaf.Basic
import Folder.Category.Subobject

/-!
# Folder.Morphism.Command

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: morphism.command
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


open Folder

namespace GRWTSK.CategoriesAndHomologicalAlgebra.ToposTheory.SheafTheory.Presheaves.PartialNaturalMaps.Variantfdccdbc1

open CategoryTheory Opposite

universe u v w

structure Command
    (C : Type u) [Category.{v} C] where
  source : Sheaf.Presheaf.{u, v, w} C
  target : Sheaf.Presheaf.{u, v, w} C
  domain : Folder.Category.Subobject source.F
  map :
    ∀ U : C,
      {s : source.F.obj (op U) // domain.contains U s} →
        target.F.obj (op U)
  map_natural :
    ∀ {U V : C} (f : U ⟶ V)
      (s : {s : source.F.obj (op V) // domain.contains V s}),
      Sheaf.Presheaf.restrict target f (map V s) =
        map U ⟨Sheaf.Presheaf.restrict source f s.1,
          domain.restrict f s.2⟩
  domainPredicate : ∀ U : C, source.F.obj (op U) → Prop
  domainPredicate_iff :
    ∀ U s, domainPredicate U s ↔ domain.contains U s
  run :
    ∀ U : C,
      (s : source.F.obj (op U)) →
        domainPredicate U s →
          target.F.obj (op U)
  run_eq_map :
    ∀ U (s : source.F.obj (op U)) (h : domainPredicate U s),
      run U s h =
        map U ⟨s, (domainPredicate_iff U s).mp h⟩
  run_natural :
    ∀ {U V : C} (f : U ⟶ V)
      (s : source.F.obj (op V))
      (h : domainPredicate V s),
      Sheaf.Presheaf.restrict target f (run V s h) =
        run U (Sheaf.Presheaf.restrict source f s)
          ((domainPredicate_iff U
            (Sheaf.Presheaf.restrict source f s)).mpr
              (domain.restrict f ((domainPredicate_iff V s).mp h)))

namespace Command

theorem run_agrees_with_partial_map
    {C : Type u} [Category.{v} C]
    (cmd : Command C)
    (U : C)
    (s : cmd.source.F.obj (op U))
    (h : cmd.domainPredicate U s) :
    cmd.run U s h =
      cmd.map U ⟨s, (cmd.domainPredicate_iff U s).mp h⟩ :=
  cmd.run_eq_map U s h

end Command

end GRWTSK.CategoriesAndHomologicalAlgebra.ToposTheory.SheafTheory.Presheaves.PartialNaturalMaps.Variantfdccdbc1
```
