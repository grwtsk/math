-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MobiusDirichletIdentityAuthority.Variantb393617321153461088694c2706605b886512559475579cd6028e0b6d13dd80a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b393617321153461088694c2706605b886512559475579cd6028e0b6d13dd80a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.MobiusDirichletIdentityAuthority.Variantb393617321153461088694c2706605b886512559475579cd6028e0b6d13dd80a","mathematical_subject":"Foundations.Unclassified","original_sha256":"b393617321153461088694c2706605b886512559475579cd6028e0b6d13dd80a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Application Support/Claude/local-agent-mode-sessions/ca894c7e-fbfc-4f86-9031-8b5d43fd5945/be06d025-2292-49e3-808a-dc51ca23d607/local_0de9d1e0-f1a1-472f-98ec-503d7f23f427/outputs/formal 2/lib/AnalyticNumber/Mobius.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import AnalyticNumber.EulerProduct
import Number.Mobius

/-!
# Analytic number Möbius authority

The finite Möbius window belongs to `Number`.

The analytic identity involving a Möbius Dirichlet series belongs here and
requires explicit convergence/Cauchy-product/identity authority.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MobiusDirichletIdentityAuthority.Variantb393617321153461088694c2706605b886512559475579cd6028e0b6d13dd80a

namespace AnalyticNumber

/-- Analytic authority for the Möbius Dirichlet identity on a domain. -/
structure MobiusDirichletIdentityAuthority where
  domain : HalfPlane
  zetaSeries : DirichletSeries
  mobiusSeries : DirichletSeries
  oneTimesMobiusSound : Prop
  oneTimesMobiusProof : oneTimesMobiusSound
  cauchyProductSound : Prop
  cauchyProductProof : cauchyProductSound
  identitySound : Prop
  identityProof : identitySound

theorem mobius_dirichlet_identity_sound
    (A : MobiusDirichletIdentityAuthority) :
    A.identitySound :=
  A.identityProof

/--
Finite Möbius windows do not own analytic Möbius identities. This restates the
firewall from the analytic side.
-/
theorem finite_mobius_window_not_analytic_identity
    (W : _root_.Number.FiniteMobiusWindow) :
    ¬ _root_.Number.FiniteMobiusWindowProvesAnalyticIdentity W :=
  _root_.Number.finite_mobius_window_not_analytic_identity W

end AnalyticNumber
