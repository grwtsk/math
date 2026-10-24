# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Stability.Variantf546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dad975309875f306cc4226d6ce070933d15c4eee` · SHA-256 `f546c673c4458ed08ff3432cf53c37a171ba6d98938065019534cd022f71e4be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.NNReal.Basic
import Surface.ContinuousAssurance.WorldModel.Convolution

/-!
# Scoped stability and the hard proof gate

Numerical energy is meaningful only inside an exact scope: active region,
cover, versions, assumptions, policy, checker set, horizon, profile, thresholds,
and evidence identity.  Every term records its unit, scale, normalization,
version, and approximation status.

The proof gate is conjunctive and hard.  A failed gate makes a state
inadmissible regardless of how small its numerical energy is.  Nonnegative
coefficients do not by themselves prove monotonicity or convergence.
-/

namespace Surface.ContinuousAssurance.WorldModel

/-- Exact scope of one stability claim. -/
structure StabilityScope where
  activeRegion : ArtifactIdentity
  finiteCover : ArtifactIdentity
  modelVersions : ArtifactIdentity
  translationVersions : ArtifactIdentity
  assumptionContext : ArtifactIdentity
  authorityPolicy : ArtifactIdentity
  checkerSet : ArtifactIdentity
  timeHorizon : Nat
  stabilityProfile : ArtifactIdentity
  thresholdTuple : ArtifactIdentity
  evidenceIdentity : ArtifactIdentity
  deriving DecidableEq, Repr

/-- Semantic unit attached to one normalized energy term. -/
inductive StabilityUnit
  | normalizedScalar
  | localResidual
  | translationDefect
  | obstructionMass
  | coverageDeficit
  | anchoringDistance
  deriving DecidableEq, Repr

/-- One versioned, normalized, approximation-aware energy component. -/
structure StabilityTerm where
  value : NNReal
  unit : StabilityUnit
  scale : NNReal
  normalization : ArtifactIdentity
  version : ArtifactIdentity
  approximation : ApproximationStatus

/-- Reviewed coefficients for the six scoped energy terms. -/
structure StabilityProfile where
  identity : ArtifactIdentity
  localCoefficient : NNReal
  reflectionCoefficient : NNReal
  translationCoefficient : NNReal
  cohomologyCoefficient : NNReal
  coverageCoefficient : NNReal
  anchoringCoefficient : NNReal
  normalizationEvidence : List ArtifactIdentity

/-- Inputs to the scoped numerical functional. -/
structure StabilityTerms where
  localTerm : StabilityTerm
  reflectionTerm : StabilityTerm
  translationTerm : StabilityTerm
  cohomologyTerm : StabilityTerm
  coverageTerm : StabilityTerm
  anchoringTerm : StabilityTerm

/-- Exact weighted stability functional for one declared profile. -/
def stabilityEnergy
    (profile : StabilityProfile)
    (terms : StabilityTerms) : NNReal :=
  profile.localCoefficient * terms.localTerm.value +
  profile.reflectionCoefficient * terms.reflectionTerm.value +
  profile.translationCoefficient * terms.translationTerm.value +
  profile.cohomologyCoefficient * terms.cohomologyTerm.value +
  profile.coverageCoefficient * terms.coverageTerm.value +
  profile.anchoringCoefficient * terms.anchoringTerm.value

/-- Every proof-validity condition is explicit rather than folded into energy. -/
structure ProofGate where
  promotedDeclarationsResolve : Prop
  proofCertificatesTypecheck : Prop
  assumptionsPresent : Prop
  trustedBaseClosuresMatch : Prop
  authorityUnchanged : Prop
  requiredDependenciesActive : Prop
  representationMigrationsCertified : Prop
  changedObjectsPassReplay : Prop

/-!
## Proof stability bridges

Representation and dependency metadata do not preserve a theorem by
themselves.  The two records below expose the exact additional proof data:
an equivalence-induced predicate transport for representation changes, and a
fresh proof replay under the updated dependency identity.
-/

/-- A representation migration is semantic only through an explicit equivalence. -/
structure CertifiedRepresentationMigration (Old New : Type*) where
  sourceRepresentation : ArtifactIdentity
  targetRepresentation : ArtifactIdentity
  equivalence : Old ≃ New
  sourceAuthority : AuthorityClass
  targetAuthority : AuthorityClass
  authorityPreserved : targetAuthority = sourceAuthority
  evidence : ArtifactIdentity

/-- A predicate transported along the inverse representation remains true. -/
theorem proof_stable_under_representation_migration
    {Old New : Type*}
    (migration : CertifiedRepresentationMigration Old New)
    (predicate : Old → Prop)
    (value : Old)
    (proof : predicate value) :
    predicate (migration.equivalence.symm (migration.equivalence value)) := by
  simpa using proof

/-- The representation bridge cannot promote source authority. -/
theorem representation_migration_authority_nonpromotion
    {Old New : Type*}
    (migration : CertifiedRepresentationMigration Old New) :
    migration.targetAuthority = migration.sourceAuthority :=
  migration.authorityPreserved

