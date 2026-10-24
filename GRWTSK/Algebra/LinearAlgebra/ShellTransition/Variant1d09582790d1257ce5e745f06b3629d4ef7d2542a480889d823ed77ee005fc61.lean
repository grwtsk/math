import Mathematics.Homology.Shell

/-!
# Coupled, certified shell transport

Integral skeleton, continuous residue, total phase, finite torsion, and Gram
geometry have distinct maps and receipts.  Realization, quotient, phase
inclusion, Bockstein, and Gram compatibility are proof-bearing laws rather
than certificate-shaped assertions.
-/

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
