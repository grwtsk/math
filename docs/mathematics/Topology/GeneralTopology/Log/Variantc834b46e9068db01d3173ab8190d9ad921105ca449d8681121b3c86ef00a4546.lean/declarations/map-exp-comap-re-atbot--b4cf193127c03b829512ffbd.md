# map_exp_comap_re_atBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba56a36d-f892-79fe-7e43-4812a95f83be",
  "kind": "theorem",
  "lexical_name": "map_exp_comap_re_atBot",
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
  "slug": "map-exp-comap-re-atbot--b4cf193127c03b829512ffbd",
  "source": {
    "blob": "16b7dc54e9d21b24579258a729dcca8bf09cddee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 220,
    "path": "GRWTSK/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4cf193127c03b829512ffbd4cb633d33059700def8c9cbf473da0c4e79db2ad",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba56a36d-f892-79fe-7e43-4812a95f83be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_exp_comap_re_atBot : map exp (comap re atBot) = 𝓝[≠] 0 := by
  rw [← comap_exp_nhds_zero, map_comap, range_exp, nhdsWithin]
#align complex.map_exp_comap_re_at_bot Complex.map_exp_comap_re_atBot

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Log/Variantc834b46e9068db01d3173ab8190d9ad921105ca449d8681121b3c86ef00a4546.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16b7dc54e9d21b24579258a729dcca8bf09cddee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
