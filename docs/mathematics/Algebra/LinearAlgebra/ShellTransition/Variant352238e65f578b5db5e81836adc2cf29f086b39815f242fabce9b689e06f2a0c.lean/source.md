# Complete source: GRWTSK.Algebra.LinearAlgebra.ShellTransition.Variant352238e65f578b5db5e81836adc2cf29f086b39815f242fabce9b689e06f2a0c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6281f01a9e202ab8bf33b1607797a67f380e7715` · SHA-256 `86dce46d9c0f07e1d53994058bc5bd64114f1e78e9f9e13481ef0c8a1194b150`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.GramTransport.Variant1d09582790d1257ce5e745f06b3629d4ef7d2542a480889d823ed77ee005fc61","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1d09582790d1257ce5e745f06b3629d4ef7d2542a480889d823ed77ee005fc61","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.GramTransport.Variant1d09582790d1257ce5e745f06b3629d4ef7d2542a480889d823ed77ee005fc61","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"1d09582790d1257ce5e745f06b3629d4ef7d2542a480889d823ed77ee005fc61","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Homology/ShellTransition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Homology.Shell

/-!
# Coupled, certified shell transport

Integral skeleton, continuous residue, total phase, finite torsion, and Gram
geometry have distinct maps and receipts.  Realization, quotient, phase
inclusion, Bockstein, and Gram compatibility are proof-bearing laws rather
than certificate-shaped assertions.
-/


namespace GRWTSK.Algebra.LinearAlgebra.GramTransport.Variant1d09582790d1257ce5e745f06b3629d4ef7d2542a480889d823ed77ee005fc61

namespace Mathematics.Homology

universe u₁ u₂ v₁ v₂ t₁ t₂ w₁ w₂ x₁ x₂

noncomputable section

/-- Exact preservation or certified two-sided distortion of a Gram field. -/
inductive GramTransport
    {SourceResidue : Type v₁} {TargetResidue : Type v₂}
    [AddCommGroup SourceResidue] [Module ℝ SourceResidue]
    [AddCommGroup TargetResidue] [Module ℝ TargetResidue]
    (sourceGram : PositiveGram SourceResidue)
    (targetGram : PositiveGram TargetResidue)
    (residueMap : SourceResidue →ₗ[ℝ] TargetResidue)
  | exact
      (preserves :
        ∀ left right,
          targetGram.form (residueMap left) (residueMap right) =
            sourceGram.form left right)
  | boundedDistortion
      (lower upper : ℝ)
      (lower_positive : 0 < lower)
      (lower_le_upper : lower ≤ upper)
      (bounds :
        ∀ vector,
          lower * sourceGram.squaredNorm vector ≤
              targetGram.squaredNorm (residueMap vector) ∧
            targetGram.squaredNorm (residueMap vector) ≤
              upper * sourceGram.squaredNorm vector)

/-- One typed transition between potentially different shell carriers. -/
structure CohomologicalShellTransition
    (SourceIntegral : Type u₁) (TargetIntegral : Type u₂)
    (SourceResidue : Type v₁) (TargetResidue : Type v₂)
    (SourceTorus : Type t₁) (TargetTorus : Type t₂)
    (SourcePhase : Type w₁) (TargetPhase : Type w₂)
    (SourceTorsion : Type x₁) (TargetTorsion : Type x₂)
    [AddCommGroup SourceIntegral] [AddCommGroup TargetIntegral]
    [AddCommGroup SourceResidue] [Module ℝ SourceResidue]
    [AddCommGroup TargetResidue] [Module ℝ TargetResidue]
    [AddCommGroup SourceTorus] [AddCommGroup TargetTorus]
    [AddCommGroup SourcePhase] [AddCommGroup TargetPhase]
    [AddCommGroup SourceTorsion] [AddCommGroup TargetTorsion]
    (sourceRealization : SourceIntegral →+ SourceResidue)
    (targetRealization : TargetIntegral →+ TargetResidue)
    (sourceContinuousQuotient : SourceResidue →+ SourceTorus)
    (targetContinuousQuotient : TargetResidue →+ TargetTorus)
    (sourcePhaseInclusion : SourceTorus →+ SourcePhase)
    (targetPhaseInclusion : TargetTorus →+ TargetPhase)
    (sourceBockstein : SourcePhase →+ SourceTorsion)
    (targetBockstein : TargetPhase →+ TargetTorsion)
    (sourceGram : PositiveGram SourceResidue)
    (targetGram : PositiveGram TargetResidue) where
  integralMap : SourceIntegral →+ TargetIntegral
  residueMap : SourceResidue →ₗ[ℝ] TargetResidue
  torusMap : SourceTorus →+ TargetTorus
  phaseMap : SourcePhase →+ TargetPhase
  torsionMap : SourceTorsion →+ TargetTorsion
  realizationNaturality :
    ∀ integral,
      residueMap (sourceRealization integral) =
        targetRealization (integralMap integral)
  continuousQuotientNaturality :
    ∀ residue,
      torusMap (sourceContinuousQuotient residue) =
        targetContinuousQuotient (residueMap residue)
  phaseInclusionNaturality :
    ∀ continuous,
      phaseMap (sourcePhaseInclusion continuous) =
        targetPhaseInclusion (torusMap continuous)
  bocksteinNaturality :
    ∀ phase,
      targetBockstein (phaseMap phase) =
        torsionMap (sourceBockstein phase)
  gramTransport :
    GramTransport sourceGram targetGram residueMap
  integralCertificate : ObjectAddress
  residueCertificate : ObjectAddress
  torusCertificate : ObjectAddress
  phaseCertificate : ObjectAddress
  torsionCertificate : ObjectAddress
  gramCertificate : ObjectAddress
  monodromyNaturalityCertificate : ObjectAddress
  transitionAddress : ObjectAddress

end

end Mathematics.Homology
```
