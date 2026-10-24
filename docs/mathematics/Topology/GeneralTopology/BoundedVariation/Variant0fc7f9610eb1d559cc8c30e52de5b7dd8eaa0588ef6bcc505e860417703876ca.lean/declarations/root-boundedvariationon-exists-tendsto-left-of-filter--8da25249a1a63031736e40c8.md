# _root_.BoundedVariationOn.exists_tendsto_left_of_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8f3dcfb0b40e8f24ecb0d0b676b5a094265e902",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 809,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bdbce130-ec18-1c25-96f5-798e89f4fcc9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45d96f4d-c49c-3914-1c28-62d429c166cf",
  "kind": "theorem",
  "lexical_name": "_root_.BoundedVariationOn.exists_tendsto_left_of_filter",
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
  "slug": "root-boundedvariationon-exists-tendsto-left-of-filter--8da25249a1a63031736e40c8",
  "source": {
    "blob": "d8f3dcfb0b40e8f24ecb0d0b676b5a094265e902",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 830,
    "line": 809,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8da25249a1a63031736e40c89fc0fe2b2f01892c6c083e133b8a58002d369437",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedVariation/Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45d96f4d-c49c-3914-1c28-62d429c166cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 809–830.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.BoundedVariationOn.exists_tendsto_left_of_filter [CompleteSpace M]
    {f : α → M} {s : Set α} (hf : BoundedVariationOn f s)
    (L : Filter α) (hL : ∀ y ∈ s, s ∩ Ici y ∈ L) (hs : s.Nonempty) :
    ∃ l, Tendsto f L (𝓝 l) := by
  rcases hs with ⟨x₀, hx₀⟩
  rcases Filter.eq_or_neBot L with h | h
  · simp only [h, tendsto_bot, exists_const_iff, and_true]
    exact ⟨f x₀⟩
  apply CompleteSpace.complete
  apply EMetric.cauchy_iff.2 ⟨by simp [neBot_iff.mp h], fun ε εpos ↦ ?_⟩
  obtain ⟨y, y_mem, hy⟩ : ∃ y ∈ s, eVariationOn f (s ∩ Ici y) < ε := by
    have W := hf.tendsto_eVariationOn_Ici_zero_of_filter L hL
    rcases (((tendsto_order.1 W).2 ε εpos).and (hL x₀ hx₀)).exists with ⟨y, hy, h'y⟩
    exact ⟨y, h'y.1, hy⟩
  refine ⟨f '' (s ∩ Ici y), ?_, ?_⟩
  · simp only [mem_map]
    apply mem_of_superset (hL y y_mem) (subset_preimage_image _ _)
  · rintro - ⟨a, ha, rfl⟩ - ⟨b, hb, rfl⟩
    exact (eVariationOn.edist_le _ ha hb).trans_lt hy

/-- If a function has bounded variation, then the variation on small closed-open
intervals to the left of any point tends to `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedVariation/Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.lean#L809).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8f3dcfb0b40e8f24ecb0d0b676b5a094265e902` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
