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


namespace Folder
namespace Morphism

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
end Morphism
end Folder
