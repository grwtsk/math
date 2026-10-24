# comap_nhds_neBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8379ad59570f5caa5b4910890bf7b10599da31f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4729e976-d00e-dd5e-f676-7d5b9c074b4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95560c0a-4619-21bd-5ca6-3dc37a72ce78",
  "kind": "theorem",
  "lexical_name": "comap_nhds_neBot",
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
  "slug": "comap-nhds-nebot--26f8b23da31e5f2079e7c565",
  "source": {
    "blob": "8379ad59570f5caa5b4910890bf7b10599da31f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 132,
    "path": "GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26f8b23da31e5f2079e7c565478d4ee3ac61366305fdf4c7adeb9dff0a085c53",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95560c0a-4619-21bd-5ca6-3dc37a72ce78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_nhds_neBot (di : DenseInducing i) (b : β) : NeBot (comap i (𝓝 b)) :=
  comap_neBot fun s hs => by
    rcases mem_closure_iff_nhds.1 (di.dense b) s hs with ⟨_, ⟨ha, a, rfl⟩⟩
    exact ⟨a, ha⟩
#align dense_inducing.comap_nhds_ne_bot DenseInducing.comap_nhds_neBot

variable [TopologicalSpace γ]

/-- If `i : α → β` is a dense inducing, then any function `f : α → γ` "extends" to a function `g =
  DenseInducing.extend di f : β → γ`. If `γ` is Hausdorff and `f` has a continuous extension, then
  `g` is the unique such extension. In general, `g` might not be continuous or even extend `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8379ad59570f5caa5b4910890bf7b10599da31f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
