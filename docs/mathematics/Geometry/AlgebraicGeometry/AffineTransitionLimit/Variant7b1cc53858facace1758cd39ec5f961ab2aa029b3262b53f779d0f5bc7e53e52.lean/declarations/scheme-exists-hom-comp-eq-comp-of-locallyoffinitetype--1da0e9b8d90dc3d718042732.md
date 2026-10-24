# Scheme.exists_hom_comp_eq_comp_of_locallyOfFiniteType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ae91180-dd4e-368a-c53f-76cfa706721d",
  "kind": "lemma",
  "lexical_name": "Scheme.exists_hom_comp_eq_comp_of_locallyOfFiniteType",
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
  "slug": "scheme-exists-hom-comp-eq-comp-of-locallyoffinitetype--1da0e9b8d90dc3d718042732",
  "source": {
    "blob": "3d0043ac128ef5a67c459ffc0c0daad5f8c9d1da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 692,
    "line": 639,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1da0e9b8d90dc3d71804273292e5e91b5cda4d31865ba59c30758d1e09b2bc8c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ae91180-dd4e-368a-c53f-76cfa706721d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 639–692.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.exists_hom_comp_eq_comp_of_locallyOfFiniteType
    {i : I} (a b : D.obj i ⟶ X) (ha : t.app i = a ≫ f) (hb : t.app i = b ≫ f)
    (hab : c.π.app i ≫ a = c.π.app i ≫ b) :
    ∃ (k : I) (hik : k ⟶ i), D.map hik ≫ a = D.map hik ≫ b := by
  classical
  have := isAffineHom_π_app _ _ hc
  let A : ExistsHomHomCompEqCompAux D t f :=
    { c := c, hc := hc, i := i, a := a, ha := ha, b := b, hb := hb, hab := hab
      𝒰S := S.affineCover, 𝒰X i := Scheme.affineCover _ }
  let 𝒰 := Scheme.Pullback.diagonalCover f A.𝒰S A.𝒰X
  let W := Scheme.Pullback.diagonalCoverDiagonalRange f A.𝒰S A.𝒰X
  choose k hki' heq using A.exists_eq
  let 𝒰Df := A.𝒰D.finiteSubcover
  rcases isEmpty_or_nonempty (D.obj A.i') with h | h
  · exact ⟨A.i', A.hii', isInitialOfIsEmpty.hom_ext _ _⟩
  let O : Finset I := {A.i'} ∪ Finset.univ.image (fun i : 𝒰Df.I₀ ↦ k <| A.𝒰D.idx i.1)
  let o := Nonempty.some (inferInstance : Nonempty 𝒰Df.I₀)
  have ho : k (A.𝒰D.idx o.1) ∈ O := by
    simp [O]
  obtain ⟨l, hl1, hl2⟩ := IsCofiltered.inf_exists O
    (Finset.univ.image (fun i : 𝒰Df.I₀ ↦
      ⟨k <| A.𝒰D.idx i.1, A.i', by simp [O], by simp [O], hki' <| A.𝒰D.idx i.1⟩))
  have (w v : 𝒰Df.I₀) :
      hl1 (by simp [O]) ≫ hki' (A.𝒰D.idx w.1) = hl1 (by simp [O]) ≫ hki' (A.𝒰D.idx v.1) := by
    trans hl1 (show A.i' ∈ O by simp [O])
    · exact hl2 _ _ (Finset.mem_image_of_mem _ (Finset.mem_univ _))
    · exact .symm <| hl2 _ _ (Finset.mem_image_of_mem _ (by simp))
  refine ⟨l, hl1 ho ≫ hki' _ ≫ A.hii', ?_⟩
  apply Cover.hom_ext (𝒰Df.pullback₁ (D.map <| hl1 ho ≫ hki' _))
  intro u
  let F : pullback (D.map (hl1 ho ≫ hki' (A.𝒰D.idx o.1))) (𝒰Df.f u) ⟶
      pullback (D.map (hki' <| A.𝒰D.idx u.1)) (A.𝒰D.f <| A.𝒰D.idx u.1) :=
    pullback.map _ _ _ _ (D.map <| hl1 (by simp [O]))
      (𝟙 _) (𝟙 _) (by rw [Category.comp_id, ← D.map_comp, this]) rfl
  have hF : F ≫ pullback.fst (D.map (hki' _)) (A.𝒰D.f _) =
      pullback.fst _ _ ≫ D.map (hl1 (by simp [O])) := by simp [F]
  simp only [Precoverage.ZeroHypercover.pullback₁_toPreZeroHypercover,
    PreZeroHypercover.pullback₁_X, PreZeroHypercover.pullback₁_f, Functor.map_comp, Category.assoc]
    at heq ⊢
  simp_rw [← D.map_comp_assoc, reassoc_of% this o u, D.map_comp_assoc]
  rw [← reassoc_of% hF, ← reassoc_of% hF, heq]

set_option backward.defeqAttrib.useBackward true in
include hc in
/--
Given a cofiltered diagram `D` of quasi-compact `S`-schemes with affine transition maps,
and another scheme `X` of finite type over `S`.
Then the canonical map `colim Homₛ(Dᵢ, X) ⟶ Homₛ(lim Dᵢ, X)` is injective.

In other words, for each pair of `a : Homₛ(Dᵢ, X)` and `b : Homₛ(Dⱼ, X)` that give rise to the
same map `Homₛ(lim Dᵢ, X)`, there exists a `k` with `fᵢ : k ⟶ i` and `fⱼ : k ⟶ j` such that
`D(fᵢ) ≫ a = D(fⱼ) ≫ b`.
-/
@[stacks 01ZC "Injective part of (1) => (3)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean#L639).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d0043ac128ef5a67c459ffc0c0daad5f8c9d1da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
