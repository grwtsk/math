-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RustExpectedUpdateCertificate.Variant934178479677cd26a3988cb46f60acf94edc8f8118b8d03027080a110d99781c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"934178479677cd26a3988cb46f60acf94edc8f8118b8d03027080a110d99781c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.Algorithms.SourceCorpus.RustExpectedUpdateCertificate.Variant934178479677cd26a3988cb46f60acf94edc8f8118b8d03027080a110d99781c","mathematical_subject":"Computation.Algorithms","original_sha256":"934178479677cd26a3988cb46f60acf94edc8f8118b8d03027080a110d99781c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:ccc163e2d2ea79c03c8c9b85/workspace/Generated/XYZRouteFixture.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.XYZ.Transport
import Mathlib.Tactic

/-!
# Generated finite XYZ route and conformance fixture

This quarantine module mirrors the finite V1 golden corpus.  Its contracts,
route observations, proposal classifications, and Rust certificates are finite
conformance evidence only.  In particular, a matching hash or runtime record
does not establish universal Rust correctness or promote executable evidence
to Lean theorem authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RustExpectedUpdateCertificate.Variant934178479677cd26a3988cb46f60acf94edc8f8118b8d03027080a110d99781c

public section

namespace Generated.XYZRouteFixture

open Surface.Core.XYZ

@[surface_candidate] abbrev FixtureHost := Fin 9
@[surface_candidate] abbrev FixtureEdgeId := Fin 16

@[surface_candidate] def fixtureHostCode : StableFiniteCode FixtureHost where
  code := Fin.val
  injective := Fin.val_injective
  codeLt := fun host ↦ by simpa using host.isLt

@[surface_candidate] def fixtureEdgeCode : StableFiniteCode FixtureEdgeId where
  code := Fin.val
  injective := Fin.val_injective
  codeLt := fun edge ↦ by simpa using edge.isLt

private def fixtureEdge
    (edgeId : FixtureEdgeId) (source target : FixtureHost)
    (tension : Int) (tieBreak : Nat) :
    DeclaredEdge FixtureHost FixtureEdgeId :=
  ⟨edgeId, source, target, tension, tieBreak⟩

@[surface_candidate] def fixtureInsertionEdges :
    List (DeclaredEdge FixtureHost FixtureEdgeId) :=
  [
    fixtureEdge 0 0 2 5 30,
    fixtureEdge 1 0 1 (-1) 20,
    fixtureEdge 2 0 3 5 10,
    fixtureEdge 3 1 5 2 2,
    fixtureEdge 4 1 0 3 3,
    fixtureEdge 5 1 4 0 1,
    fixtureEdge 6 3 6 1 4,
    fixtureEdge 7 3 3 0 6,
    fixtureEdge 8 3 6 (-2) 9,
    fixtureEdge 9 2 7 0 8,
    fixtureEdge 10 2 5 (-3) 5,
    fixtureEdge 11 4 2 0 1,
    fixtureEdge 12 5 6 0 1,
    fixtureEdge 13 6 1 0 1
  ]

@[surface_candidate] def fixtureCanonicalEdges :
    List (DeclaredEdge FixtureHost FixtureEdgeId) :=
  [
    fixtureEdge 1 0 1 (-1) 20,
    fixtureEdge 2 0 3 5 10,
    fixtureEdge 0 0 2 5 30,
    fixtureEdge 5 1 4 0 1,
    fixtureEdge 3 1 5 2 2,
    fixtureEdge 4 1 0 3 3,
    fixtureEdge 10 2 5 (-3) 5,
    fixtureEdge 9 2 7 0 8,
    fixtureEdge 8 3 6 (-2) 9,
    fixtureEdge 7 3 3 0 6,
    fixtureEdge 6 3 6 1 4,
    fixtureEdge 11 4 2 0 1,
    fixtureEdge 12 5 6 0 1,
    fixtureEdge 13 6 1 0 1
  ]

@[surface_candidate] def fixtureEdges :
    Finset (DeclaredEdge FixtureHost FixtureEdgeId) :=
  fixtureInsertionEdges.toFinset

