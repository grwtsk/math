# prototypeSurgery

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d16dcf988aa49aef97bb6c9f769b11f73a54eea50ec4b2c85afba66d964b529",
  "kind": "def",
  "lexical_name": "prototypeSurgery",
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
  "slug": "prototypesurgery--7e9fa61aa2b261f33b6e83f3",
  "source": {
    "blob": "c86c45deb786683f45c9882237b633326537950a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 188,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrototypeSurgery/Variant703d77555252d0aad541a437567d72bf317247b4c2ad5971eb10bcc06ef57ebc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e9fa61aa2b261f33b6e83f3e70ec197009f818dddbf1d96603b0dc649f9f778",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrototypeSurgery/Variant703d77555252d0aad541a437567d72bf317247b4c2ad5971eb10bcc06ef57ebc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d16dcf988aa49aef97bb6c9f769b11f73a54eea50ec4b2c85afba66d964b529`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def prototypeSurgery :
    WorldModelSurgery PrototypeCell PrototypeModel Bool Bool where
  identity := ⟨"prototype:surgery:accepted:replace-B-section-v1"⟩
  proposal := prototypeSurgeryProposal
  patch := prototypeSurgeryPatch
  sourceDigest := prototypeSurgerySource
  activeRegionIdentity := prototypeStabilityScope.activeRegion
  reductionTrace := prototypeSurgeryTrace
  preCarrier := prototypeCarrier
  postCarrier := prototypeCarrier
  preCarrierCells := Equiv.refl PrototypeCell
  postCarrierCells := Equiv.refl PrototypeCell
  preSite := prototypeSite
  postSite := prototypeSite
  prePresheaf := prototypePresheaf
  postPresheaf := prototypePresheaf
  selectedSite := prototypeSurgerySite
  candidate := prototypeAnalyticSite
  candidateCellSelected := by simp [prototypeSurgerySite, prototypeAnalyticSite]
  beforeSections := prototypeBeforeSections
  afterSections := prototypeAfterSections
  attachingBoundary := prototypeBoundary
  boundaryComparison := prototypeBoundaryCertificate
  boundaryIdentityMatches := rfl
  unchangedComplement := prototypeComplementCertificate
  complementUsesSections := ⟨rfl, rfl, rfl⟩
  localReplacement := prototypeLocalReplacement
  translationUpdates := [prototypeSurgeryTranslationUpdate]
  proofDependencyUpdates := [prototypeDependencyUpdate]
  authorityPreservation :=
    { source := .certifiedSource
      target := .certifiedSource
      preserved := rfl }
  versionTransition :=
    { oldRegistryRoot := prototypeRollbackRecord.preChangeRegistryRoot
      newRegistryRoot := prototypeRollbackRecord.postChangeRegistryRoot
      changedObjects := [prototypeLocalReplacement.identity]
      newVersions := [prototypeLocalReplacement.targetVersion]
      changedObjectsVersioned := rfl }
  rollback := some prototypeRollbackCertificate
  newObligations := []
  gluingCondition := True
  review := prototypeSurgeryReview
  authorization := prototypeSurgeryAuthorization
  reviewMatchesProposal := rfl
  authorizationReviewMatches := rfl
  authorizationExact := prototypeAuthorization_exact
  reviewIndependent := by decide

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrototypeSurgery/Variant703d77555252d0aad541a437567d72bf317247b4c2ad5971eb10bcc06ef57ebc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrototypeSurgery/Variant703d77555252d0aad541a437567d72bf317247b4c2ad5971eb10bcc06ef57ebc.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c86c45deb786683f45c9882237b633326537950a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
