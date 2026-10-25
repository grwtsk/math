# SuccessorAutomorphismConnector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8aad45f70d649f1ed1c15df114d3d0d0848c90bbce2a59361f2f6454a590a643",
  "kind": "structure",
  "lexical_name": "SuccessorAutomorphismConnector",
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
  "slug": "successorautomorphismconnector--223c08c09a381668f79f5b70",
  "source": {
    "blob": "16d1228788e1bd963801a838e6b87dbf1a9ce4a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuccessorCompatibility/Variant2cec25354df7bc6c7e53675d372faac00560f617583e08550cbb77013427ccd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:223c08c09a381668f79f5b70f430adb4403595a564dc820f3c420c31c3343fb4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuccessorCompatibility/Variant2cec25354df7bc6c7e53675d372faac00560f617583e08550cbb77013427ccd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8aad45f70d649f1ed1c15df114d3d0d0848c90bbce2a59361f2f6454a590a643`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SuccessorAutomorphismConnector
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {low high :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule}
    (connector :
      SuccessorCutConnector low high) where
  reduceAutomorphism :
    high.Automorphism → low.Automorphism
  reduceIdentity :
    reduceAutomorphism 1 = 1
  reduceMultiplication :
    ∀ left right,
      reduceAutomorphism (left * right) =
        reduceAutomorphism left *
          reduceAutomorphism right
  stateEquivariant :
    ∀ automorphism state,
      connector.projectState
          (high.closure.crossedProduct.action.act
            automorphism state) =
        low.closure.crossedProduct.action.act
          (reduceAutomorphism automorphism)
          (connector.projectState state)
  lawEquivariant :
    ∀ automorphism law,
      connector.projectLaw
          (high.cutEquivariance.lawAction
            automorphism law) =
        low.cutEquivariance.lawAction
          (reduceAutomorphism automorphism)
          (connector.projectLaw law)
  persistentObservableCompatibility : Prop
  persistentObservableCompatibilityProof :
    persistentObservableCompatibility

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuccessorCompatibility/Variant2cec25354df7bc6c7e53675d372faac00560f617583e08550cbb77013427ccd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuccessorCompatibility/Variant2cec25354df7bc6c7e53675d372faac00560f617583e08550cbb77013427ccd3.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16d1228788e1bd963801a838e6b87dbf1a9ce4a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
