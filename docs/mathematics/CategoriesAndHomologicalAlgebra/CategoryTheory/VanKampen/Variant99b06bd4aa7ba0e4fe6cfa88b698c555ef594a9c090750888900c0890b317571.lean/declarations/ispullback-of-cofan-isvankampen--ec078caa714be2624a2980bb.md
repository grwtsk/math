# isPullback_of_cofan_isVanKampen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47409828-9691-0c72-1586-f190ed3886ad",
  "kind": "theorem",
  "lexical_name": "isPullback_of_cofan_isVanKampen",
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
  "slug": "ispullback-of-cofan-isvankampen--ec078caa714be2624a2980bb",
  "source": {
    "blob": "234334143a3f956799e30609ae546e4762ce41b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 712,
    "line": 684,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec078caa714be2624a2980bbf5037180bfd8cc3809f127476a1511a0f073517c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47409828-9691-0c72-1586-f190ed3886ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 684–712.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPullback_of_cofan_isVanKampen [HasInitial C] {ι : Type*} {X : ι → C}
    {c : Cofan X} (hc : IsVanKampenColimit c) (i j : ι) [DecidableEq ι] :
    IsPullback (P := (if j = i then X i else ⊥_ C))
      (if h : j = i then eqToHom (ite_eq_left h) else eqToHom (ite_eq_right h) ≫ initial.to (X i))
      (if h : j = i then eqToHom ((ite_eq_left h).trans (congr_arg X h.symm))
        else eqToHom (ite_eq_right h) ≫ initial.to (X j))
      (Cofan.inj c i) (Cofan.inj c j) := by
  refine (hc (Cofan.mk (X i) (f := fun k ↦ if k = i then X i else ⊥_ C)
    (fun k ↦
      if h : k = i then (eqToHom <| ite_eq_left h) else (eqToHom <| ite_eq_right h) ≫ initial.to _))
    (Discrete.natTrans (fun k ↦ if h : k.1 = i then (eqToHom <| (ite_eq_left h).trans
      (congr_arg X h.symm)) else (eqToHom <| ite_eq_right h) ≫ initial.to _))
    (c.inj i) ?_ (.of_discrete _)).mp ⟨?_⟩ ⟨j⟩
  · ext ⟨k⟩
    simp only [Discrete.functor_obj, Functor.const_obj_obj, NatTrans.comp_app,
      Discrete.natTrans_app, Cofan.mk_pt, Cofan.mk_ι_app, Functor.const_map_app]
    split
    · subst ‹k = i›; rfl
    · simp
  · refine Cofan.IsColimit.mk _ (fun t ↦ (eqToHom (ite_eq_left rfl).symm) ≫ t.inj i) ?_ ?_
    · intro t j
      simp only [Cofan.mk_pt, cofan_mk_inj]
      split
      · subst ‹j = i›; simp
      · rw [Category.assoc, ← IsIso.eq_inv_comp]
        exact initialIsInitial.hom_ext _ _
    · intro t m hm
      simp [← hm i]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean#L684).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `234334143a3f956799e30609ae546e4762ce41b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
