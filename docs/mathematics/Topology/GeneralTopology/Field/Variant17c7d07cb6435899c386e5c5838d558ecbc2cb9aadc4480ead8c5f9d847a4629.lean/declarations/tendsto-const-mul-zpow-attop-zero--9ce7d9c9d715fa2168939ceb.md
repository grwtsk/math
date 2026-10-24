# tendsto_const_mul_zpow_atTop_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d9b5b1bd09e0a534c466806f580604d4a2d257c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/17c7d07cb6435899c386e5c5838d558ecbc2cb9aadc4480ead8c5f9d847a4629.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8625955-d916-8ef3-eb51-96e801ac4749",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:505938db-9ab6-7173-e5f8-6abc51759b17",
  "kind": "theorem",
  "lexical_name": "tendsto_const_mul_zpow_atTop_zero",
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
  "slug": "tendsto-const-mul-zpow-attop-zero--9ce7d9c9d715fa2168939ceb",
  "source": {
    "blob": "9d9b5b1bd09e0a534c466806f580604d4a2d257c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 168,
    "path": "GRWTSK/Topology/GeneralTopology/Field/Variant17c7d07cb6435899c386e5c5838d558ecbc2cb9aadc4480ead8c5f9d847a4629.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ce7d9c9d715fa2168939cebbed115f65eaa94da98ef3af4c5eeef2fd9c739ec",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Field/Variant17c7d07cb6435899c386e5c5838d558ecbc2cb9aadc4480ead8c5f9d847a4629.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:505938db-9ab6-7173-e5f8-6abc51759b17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_const_mul_zpow_atTop_zero {n : ℤ} {c : 𝕜} (hn : n < 0) :
    Tendsto (fun x => c * x ^ n) atTop (𝓝 0) :=
  mul_zero c ▸ Filter.Tendsto.const_mul c (tendsto_zpow_atTop_zero hn)
#align tendsto_const_mul_zpow_at_top_zero tendsto_const_mul_zpow_atTop_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Field/Variant17c7d07cb6435899c386e5c5838d558ecbc2cb9aadc4480ead8c5f9d847a4629.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Field/Variant17c7d07cb6435899c386e5c5838d558ecbc2cb9aadc4480ead8c5f9d847a4629.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d9b5b1bd09e0a534c466806f580604d4a2d257c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
