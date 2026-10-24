# seq_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20a750ce-e3c3-e1ee-ecf5-ecbc9f7da7fb",
  "kind": "theorem",
  "lexical_name": "seq_assoc",
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
  "slug": "seq-assoc--79ebf00add0247b06af20d5d",
  "source": {
    "blob": "20f11329d87c768ca917149752e989ed780e83a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 908,
    "line": 896,
    "path": "GRWTSK/Topology/GeneralTopology/Map/Variant43b34b133e19845daaf5d7100be4b87820166b5db0af6ccd4c1c9139b0c16822.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79ebf00add0247b06af20d5dd17264f31c0b94552d105f9900e8a6b7ed1b2a84",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Map/Variant43b34b133e19845daaf5d7100be4b87820166b5db0af6ccd4c1c9139b0c16822.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20a750ce-e3c3-e1ee-ecf5-ecbc9f7da7fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 896–908.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem seq_assoc (x : Filter α) (g : Filter (α → β)) (h : Filter (β → γ)) :
    seq h (seq g x) = seq (seq (map (· ∘ ·) h) g) x := by
  refine le_antisymm (le_seq fun s hs t ht => ?_) (le_seq fun s hs t ht => ?_)
  · rcases mem_seq_iff.1 hs with ⟨u, hu, v, hv, hs⟩
    rcases mem_map_iff_exists_image.1 hu with ⟨w, hw, hu⟩
    grw [← hs, ← hu]
    rw [← Set.seq_seq]
    exact seq_mem_seq hw (seq_mem_seq hv ht)
  · rcases mem_seq_iff.1 ht with ⟨u, hu, v, hv, ht⟩
    grw [← ht]
    rw [Set.seq_seq]
    exact seq_mem_seq (seq_mem_seq (image_mem_map hs) hu) hv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Map/Variant43b34b133e19845daaf5d7100be4b87820166b5db0af6ccd4c1c9139b0c16822.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Map/Variant43b34b133e19845daaf5d7100be4b87820166b5db0af6ccd4c1c9139b0c16822.lean#L896).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20f11329d87c768ca917149752e989ed780e83a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
