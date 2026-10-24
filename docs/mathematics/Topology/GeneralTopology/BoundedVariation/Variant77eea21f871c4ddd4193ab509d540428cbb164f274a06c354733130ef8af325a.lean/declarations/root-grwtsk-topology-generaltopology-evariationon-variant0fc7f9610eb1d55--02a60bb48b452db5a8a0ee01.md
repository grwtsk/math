# _root_.GRWTSK.Topology.GeneralTopology.EVariationOn.Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.BoundedVariationOn.exists_tendsto_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b55b4fa-9fed-5201-c1eb-450ce40d4c9e",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.EVariationOn.Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.BoundedVariationOn.exists_tendsto_left",
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
  "slug": "root-grwtsk-topology-generaltopology-evariationon-variant0fc7f9610eb1d55--02a60bb48b452db5a8a0ee01",
  "source": {
    "blob": "b6113d88eb9b6e6624402490680f712822dc8815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 876,
    "line": 867,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02a60bb48b452db5a8a0ee01f3e4390526afaa14590ce987202a26ac8038b76a",
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

Occurrence: `result:4b55b4fa-9fed-5201-c1eb-450ce40d4c9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 867–876.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.EVariationOn.Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.BoundedVariationOn.exists_tendsto_left [CompleteSpace M] [TopologicalSpace α]
    [OrderTopology α] {f : α → M} {s : Set α} (hf : BoundedVariationOn f s) (x : α) :
    ∃ l, Tendsto f (𝓝[s ∩ Iio x] x) (𝓝 l) := by
  rcases eq_empty_or_nonempty (s ∩ Iio x) with hs | hs
  · simp only [hs, nhdsWithin_empty, tendsto_bot, exists_const_iff, and_true]
    exact ⟨f x⟩
  exact BoundedVariationOn.exists_tendsto_left_of_filter (s := s ∩ Iio x)
    (hf.mono inter_subset_left) _ (fun y hy ↦ inter_mem_nhdsWithin _ (Ici_mem_nhds hy.2)) hs

/-- A bounded variation function has a limit on its right within a set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean#L867).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6113d88eb9b6e6624402490680f712822dc8815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
