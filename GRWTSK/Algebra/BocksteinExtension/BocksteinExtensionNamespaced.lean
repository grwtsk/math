-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.BocksteinExtension.Variant056d337857b004589d8fdb406093e81f276a47a35aaebed52ec9ca94d21889a8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"056d337857b004589d8fdb406093e81f276a47a35aaebed52ec9ca94d21889a8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.BocksteinExtension.Variant056d337857b004589d8fdb406093e81f276a47a35aaebed52ec9ca94d21889a8","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"056d337857b004589d8fdb406093e81f276a47a35aaebed52ec9ca94d21889a8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Homology/BocksteinExtension.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Homology.Rounding
import Mathlib.Algebra.Exact.Basic

/-!
# Unsplit Bockstein phase extension

The continuous torus and finite phase torsion form a short exact extension.
No direct-product coordinates and no section are included here.
-/


namespace GRWTSK.Algebra.BocksteinExtension.Variant056d337857b004589d8fdb406093e81f276a47a35aaebed52ec9ca94d21889a8

namespace Mathematics.Homology

universe u v w

/-- An exact additive extension `0 → Torus → Phase → Torsion → 0`. -/
structure BocksteinExtension
    (Torus : Type u) (Phase : Type v) (Torsion : Type w)
    [AddCommGroup Torus]
    [AddCommGroup Phase]
    [AddCommGroup Torsion] where
  inclusion : Torus →+ Phase
  bockstein : Phase →+ Torsion
  inclusion_injective : Function.Injective inclusion
  bockstein_surjective : Function.Surjective bockstein
  exact : Function.Exact inclusion bockstein
  coefficientSequenceDigest : Digest
  certificate : ObjectAddress

namespace BocksteinExtension

variable
    {Torus : Type u} {Phase : Type v} {Torsion : Type w}
    [AddCommGroup Torus]
    [AddCommGroup Phase]
    [AddCommGroup Torsion]
    (extension : BocksteinExtension Torus Phase Torsion)

/-- The continuous torus lies in the kernel of the Bockstein map. -/
theorem bockstein_include_zero (continuous : Torus) :
    extension.bockstein (extension.inclusion continuous) = 0 :=
  extension.exact.apply_apply_eq_zero continuous

/-- Equal finite phases differ by a continuous torus element. -/
theorem difference_lifts_from_torus
    {left right : Phase}
    (samePhase :
      extension.bockstein left = extension.bockstein right) :
    ∃ continuous,
      extension.inclusion continuous = left - right := by
  have zero :
      extension.bockstein (left - right) = 0 := by
    rw [map_sub, samePhase, sub_self]
  exact (extension.exact (left - right)).mp zero

end BocksteinExtension

end Mathematics.Homology
