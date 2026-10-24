# nhds_one_mul_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cc82f1f-f65a-c41f-e7a9-5e4b2a9a4ee6",
  "kind": "theorem",
  "lexical_name": "nhds_one_mul_nhds",
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
  "slug": "nhds-one-mul-nhds--0650fdf9bab8b080454ce188",
  "source": {
    "blob": "82746c2f2a4e25027e47de20068dc6441dfc4b20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 155,
    "path": "GRWTSK/Topology/GeneralTopology/Monoid/Variantdcd3f6148748b85622728c5ebc29d3e224a732f5eb43d23eadda397ac8f044a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0650fdf9bab8b080454ce1882fd1031e94ec287793327bdba24a1ae9e7946d3a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monoid/Variantdcd3f6148748b85622728c5ebc29d3e224a732f5eb43d23eadda397ac8f044a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cc82f1f-f65a-c41f-e7a9-5e4b2a9a4ee6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhds_one_mul_nhds {M} [MulOneClass M] [TopologicalSpace M] [ContinuousMul M] (a : M) :
    𝓝 (1 : M) * 𝓝 a = 𝓝 a :=
  ((le_nhds_mul _ _).trans_eq <| congr_arg _ (one_mul a)).antisymm <|
    le_mul_of_one_le_left' <| pure_le_nhds 1
#align nhds_one_mul_nhds nhds_one_mul_nhds
#align nhds_zero_add_nhds nhds_zero_add_nhds

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monoid/Variantdcd3f6148748b85622728c5ebc29d3e224a732f5eb43d23eadda397ac8f044a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monoid/Variantdcd3f6148748b85622728c5ebc29d3e224a732f5eb43d23eadda397ac8f044a6.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82746c2f2a4e25027e47de20068dc6441dfc4b20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
