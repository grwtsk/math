# exists_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d722dad9181cfd6d7afa3fa039a957385fa07fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 571,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eebd14a5-6b8e-d43d-4e55-4c58b35f5304",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3f8b7a7-2c67-336a-5d8a-f1c5688b9fcc",
  "kind": "lemma",
  "lexical_name": "exists_eq",
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
  "slug": "exists-eq--8e5362cfbfcd6f97c4fc6bac",
  "source": {
    "blob": "9d722dad9181cfd6d7afa3fa039a957385fa07fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 630,
    "line": 571,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e5362cfbfcd6f97c4fc6bacfab98cba1f0a42b45904633fa01296ab6c47dc94",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3f8b7a7-2c67-336a-5d8a-f1c5688b9fcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 571–630.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_eq (j : A.𝒰D.I₀) : ∃ (k : I) (hki' : k ⟶ A.i'),
    (A.𝒰D.pullback₁ (D.map hki')).f j ≫ D.map (hki' ≫ A.hii') ≫ A.a =
      (A.𝒰D.pullback₁ (D.map hki')).f j ≫ D.map (hki' ≫ A.hii') ≫ A.b := by
  have : IsAffine (A.𝒰D.X j) := by dsimp [𝒰D]; infer_instance
  have (i : _) : IsAffine ((Over.post D ⋙ Over.pullback (A.𝒰D.f j) ⋙ Over.forget _).obj i) := by
    dsimp; infer_instance
  have : IsAffine ((Over.pullback (A.𝒰D.f j) ⋙ Over.forget (A.𝒰D.X j)).mapCone
      ((Over.conePost D A.i').obj A.c)).pt := by
    dsimp; infer_instance
  have : LocallyOfFiniteType ((A.𝒰X j.fst.fst).f j.fst.snd ≫ A.𝒰S.pullbackHom f j.fst.fst) := by
    dsimp [Scheme.Cover.pullbackHom]; infer_instance
  have H₁ := congr($(pullback.condition (f := A.g) (g := (Scheme.Pullback.diagonalCover f
    A.𝒰S A.𝒰X).f ⟨j.1.1, (j.1.2, j.1.2)⟩)) ≫ pullback.fst _ _)
  have H₂ := congr($(pullback.condition (f := A.g) (g := (Scheme.Pullback.diagonalCover f
    A.𝒰S A.𝒰X).f ⟨j.1.1, (j.1.2, j.1.2)⟩)) ≫ pullback.snd _ _)
  simp only [Scheme.Pullback.openCoverOfBase_I₀, Scheme.Pullback.openCoverOfBase_X,
    Scheme.Cover.pullbackHom, Scheme.Pullback.openCoverOfLeftRight_I₀,
    g, Category.assoc, limit.lift_π, PullbackCone.mk_pt, PullbackCone.mk_π_app,
    Scheme.Pullback.diagonalCover_map] at H₁ H₂
  obtain ⟨k, hik, hjk, H⟩ := Scheme.exists_hom_hom_comp_eq_comp_of_isAffine_of_locallyOfFiniteType
    (Over.post D ⋙ Over.pullback (A.𝒰D.f j) ⋙ Over.forget _)
    ((Over.post D ⋙ Over.pullback (A.𝒰D.f j)).whiskerLeft (Comma.natTrans _ _) ≫
      (Functor.const _).map ((A.𝒰D₀.X j.1).affineCover.f j.2 ≫
      (Scheme.Pullback.diagonalCover f A.𝒰S A.𝒰X).pullbackHom _ _ ≫
      pullback.fst _ _ ≫
      (A.𝒰X j.fst.fst).f j.fst.snd ≫ Scheme.Cover.pullbackHom A.𝒰S f j.fst.fst))
    (((A.𝒰X j.1.1).f j.1.2 ≫ A.𝒰S.pullbackHom f j.1.1))
    ((Over.pullback (A.𝒰D.f j) ⋙ Over.forget _).mapCone ((Over.conePost _ _).obj A.c))
    (by
      refine isLimitOfPreserves (Over.pullback (A.𝒰D.f j) ⋙ Over.forget _) ?_
      apply isLimitOfReflects (Over.forget (D.obj A.i'))
      exact (Functor.Initial.isLimitWhiskerEquiv (Over.forget A.i') A.c).symm A.hc)
    (i := Over.mk (𝟙 _))
    (pullback.snd _ _ ≫ (A.𝒰D₀.X j.1).affineCover.f j.2 ≫
      (Scheme.Pullback.diagonalCover f A.𝒰S A.𝒰X).pullbackHom _ _ ≫
      pullback.fst _ _)
    (by simp)
    (j := Over.mk (𝟙 _))
    (pullback.snd _ _ ≫ (A.𝒰D₀.X j.1).affineCover.f j.2 ≫
      (Scheme.Pullback.diagonalCover f A.𝒰S A.𝒰X).pullbackHom _ _ ≫
      pullback.snd _ _)
    (by simp [pullback.condition])
    (by
      rw [← cancel_mono ((A.𝒰X j.1.1).f j.1.2), ← cancel_mono (pullback.fst f (A.𝒰S.f j.1.1))]
      have H₃ := congr(pullback.fst (A.c.π.app A.i') (A.𝒰D.f j) ≫ $(A.hab))
      simp only [pullback.condition_assoc, 𝒰D, ← A.c.w A.hii', Category.assoc] at H₃
      simpa [Scheme.Cover.pullbackHom, g, ← H₁, ← H₂, -Cone.w, -Cone.w_assoc] using! H₃)
  refine ⟨k.left, k.hom, ?_⟩
  simpa [← cancel_mono ((A.𝒰X j.1.1).f j.1.2), ← cancel_mono (pullback.fst f (A.𝒰S.f j.1.1)),
    Scheme.Cover.pullbackHom, g, ← H₁, ← H₂, pullback.condition_assoc] using! H

end

end ExistsHomHomCompEqCompAux

variable [∀ {i j} (f : i ⟶ j), IsAffineHom (D.map f)]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
include hc in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean#L571).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d722dad9181cfd6d7afa3fa039a957385fa07fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