@[surface_candidate] def fixtureContractHash : Hash256 where
  algorithm := "sha256"
  hex := "04975cd90797c913f8426f483c25113487e7153d01e8a3a224ba050aa94981c5"

@[surface_candidate] def fixtureSnapshotHash : Hash256 where
  algorithm := "sha256"
  hex := "e3cdcf86d1fb2616ad2d29ad197a3d656f4a106930aaaac3118494ad17078e02"

@[surface_candidate] def fixtureWrongContractHash : Hash256 where
  algorithm := "sha256"
  hex := "f39ccf7f05cffbff8251ef2c77175f89c6aaaf59e6ee5004449514533d90d7ba"

@[simp, surface_candidate]
theorem fixtureContractHash_valid : fixtureContractHash.Valid := by
  simp [fixtureContractHash, Hash256.Valid, IsLowerHexDigit,
    lowerHexAlphabet] <;> decide +kernel

@[simp, surface_candidate]
theorem fixtureSnapshotHash_valid : fixtureSnapshotHash.Valid := by
  simp [fixtureSnapshotHash, Hash256.Valid, IsLowerHexDigit,
    lowerHexAlphabet] <;> decide +kernel

@[simp, surface_candidate]
theorem fixtureWrongContractHash_valid : fixtureWrongContractHash.Valid := by
  simp [fixtureWrongContractHash, Hash256.Valid, IsLowerHexDigit,
    lowerHexAlphabet] <;> decide +kernel

@[surface_candidate] def fixtureContract :
    RoutingContract FixtureHost FixtureEdgeId where
  schemaVersion := xyzRoutingSchemaVersionV1
  algorithmVersion := xyzRoutingAlgorithmVersionV1
  serializationVersion := xyzRoutingSerializationVersionV1
  traversalMode := .breadthFirst
  hostCode := fixtureHostCode
  edgeCode := fixtureEdgeCode
  tensionMin := -3
  tensionMax := 5
  tieBreakBound := 31
  edges := fixtureEdges
  fixedFormat := xyzFormatV1
  invariantId := normalizedTristimulusInvariantId
  expectedUpdateId := xyzIdentityExpectedUpdateId
  contractHash := fixtureContractHash

private theorem fixtureEdgeFinsets_equal :
    fixtureInsertionEdges.toFinset = fixtureCanonicalEdges.toFinset := by
  apply Finset.ext
  intro edge
  simp only [List.mem_toFinset]
  simp [fixtureInsertionEdges, fixtureCanonicalEdges, fixtureEdge]
  aesop

@[simp, surface_candidate]
theorem fixtureContract_sortedCanonicalEdges :
    fixtureContract.sortedCanonicalEdges = fixtureCanonicalEdges := by
  unfold RoutingContract.sortedCanonicalEdges
  rw [show fixtureContract.edges = fixtureCanonicalEdges.toFinset by
    simp [fixtureContract, fixtureEdges, fixtureEdgeFinsets_equal]]
  apply (List.toFinset_sort fixtureContract.canonicalEdgeLE
    (by
      simp [fixtureCanonicalEdges, fixtureEdge] :
        fixtureCanonicalEdges.Nodup)).2
  simp [fixtureCanonicalEdges, fixtureEdge, fixtureContract,
    RoutingContract.canonicalEdgeLE, RoutingContract.canonicalEdgeLexValue,
    fixtureHostCode, fixtureEdgeCode, Prod.Lex.toLex_le_toLex]

@[surface_candidate]
theorem fixtureContract_valid : fixtureContract.Valid := by
  unfold RoutingContract.Valid
  simp only [fixtureContract_sortedCanonicalEdges]
  simp [fixtureContract, FixedFormat.Valid, fixtureEdges,
    fixtureInsertionEdges, fixtureCanonicalEdges, fixtureEdge,
    fixtureHostCode, fixtureEdgeCode,
    RoutingContract.edgeKey,
    RoutingContract.hashMatches, Hash256.Valid, IsLowerHexDigit,
    lowerHexAlphabet, FitsSignedBits, signedHalfRange, fixtureContractHash] <;>
    decide +kernel

