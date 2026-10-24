# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ContinuationCover.Variant6c37ed53bb8a0e7572b09860ce9b25dbe6323dcf41e1e51a63aa94d0f99b712e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7613b10ccb3139f20945b04b7a668a6b2b6532c4` · SHA-256 `6c37ed53bb8a0e7572b09860ce9b25dbe6323dcf41e1e51a63aa94d0f99b712e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
