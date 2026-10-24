# map_extend_nhds_of_boundaryless

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09a353249074034587a21ea85ad54863903cab2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b3d8a078e3788d20792e6ebc8001c3ab5d1b798e96671b76f46093fc0fbd940.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6af300f3-b609-6bb4-baf0-6c2ccfb736ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7097061d-14ca-1e8b-665a-9a18432706c8",
  "kind": "theorem",
  "lexical_name": "map_extend_nhds_of_boundaryless",
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
  "slug": "map-extend-nhds-of-boundaryless--16e672a0de8590c3302e7cf9",
  "source": {
    "blob": "09a353249074034587a21ea85ad54863903cab2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 124,
    "path": "GRWTSK/Topology/GeneralTopology/ExtChartAt/Variant2b3d8a078e3788d20792e6ebc8001c3ab5d1b798e96671b76f46093fc0fbd940.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16e672a0de8590c3302e7cf996ee3d39edab89362345ad8324b02d328d8bca86",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtChartAt/Variant2b3d8a078e3788d20792e6ebc8001c3ab5d1b798e96671b76f46093fc0fbd940.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7097061d-14ca-1e8b-665a-9a18432706c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_extend_nhds_of_boundaryless [I.Boundaryless] {x : M} (hx : x ∈ f.source) :
    map (f.extend I) (𝓝 x) = 𝓝 (f.extend I x) := by
  rw [f.map_extend_nhds hx, I.range_eq_univ, nhdsWithin_univ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtChartAt/Variant2b3d8a078e3788d20792e6ebc8001c3ab5d1b798e96671b76f46093fc0fbd940.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtChartAt/Variant2b3d8a078e3788d20792e6ebc8001c3ab5d1b798e96671b76f46093fc0fbd940.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09a353249074034587a21ea85ad54863903cab2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
