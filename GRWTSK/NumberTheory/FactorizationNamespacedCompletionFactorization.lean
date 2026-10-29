-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.CompletionFactorization.Variant845441406662f2c8380450a0cc55b70bf2fb7b119ce2f79517ba97476e6b098d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"845441406662f2c8380450a0cc55b70bf2fb7b119ce2f79517ba97476e6b098d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.CompletionFactorization.Variant845441406662f2c8380450a0cc55b70bf2fb7b119ce2f79517ba97476e6b098d","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"845441406662f2c8380450a0cc55b70bf2fb7b119ce2f79517ba97476e6b098d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/BinaryFrontier/Obstruction/Factorization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.Obstruction.MUS

/-!
# Independent completion factorization

Support disjointness does not imply a product decomposition.  The split,
satisfaction equivalence, no-cross-constraint law, and symmetry
compatibility are carried explicitly.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.CompletionFactorization.Variant845441406662f2c8380450a0cc55b70bf2fb7b119ce2f79517ba97476e6b098d

namespace Mathematics.BinaryFrontier.Obstruction

open Mathematics.BinaryFrontier.Completion

universe uPartial uFull uConstraint uLeft uRight uCoordinate

structure CompletionFactorization
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    (semantics :
      Semantics Partial Full Constraint)
    (left right : Finset Constraint)
    (partial : Partial) where
  LeftFull : Type uLeft
  RightFull : Type uRight
  split :
    Full ≃ LeftFull × RightFull
  leftSatisfaction :
    LeftFull → Prop
  rightSatisfaction :
    RightFull → Prop
  factors :
    ∀ completion,
      semantics.SatisfiesAll
          completion (left ∪ right) ↔
        leftSatisfaction (split completion).1 ∧
          rightSatisfaction (split completion).2

structure CoprimeObstructionCertificate
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    {semantics :
      Semantics Partial Full Constraint}
    {registry : Finset Constraint}
    {partial : Partial}
    (leftCore rightCore :
      PrimitiveCore
        semantics registry partial)
    (Coordinate : Type uCoordinate)
    [DecidableEq Coordinate] where
  protectedSupport :
    Constraint → Finset Coordinate
  support_disjoint :
    Disjoint
      (leftCore.constraints.biUnion
        protectedSupport)
      (rightCore.constraints.biUnion
        protectedSupport)
  crossConstraint :
    Constraint → Prop
  no_cross_constraints :
    ∀ constraint ∈
        leftCore.constraints ∪
          rightCore.constraints,
      ¬crossConstraint constraint
  completion_factors :
    CompletionFactorization
      semantics
      leftCore.constraints
      rightCore.constraints
      partial
  quotientCompatible : Prop
  quotient_compatible :
    quotientCompatible

theorem coprime_core_factorization_sound
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    {semantics :
      Semantics Partial Full Constraint}
    {registry : Finset Constraint}
    {partial : Partial}
    {leftCore rightCore :
      PrimitiveCore
        semantics registry partial}
    {Coordinate : Type uCoordinate}
    [DecidableEq Coordinate]
    (certificate :
      CoprimeObstructionCertificate
        leftCore rightCore Coordinate)
    (completion : Full) :
    semantics.SatisfiesAll completion
        (leftCore.constraints ∪
          rightCore.constraints) ↔
      certificate.completion_factors.leftSatisfaction
          (certificate.completion_factors.split
            completion).1 ∧
        certificate.completion_factors.rightSatisfaction
          (certificate.completion_factors.split
            completion).2 :=
  certificate.completion_factors.factors
    completion

end Mathematics.BinaryFrontier.Obstruction
