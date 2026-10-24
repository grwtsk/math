# tendsto_inv_zero_atTop

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
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/17c7d07cb6435899c386e5c5838d558ecbc2cb9aadc4480ead8c5f9d847a4629.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16785299-d3c0-16fc-960e-0fbaae9d576e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06e5fe53-1d78-be1f-5007-892b9d847257",
  "kind": "theorem",
  "lexical_name": "tendsto_inv_zero_atTop",
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
  "slug": "tendsto-inv-zero-attop--2384938f1545def5d8e03e21",
  "source": {
    "blob": "9d9b5b1bd09e0a534c466806f580604d4a2d257c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 121,
    "path": "GRWTSK/Topology/GeneralTopology/Field/Variant17c7d07cb6435899c386e5c5838d558ecbc2cb9aadc4480ead8c5f9d847a4629.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2384938f1545def5d8e03e217728f1e37574e6fdad18e18155aac71a4a777397",
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

Occurrence: `result:06e5fe53-1d78-be1f-5007-892b9d847257`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_inv_zero_atTop : Tendsto (fun x : 𝕜 => x⁻¹) (𝓝[>] (0 : 𝕜)) atTop := by
  refine' (atTop_basis' 1).tendsto_right_iff.2 fun b hb => _
  have hb' : 0 < b := by positivity
  filter_upwards [Ioc_mem_nhdsWithin_Ioi
      ⟨le_rfl, inv_pos.2 hb'⟩]with x hx using(le_inv hx.1 hb').1 hx.2
#align tendsto_inv_zero_at_top tendsto_inv_zero_atTop

/-- The function `r ↦ r⁻¹` tends to `0` on the right as `r → +∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Field/Variant17c7d07cb6435899c386e5c5838d558ecbc2cb9aadc4480ead8c5f9d847a4629.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Field/Variant17c7d07cb6435899c386e5c5838d558ecbc2cb9aadc4480ead8c5f9d847a4629.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d9b5b1bd09e0a534c466806f580604d4a2d257c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
