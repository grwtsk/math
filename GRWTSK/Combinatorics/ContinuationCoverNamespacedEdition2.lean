-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ContinuationCover.Variant6c37ed53bb8a0e7572b09860ce9b25dbe6323dcf41e1e51a63aa94d0f99b712e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6c37ed53bb8a0e7572b09860ce9b25dbe6323dcf41e1e51a63aa94d0f99b712e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ContinuationCover.Variant6c37ed53bb8a0e7572b09860ce9b25dbe6323dcf41e1e51a63aa94d0f99b712e","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"6c37ed53bb8a0e7572b09860ce9b25dbe6323dcf41e1e51a63aa94d0f99b712e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/BinaryFrontier/Completion/ContinuationCover.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.Completion.Core

/-!
# Completion-cover certificate

A finite child registry is authoritative only when every valid completion of
the parent is proved to pass through one of those children.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ContinuationCover.Variant6c37ed53bb8a0e7572b09860ce9b25dbe6323dcf41e1e51a63aa94d0f99b712e

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
