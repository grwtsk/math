# _root_.GRWTSK.Topology.GeneralTopology.IsTopologicalBasis.Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.IsOpenMap.separableSpace_of_isInducing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bf158bb-ecb0-9d7c-1fb0-75dac6e35b57",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.IsTopologicalBasis.Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.IsOpenMap.separableSpace_of_isInducing",
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
  "slug": "root-grwtsk-topology-generaltopology-istopologicalbasis-variant493185ec0--21fe66a78c3e4773fcb0f828",
  "source": {
    "blob": "8e32269e1b118c37cde52145c937508870dc9845",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 414,
    "path": "GRWTSK/Topology/GeneralTopology/Bases/Variantdb39dd93d59a2b6551de1fb46b607016ac6d15d31f778c600da9d2f486e54fb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21fe66a78c3e4773fcb0f8281604ca1e53940616538bcfc722386f14b48286b8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bases/Variantdb39dd93d59a2b6551de1fb46b607016ac6d15d31f778c600da9d2f486e54fb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bf158bb-ecb0-9d7c-1fb0-75dac6e35b57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.IsTopologicalBasis.Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.IsOpenMap.separableSpace_of_isInducing [TopologicalSpace β] [SeparableSpace β]
    {f : α → β} (h : IsOpenMap f) (h' : IsInducing f) : SeparableSpace α := by
  cases isEmpty_or_nonempty α
  · infer_instance
  obtain ⟨s, s_cnt, s_dense⟩ := exists_countable_dense β
  refine ⟨f.invFun '' s, s_cnt.image _, ?_⟩
  simp_rw [h'.dense_iff, mem_closure_iff]
  intro x U hU hx
  obtain ⟨-, ⟨hx'U, x', rfl⟩, hx's⟩ :=
    s_dense.inter_open_nonempty (U ∩ range f) (hU.inter h.isOpen_range) ⟨f x, hx, mem_range_self _⟩
  refine ⟨f <| f.invFun <| f x', ?_, mem_image_of_mem _ <| mem_image_of_mem _ hx's⟩
  rwa [Function.apply_invFun_apply (f := f)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bases/Variantdb39dd93d59a2b6551de1fb46b607016ac6d15d31f778c600da9d2f486e54fb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bases/Variantdb39dd93d59a2b6551de1fb46b607016ac6d15d31f778c600da9d2f486e54fb9.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e32269e1b118c37cde52145c937508870dc9845` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
