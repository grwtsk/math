import Mathematics.BinaryFrontier.Completion.Core

/-!
# Certified continuation covers

Child absence is not an infeasibility proof.  A parent may inherit
infeasibility from all children only when an explicit cover shows that every
parent completion continues through a registered child.
-/

namespace Mathematics.BinaryFrontier

structure ContinuationCover
    {Partial Full Constraint : Type}
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    (parent : Partial)
    (children : Finset Partial) where
  childrenRefine :
    ∀ child ∈ children,
      semantics.refines parent child
  completionCovered :
    ∀ full,
      semantics.extendsFull parent full →
      ∃ child ∈ children,
        semantics.extendsFull child full

theorem parent_infeasible_of_continuation_cover
    {Partial Full Constraint : Type}
    [DecidableEq Partial]
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    {constraints : Finset Constraint}
    {parent : Partial}
    {children : Finset Partial}
    (cover : ContinuationCover semantics parent children)
    (childrenInfeasible :
      ∀ child ∈ children,
        Infeasible semantics constraints child) :
    Infeasible semantics constraints parent := by
  intro parentFeasible
  obtain ⟨full, parentExtends, satisfies⟩ := parentFeasible
  obtain ⟨child, childMember, childExtends⟩ :=
    cover.completionCovered full parentExtends
  exact childrenInfeasible child childMember
    ⟨full, childExtends, satisfies⟩

end Mathematics.BinaryFrontier