@[surface_candidate]
theorem ordered_edge_sorting :
    fixtureContract.sortedCanonicalEdges.map (fun edge ↦ edge.edgeId.val) =
      [1, 2, 0, 5, 3, 4, 10, 9, 8, 7, 6, 11, 12, 13] := by
  simp [fixtureCanonicalEdges, fixtureEdge]

@[surface_candidate]
theorem bfs_route_through_cycle :
    fixtureContract.orderedRoute 0 =
      ⟨[0, 1, 3, 2, 4, 5, 6, 7], [1, 2, 0, 5, 3, 8, 9]⟩ := by
  simp [fixtureContract_sortedCanonicalEdges, fixtureCanonicalEdges, fixtureEdge,
    RoutingContract.orderedRoute, RoutingContract.routeLoop,
    RoutingContract.initialRouteState, RoutingContract.processQueuedHost,
    RoutingContract.discoverOutgoing, RoutingContract.discoverOne,
    RoutingContract.orderedOutgoingEdges, RoutingContract.outgoingEdges]

@[surface_candidate]
theorem self_loop_ignored_after_visit :
    (7 : FixtureEdgeId) ∉
      (fixtureContract.orderedRoute 0).discoveryEdges := by
  simp [bfs_route_through_cycle]

@[surface_candidate]
theorem disconnected_empty_route :
    fixtureContract.orderedRoute 8 = ⟨[8], []⟩ := by
  simp [fixtureContract_sortedCanonicalEdges, fixtureCanonicalEdges, fixtureEdge,
    RoutingContract.orderedRoute, RoutingContract.routeLoop,
    RoutingContract.initialRouteState, RoutingContract.processQueuedHost,
    RoutingContract.discoverOutgoing, RoutingContract.discoverOne,
    RoutingContract.orderedOutgoingEdges, RoutingContract.outgoingEdges]

/-! ## Exact update vectors -/

@[surface_candidate] def equalEnergyWhite : FixedXYZ xyzFormatV1 where
  x := ⟨1_000_000, by decide⟩
  y := ⟨1_000_000, by decide⟩
  z := ⟨1_000_000, by decide⟩

@[surface_candidate] def primaryX : FixedXYZ xyzFormatV1 where
  x := ⟨3_000_000, by decide⟩
  y := ⟨0, by decide⟩
  z := ⟨0, by decide⟩

@[surface_candidate] def primaryY : FixedXYZ xyzFormatV1 where
  x := ⟨0, by decide⟩
  y := ⟨3_000_000, by decide⟩
  z := ⟨0, by decide⟩

@[surface_candidate] def primaryZ : FixedXYZ xyzFormatV1 where
  x := ⟨0, by decide⟩
  y := ⟨0, by decide⟩
  z := ⟨3_000_000, by decide⟩

@[surface_candidate] def asymmetricNormalized : FixedXYZ xyzFormatV1 where
  x := ⟨2_000_000, by decide⟩
  y := ⟨750_000, by decide⟩
  z := ⟨250_000, by decide⟩

private def revisioned
    (revision : Revision) (value : FixedXYZ xyzFormatV1) :
    RevisionedXYZ xyzFormatV1 :=
  ⟨revision, value⟩

@[surface_candidate] def whiteAt0 : RevisionedXYZ xyzFormatV1 :=
  revisioned ⟨0, by decide⟩ equalEnergyWhite

@[surface_candidate] def primaryXAt1 : RevisionedXYZ xyzFormatV1 :=
  revisioned ⟨1, by decide⟩ primaryX

@[surface_candidate] def primaryYAt2 : RevisionedXYZ xyzFormatV1 :=
  revisioned ⟨2, by decide⟩ primaryY

@[surface_candidate] def primaryZAt3 : RevisionedXYZ xyzFormatV1 :=
  revisioned ⟨3, by decide⟩ primaryZ

@[surface_candidate] def primaryYAt4 : RevisionedXYZ xyzFormatV1 :=
  revisioned ⟨4, by decide⟩ primaryY

@[surface_candidate] def asymmetricAt42 : RevisionedXYZ xyzFormatV1 :=
  revisioned ⟨42, by decide⟩ asymmetricNormalized

