import Mathematics.Federation.TransportHolonomy

/-!
# Generated-loop holonomy

Cycle consistency is checked on a certified generating family and then
extended to every loop by subgroup closure.
-/

namespace Mathematics.MobiusOntology

universe u v w

abbrev LoopGeneratingSet
    (Loop : Type u) (Generator : Type w) [Group Loop] :=
  Mathematics.Federation.LoopGeneratingSet Loop Generator

abbrev CycleConsistencyCertificate
    {Loop : Type u} {Generator : Type w} {Object : Type v}
    [Group Loop]
    (holonomy : Loop →* Equiv.Perm Object)
    (generators : LoopGeneratingSet Loop Generator)
    (object : Object) :=
  Mathematics.Federation.CycleConsistencyCertificate
    holonomy generators object

theorem cycle_consistency_on_all_loops
    {Loop : Type u} {Generator : Type w} {Object : Type v}
    [Group Loop]
    {holonomy : Loop →* Equiv.Perm Object}
    {generators : LoopGeneratingSet Loop Generator}
    {object : Object}
    (certificate :
      CycleConsistencyCertificate holonomy generators object) :
    ∀ loop, holonomy loop object = object :=
  certificate.allLoops

end Mathematics.MobiusOntology
