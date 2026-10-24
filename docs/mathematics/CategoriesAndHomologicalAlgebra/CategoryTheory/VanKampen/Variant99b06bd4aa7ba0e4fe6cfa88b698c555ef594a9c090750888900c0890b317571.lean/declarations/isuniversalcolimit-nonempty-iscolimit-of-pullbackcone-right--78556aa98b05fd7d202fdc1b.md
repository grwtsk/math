# IsUniversalColimit.nonempty_isColimit_of_pullbackCone_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcf80e5d-e05d-f255-94f7-9f647ed4ceb8",
  "kind": "lemma",
  "lexical_name": "IsUniversalColimit.nonempty_isColimit_of_pullbackCone_right",
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
  "slug": "isuniversalcolimit-nonempty-iscolimit-of-pullbackcone-right--78556aa98b05fd7d202fdc1b",
  "source": {
    "blob": "234334143a3f956799e30609ae546e4762ce41b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 846,
    "line": 820,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78556aa98b05fd7d202fdc1b74e949c1ccabd6792889169bf3d47deafb10ad47",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcf80e5d-e05d-f255-94f7-9f647ed4ceb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 820–846.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsUniversalColimit.nonempty_isColimit_of_pullbackCone_right
    (s : ∀ i, PullbackCone (f i) v) (hs : ∀ i, IsLimit (s i))
    (t : PullbackCone u v) (ht : IsLimit t) (d : Cofan (fun i : ι ↦ (s i).pt)) (e : d.pt ≅ t.pt)
    (hu : ∀ i, a.inj i ≫ u = f i := by cat_disch)
    (he₁ : ∀ i, d.inj i ≫ e.hom ≫ t.fst = (s i).fst ≫ a.inj i := by cat_disch)
    (he₂ : ∀ i, d.inj i ≫ e.hom ≫ t.snd = (s i).snd := by cat_disch) :
    Nonempty (IsColimit d) := by
  let iso : d ≅ (Cofan.mk _ fun i : ι ↦ PullbackCone.IsLimit.lift ht
      ((s i).fst ≫ a.inj i) ((s i).snd) (by simp [hu, (s i).condition])) :=
    Cofan.ext e <| fun p ↦ PullbackCone.IsLimit.hom_ext ht (by simp [he₁]) (by simp [he₂])
  rw [(IsColimit.equivIsoColimit iso).nonempty_congr]
  refine hau _ (Discrete.natTrans fun i ↦ (s i.as).fst) t.fst ?_ (.of_discrete _) fun j ↦ ?_
  · ext; simp [Cofan.inj]
  · simp only [Discrete.functor_obj_eq_as, Cofan.mk_pt, Functor.const_obj_obj, Cofan.mk_ι_app,
      Discrete.natTrans_app]
    rw [← Cofan.inj]
    refine IsPullback.of_right ?_ (by simp) (IsPullback.of_isLimit ht).flip
    simpa [hu] using (IsPullback.of_isLimit (hs j.1)).flip

section

variable {P : ι → C} (q₁ : ∀ i, P i ⟶ X i) (q₂ : ∀ i, P i ⟶ B)
  (hP : ∀ i, IsPullback (q₁ i) (q₂ i) (f i) v)

include hau hP in
/-- Pullbacks distribute over universal coproducts on the right: This is the isomorphism
`∐ (Xᵢ ×[S] B) ≅ (∐ Xᵢ) ×[S] B`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean#L820).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `234334143a3f956799e30609ae546e4762ce41b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