@[surface_candidate] def whiteAtMaxRevision : RevisionedXYZ xyzFormatV1 :=
  revisioned ⟨4_294_967_295, by decide⟩ equalEnergyWhite

@[surface_candidate]
theorem identity_expected_update :
    leanExpectedUpdate asymmetricAt42 = asymmetricAt42 := by
  rfl

@[surface_candidate]
theorem equal_energy_normalized_invariant :
    normalizedTristimulusInvariant xyzFormatV1 equalEnergyWhite := by
  decide

/-! ## Proof-bearing finite Rust certificates -/

@[surface_candidate]
structure RustExpectedUpdateCertificate where
  input : RevisionedXYZ xyzFormatV1
  rustOutput : RevisionedXYZ xyzFormatV1
  conformanceClaim : Prop
  conformanceClaim_eq :
    conformanceClaim = (rustOutput = leanExpectedUpdate input)
  conformanceCertified : conformanceClaim

/-- The runtime-observed output carried by a concrete certificate.  The input
argument makes the public gate explicit; the conformance predicate below is
what proves that this certificate belongs to that input. -/
@[surface_candidate] def rustExpectedUpdate
    (certificate : RustExpectedUpdateCertificate)
    (_input : RevisionedXYZ xyzFormatV1) : RevisionedXYZ xyzFormatV1 :=
  certificate.rustOutput

@[surface_candidate] def RustExpectedUpdateConforms
    (certificate : RustExpectedUpdateCertificate)
    (input : RevisionedXYZ xyzFormatV1) : Prop :=
  certificate.input = input ∧ certificate.conformanceClaim

@[surface_candidate]
theorem rustExpectedUpdate_eq_leanExpectedUpdate
    (certificate : RustExpectedUpdateCertificate)
    (input : RevisionedXYZ xyzFormatV1)
    (h : RustExpectedUpdateConforms certificate input) :
    rustExpectedUpdate certificate input = leanExpectedUpdate input := by
  unfold rustExpectedUpdate
  rw [← h.1]
  rw [← certificate.conformanceClaim_eq]
  exact h.2

private def identityCertificate
    (input : RevisionedXYZ xyzFormatV1) : RustExpectedUpdateCertificate where
  input := input
  rustOutput := input
  conformanceClaim := input = leanExpectedUpdate input
  conformanceClaim_eq := rfl
  conformanceCertified := rfl

@[surface_candidate] def whiteCertificate := identityCertificate whiteAt0
@[surface_candidate] def primaryXCertificate := identityCertificate primaryXAt1
@[surface_candidate] def primaryYCertificate := identityCertificate primaryYAt2
@[surface_candidate] def primaryZCertificate := identityCertificate primaryZAt3
@[surface_candidate] def minMaxCertificate := identityCertificate primaryYAt4
@[surface_candidate] def asymmetricCertificate := identityCertificate asymmetricAt42
@[surface_candidate] def maxRevisionCertificate :=
  identityCertificate whiteAtMaxRevision

@[surface_candidate]
theorem golden_update_certificates_checked :
    RustExpectedUpdateConforms whiteCertificate whiteAt0 ∧
    RustExpectedUpdateConforms primaryXCertificate primaryXAt1 ∧
    RustExpectedUpdateConforms primaryYCertificate primaryYAt2 ∧
    RustExpectedUpdateConforms primaryZCertificate primaryZAt3 ∧
    RustExpectedUpdateConforms minMaxCertificate primaryYAt4 ∧
    RustExpectedUpdateConforms asymmetricCertificate asymmetricAt42 ∧
    RustExpectedUpdateConforms maxRevisionCertificate whiteAtMaxRevision := by
  simp [RustExpectedUpdateConforms, whiteCertificate, primaryXCertificate,
    primaryYCertificate, primaryZCertificate, minMaxCertificate,
    asymmetricCertificate, maxRevisionCertificate, identityCertificate,
    leanExpectedUpdate]

/-! ## Proposal observations -/

@[surface_candidate] def sourceSnapshot : SourceSnapshot FixtureHost where
  schemaVersion := xyzRoutingSchemaVersionV1
  contractHash := fixtureContractHash
  startHost := 0
  sourceHost := 5
  source := revisioned ⟨42, by decide⟩ equalEnergyWhite
  snapshotHash := fixtureSnapshotHash

