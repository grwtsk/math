# rtendsto_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8eb7edab-ebaa-8d80-0e5c-6b8f813a8dba",
  "kind": "theorem",
  "lexical_name": "rtendsto_nhds",
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
  "slug": "rtendsto-nhds--c6006f9b70331bfa65d1d48c",
  "source": {
    "blob": "f89a2f0cd02e7d5aac8d1022f5226152daa66387",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 35,
    "path": "GRWTSK/Topology/GeneralTopology/Partial/Variantf42d6cf26d17b2db2f5afac6f9e9025a95a27edc4709e2bf1f97012c9b270c0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6006f9b70331bfa65d1d48cdc953338252009c24abffefa862329958761bbb5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Partial/Variantf42d6cf26d17b2db2f5afac6f9e9025a95a27edc4709e2bf1f97012c9b270c0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8eb7edab-ebaa-8d80-0e5c-6b8f813a8dba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rtendsto_nhds {r : SetRel Y X} {l : Filter Y} {x : X} :
    RTendsto r l (𝓝 x) ↔ ∀ s, IsOpen s → x ∈ s → r.core s ∈ l :=
  all_mem_nhds_filter _ _ (fun _s _t => id) _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Partial/Variantf42d6cf26d17b2db2f5afac6f9e9025a95a27edc4709e2bf1f97012c9b270c0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Partial/Variantf42d6cf26d17b2db2f5afac6f9e9025a95a27edc4709e2bf1f97012c9b270c0b.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f89a2f0cd02e7d5aac8d1022f5226152daa66387` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
