# isCompact_of_weaklyLocallyCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bb92010-3394-bc89-319c-9b2d157d0476",
  "kind": "lemma",
  "lexical_name": "isCompact_of_weaklyLocallyCompact",
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
  "slug": "iscompact-of-weaklylocallycompact--8973e8c9e4e475a3d6360298",
  "source": {
    "blob": "e4004d63f34492a732fdab9f81902120c9a912cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 109,
    "path": "GRWTSK/Topology/GeneralTopology/Coherent/Variantc5f0a67fad6f55405b0bbcc9ff7855072a6ea28298fd6b3fa5415b6662152f0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8973e8c9e4e475a3d6360298454fe5cfc3bd3f34dd1f81fa7618a8fd02c67f1c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Coherent/Variantc5f0a67fad6f55405b0bbcc9ff7855072a6ea28298fd6b3fa5415b6662152f0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bb92010-3394-bc89-319c-9b2d157d0476`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCompact_of_weaklyLocallyCompact [WeaklyLocallyCompactSpace X] :
    IsCoherentWith {K : Set X | IsCompact K} :=
  of_nhds exists_compact_mem_nhds

end Topology.IsCoherentWith
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Coherent/Variantc5f0a67fad6f55405b0bbcc9ff7855072a6ea28298fd6b3fa5415b6662152f0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Coherent/Variantc5f0a67fad6f55405b0bbcc9ff7855072a6ea28298fd6b3fa5415b6662152f0e.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4004d63f34492a732fdab9f81902120c9a912cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
