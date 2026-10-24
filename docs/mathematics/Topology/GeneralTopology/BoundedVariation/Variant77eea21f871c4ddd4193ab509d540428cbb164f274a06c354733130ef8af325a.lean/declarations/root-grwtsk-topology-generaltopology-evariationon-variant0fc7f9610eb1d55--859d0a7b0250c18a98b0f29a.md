# _root_.GRWTSK.Topology.GeneralTopology.EVariationOn.Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.BoundedVariationOn.exists_tendsto_left_of_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:501bd672-3359-2da9-84b4-92bb3f15624a",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.EVariationOn.Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.BoundedVariationOn.exists_tendsto_left_of_filter",
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
  "slug": "root-grwtsk-topology-generaltopology-evariationon-variant0fc7f9610eb1d55--859d0a7b0250c18a98b0f29a",
  "source": {
    "blob": "b6113d88eb9b6e6624402490680f712822dc8815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 838,
    "line": 817,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:859d0a7b0250c18a98b0f29ab8877eddee7725e4eacb5c7f176cb6ee94959297",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:501bd672-3359-2da9-84b4-92bb3f15624a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 817–838.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.EVariationOn.Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.BoundedVariationOn.exists_tendsto_left_of_filter [CompleteSpace M]
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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean#L817).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6113d88eb9b6e6624402490680f712822dc8815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
