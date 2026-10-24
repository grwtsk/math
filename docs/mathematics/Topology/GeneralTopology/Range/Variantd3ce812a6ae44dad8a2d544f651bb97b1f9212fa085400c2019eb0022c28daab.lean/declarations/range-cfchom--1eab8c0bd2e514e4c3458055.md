# range_cfcHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a77a5d8-1e96-17e6-0dfc-618f86c0efe6",
  "kind": "theorem",
  "lexical_name": "range_cfcHom",
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
  "slug": "range-cfchom--1eab8c0bd2e514e4c3458055",
  "source": {
    "blob": "436c8ca481110b3a1d8f2a50e84542d25390af67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 62,
    "path": "GRWTSK/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1eab8c0bd2e514e4c3458055c7bfa223025168798c3a6a5c4ab054779dd25ddc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a77a5d8-1e96-17e6-0dfc-618f86c0efe6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_cfcHom {a : A} (ha : p a) :
    (cfcHom ha (R := 𝕜)).range = elemental 𝕜 a := by
  rw [StarAlgHom.range_eq_map_top, ← ContinuousMap.elemental_id_eq_top, StarAlgebra.elemental,
    ← StarSubalgebra.topologicalClosure_map _ _ (cfcHom_isClosedEmbedding ha (R := 𝕜)).isClosedMap
      (cfcHom_continuous ha), StarAlgHom.map_adjoin]
  congr
  simpa using cfcHom_id ha

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `436c8ca481110b3a1d8f2a50e84542d25390af67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
