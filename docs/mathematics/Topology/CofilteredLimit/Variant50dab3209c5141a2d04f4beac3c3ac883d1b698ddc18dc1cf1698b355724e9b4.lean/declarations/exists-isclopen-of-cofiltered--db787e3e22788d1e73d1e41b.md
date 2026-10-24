# exists_isClopen_of_cofiltered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:304f625d-5269-365a-8076-5b209cee8d91",
  "kind": "theorem",
  "lexical_name": "exists_isClopen_of_cofiltered",
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
  "slug": "exists-isclopen-of-cofiltered--db787e3e22788d1e73d1e41b",
  "source": {
    "blob": "d3e3526d4a89e72d495a1991ec5cd2066b49316c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 44,
    "path": "GRWTSK/Topology/CofilteredLimit/Variant50dab3209c5141a2d04f4beac3c3ac883d1b698ddc18dc1cf1698b355724e9b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db787e3e22788d1e73d1e41b90e97ff51fd87e2481efadd365bded0dc235f89b",
  "verification": {
    "reference": "docs/verification/Topology/CofilteredLimit/Variant50dab3209c5141a2d04f4beac3c3ac883d1b698ddc18dc1cf1698b355724e9b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:304f625d-5269-365a-8076-5b209cee8d91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isClopen_of_cofiltered {U : Set C.pt} (hC : IsLimit C) (hU : IsClopen U) :
    ∃ (j : J) (V : Set (F.obj j)), IsClopen V ∧ U = C.π.app j ⁻¹' V := by
  -- First, we have the topological basis of the cofiltered limit obtained by pulling back
  -- clopen sets from the factors in the limit. By continuity, all such sets are again clopen.
  have hB := TopCat.isTopologicalBasis_cofiltered_limit.{u, v} (F ⋙ Profinite.toTopCat)
      (Profinite.toTopCat.mapCone C) (isLimitOfPreserves _ hC) (fun j => {W | IsClopen W}) ?_
      (fun i => isClopen_univ) (fun i U1 U2 hU1 hU2 => hU1.inter hU2) ?_
  rotate_left
  · intro i
    change TopologicalSpace.IsTopologicalBasis {W : Set (F.obj i) | IsClopen W}
    apply isTopologicalBasis_isClopen
  · rintro i j f V (hV : IsClopen _)
    exact ⟨hV.1.preimage ((F ⋙ toTopCat).map f).hom.continuous,
      hV.2.preimage ((F ⋙ toTopCat).map f).hom.continuous⟩
    -- Porting note: `<;> continuity` fails
  -- Using this, since `U` is open, we can write `U` as a union of clopen sets all of which
  -- are preimages of clopens from the factors in the limit.
  obtain ⟨S, hS, h⟩ := hB.open_eq_sUnion hU.2
  clear hB
  let j : S → J := fun s => (hS s.2).choose
  let V : ∀ s : S, Set (F.obj (j s)) := fun s => (hS s.2).choose_spec.choose
  have hV : ∀ s : S, IsClopen (V s) ∧ s.1 = C.π.app (j s) ⁻¹' V s := fun s =>
    (hS s.2).choose_spec.choose_spec

  -- Since `U` is also closed, hence compact, it is covered by finitely many of the
  -- clopens constructed in the previous step.
  have hUo : ∀ (i : ↑S), IsOpen ((fun s ↦ (C.π.app (j s)) ⁻¹' V s) i) := by
    intro s
    exact (hV s).1.2.preimage (C.π.app (j s)).hom.continuous
  have hsU : U ⊆ ⋃ (i : ↑S), (fun s ↦ C.π.app (j s) ⁻¹' V s) i := by
    dsimp only
    rw [h]
    rintro x ⟨T, hT, hx⟩
    refine ⟨_, ⟨⟨T, hT⟩, rfl⟩, ?_⟩
    dsimp only
    rwa [← (hV ⟨T, hT⟩).2]
  have := hU.1.isCompact.elim_finite_subcover (fun s : S => C.π.app (j s) ⁻¹' V s) hUo hsU
  -- Porting note: same remark as after `hB`
  -- We thus obtain a finite set `G : Finset J` and a clopen set of `F.obj j` for each
  -- `j ∈ G` such that `U` is the union of the preimages of these clopen sets.
  obtain ⟨G, hG⟩ := this
  -- Since `J` is cofiltered, we can find a single `j0` dominating all the `j ∈ G`.
  -- Pulling back all of the sets from the previous step to `F.obj j0` and taking a union,
  -- we obtain a clopen set in `F.obj j0` which works.
  classical
  obtain ⟨j0, hj0⟩ := IsCofiltered.inf_objs_exists (G.image j)
  let f : ∀ s ∈ G, j0 ⟶ j s := fun s hs => (hj0 (Finset.mem_image.mpr ⟨s, hs, rfl⟩)).some
  let W : S → Set (F.obj j0) := fun s => if hs : s ∈ G then F.map (f s hs) ⁻¹' V s else Set.univ
  -- Conclude, using the `j0` and the clopen set of `F.obj j0` obtained above.
  refine ⟨j0, ⋃ (s : S) (_ : s ∈ G), W s, ?_, ?_⟩
  · apply isClopen_biUnion_finset
    intro s hs
    dsimp [W]
    rw [dif_pos hs]
    exact ⟨(hV s).1.1.preimage (F.map _).hom.continuous,
      (hV s).1.2.preimage (F.map _).hom.continuous⟩
  · ext x
    constructor
    · intro hx
      simp_rw [W, Set.preimage_iUnion, Set.mem_iUnion]
      obtain ⟨_, ⟨s, rfl⟩, _, ⟨hs, rfl⟩, hh⟩ := hG hx
      refine ⟨s, hs, ?_⟩
      rwa [dif_pos hs, ← Set.preimage_comp, ← CompHausLike.coe_comp, C.w]
    · intro hx
      simp_rw [W, Set.preimage_iUnion, Set.mem_iUnion] at hx
      obtain ⟨s, hs, hx⟩ := hx
      rw [h]
      refine ⟨s.1, s.2, ?_⟩
      rw [(hV s).2]
      rwa [dif_pos hs, ← Set.preimage_comp, ← CompHausLike.coe_comp, C.w] at hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/CofilteredLimit/Variant50dab3209c5141a2d04f4beac3c3ac883d1b698ddc18dc1cf1698b355724e9b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/CofilteredLimit/Variant50dab3209c5141a2d04f4beac3c3ac883d1b698ddc18dc1cf1698b355724e9b4.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3e3526d4a89e72d495a1991ec5cd2066b49316c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
