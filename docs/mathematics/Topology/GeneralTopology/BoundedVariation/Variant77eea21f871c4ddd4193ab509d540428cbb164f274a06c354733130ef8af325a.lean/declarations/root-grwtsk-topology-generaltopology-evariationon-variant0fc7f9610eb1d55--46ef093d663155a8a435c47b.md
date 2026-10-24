# _root_.GRWTSK.Topology.GeneralTopology.EVariationOn.Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.LocallyBoundedVariationOn.tendsto_eVariationOn_Icc_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8dcf1841-4eb0-ce2c-0025-4cf3b31d1b52",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.EVariationOn.Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.LocallyBoundedVariationOn.tendsto_eVariationOn_Icc_left",
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
  "slug": "root-grwtsk-topology-generaltopology-evariationon-variant0fc7f9610eb1d55--46ef093d663155a8a435c47b",
  "source": {
    "blob": "b6113d88eb9b6e6624402490680f712822dc8815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 981,
    "line": 961,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46ef093d663155a8a435c47b8e1c478aaf7429337b35d08a27bf9767a0b8a534",
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

Occurrence: `result:8dcf1841-4eb0-ce2c-0025-4cf3b31d1b52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 961–981.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.EVariationOn.Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.LocallyBoundedVariationOn.tendsto_eVariationOn_Icc_left
    [TopologicalSpace α] [OrderTopology α] {f : α → M} {s : Set α} {l : M}
    (hf : LocallyBoundedVariationOn f s) {x : α}
    (h'f : Tendsto f (𝓝[s ∩ Iio x] x) (𝓝 l)) (hx : x ∈ s) :
    Tendsto (fun y ↦ eVariationOn f (s ∩ Icc y x)) (𝓝[s ∩ Iio x] x) (𝓝 (edist (f x) l)) := by
  rcases eq_or_neBot (𝓝[s ∩ Iio x] x) with h | h
  · simp [h]
  obtain ⟨y, hy⟩ : (s ∩ Iio x).Nonempty := by contrapose! h; simp [h]
  have : 𝓝[s ∩ Iio x] x = 𝓝[(s ∩ Icc y x) ∩ Iio x] x := by
    rw [show (s ∩ Icc y x) ∩ Iio x = (s ∩ Iio x) ∩ Icc y x by grind, eq_comm]
    apply nhdsWithin_inter_of_mem' (nhdsWithin_mono _ inter_subset_right (Icc_mem_nhdsLT hy.2))
  rw [this] at h'f ⊢
  have : BoundedVariationOn f (s ∩ Icc y x) := hf _ _ hy.1 hx
  apply Tendsto.congr' _ (this.tendsto_eVariationOn_Icc_left h'f ⟨hx, by grind⟩)
  filter_upwards [self_mem_nhdsWithin] with z hz
  congr 1
  grind

/-- If a function has locally bounded variation, then the variation on
small closed intervals to the right of this point tends to the contribution of the point, i.e.,
the distance between the right limit and the value at the point -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean#L961).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6113d88eb9b6e6624402490680f712822dc8815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
