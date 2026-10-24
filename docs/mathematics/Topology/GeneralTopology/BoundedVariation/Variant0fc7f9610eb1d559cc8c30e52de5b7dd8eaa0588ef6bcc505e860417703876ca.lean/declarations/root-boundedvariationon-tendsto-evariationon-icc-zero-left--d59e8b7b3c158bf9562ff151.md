# _root_.BoundedVariationOn.tendsto_eVariationOn_Icc_zero_left

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
      "line": 988,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a032bbfa-0b98-c910-96cc-9bbd71a92fc3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c79501e-3ff6-c39b-6ff6-a6bb6f24ca26",
  "kind": "theorem",
  "lexical_name": "_root_.BoundedVariationOn.tendsto_eVariationOn_Icc_zero_left",
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
  "slug": "root-boundedvariationon-tendsto-evariationon-icc-zero-left--d59e8b7b3c158bf9562ff151",
  "source": {
    "blob": "d8f3dcfb0b40e8f24ecb0d0b676b5a094265e902",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1012,
    "line": 988,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d59e8b7b3c158bf9562ff15151c91aaf921570eb3791b1903b29031504291b44",
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

Occurrence: `result:4c79501e-3ff6-c39b-6ff6-a6bb6f24ca26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 988–1012.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.BoundedVariationOn.tendsto_eVariationOn_Icc_zero_left
    [TopologicalSpace α] [OrderTopology α] {f : α → M} {s : Set α}
    (hf : BoundedVariationOn f s) {x : α} (h : ContinuousWithinAt f (s ∩ Iic x) x) :
    Tendsto (fun y ↦ eVariationOn f (s ∩ Icc y x)) (𝓝[s] x) (𝓝 0) := by
  rcases eq_or_neBot (𝓝[s ∩ Iio x] x) with h' | h'
  · apply tendsto_const_nhds.congr'
    have : s = (s ∩ Iio x) ∪ (s ∩ Ici x) := by grind
    nth_rewrite 1 [this]
    simp only [nhdsWithin_union, h', bot_le, sup_of_le_right]
    filter_upwards [self_mem_nhdsWithin] with y hy
    apply (eVariationOn.subsingleton _ (by grind [Set.Subsingleton])).symm
  apply (hf.tendsto_eVariationOn_Ico_zero x).congr (fun y ↦ ?_)
  rcases le_or_gt x y with hy | hy
  · rw [eVariationOn.subsingleton, eVariationOn.subsingleton] <;>
      grind [Set.Subsingleton]
  have W := eVariationOn_inter_Iio_eq_inter_Iic_of_continuousWithinAt (f := f)
    (s := s ∩ Icc y x) (a := x) ?_ ?_
  · convert! W using 2 <;> grind
  · rwa [show s ∩ Icc y x ∩ Iio x = (s ∩ Iio x) ∩ Ici y by grind, nhdsWithin_inter_of_mem']
    apply mem_nhdsWithin_of_mem_nhds
    exact Ici_mem_nhds hy
  · apply h.mono (by grind)

/-- If a function has bounded variation and is right-continuous at a point, then the variation on
small closed intervals to the right of this point tends to `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedVariation/Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.lean#L988).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8f3dcfb0b40e8f24ecb0d0b676b5a094265e902` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
