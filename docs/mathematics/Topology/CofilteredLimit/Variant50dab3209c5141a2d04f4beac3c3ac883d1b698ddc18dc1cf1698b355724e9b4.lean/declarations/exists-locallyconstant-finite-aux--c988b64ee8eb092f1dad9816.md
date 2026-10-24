# exists_locallyConstant_finite_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f50757f-b7de-2c47-d0d0-4904b9fe696d",
  "kind": "theorem",
  "lexical_name": "exists_locallyConstant_finite_aux",
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
  "slug": "exists-locallyconstant-finite-aux--c988b64ee8eb092f1dad9816",
  "source": {
    "blob": "d3e3526d4a89e72d495a1991ec5cd2066b49316c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 128,
    "path": "GRWTSK/Topology/CofilteredLimit/Variant50dab3209c5141a2d04f4beac3c3ac883d1b698ddc18dc1cf1698b355724e9b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c988b64ee8eb092f1dad9816499291870f6305ac83c44aa1a5bbdfc974cec273",
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

Occurrence: `result:4f50757f-b7de-2c47-d0d0-4904b9fe696d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_locallyConstant_finite_aux {α : Type*} [Finite α] (hC : IsLimit C)
    (f : LocallyConstant C.pt α) : ∃ (j : J) (g : LocallyConstant (F.obj j) (α → Fin 2)),
      (f.map fun a b => if a = b then (0 : Fin 2) else 1) = g.comap (C.π.app _).hom := by
  cases nonempty_fintype α
  let ι : α → α → Fin 2 := fun x y => if x = y then 0 else 1
  let ff := (f.map ι).flip
  have hff := fun a : α => exists_locallyConstant_fin_two _ hC (ff a)
  choose j g h using hff
  let G : Finset J := Finset.univ.image j
  obtain ⟨j0, hj0⟩ := IsCofiltered.inf_objs_exists G
  have hj : ∀ a, j a ∈ (Finset.univ.image j : Finset J) := by
    intro a
    simp only [Finset.mem_image, Finset.mem_univ, true_and, exists_apply_eq_apply]
  let fs : ∀ a : α, j0 ⟶ j a := fun a => (hj0 (hj a)).some
  let gg : α → LocallyConstant (F.obj j0) (Fin 2) := fun a => (g a).comap (F.map (fs _)).hom
  let ggg := LocallyConstant.unflip gg
  refine ⟨j0, ggg, ?_⟩
  have : f.map ι = LocallyConstant.unflip (f.map ι).flip := by simp
  rw [this]; clear this
  have :
    LocallyConstant.comap (C.π.app j0).hom ggg =
      LocallyConstant.unflip (LocallyConstant.comap (C.π.app j0).hom ggg).flip := by
    simp
  rw [this]; clear this
  congr 1
  ext1 a
  change ff a = _
  rw [h]
  dsimp
  ext1 x
  change _ = (g a) ((C.π.app j0 ≫ F.map (fs a)) x)
  rw [C.w]; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/CofilteredLimit/Variant50dab3209c5141a2d04f4beac3c3ac883d1b698ddc18dc1cf1698b355724e9b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/CofilteredLimit/Variant50dab3209c5141a2d04f4beac3c3ac883d1b698ddc18dc1cf1698b355724e9b4.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3e3526d4a89e72d495a1991ec5cd2066b49316c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
