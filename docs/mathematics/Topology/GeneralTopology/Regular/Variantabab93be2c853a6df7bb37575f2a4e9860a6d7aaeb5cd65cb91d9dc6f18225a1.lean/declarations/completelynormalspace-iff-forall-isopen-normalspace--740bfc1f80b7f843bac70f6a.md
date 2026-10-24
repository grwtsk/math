# completelyNormalSpace_iff_forall_isOpen_normalSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c01d4225-7979-1d0c-383d-3d1a47e9823f",
  "kind": "theorem",
  "lexical_name": "completelyNormalSpace_iff_forall_isOpen_normalSpace",
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
  "slug": "completelynormalspace-iff-forall-isopen-normalspace--740bfc1f80b7f843bac70f6a",
  "source": {
    "blob": "71c36b384d864adad1815ba38d0f8e3435e701eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 689,
    "line": 660,
    "path": "GRWTSK/Topology/GeneralTopology/Regular/Variantabab93be2c853a6df7bb37575f2a4e9860a6d7aaeb5cd65cb91d9dc6f18225a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:740bfc1f80b7f843bac70f6aeffcf65e4b768acc3ccf3bd4e2c7980ccc6f1c0b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Regular/Variantabab93be2c853a6df7bb37575f2a4e9860a6d7aaeb5cd65cb91d9dc6f18225a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c01d4225-7979-1d0c-383d-3d1a47e9823f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 660–689.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completelyNormalSpace_iff_forall_isOpen_normalSpace :
    CompletelyNormalSpace X ↔ ∀ s : Set X, IsOpen s → NormalSpace s := by
  refine ⟨fun _ _ _ => inferInstance, fun h => ⟨fun s t hSt hsT => ?_⟩⟩
  let e := (closure s ∩ closure t)ᶜ
  have he : IsOpen e := (isClosed_closure.inter isClosed_closure).isOpen_compl
  specialize h e he
  have hst : Disjoint (((↑) : e → X) ⁻¹' closure s) (((↑) : e → X) ⁻¹' closure t) := by
    rw [disjoint_left]
    intro x hxs hxt
    exact x.2 ⟨hxs, hxt⟩
  obtain ⟨U, V, hU, hV, hsU, htV, hUV⟩ := normal_separation
    (isClosed_closure.preimage continuous_subtype_val)
    (isClosed_closure.preimage continuous_subtype_val) hst
  rw [Topology.IsInducing.subtypeVal.isOpen_iff] at hU hV
  obtain ⟨U, hU, rfl⟩ := hU
  obtain ⟨V, hV, rfl⟩ := hV
  rw [← separatedNhds_iff_disjoint]
  rw [Subtype.preimage_val_subset_preimage_val_iff, inter_comm e, inter_comm e] at hsU htV
  refine ⟨U ∩ e, V ∩ e, hU.inter he, hV.inter he, ?_, ?_, ?_⟩
  · intro x hx
    exact hsU ⟨subset_closure hx, fun h => hsT.notMem_of_mem_left hx h.2⟩
  · intro x hx
    exact htV ⟨subset_closure hx, fun h => hSt.notMem_of_mem_left h.1 hx⟩
  · rw [disjoint_left] at hUV ⊢
    intro x hxU hxV
    exact @hUV ⟨x, hxU.2⟩ hxU.1 hxV.1

/--
A space is completely normal iff it is hereditarily normal.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Regular/Variantabab93be2c853a6df7bb37575f2a4e9860a6d7aaeb5cd65cb91d9dc6f18225a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Regular/Variantabab93be2c853a6df7bb37575f2a4e9860a6d7aaeb5cd65cb91d9dc6f18225a1.lean#L660).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71c36b384d864adad1815ba38d0f8e3435e701eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
