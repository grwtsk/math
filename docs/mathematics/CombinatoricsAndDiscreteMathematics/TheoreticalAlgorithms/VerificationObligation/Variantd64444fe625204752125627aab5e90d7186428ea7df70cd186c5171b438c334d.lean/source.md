# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.VerificationObligation.Variantd64444fe625204752125627aab5e90d7186428ea7df70cd186c5171b438c334d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eba614e0d04178a4e2f915c725d966a597c268f3` · SHA-256 `d64444fe625204752125627aab5e90d7186428ea7df70cd186c5171b438c334d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ecosystem.Discovery

/-! # Ecosystem verification-obligation vocabulary -/

namespace Mathematics.Ecosystem

/--
The seventy-five required checks are named individually so receipts cannot
replace a missing check with an aggregate success bit.
-/
inductive VerificationObligation
  -- Repository fidelity: 1--6
  | trackedArtifactExactlyOnce
  | rawArtifactByteRoundTrip
  | submoduleStateRecorded
  | missingLfsPayloadReported
  | opaqueArtifactRetained
  | historicalRenameRepresented
  -- Build reconstruction: 7--12
  | exactLeanToolchainIdentified
  | packageGraphComplete
  | buildTargetsInventoried
  | successfulBuildReproducible
  | failedBuildRetained
  | capabilityEscalationRecorded
  -- Lean extraction: 13--21
  | compiledModulesRepresented
  | declarationsRepresented
  | declarationKindsCorrect
  | sourceSpansRecoverable
  | directDependenciesSound
  | axiomClosureSound
  | sorryDependencyDetected
  | attributesAndInstancesRepresented
  | notationEnvironmentRepresented
  -- Blueprint and task alignment: 22--27
  | blueprintNodesRepresented
  | blueprintDependenciesRepresented
  | leanBlueprintLinksRepresented
  | blueprintStatusesPreserved
  | issueLinksRemainProvenance
  | closedTasksCarryEvidence
  -- Global identity: 28--33
  | globalIdsCollisionResistant
  | localNamesProjectRelative
  | lineageDistinctFromIdentity
  | sameNameDeclarationsDistinct
  | sameContentNeedsRelation
  | versionIdentitiesImmutable
  -- Semantic alignment: 34--40
  | exactQuotientNeedsCertificate
  | similarityNotEquality
  | isomorphismNotDefinitionalEquality
  | bridgeEnvironmentScoped
  | conflictsPreserveBothSides
  | canonicalSelectionProfileRelative
  | alignmentAuthorityNonincreasing
  -- Relaxation: 41--48
  | immutableSourcePreserved
  | relaxationMonotoneOnSnapshot
  | closedObligationsCarryWitnesses
  | addedAlignmentsCarryEvidence
  | candidateFactsRemainCandidates
  | fixedPointScopeRelative
  | energyNotTheoremTruth
  | relaxationTraceReproducible
  -- Transport: 49--56
  | identityTransportIdentity
  | transportComposition
  | partialTransportDomainExposed
  | transportInverseRequiresProof
  | migrationDiscrepancyTyped
  | transportedPropertyNatural
  | transportAuthorityNonincreasing
  | pathDependentPortsRecorded
  -- Reflection: 57--68
  | targetSourceBuilds
  | newTheoremsKernelCheck
  | preservedTheoremsRemainProvable
  | noUnexpectedAxioms
  | noUnapprovedSorry
  | reflectionLicensePasses
  | reflectionAttributionPreserved
  | targetConventionsChecked
  | apiChangesDeclared
  | regressionWaiversExplicit
  | upstreamAcceptanceNotInferred
  | acceptedChangesReingested
  -- Continuous operation: 69--75
  | upstreamChangeNewSnapshot
  | dependencyChangeInvalidatesAffected
  | unaffectedCertificatesMayRemain
  | reflectedArtifactGetsUpstreamIdentity
  | rejectedPatchRetained
  | supersededAlignmentRetained
  | discoveryBoundedByRegistryCutoff
  deriving DecidableEq, Repr

inductive ObligationStatus
  | open
  | checking
  | rejected
  | verified
  deriving DecidableEq, Repr

structure VerificationObligationRecord where
  obligation : VerificationObligation
  status : ObligationStatus
  evidenceIds : List StableId
  environmentDigest : Digest
  recordDigest : Digest
  deriving DecidableEq, Repr

/-- Snapshot-relative formal semantics for every named obligation. -/
structure VerificationObligationSemantics where
  ecosystemDigest : Digest
  Holds : VerificationObligation → Prop
  semanticsDigest : Digest

/--
Exact coverage is a field, not inferred from a count.  A reported `verified`
status is usable only through `verified_sound`, which carries the corresponding
snapshot-relative proposition.
-/
structure VerificationObligationLedger where
  semantics : VerificationObligationSemantics
  records : List VerificationObligationRecord
  obligationsUnique :
    (records.map VerificationObligationRecord.obligation).Nodup
  complete :
    ∀ obligation,
      ∃ record ∈ records, record.obligation = obligation
  verified_sound :
    ∀ record ∈ records,
      record.status = .verified →
        semantics.Holds record.obligation
  ledgerDigest : Digest

end Mathematics.Ecosystem
```
