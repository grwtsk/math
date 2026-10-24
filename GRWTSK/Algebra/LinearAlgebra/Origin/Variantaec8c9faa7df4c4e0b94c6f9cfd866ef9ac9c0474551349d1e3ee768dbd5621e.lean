-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CertifiedOriginSystem.Variant76f69fd8aa2f32c78acd9bb0d70eb9b497cd6d1e592b516c46628c59685256b1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76f69fd8aa2f32c78acd9bb0d70eb9b497cd6d1e592b516c46628c59685256b1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.CertifiedOriginSystem.Variant76f69fd8aa2f32c78acd9bb0d70eb9b497cd6d1e592b516c46628c59685256b1","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"76f69fd8aa2f32c78acd9bb0d70eb9b497cd6d1e592b516c46628c59685256b1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/Origin.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Resolution.Frequency
import Mathlib.LinearAlgebra.FiniteDimensional.Basic

/-!
# Certified finite-field origin projection

Origin is an exact idempotent linear projection.  It groups unresolved
obligations but cannot alter their proof status.
-/


namespace GRWTSK.Algebra.LinearAlgebra.CertifiedOriginSystem.Variant76f69fd8aa2f32c78acd9bb0d70eb9b497cd6d1e592b516c46628c59685256b1

namespace Mathematics.Resolution

universe u v w

structure CertifiedOriginSystem
    (𝔽 : Type u)
    (V : Type v)
    (Obligation : Type w)
    [Field 𝔽]
    [Fintype 𝔽]
    [AddCommGroup V]
    [Module 𝔽 V] where
  encode : Obligation → V
  project : V →ₗ[𝔽] V
  idempotent :
    project.comp project = project

def CertifiedOriginSystem.origin
    [Field 𝔽]
    [Fintype 𝔽]
    [AddCommGroup V]
    [Module 𝔽 V]
    (system : CertifiedOriginSystem 𝔽 V Obligation)
    (obligation : Obligation) :
    V :=
  system.project (system.encode obligation)

def originLayer
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    [DecidableEq V]
    [Field 𝔽]
    [Fintype 𝔽]
    [AddCommGroup V]
    [Module 𝔽 V]
    (cut : InvocationCut Obligation Proof Event)
    (unresolvedSet : Finset Obligation)
    (system : CertifiedOriginSystem 𝔽 V Obligation)
    (frequency : Nat)
    (origin : V) :
    Finset Obligation :=
  unresolvedSet.filter fun obligation ↦
    cut.frequency obligation = frequency ∧
    system.origin obligation = origin

theorem originLayer_coherent
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    [DecidableEq V]
    [Field 𝔽]
    [Fintype 𝔽]
    [AddCommGroup V]
    [Module 𝔽 V]
    {cut : InvocationCut Obligation Proof Event}
    {unresolvedSet : Finset Obligation}
    {system : CertifiedOriginSystem 𝔽 V Obligation}
    {frequency : Nat}
    {origin : V}
    {obligation : Obligation}
    (member :
      obligation ∈
        originLayer cut unresolvedSet system frequency origin) :
    system.project (system.encode obligation) = origin :=
  (Finset.mem_filter.mp member).2.2

end Mathematics.Resolution
