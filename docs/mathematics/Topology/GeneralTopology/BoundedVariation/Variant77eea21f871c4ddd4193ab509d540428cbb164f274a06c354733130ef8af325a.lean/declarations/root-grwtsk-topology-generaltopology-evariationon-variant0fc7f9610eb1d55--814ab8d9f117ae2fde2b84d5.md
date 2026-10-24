# _root_.GRWTSK.Topology.GeneralTopology.EVariationOn.Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.BoundedVariationOn.tendsto_eVariationOn_Icc_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c426c7e-d05a-9e8a-5920-51bb031f8d68",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.EVariationOn.Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.BoundedVariationOn.tendsto_eVariationOn_Icc_left",
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
  "slug": "root-grwtsk-topology-generaltopology-evariationon-variant0fc7f9610eb1d55--814ab8d9f117ae2fde2b84d5",
  "source": {
    "blob": "b6113d88eb9b6e6624402490680f712822dc8815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 946,
    "line": 921,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:814ab8d9f117ae2fde2b84d5cf211a863ade1ffba483620827d4bfc3e9145e77",
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

Occurrence: `result:6c426c7e-d05a-9e8a-5920-51bb031f8d68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 921–946.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.EVariationOn.Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.BoundedVariationOn.tendsto_eVariationOn_Icc_left
    [TopologicalSpace α] [OrderTopology α] {f : α → M} {s : Set α} {l : M}
    (hf : BoundedVariationOn f s) {x : α} (h'f : Tendsto f (𝓝[s ∩ Iio x] x) (𝓝 l)) (hx : x ∈ s) :
    Tendsto (fun y ↦ eVariationOn f (s ∩ Icc y x)) (𝓝[s ∩ Iio x] x) (𝓝 (edist (f x) l)) := by
  rcases eq_or_neBot (𝓝[s ∩ Iio x] x) with h | h
  · simp [h]
  suffices H : Tendsto (fun y ↦ eVariationOn f (s ∩ Ico y x) + edist (f x) l)
      (𝓝[s ∩ Iio x] x) (𝓝 (0 + edist (f x) l)) by
    simp only [zero_add] at H
    apply Tendsto.congr' _ H
    filter_upwards [self_mem_nhdsWithin] with y hy
    have N : 𝓝[s ∩ Ici y ∩ Iio x] x = 𝓝[s ∩ Iio x] x := by
      rw [show s ∩ Ici y ∩ Iio x = s ∩ Iio x ∩ Ici y by grind, nhdsWithin_inter_of_mem']
      exact mem_nhdsWithin_of_mem_nhds (Ici_mem_nhds hy.2)
    rw [show s ∩ Icc y x = (s ∩ Ici y) ∩ Iic x by grind,
      eVariationOn_on_inter_Iic_eq_Iio_add_edist (l := l)]
    · congr 2; grind
    · convert h using 1
    · exact ⟨hx, hy.2.le⟩
    · convert h'f
  apply Tendsto.add ?_ tendsto_const_nhds
  exact (hf.tendsto_eVariationOn_Ico_zero x).mono_left (nhdsWithin_mono _ inter_subset_left)

/-- If a function has bounded variation, then the variation on
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean#L921).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6113d88eb9b6e6624402490680f712822dc8815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
