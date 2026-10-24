# comp_subtypeVal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c9f3381-df80-fdf2-3391-fc15f2b020e8",
  "kind": "theorem",
  "lexical_name": "comp_subtypeVal",
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
  "slug": "comp-subtypeval--428890def4ad7faa3817feb0",
  "source": {
    "blob": "fe1f79d0dfe2251d25e3cc2b15de0231a2fd54c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 167,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1a0e4c16f296b626834657b45c6fa565e49a9357fe784eb9c84c244513daae1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:428890def4ad7faa3817feb029c0c2862f957be566bff01ac031ec2490612cfd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1a0e4c16f296b626834657b45c6fa565e49a9357fe784eb9c84c244513daae1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c9f3381-df80-fdf2-3391-fc15f2b020e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_subtypeVal (hs : IsOpen s) (hfs : IsOpen (f ⁻¹' s)) {x : X} (hx : x ∈ s)
    (h : IsEvenlyCovered (fun e : f ⁻¹' s ↦ f e) x I) : IsEvenlyCovered f x I :=
  have ⟨inst, U, hxU, hU, hfU, H, hH⟩ := h
  (isEmpty_or_nonempty I).elim (fun _ ↦ .of_preimage_eq_empty _ ((hs.inter hU).mem_nhds ⟨hx, hxU⟩)
    <| Set.not_nonempty_iff_eq_empty.mp fun ⟨e, he⟩ ↦ isEmptyElim (H ⟨⟨e, he.1⟩, he.2⟩).2) fun _ ↦
  have hUs : U ⊆ s := fun y hy ↦ by
    convert! Set.mem_preimage.mp (H.symm (⟨y, hy⟩, Classical.arbitrary I)).1.2; simp [← hH]
  have : Subtype.val '' (fun e : f ⁻¹' s ↦ f e) ⁻¹' U = f ⁻¹' U := by ext; simpa using @hUs _
  ⟨inst, U, hxU, hU, this ▸ hfs.isOpenMap_subtype_val _ hfU, .trans (.symm <| .trans
    (IsEmbedding.subtypeVal.homeomorphImage _) <| .setCongr this) H, fun x ↦ by
    dsimp; convert! hH ⟨⟨x, hUs x.2⟩, x.2⟩ using 4; rw [Homeomorph.symm_apply_eq]; rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1a0e4c16f296b626834657b45c6fa565e49a9357fe784eb9c84c244513daae1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1a0e4c16f296b626834657b45c6fa565e49a9357fe784eb9c84c244513daae1e.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1f79d0dfe2251d25e3cc2b15de0231a2fd54c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
