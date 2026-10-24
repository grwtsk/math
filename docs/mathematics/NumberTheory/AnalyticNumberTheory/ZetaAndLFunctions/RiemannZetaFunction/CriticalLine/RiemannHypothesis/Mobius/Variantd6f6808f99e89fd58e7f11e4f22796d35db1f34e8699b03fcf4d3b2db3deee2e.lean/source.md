# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Mobius.Variantd6f6808f99e89fd58e7f11e4f22796d35db1f34e8699b03fcf4d3b2db3deee2e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6613a02fef85fd9410d9ea491bc469cabb36c4b0` · SHA-256 `1fc5a87e613a2a3fc7133a6eb0b5cf2f266e2bb6d6ee638e4487d9ea73a466a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MobiusDirichletIdentityAuthority.Variantaa7871537d612e136f75e3ab4506243411ad2b8b020768eb6c65869f7bdfd5cf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aa7871537d612e136f75e3ab4506243411ad2b8b020768eb6c65869f7bdfd5cf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.MobiusDirichletIdentityAuthority.Variantaa7871537d612e136f75e3ab4506243411ad2b8b020768eb6c65869f7bdfd5cf","mathematical_subject":"Foundations.Unclassified","original_sha256":"aa7871537d612e136f75e3ab4506243411ad2b8b020768eb6c65869f7bdfd5cf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/AnalyticNumber/Mobius.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import AnalyticNumber.EulerProduct
import Number.Mobius

/-!
# Analytic number Möbius authority

The finite Möbius window belongs to `Number`.

The analytic identity involving a Möbius Dirichlet series belongs here and
requires explicit convergence/Cauchy-product/identity authority.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MobiusDirichletIdentityAuthority.Variantaa7871537d612e136f75e3ab4506243411ad2b8b020768eb6c65869f7bdfd5cf

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
Finite Möbius windows do not own analytic Möbius identities.  This restates the
firewall from the analytic side.
-/
theorem finite_mobius_window_not_analytic_identity
    (W : _root_.Number.FiniteMobiusWindow) :
    ¬ _root_.Number.FiniteMobiusWindowProvesAnalyticIdentity W :=
  _root_.Number.finite_mobius_window_not_analytic_identity W

end AnalyticNumber
```
