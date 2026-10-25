# globalLocalCoherenceObstructionExample_is_open

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d02d92f407de48207713702ad3682194cadc2cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 896,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/513a42c685ca0a765629460b265fbb7f3c47acb04118dd6aed86e386902f986c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b850410f-effc-5560-4158-26cc28778434",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e544920-7c67-aa61-952a-91f290486f63",
  "kind": "theorem",
  "lexical_name": "globalLocalCoherenceObstructionExample_is_open",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "globallocalcoherenceobstructionexample-is-open--002ce5f51447743f196ef4a5",
  "source": {
    "blob": "6d02d92f407de48207713702ad3682194cadc2cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1036,
    "line": 896,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant513a42c685ca0a765629460b265fbb7f3c47acb04118dd6aed86e386902f986c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:002ce5f51447743f196ef4a58aac62c1758ec5d6c76b0b4758843e6a7179f3fe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant513a42c685ca0a765629460b265fbb7f3c47acb04118dd6aed86e386902f986c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e544920-7c67-aa61-952a-91f290486f63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 896–1036.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem globalLocalCoherenceObstructionExample_is_open :
    globalLocalCoherenceObstructionExample.IsOpen := by
  simp [CoherenceObstruction.IsOpen, globalLocalCoherenceObstructionExample]

#print axioms AssuranceLevel.development_is_lowest
#print axioms assuranceAdvance_monotone
#print axioms ProgressivePipelineStage.assuranceLevel_monotone_on_edge
#print axioms Claim.AtLevel.advance_preserves_status
#print axioms ExternalEvidenceAtLevel.advance_preserves_evidence
#print axioms TraceableTransformation.lossy_has_recovery
#print axioms InjectiveTransformation.preserves_distinctions
#print axioms ProgressiveEvidence.advance_preserves_authority
#print axioms ProgressiveEvidence.advance_preserves_evidence_class
#print axioms ProgressiveEvidence.advance_derives_from_source
#print axioms ProgressiveEvidence.audit_preserves_derivation_link
#print axioms obligationGraph_bounded_and_finite
#print axioms shutdownGrace_le_250
#print axioms obligationGraph_root_target
#print axioms external_model_output_cannot_establish_proposition
#print axioms ProofCandidate.cannot_change_requested_proposition
#print axioms ProofCandidate.cannot_change_human_category
#print axioms CheckedCandidate.proof
#print axioms CheckedCandidate.requires_verified_certificate
#print axioms checked_candidate_not_project_adoption
#print axioms DiagnosticSummary.retains_recovery_reference
#print axioms DeveloperCommunicationReport.level_is_development
#print axioms DeveloperCommunicationReport.project_not_adopted
#print axioms DeveloperCommunicationReport.tracked_source_unchanged
#print axioms DeveloperCommunicationReport.summary_has_recovery
#print axioms ReviewRecord.reviewer_is_independent
#print axioms AuthorizationRecord.authorizes_binds_proposal
#print axioms AuthorizationRecord.authorizes_binds_full_request
#print axioms AuthorizationRecord.authorizes_binds_snapshot
#print axioms AuthorizationRecord.authorizes_binds_patch
#print axioms AuthorizationRecord.authorizes_binds_statement
#print axioms AuthorizationRecord.authorizes_binds_category
#print axioms AuthorizationRecord.cannot_authorize_another_proposal
#print axioms AuthorizationRecord.cannot_authorize_another_snapshot
#print axioms AuthorizationRecord.cannot_authorize_another_patch
#print axioms AuthorizationRecord.cannot_authorize_another_statement
#print axioms AuthorizationRecord.cannot_authorize_another_category
#print axioms accepted_source_change_requires_authorization
#print axioms unauthorized_proposal_cannot_be_accepted
#print axioms interactiveDevelopmentRuntimeRefinement_notSubmitted
#print axioms classifyClaimsAt_level_independent
#print axioms localDevelopmentModelComponent_authority
#print axioms developmentExample_obligations_bounded
#print axioms developmentExample_candidate_identity_preserved
#print axioms developmentExample_audit_preserves_authority_and_lineage
#print axioms developmentExample_checked_not_adopted
#print axioms developmentExample_authorization_snapshot_bound

#print axioms authorityClass_pairwise_disjoint
#print axioms checkingBoundaryRoles_pairwise_disjoint
#print axioms evidenceClass_pairwise_disjoint
#print axioms proof_of_verified
#print axioms proof_of_conditionally_verified
#print axioms no_external_certificate_elimination
#print axioms no_conjectural_certificate_elimination
#print axioms no_unsubstantiated_certificate_elimination
#print axioms Claim.assumptions_match_certificate
#print axioms Claim.metadata_matches_certificate
#print axioms CertifiedBridge.conclusion
#print axioms conclusion_of_external_evidence
#print axioms OwnershipRegistry.exists_unique_owner
#print axioms OwnershipRegistry.reexport_does_not_change_owner
#print axioms Project.leanSemantics_source_checking_boundary
#print axioms Project.cubicalAgda_source_checking_boundary
#print axioms Project.rustAudit_source_execution_boundary
#print axioms Project.providerAdapter_source_execution_boundary
#print axioms DependencyGraph.wellFoundedCertificate
#print axioms DependencyGraph.noDependencyCycle
#print axioms DependencyGraph.noTransitiveSelfDependency
#print axioms assuranceProjectGraph_acyclic
#print axioms canonicalStageGraph_wellFounded
#print axioms canonicalStageGraph_acyclic
#print axioms canonicalStageDependency_mem_spec
#print axioms canonicalStageTransition_satisfies_spec
#print axioms collectEvidence_source_execution_boundary
#print axioms classifyClaims_source_execution_boundary
#print axioms rustOwnedStage_source_not_certified
#print axioms OperationSupport.preservesValidity
#print axioms Refinement.step_refines
#print axioms rustAuditRuntimeRefinement_notSubmitted
#print axioms RuntimeCertificate.check_sound
#print axioms collectEvidencePostcondition
#print axioms classifyClaimsSound
#print axioms gateDecisionSound
#print axioms attestationProvenanceSound
#print axioms emitRefinementRequestsPostcondition
#print axioms SemanticStage.transition_satisfies_postcondition
#print axioms SemanticStage.toPipelineStage_spec_stage
#print axioms auditValidStatePreserved
#print axioms auditTransitionSound
#print axioms auditObservationSound
#print axioms modeledAuditController_does_not_submit_rust_bridge
#print axioms AssuranceRun.cannot_authorize_controller_version
#print axioms AssuranceRun.cannot_alter_governing_policy
#print axioms strictlyIncreasingReflexiveChain_no_cycle
#print axioms classify_same_version_self_check
#print axioms classifyReview_eq_independentReview_iff
#print axioms WorkspaceModel.every_nonLean_canonical_source_rooted
#print axioms WorkspaceModel.lean_root_separate
#print axioms WorkspaceModel.generated_root_adapter_has_canonical_owner
#print axioms WorkspaceModel.generated_evidence_is_not_certified_source
#print axioms WorkspaceModel.authority_assignment_sound
#print axioms WorkspaceModel.component_is_not_kernel_trusted_base
#print axioms WorkspaceModel.declarative_artifact_is_not_certified_source
#print axioms canonicalWorkspace_nonLean_rooted
#print axioms canonicalWorkspace_roots_separate
#print axioms canonicalWorkspace_root_analytic_config_owned
#print axioms canonicalOwnership_unique
#print axioms verifiedArithmeticClaim_proof
#print axioms conditionalIdentityClaim_proof
#print axioms externalRuntimeClaim_status
#print axioms conditionalIdentityClaim_assumptions
#print axioms externalRuntimeClaim_metadata
#print axioms continuousAssuranceModel_typechecks
#print axioms versionSeparatedRun_cannot_self_authorize
#print axioms externalAttestation_requires_certifiedBridge
#print axioms canonicalStageDependencies_no_cycle
#print axioms LiteratureTranslationRecord.source_is_external
#print axioms LiteratureTranslationRecord.target_not_kernel
#print axioms KnownMaximalStateAdaptation.not_exact_equivalence
#print axioms CanonicalIndex.identifiers_unique
#print axioms CanonicalIndex.mem_queryObject_iff
#print axioms CanonicalIndexValidation.checked_conditions
#print axioms SerializedCanonicalIndex.representation_chain
#print axioms CanonicalIndexPatchReview.targets_exact_roots
#print axioms AuthorizedReviewedCanonicalIndexPatch.same_digest
#print axioms FiniteCommunicationSite.restrict_identity
#print axioms FiniteCommunicationSite.restrict_composition
#print axioms FiniteCechComplex.differential_sq_zero
#print axioms FiniteCechComplex.coboundary_is_cocycle
#print axioms canonicalIndexSnapshotExample_valid
#print axioms canonicalIndexPatchExample_has_representation_change
#print axioms canonicalIndexSnapshotExample_serialization_chain
#print axioms canonicalIndexPatchExample_review_authorization_same_root
#print axioms globalLocalCoherenceObstructionExample_is_open

end Surface.ContinuousAssurance
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant513a42c685ca0a765629460b265fbb7f3c47acb04118dd6aed86e386902f986c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant513a42c685ca0a765629460b265fbb7f3c47acb04118dd6aed86e386902f986c.lean#L896).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d02d92f407de48207713702ad3682194cadc2cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
