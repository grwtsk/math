# Complete source: GRWTSK.Algebra.GroupTheory.TransportHolonomy.Variant73274c677fadb96724cccd49ed3ba821cd3bec424cc8a1bd8bdf8e65aa3e14b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3d14aecebbf4dfb2203d331f874f6202bf915ee` · SHA-256 `73274c677fadb96724cccd49ed3ba821cd3bec424cc8a1bd8bdf8e65aa3e14b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Group.Subgroup.Basic

/-!
# Internal actions and generated-loop holonomy

Network transport around closed paths is represented by an honest group action
on the transported object.  A finite or otherwise specified generating family
is sufficient for cycle consistency only when it is certified to generate the
whole loop group.
-/

namespace Mathematics.Federation

open Set

universe u v w

/-- Every internal symmetry and its exact action on one realization. -/
structure InternalAutomorphismAction
    (Symmetry : Type u) (Object : Type v) [Group Symmetry] where
  action : Symmetry →* Equiv.Perm Object

namespace InternalAutomorphismAction

variable {Symmetry : Type u} {Object : Type v} [Group Symmetry]

@[simp]
theorem identity
    (internal : InternalAutomorphismAction Symmetry Object)
    (object : Object) :
    internal.action 1 object = object := by
  simp

@[simp]
theorem composition
    (internal : InternalAutomorphismAction Symmetry Object)
    (left right : Symmetry)
    (object : Object) :
    internal.action (left * right) object =
      internal.action left (internal.action right object) := by
  simp

end InternalAutomorphismAction

/-- A certified family whose image generates every closed-loop class. -/
structure LoopGeneratingSet
    (Loop : Type u) (Generator : Type w) [Group Loop] where
  generator : Generator → Loop
  generates :
    Subgroup.closure (Set.range generator) = ⊤

/-- Loops whose holonomy fixes a selected realization form a subgroup. -/
def holonomyFixedSubgroup
    {Loop : Type u} {Object : Type v} [Group Loop]
    (holonomy : Loop →* Equiv.Perm Object)
    (object : Object) :
    Subgroup Loop where
  carrier := {loop | holonomy loop object = object}
  one_mem' := by simp
  mul_mem' := by
    intro left right left_fixed right_fixed
    simp only [Set.mem_setOf_eq, map_mul]
    change holonomy left (holonomy right object) = object
    rw [right_fixed, left_fixed]
  inv_mem' := by
    intro loop fixed
    simp only [Set.mem_setOf_eq, map_inv]
    change holonomy loop object = object at fixed
    calc
      (holonomy loop).symm object =
          (holonomy loop).symm (holonomy loop object) :=
        congrArg (holonomy loop).symm fixed.symm
      _ = object := (holonomy loop).symm_apply_apply object

/--
Checking holonomy on a certified generating set checks every loop.  No
enumeration of all loops and no scheduling heuristic enters the proof.
-/
theorem cycleConsistency_of_generators
    {Loop : Type u} {Generator : Type w} {Object : Type v}
    [Group Loop]
    (holonomy : Loop →* Equiv.Perm Object)
    (generators : LoopGeneratingSet Loop Generator)
    (object : Object)
    (generator_fixed :
      ∀ index, holonomy (generators.generator index) object = object) :
    ∀ loop, holonomy loop object = object := by
  have closure_fixed :
      Subgroup.closure (Set.range generators.generator) ≤
        holonomyFixedSubgroup holonomy object := by
    apply (Subgroup.closure_le
      (holonomyFixedSubgroup holonomy object)).2
    intro loop generated
    rcases generated with ⟨index, rfl⟩
    exact generator_fixed index
  rw [generators.generates] at closure_fixed
  intro loop
  exact closure_fixed (Subgroup.mem_top loop)

/-- A proof-bearing cycle-consistency record for one transported object. -/
structure CycleConsistencyCertificate
    {Loop : Type u} {Generator : Type w} {Object : Type v}
    [Group Loop]
    (holonomy : Loop →* Equiv.Perm Object)
    (generators : LoopGeneratingSet Loop Generator)
    (object : Object) : Prop where
  generator_fixed :
    ∀ index, holonomy (generators.generator index) object = object

theorem CycleConsistencyCertificate.allLoops
    {Loop : Type u} {Generator : Type w} {Object : Type v}
    [Group Loop]
    {holonomy : Loop →* Equiv.Perm Object}
    {generators : LoopGeneratingSet Loop Generator}
    {object : Object}
    (certificate :
      CycleConsistencyCertificate holonomy generators object) :
    ∀ loop, holonomy loop object = object :=
  cycleConsistency_of_generators
    holonomy generators object certificate.generator_fixed

end Mathematics.Federation
```