@[surface_candidate] def baseRegister : LwwRegister xyzFormatV1 :=
  ⟨some (revisioned ⟨41, by decide⟩ asymmetricNormalized)⟩

@[surface_candidate] def baseProposal :
    RawProposal FixtureHost FixtureEdgeId where
  schemaVersion := xyzRoutingSchemaVersionV1
  contractHash := fixtureContractHash
  sourceSnapshotHash := fixtureSnapshotHash
  algorithmVersion := xyzRoutingAlgorithmVersionV1
  revision := 42
  edgeId := 12
  claimedSource := 5
  claimedTarget := 6
  source := ⟨1_000_000, 1_000_000, 1_000_000⟩
  proposed := ⟨1_000_000, 1_000_000, 1_000_000⟩

@[surface_candidate] def replayRegister : LwwRegister xyzFormatV1 :=
  ⟨some (revisioned ⟨42, by decide⟩ equalEnergyWhite)⟩

@[surface_candidate] def staleRegister : LwwRegister xyzFormatV1 :=
  ⟨some (revisioned ⟨43, by decide⟩ equalEnergyWhite)⟩

@[surface_candidate] def conflictRegister : LwwRegister xyzFormatV1 :=
  ⟨some (revisioned ⟨42, by decide⟩ asymmetricNormalized)⟩

@[surface_candidate]
inductive FixtureVerificationStatus where
  | accepted
  | replay
  | rejected (reason : ProposalRejection)
deriving DecidableEq, Repr

@[surface_candidate] def verificationStatus :
    VerificationResult FixtureHost FixtureEdgeId → FixtureVerificationStatus
  | .rejected reason => .rejected reason
  | .admitted admitted =>
      match admitted.mergeDecision with
      | .accepted _ => .accepted
      | .replay _ => .replay
      | .stale _ _ => .rejected .staleRevision
      | .conflict _ _ => .rejected .equalRevisionConflict

@[surface_candidate]
theorem accepted_newer_revision :
    verificationStatus
      (verifyProposal fixtureContract sourceSnapshot baseRegister baseProposal) =
        .accepted := by
  simp [verificationStatus, verifyProposal, fixtureContract_valid,
    sourceSnapshot, baseRegister, baseProposal, fixtureContract,
    findDeclaredEdge, fixtureCanonicalEdges, fixtureEdge,
    rangeCheckedXYZ?, InRawRange, xyzFormatV1, equalEnergyWhite,
    asymmetricNormalized, revisioned, leanExpectedUpdate, merge]

@[surface_candidate]
theorem identical_replay_observed :
    verificationStatus
      (verifyProposal fixtureContract sourceSnapshot replayRegister baseProposal) =
        .replay := by
  decide

@[surface_candidate]
theorem stale_rejection_observed :
    verificationStatus
      (verifyProposal fixtureContract sourceSnapshot staleRegister baseProposal) =
        .rejected .staleRevision := by
  decide

@[surface_candidate]
theorem equal_revision_conflict_rejection_observed :
    verificationStatus
      (verifyProposal fixtureContract sourceSnapshot conflictRegister baseProposal) =
        .rejected .equalRevisionConflict := by
  decide

@[surface_candidate]
theorem wrong_edge_rejection_observed :
    verificationStatus (verifyProposal fixtureContract sourceSnapshot
      baseRegister { baseProposal with edgeId := 15 }) =
        .rejected .undeclaredEdge := by
  decide

@[surface_candidate]
theorem wrong_hash_rejection_observed :
    verificationStatus (verifyProposal fixtureContract sourceSnapshot
      baseRegister { baseProposal with contractHash := fixtureWrongContractHash }) =
        .rejected .invalidContractHash := by
  decide

@[surface_candidate]
theorem wrong_proposed_value_rejection_observed :
    verificationStatus (verifyProposal fixtureContract sourceSnapshot
      baseRegister { baseProposal with proposed :=
        ⟨2_000_000, 750_000, 250_000⟩ }) =
        .rejected .expectedUpdateMismatch := by
  decide

end Generated.XYZRouteFixture
