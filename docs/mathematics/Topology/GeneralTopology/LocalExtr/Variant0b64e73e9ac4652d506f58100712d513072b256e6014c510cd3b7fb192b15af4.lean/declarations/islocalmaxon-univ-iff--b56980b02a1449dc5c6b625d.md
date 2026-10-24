# isLocalMaxOn_univ_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18138d79-d9fc-337f-8770-17dee09f8878",
  "kind": "lemma",
  "lexical_name": "isLocalMaxOn_univ_iff",
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
  "slug": "islocalmaxon-univ-iff--b56980b02a1449dc5c6b625d",
  "source": {
    "blob": "ff8cad5ca9897f8d1087a143393dd6afdafb4951",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 142,
    "path": "GRWTSK/Topology/GeneralTopology/LocalExtr/Variant0b64e73e9ac4652d506f58100712d513072b256e6014c510cd3b7fb192b15af4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b56980b02a1449dc5c6b625d789e8605d1dc8d052a2eaae4eeb76aa425edd045",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalExtr/Variant0b64e73e9ac4652d506f58100712d513072b256e6014c510cd3b7fb192b15af4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18138d79-d9fc-337f-8770-17dee09f8878`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocalMaxOn_univ_iff : IsLocalMaxOn f univ a ↔ IsLocalMax f a := by
  simp only [IsLocalMaxOn, IsLocalMax, nhdsWithin_univ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalExtr/Variant0b64e73e9ac4652d506f58100712d513072b256e6014c510cd3b7fb192b15af4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalExtr/Variant0b64e73e9ac4652d506f58100712d513072b256e6014c510cd3b7fb192b15af4.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff8cad5ca9897f8d1087a143393dd6afdafb4951` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