/-- A dependency update supports a theorem only after its dependencies and proof replay. -/
structure DependencyUpdateProofReplay (conclusion : Prop) where
  priorDependencyIdentity : ArtifactIdentity
  updatedDependencyIdentity : ArtifactIdentity
  requiredDependencies : List ArtifactIdentity
  dependenciesPresent : Prop
  dependenciesPresentProof : dependenciesPresent
  checkerIdentity : ArtifactIdentity
  replayEvidence : ArtifactIdentity
  replayedProof : conclusion
  sourceAuthority : AuthorityClass
  targetAuthority : AuthorityClass
  authorityPreserved : targetAuthority = sourceAuthority

/-- A checked replay, not dependency metadata alone, exposes the conclusion. -/
theorem proof_stable_under_dependency_update
    {conclusion : Prop}
    (replay : DependencyUpdateProofReplay conclusion) :
    conclusion :=
  replay.replayedProof

/-- Dependency updates cannot promote theorem authority. -/
theorem dependency_update_authority_nonpromotion
    {conclusion : Prop}
    (replay : DependencyUpdateProofReplay conclusion) :
    replay.targetAuthority = replay.sourceAuthority :=
  replay.authorityPreserved

/-- A proof gate passes only when all eight proof-validity checks pass. -/
def ProofGate.Passes (gate : ProofGate) : Prop :=
  gate.promotedDeclarationsResolve ∧
  gate.proofCertificatesTypecheck ∧
  gate.assumptionsPresent ∧
  gate.trustedBaseClosuresMatch ∧
  gate.authorityUnchanged ∧
  gate.requiredDependenciesActive ∧
  gate.representationMigrationsCertified ∧
  gate.changedObjectsPassReplay

/-- Separate certificate families retain their exact evidence and scope. -/
structure LocalNumericalStabilityCertificate where
  scope : StabilityScope
  evidence : ArtifactIdentity
  bound : NNReal

structure ReflectionStabilityCertificate where
  scope : StabilityScope
  evidence : ArtifactIdentity
  bound : NNReal

structure TranslationStabilityCertificate where
  scope : StabilityScope
  evidence : ArtifactIdentity
  bound : NNReal

structure CohomologicalStabilityCertificate where
  scope : StabilityScope
  evidence : ArtifactIdentity
  bound : NNReal

structure ProofStabilityCertificate where
  scope : StabilityScope
  evidence : ArtifactIdentity
  gate : ProofGate
  gatePasses : gate.Passes

structure GluingStabilityCertificate where
  scope : StabilityScope
  evidence : ArtifactIdentity
  compatible : Prop
  compatibilityProof : compatible

structure CouplingStabilityCertificate where
  scope : StabilityScope
  evidence : ArtifactIdentity
  bound : NNReal

/-- A system certificate requires both its numerical threshold and hard gate. -/
structure ScopedSystemStabilityCertificate where
  scope : StabilityScope
  profile : StabilityProfile
  terms : StabilityTerms
  threshold : NNReal
  proofGate : ProofGate
  proofGatePasses : proofGate.Passes
  energyBound : stabilityEnergy profile terms ≤ threshold
  localCertificate : LocalNumericalStabilityCertificate
  reflectionCertificate : ReflectionStabilityCertificate
  translationCertificate : TranslationStabilityCertificate
  cohomological : CohomologicalStabilityCertificate
  proofCertificate : ProofStabilityCertificate
  gluing : GluingStabilityCertificate
  coupling : CouplingStabilityCertificate

/-- A failed proof gate blocks construction of a scoped system certificate. -/
theorem failed_proof_gate_blocks_stability
    (scope : StabilityScope)
    (profile : StabilityProfile)
    (terms : StabilityTerms)
    (threshold : NNReal)
    (gate : ProofGate)
    (failed : ¬ gate.Passes) :
    ¬ ∃ certificate : ScopedSystemStabilityCertificate,
      certificate.scope = scope ∧
      certificate.profile = profile ∧
      certificate.terms = terms ∧
      certificate.threshold = threshold ∧
      certificate.proofGate = gate := by
  rintro ⟨certificate, _, _, _, _, gateEq⟩
  subst gate
  exact failed certificate.proofGatePasses

/-- A small numerical fact alone cannot establish arbitrary stability. -/
theorem small_update_alone_not_stability :
    ¬ (∀ stable : Prop, (0 : ℚ) ≤ 1 → stable) := by
  intro promote
  exact promote False (by norm_num)

/-- Nonnegative coefficients alone cannot establish arbitrary monotonicity. -/
theorem nonnegative_coefficients_alone_not_monotonicity :
    ¬ (∀ monotone : Prop, (0 : NNReal) ≤ 1 → monotone) := by
  intro promote
  exact promote False (by norm_num)

end Surface.ContinuousAssurance.WorldModel
```
