# prototypeSurgery

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3f8cf79d2aad6a9abd6064ff591a913f3e5789bfd77b6b32bd311fa26b2fada",
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
  "slug": "prototypesurgery--40ff7a0b3e340c467a561593",
  "source": {
    "blob": "a85f27371b575d02c57baafe8561298a49c30647",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 180,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrototypeSurgery/Variant71f29c8364ea37b290958a19098caee0391a9217e36ffdf9b4794d688b8fe95b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40ff7a0b3e340c467a56159330f0fc72596674c0d59f1b4dea9786a1ec6908c3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrototypeSurgery/Variant71f29c8364ea37b290958a19098caee0391a9217e36ffdf9b4794d688b8fe95b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3f8cf79d2aad6a9abd6064ff591a913f3e5789bfd77b6b32bd311fa26b2fada`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–228.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrototypeSurgery/Variant71f29c8364ea37b290958a19098caee0391a9217e36ffdf9b4794d688b8fe95b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrototypeSurgery/Variant71f29c8364ea37b290958a19098caee0391a9217e36ffdf9b4794d688b8fe95b.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a85f27371b575d02c57baafe8561298a49c30647` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
