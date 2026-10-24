# locallyCompactSpace_of_equicontinuousAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c3519c26f248f8febbe2923a782863135acf833",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff6094ec-ed38-c64b-9916-d0772e3a7f84",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69a42eec-483c-a430-0707-582cae5b9270",
  "kind": "theorem",
  "lexical_name": "locallyCompactSpace_of_equicontinuousAt",
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
  "slug": "locallycompactspace-of-equicontinuousat--ab2208b0391f40366ffbd0d9",
  "source": {
    "blob": "1c3519c26f248f8febbe2923a782863135acf833",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 150,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab2208b0391f40366ffbd0d9deae2d1057acad56b939bbd52ab0ecb87d8784f2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69a42eec-483c-a430-0707-582cae5b9270`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem locallyCompactSpace_of_equicontinuousAt (U : Set X) (V : Set Y)
    (hU : IsCompact U) (hV : V ∈ nhds (1 : Y))
    (h : EquicontinuousAt (fun f : {f : X →* Y | Set.MapsTo f U V} ↦ (f : X → Y)) 1) :
    LocallyCompactSpace (ContinuousMonoidHom X Y) := by
  replace h := equicontinuous_of_equicontinuousAt_one _ h
  obtain ⟨W, hWo, hWV, hWc⟩ := local_compact_nhds hV
  let S1 : Set (X →* Y) := {f | Set.MapsTo f U W}
  let S2 : Set (ContinuousMonoidHom X Y) := {f | Set.MapsTo f U W}
  let S3 : Set C(X, Y) := (↑) '' S2
  let S4 : Set (X → Y) := (↑) '' S3
  replace h : Equicontinuous ((↑) : S1 → X → Y) :=
    h.comp (Subtype.map _root_.id fun f hf ↦ hf.mono_right hWV)
  have hS4 : S4 = (↑) '' S1 := by
    ext
    constructor
    · rintro ⟨-, ⟨f, hf, rfl⟩, rfl⟩
      exact ⟨f, hf, rfl⟩
    · rintro ⟨f, hf, rfl⟩
      exact ⟨⟨f, h.continuous ⟨f, hf⟩⟩, ⟨⟨f, h.continuous ⟨f, hf⟩⟩, hf, rfl⟩, rfl⟩
  replace h : Equicontinuous ((↑) : S3 → X → Y) := by
    rw [equicontinuous_iff_range, ← Set.image_eq_range] at h ⊢
    rwa [← hS4] at h
  replace hS4 : S4 = Set.pi U (fun _ ↦ W) ∩ Set.range ((↑) : (X →* Y) → (X → Y)) := by
    simp_rw [hS4, Set.ext_iff, Set.mem_image, S1, Set.mem_setOf_eq]
    exact fun f ↦ ⟨fun ⟨g, hg, hf⟩ ↦ hf ▸ ⟨hg, g, rfl⟩, fun ⟨hg, g, hf⟩ ↦ ⟨g, hf ▸ hg, hf⟩⟩
  replace hS4 : IsClosed S4 :=
    hS4.symm ▸ (isClosed_set_pi (fun _ _ ↦ hWc.isClosed)).inter (MonoidHom.isClosed_range_coe X Y)
  have hS2 : (interior S2).Nonempty := by
    let T : Set (ContinuousMonoidHom X Y) := {f | Set.MapsTo f U (interior W)}
    have h1 : T.Nonempty := ⟨1, fun _ _ ↦ mem_interior_iff_mem_nhds.mpr hWo⟩
    have h2 : T ⊆ S2 := fun f hf ↦ hf.mono_right interior_subset
    have h3 : IsOpen T := isOpen_induced (ContinuousMap.isOpen_setOf_mapsTo hU isOpen_interior)
    exact h1.mono (interior_maximal h2 h3)
  exact TopologicalSpace.PositiveCompacts.locallyCompactSpace_of_group
    ⟨⟨S2, (isInducing_toContinuousMap X Y).isCompact_iff.mpr
      (ArzelaAscoli.isCompact_of_equicontinuous S3 hS4.isCompact h)⟩, hS2⟩

variable [LocallyCompactSpace X]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c3519c26f248f8febbe2923a782863135acf833` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
