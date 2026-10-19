import Mathematics.BinaryFrontier.Completion.Core

/-!
# Completion-cover certificate

A finite child registry is authoritative only when every valid completion of
the parent is proved to pass through one of those children.
-/

namespace Mathematics.BinaryFrontier.Completion

universe uPartial uFull uConstraint

structure ContinuationCover
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    (semantics :
      Semantics Partial Full Constraint)
    (constraints : Finset Constraint)
    (parent : Partial)
    (children : Finset Partial) where
  children_refine :
    ∀ child ∈ children,
      semantics.refines parent child
  completion_covered :
    ∀ completion,
      semantics.extendsFull parent completion →
      semantics.SatisfiesAll
          completion constraints →
      ∃ child ∈ children,
        semantics.extendsFull child completion

theorem parent_infeasible_of_continuation_cover
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    {semantics :
      Semantics Partial Full Constraint}
    {constraints : Finset Constraint}
    {parent : Partial}
    {children : Finset Partial}
    (cover :
      ContinuationCover
        semantics constraints parent children)
    (childrenInfeasible :
      ∀ child ∈ children,
        semantics.Infeasible
          constraints child) :
    semantics.Infeasible constraints parent := by
  intro completion parentExtends satisfies
  rcases
      cover.completion_covered
        completion parentExtends satisfies with
    ⟨child, childMember, childExtends⟩
  exact
    childrenInfeasible
      child childMember
      completion childExtends satisfies

end Mathematics.BinaryFrontier.Completion
