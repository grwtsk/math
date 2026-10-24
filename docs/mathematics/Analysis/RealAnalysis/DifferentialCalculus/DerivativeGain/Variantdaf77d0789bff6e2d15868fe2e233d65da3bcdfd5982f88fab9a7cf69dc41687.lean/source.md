# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivativeGain.Variantdaf77d0789bff6e2d15868fe2e233d65da3bcdfd5982f88fab9a7cf69dc41687

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7cb1f851a951a1d387349e282f3b3d0fc4bfc6c` · SHA-256 `e7bcd2b03a11422e07d77b32a2ddfb3b591afbbcbb271d888fe049f98d9a8d5e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivativeGainCertificate.Variant7739cf9d74b0eb0b581dee7421132d24ec4a0bae1e73e15ffb110edf1908e9c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7739cf9d74b0eb0b581dee7421132d24ec4a0bae1e73e15ffb110edf1908e9c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.DerivativeGainCertificate.Variant7739cf9d74b0eb0b581dee7421132d24ec4a0bae1e73e15ffb110edf1908e9c3","mathematical_subject":"Analysis.Calculus","original_sha256":"7739cf9d74b0eb0b581dee7421132d24ec4a0bae1e73e15ffb110edf1908e9c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/Stability/DerivativeGain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Stability.Residual

/-! # Certified local derivative or Lipschitz gain -/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivativeGainCertificate.Variant7739cf9d74b0eb0b581dee7421132d24ec4a0bae1e73e15ffb110edf1908e9c3

namespace Mathematics.Stability

structure DerivativeGainCertificate
    {X : Type}
    (construction : ReflectiveMap X)
    (metric : ResidualMetric X) where
  gain : Nat
  bounds :
    ∀ x y,
      construction.domain.contains x →
      construction.domain.contains y →
      metric.distance (construction.apply x)
        (construction.apply y) ≤
        gain * metric.distance x y

theorem derivative_gain_bounds_one_step
    {X : Type}
    {construction : ReflectiveMap X}
    {metric : ResidualMetric X}
    (certificate :
      DerivativeGainCertificate construction metric)
    (x y : X)
    (xMember : construction.domain.contains x)
    (yMember : construction.domain.contains y) :
    metric.distance (construction.apply x)
      (construction.apply y) ≤
      certificate.gain * metric.distance x y :=
  certificate.bounds x y xMember yMember

/-!
Non-integral gains use a common positive scale.  The bound
`scale * d(F x, F y) ≤ numerator * d(x, y)` is the division-free form of
`d(F x, F y) ≤ (numerator / scale) * d(x, y)`.
-/
structure ScaledDerivativeGainCertificate
    {X : Type}
    (construction : ReflectiveMap X)
    (metric : ResidualMetric X) where
  numerator : Nat
  scale : Nat
  scalePositive : 0 < scale
  bounds :
    ∀ x y,
      construction.domain.contains x →
      construction.domain.contains y →
      scale *
        metric.distance (construction.apply x)
          (construction.apply y) ≤
        numerator * metric.distance x y

theorem scaled_derivative_gain_bounds_one_step
    {X : Type}
    {construction : ReflectiveMap X}
    {metric : ResidualMetric X}
    (certificate :
      ScaledDerivativeGainCertificate construction metric)
    (x y : X)
    (xMember : construction.domain.contains x)
    (yMember : construction.domain.contains y) :
    certificate.scale *
      metric.distance (construction.apply x)
        (construction.apply y) ≤
      certificate.numerator * metric.distance x y :=
  certificate.bounds x y xMember yMember

structure GainInterval where
  lower : Nat
  upper : Nat
  ordered : lower ≤ upper

inductive StabilityRegime
  | contractive
  | critical
  | expansive
  | periodicContractive
  | unknown
  deriving DecidableEq, Repr

/-!
`scale` is the denominator shared by the integer bounds.  A gain numerator
below `scale` is strict contraction; a lower bound above `scale` is expansion.
-/
def classifyGain (interval : GainInterval) (scale : Nat) :
    StabilityRegime :=
  if interval.upper < scale then
    .contractive
  else if scale < interval.lower then
    .expansive
  else
    .critical

theorem strict_upper_bound_classifies_contractive
    (interval : GainInterval)
    (scale : Nat)
    (strict : interval.upper < scale) :
    classifyGain interval scale = .contractive := by
  simp [classifyGain, strict]

theorem unresolved_unit_intersection_is_critical
    (interval : GainInterval)
    (scale : Nat)
    (notContractive : ¬ interval.upper < scale)
    (notExpansive : ¬ scale < interval.lower) :
    classifyGain interval scale = .critical := by
  simp [classifyGain, notContractive, notExpansive]

end Mathematics.Stability
```
