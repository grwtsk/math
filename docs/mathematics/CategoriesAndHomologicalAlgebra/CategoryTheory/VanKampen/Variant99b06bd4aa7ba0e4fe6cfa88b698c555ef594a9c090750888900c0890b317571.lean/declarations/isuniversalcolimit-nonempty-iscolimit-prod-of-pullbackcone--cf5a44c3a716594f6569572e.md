# IsUniversalColimit.nonempty_isColimit_prod_of_pullbackCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6041bc52-e802-9271-34f2-f1189b05ec81",
  "kind": "lemma",
  "lexical_name": "IsUniversalColimit.nonempty_isColimit_prod_of_pullbackCone",
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
  "slug": "isuniversalcolimit-nonempty-iscolimit-prod-of-pullbackcone--cf5a44c3a716594f6569572e",
  "source": {
    "blob": "234334143a3f956799e30609ae546e4762ce41b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 917,
    "line": 888,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf5a44c3a716594f6569572e5895f56c4fe17624fe94eb65180a2a6e360ec61e",
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

Occurrence: `result:6041bc52-e802-9271-34f2-f1189b05ec81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 888–917.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsUniversalColimit.nonempty_isColimit_prod_of_pullbackCone
    (s : ∀ (i : ι) (j : ι'), PullbackCone (f i) (g j))
    (hs : ∀ i j, IsLimit (s i j)) (t : PullbackCone u v) (ht : IsLimit t)
    {d : Cofan (fun p : ι × ι' ↦ (s p.1 p.2).pt)} (e : d.pt ≅ t.pt)
    (hu : ∀ i, a.inj i ≫ u = f i := by cat_disch)
    (hv : ∀ i, b.inj i ≫ v = g i := by cat_disch)
    (he₁ : ∀ i j, d.inj (i, j) ≫ e.hom ≫ t.fst = (s _ _).fst ≫ a.inj _ := by cat_disch)
    (he₂ : ∀ i j, d.inj (i, j) ≫ e.hom ≫ t.snd = (s _ _).snd ≫ b.inj _ := by cat_disch) :
    Nonempty (IsColimit d) := by
  let c (i : ι) : Cofan (fun j : ι' ↦ (s i j).pt) :=
    Cofan.mk (pullback (f i) v) fun j ↦ pullback.lift (s i j).fst ((s i j).snd ≫ b.inj j)
      (by simp [hv, (s i j).condition])
  let c' : Cofan (fun i : ι ↦ (c i).pt) :=
    Cofan.mk t.pt fun i ↦
      PullbackCone.IsLimit.lift ht (pullback.fst _ _ ≫ a.inj i) (pullback.snd _ _)
      (by simp [hu, pullback.condition])
  let iso : d ≅ Cofan.mk c'.pt fun p : ι × ι' ↦ (c p.1).inj p.2 ≫ c'.inj _ := by
    refine Cofan.ext e <| fun p ↦ PullbackCone.IsLimit.hom_ext ht ?_ ?_
    · simp [c', c, he₁]
    · simp [c', c, he₂]
  rw [(IsColimit.equivIsoColimit iso).nonempty_congr]
  refine ⟨Cofan.IsColimit.prod c (fun i ↦ Nonempty.some ?_) c' (Nonempty.some ?_)⟩
  · exact hbu.nonempty_isColimit_of_pullbackCone_left _ v _ _ (hs i) (pullback.cone _ _)
      (pullback.isLimit _ _) _ (Iso.refl _)
  · exact hau.nonempty_isColimit_of_pullbackCone_right _ u _ _ (fun _ ↦ pullback.isLimit _ _)
      t ht _ (Iso.refl _)

include hau hbu in
/-- Pullbacks distribute over universal coproducts in both arguments: This is the isomorphism
`∐ (Xᵢ ×[S] Xⱼ) ≅ (∐ Xᵢ) ×[S] (∐ Xⱼ)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant99b06bd4aa7ba0e4fe6cfa88b698c555ef594a9c090750888900c0890b317571.lean#L888).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `234334143a3f956799e30609ae546e4762ce41b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
