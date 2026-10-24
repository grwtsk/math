# constructibleTopologySubbasis_subset_isConstructible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07902416-8d32-4df3-a767-2372e5bd7587",
  "kind": "lemma",
  "lexical_name": "constructibleTopologySubbasis_subset_isConstructible",
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
  "slug": "constructibletopologysubbasis-subset-isconstructible--6d125d6e5e163478fdb0800b",
  "source": {
    "blob": "f98f98795fab0e91c19f00d21e0cd9e8fbf986c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 130,
    "path": "GRWTSK/Topology/GeneralTopology/ConstructibleTopology/Variant5731fcc765bbc03817adf014c3a60bae87bda522a5d74476ea9c373096692338.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d125d6e5e163478fdb0800bc7ad5d72303fa2a12529a4fca68c65d994012531",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConstructibleTopology/Variant5731fcc765bbc03817adf014c3a60bae87bda522a5d74476ea9c373096692338.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07902416-8d32-4df3-a767-2372e5bd7587`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma constructibleTopologySubbasis_subset_isConstructible
    [CompactSpace X] [QuasiSeparatedSpace X] :
    constructibleTopologySubbasis X ⊆ { s | IsConstructible s } := by
  simp [← latticeClosure_constructibleTopologySubbasis]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConstructibleTopology/Variant5731fcc765bbc03817adf014c3a60bae87bda522a5d74476ea9c373096692338.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConstructibleTopology/Variant5731fcc765bbc03817adf014c3a60bae87bda522a5d74476ea9c373096692338.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f98f98795fab0e91c19f00d21e0cd9e8fbf986c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
