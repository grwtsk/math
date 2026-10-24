# exists_subset_iUnion_ball_radius_pos_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7b081e3fb55d3dc0d0930daaa872e2fb717f56a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/1167042d5d30a12f9bae561d76fb33b906f52c0d6413593e2894abfd2aa69752.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd563f8d-db4f-6b85-8fe9-f8f447869154",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e79fcd08-faff-b580-c3b5-27bf13dc2912",
  "kind": "theorem",
  "lexical_name": "exists_subset_iUnion_ball_radius_pos_lt",
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
  "slug": "exists-subset-iunion-ball-radius-pos-lt--253078a5972c3ba2e8b001e9",
  "source": {
    "blob": "b7b081e3fb55d3dc0d0930daaa872e2fb717f56a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 58,
    "path": "GRWTSK/Topology/MetricTopology/ShrinkingLemma/Variant1167042d5d30a12f9bae561d76fb33b906f52c0d6413593e2894abfd2aa69752.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:253078a5972c3ba2e8b001e96f1e99ba8bc5f63c6a0ff2ce5f89b88013c2626e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ShrinkingLemma/Variant1167042d5d30a12f9bae561d76fb33b906f52c0d6413593e2894abfd2aa69752.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e79fcd08-faff-b580-c3b5-27bf13dc2912`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_subset_iUnion_ball_radius_pos_lt {r : ι → ℝ} (hr : ∀ i, 0 < r i) (hs : IsClosed s)
    (uf : ∀ x ∈ s, { i | x ∈ ball (c i) (r i) }.Finite) (us : s ⊆ ⋃ i, ball (c i) (r i)) :
    ∃ r' : ι → ℝ, (s ⊆ ⋃ i, ball (c i) (r' i)) ∧ ∀ i, r' i ∈ Ioo 0 (r i) := by
  rcases exists_subset_iUnion_closed_subset hs (fun i => @isOpen_ball _ _ (c i) (r i)) uf us with
    ⟨v, hsv, hvc, hcv⟩
  have := fun i => exists_pos_lt_subset_ball (hr i) (hvc i) (hcv i)
  choose r' hlt hsub using this
  exact ⟨r', hsv.trans <| iUnion_mono hsub, hlt⟩

/-- Shrinking lemma for coverings by open balls in a proper metric space. A point-finite open cover
of a proper metric space by nonempty open balls can be shrunk to a new cover by nonempty open balls
so that each of the new balls has strictly smaller radius than the old one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ShrinkingLemma/Variant1167042d5d30a12f9bae561d76fb33b906f52c0d6413593e2894abfd2aa69752.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ShrinkingLemma/Variant1167042d5d30a12f9bae561d76fb33b906f52c0d6413593e2894abfd2aa69752.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7b081e3fb55d3dc0d0930daaa872e2fb717f56a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
