# liminf_add_of_right_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ee5707ee51c5397200418945834adb440a68c1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 886,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64063d5b4ca988c4a862f0cbbdeb498eae3683b328a91269a270ffc9ba6675bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ecf85635-92e6-4267-7f78-d5d4877cc6f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e90c4f83-1c49-1473-7211-395c1a34e8aa",
  "kind": "theorem",
  "lexical_name": "liminf_add_of_right_tendsto_zero",
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
  "slug": "liminf-add-of-right-tendsto-zero--10000b69ae28948fbd7b53c0",
  "source": {
    "blob": "7ee5707ee51c5397200418945834adb440a68c1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 896,
    "line": 886,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant64063d5b4ca988c4a862f0cbbdeb498eae3683b328a91269a270ffc9ba6675bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10000b69ae28948fbd7b53c040d8e7efa5f2daa34b5269e2d6280067644902bd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant64063d5b4ca988c4a862f0cbbdeb498eae3683b328a91269a270ffc9ba6675bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e90c4f83-1c49-1473-7211-395c1a34e8aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 886–896.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liminf_add_of_right_tendsto_zero {u : Filter ι} {g : ι → ℝ≥0∞} (hg : u.Tendsto g (𝓝 0))
    (f : ι → ℝ≥0∞) : u.liminf (f + g) = u.liminf f := by
  refine le_antisymm ?_ <| liminf_le_liminf <| .of_forall <| by simp
  refine liminf_le_of_le (by isBoundedDefault) fun b hb ↦ ?_
  rw [Filter.le_liminf_iff']
  rintro a hab
  filter_upwards [hb, ENNReal.tendsto_nhds_zero.1 hg _ <| lt_min (tsub_pos_of_lt hab) one_pos]
    with i hfg hg
  exact ENNReal.le_of_add_le_add_right (hg.trans_lt <| by simp).ne <|
    (add_le_of_le_tsub_left_of_le hab.le <| hg.trans <| min_le_left ..).trans hfg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant64063d5b4ca988c4a862f0cbbdeb498eae3683b328a91269a270ffc9ba6675bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant64063d5b4ca988c4a862f0cbbdeb498eae3683b328a91269a270ffc9ba6675bd.lean#L886).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ee5707ee51c5397200418945834adb440a68c1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
