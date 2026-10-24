-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalCoefficientTorsionTransfer.Variantb7e041f0e9b13d868c79c1e480ef982a49706dd96bbb275487eb3876be84982f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b7e041f0e9b13d868c79c1e480ef982a49706dd96bbb275487eb3876be84982f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.UniversalCoefficientTorsionTransfer.Variantb7e041f0e9b13d868c79c1e480ef982a49706dd96bbb275487eb3876be84982f","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"b7e041f0e9b13d868c79c1e480ef982a49706dd96bbb275487eb3876be84982f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Homology/UniversalCoefficient.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Homology.TorsionLedger
import Mathlib.Algebra.Exact.Basic
import Mathlib.Algebra.Module.CharacterModule

/-!
# Universal-coefficient torsion channel

The canonical finite object associated to integral cohomology torsion is the
character module of the preceding homology torsion.  An identification with
the preceding torsion group itself requires chosen generators or a separately
certified perfect pairing; it is not built into this record.
-/


namespace GRWTSK.Algebra.UniversalCoefficientTorsionTransfer.Variantb7e041f0e9b13d868c79c1e480ef982a49706dd96bbb275487eb3876be84982f

namespace Mathematics.Homology

universe u v w

/--
Certificate-bearing universal-coefficient sequence in cohomological degree
`previousHomologyDegree + 1`.
-/
structure UniversalCoefficientTorsionTransfer
    (IntegralCohomology : Type u)
    (PreviousHomologyTorsion : Type v)
    (FreeDual : Type w)
    [AddCommGroup IntegralCohomology]
    [AddCommGroup PreviousHomologyTorsion]
    [AddCommGroup FreeDual] where
  previousHomologyDegree : Nat
  extTerm : Type v
  extTermAddCommGroup : AddCommGroup extTerm
  includeExt : extTerm →+ IntegralCohomology
  projectFree : IntegralCohomology →+ FreeDual
  includeExt_injective : Function.Injective includeExt
  projectFree_surjective : Function.Surjective projectFree
  exact : Function.Exact includeExt projectFree
  integralTorsion : AddSubgroup IntegralCohomology
  extRange_is_torsion :
    AddMonoidHom.range includeExt = integralTorsion
  integralTorsionFinite : Finite integralTorsion
  canonicalPontryaginDual :
    extTerm ≃+ CharacterModule PreviousHomologyTorsion
  previousTorsionFinite : Finite PreviousHomologyTorsion
  chosenGeneratorIdentification :
    Option (integralTorsion ≃+ PreviousHomologyTorsion)
  sequenceCertificate : ObjectAddress
  dependencyDigest : Digest

namespace UniversalCoefficientTorsionTransfer

variable
    {IntegralCohomology : Type u}
    {PreviousHomologyTorsion : Type v}
    {FreeDual : Type w}
    [AddCommGroup IntegralCohomology]
    [AddCommGroup PreviousHomologyTorsion]
    [AddCommGroup FreeDual]
    (transfer :
      UniversalCoefficientTorsionTransfer
        IntegralCohomology PreviousHomologyTorsion FreeDual)

/-- The represented integral cohomology degree, with the UCT shift explicit. -/
def cohomologyDegree : Nat :=
  Nat.succ transfer.previousHomologyDegree

/-- UCT torsion is finite because it is equivalent to a finite character module. -/
noncomputable instance instFiniteIntegralTorsion :
    Finite transfer.integralTorsion :=
  transfer.integralTorsionFinite

end UniversalCoefficientTorsionTransfer

end Mathematics.Homology
