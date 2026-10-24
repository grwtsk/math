# range_cfcₙHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69768fb899bfd8f8603196e0287fce9d51d923bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12c2e29a-8462-7323-505d-650a3116e451",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9dce3ae-3d79-de8f-5fd5-75e82b77e64d",
  "kind": "theorem",
  "lexical_name": "range_cfcₙHom",
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
  "slug": "range-cfc-hom--bb1e1db44bdebc61449690a3",
  "source": {
    "blob": "69768fb899bfd8f8603196e0287fce9d51d923bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 171,
    "path": "GRWTSK/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb1e1db44bdebc61449690a3b3a00deeed963dd0e1323f745aa3c31b32c4027d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9dce3ae-3d79-de8f-5fd5-75e82b77e64d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_cfcₙHom {a : A} (ha : p a) :
    NonUnitalStarAlgHom.range (cfcₙHom ha (R := 𝕜)) = elemental 𝕜 a := by
  rw [← NonUnitalStarAlgebra.map_top, ← ContinuousMapZero.elemental_eq_top,
    NonUnitalStarAlgebra.elemental, ← NonUnitalStarSubalgebra.topologicalClosure_map _
    (cfcₙHom_isClosedEmbedding ha (R := 𝕜)).isClosedMap (cfcₙHom_continuous ha),
    NonUnitalStarAlgHom.map_adjoin]
  congr
  simpa using cfcₙHom_id ha

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69768fb899bfd8f8603196e0287fce9d51d923bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
