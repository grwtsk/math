# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DirichletSeries.Variant65d71db2bbbc17c379af5093dac577c7b3934e9c8c377a7da3f12290e1bb5599

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `390cc56aa8b7a8c63f72b3b7e7152b1249f01cfd` · SHA-256 `d0982cc13b4a4e156dc946f423feaa06a8d635f8b7e33cd67ee5a8037138d222`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.HalfPlane.Variantbb3cd8cb9d56e111214149ca78711c8fb3de30e08995fdc7aabf467976fd87a7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb3cd8cb9d56e111214149ca78711c8fb3de30e08995fdc7aabf467976fd87a7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.HalfPlane.Variantbb3cd8cb9d56e111214149ca78711c8fb3de30e08995fdc7aabf467976fd87a7","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"bb3cd8cb9d56e111214149ca78711c8fb3de30e08995fdc7aabf467976fd87a7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/AnalyticNumber/DirichletSeries.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Number
import AnalyticNumber.Certificate

/-!
# Analytic number Dirichlet series

This is the first analytic-number layer above `Number`.

The coefficient object is a discrete `Number.ArithmeticFunction`.  The analytic
claims, such as absolute convergence or Cauchy product soundness, are explicit
certificate fields.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.HalfPlane.Variantbb3cd8cb9d56e111214149ca78711c8fb3de30e08995fdc7aabf467976fd87a7

namespace AnalyticNumber

/-- Analytic domain shell. -/
structure HalfPlane where
  label : String
  condition : Prop

/-- Formal Dirichlet series shell with arithmetic coefficients. -/
structure DirichletSeries where
  coeff : _root_.Number.ArithmeticFunction
  variableLabel : String

/-- Absolute convergence authority for a Dirichlet series on a domain. -/
structure AbsoluteConvergenceCertificate
    (_F : DirichletSeries)
    (_domain : HalfPlane) where
  absolutelyConvergent : Prop
  absolutelyConvergentProof : absolutelyConvergent
  locallyUniform : Prop
  locallyUniformProof : locallyUniform

/-- Cauchy product authority for Dirichlet series. -/
structure CauchyProductCertificate
    (F G H : DirichletSeries)
    (domain : HalfPlane) where
  leftConverges : AbsoluteConvergenceCertificate F domain
  rightConverges : AbsoluteConvergenceCertificate G domain
  productConverges : AbsoluteConvergenceCertificate H domain
  cauchyProductSound : Prop
  cauchyProductProof : cauchyProductSound

theorem absolute_convergence_sound
    {F : DirichletSeries}
    {domain : HalfPlane}
    (C : AbsoluteConvergenceCertificate F domain) :
    C.absolutelyConvergent ∧ C.locallyUniform :=
  ⟨C.absolutelyConvergentProof, C.locallyUniformProof⟩

theorem cauchy_product_sound
    {F G H : DirichletSeries}
    {domain : HalfPlane}
    (C : CauchyProductCertificate F G H domain) :
    C.cauchyProductSound :=
  C.cauchyProductProof

/--
A Dirichlet-series shell does not prove convergence without its convergence
certificate.
-/
def DirichletSeriesOwnsConvergence
    (_F : DirichletSeries) : Prop :=
  False

theorem dirichlet_series_not_convergence_authority
    (F : DirichletSeries) :
    ¬ DirichletSeriesOwnsConvergence F := by
  intro h
  exact h

end AnalyticNumber
```
