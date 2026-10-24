# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DirichletSeries.Variant0bb8d0a7ffd4938e9f8c7ba4c3bee2fdc7b6d6e387c51d8be899b7b5eb8074bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5153d11272ba484b723356ead2ab3e9ee98d268` · SHA-256 `b23add18bd0e3a5dc23e06f8036b67acd5874e5a4fdd12c70de910d6130fa818`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.HalfPlane.Variant6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.HalfPlane.Variant6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Application Support/Claude/local-agent-mode-sessions/ca894c7e-fbfc-4f86-9031-8b5d43fd5945/be06d025-2292-49e3-808a-dc51ca23d607/local_0de9d1e0-f1a1-472f-98ec-503d7f23f427/outputs/formal 2/lib/AnalyticNumber/DirichletSeries.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Number
import AnalyticNumber.Certificate

/-!
# Analytic number Dirichlet series

This is the first analytic-number layer above `Number`.

The coefficient object is a discrete `Number.ArithmeticFunction`. The analytic
claims, such as absolute convergence or Cauchy product soundness, are explicit
certificate fields.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.HalfPlane.Variant6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be

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
