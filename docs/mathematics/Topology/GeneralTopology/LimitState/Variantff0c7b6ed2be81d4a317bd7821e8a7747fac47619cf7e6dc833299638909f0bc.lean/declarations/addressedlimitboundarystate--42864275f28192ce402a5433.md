# AddressedLimitBoundaryState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a81fd1fbb3baadd2e87ef0c3d54c6359af22bae86f87b52a26c85420b3be269",
  "kind": "structure",
  "lexical_name": "AddressedLimitBoundaryState",
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
  "slug": "addressedlimitboundarystate--42864275f28192ce402a5433",
  "source": {
    "blob": "92cb8edf7a139cf4df767f442133195394e7c9dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 38,
    "path": "GRWTSK/Topology/GeneralTopology/LimitState/Variantff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42864275f28192ce402a5433e433ee3821364ed809f457d6fbe30d3d27900bd5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LimitState/Variantff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a81fd1fbb3baadd2e87ef0c3d54c6359af22bae86f87b52a26c85420b3be269`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AddressedLimitBoundaryState
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule)
    (PersistentId : Type uPersistent) where
  projectiveState :
    LimitBoundaryState system
  boundaryAddress :
    Mathematics.StratifiedBoundary.Frontier.BoundaryAddress
  persistentId : PersistentId
  addressMatchesProjectiveState : Prop
  addressCompatibilityProof :
    addressMatchesProjectiveState

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LimitState/Variantff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LimitState/Variantff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92cb8edf7a139cf4df767f442133195394e7c9dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
