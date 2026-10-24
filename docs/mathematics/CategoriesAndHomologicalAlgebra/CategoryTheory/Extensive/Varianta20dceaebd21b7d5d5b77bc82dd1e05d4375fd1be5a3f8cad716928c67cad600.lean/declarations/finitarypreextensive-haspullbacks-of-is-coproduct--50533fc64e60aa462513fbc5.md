# FinitaryPreExtensive.hasPullbacks_of_is_coproduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:933215ce-a199-7358-cdb3-2aafa02426ac",
  "kind": "lemma",
  "lexical_name": "FinitaryPreExtensive.hasPullbacks_of_is_coproduct",
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
  "slug": "finitarypreextensive-haspullbacks-of-is-coproduct--50533fc64e60aa462513fbc5",
  "source": {
    "blob": "400fb56da10be156e6cd5ef700f13a535fe5b96e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 491,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Varianta20dceaebd21b7d5d5b77bc82dd1e05d4375fd1be5a3f8cad716928c67cad600.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50533fc64e60aa462513fbc5b9bbffad8d52ef0ebfb6f60b3959ea7f236e1527",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Varianta20dceaebd21b7d5d5b77bc82dd1e05d4375fd1be5a3f8cad716928c67cad600.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:933215ce-a199-7358-cdb3-2aafa02426ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma FinitaryPreExtensive.hasPullbacks_of_is_coproduct [FinitaryPreExtensive C] {ι : Type*}
    [Finite ι] {F : Discrete ι ⥤ C} {c : Cocone F} (hc : IsColimit c) (i : Discrete ι) {X : C}
    (g : X ⟶ _) : HasPullback g (c.ι.app i) := by
  classical
  let f : ι → C := F.obj ∘ Discrete.mk
  have : F = Discrete.functor f :=
    Functor.hext (fun i ↦ rfl) (by rintro ⟨i⟩ ⟨j⟩ ⟨⟨rfl : i = j⟩⟩; simp [f])
  clear_value f
  subst this
  change Cofan f at c
  obtain ⟨i⟩ := i
  let e : ∐ f ≅ f i ⨿ (∐ fun j : ({i}ᶜ : Set ι) ↦ f j) :=
  { hom := Sigma.desc (fun j ↦ if h : j = i then eqToHom (congr_arg f h) ≫ coprod.inl else
      Sigma.ι (fun j : ({i}ᶜ : Set ι) ↦ f j) ⟨j, h⟩ ≫ coprod.inr)
    inv := coprod.desc (Sigma.ι f i) (Sigma.desc fun j ↦ Sigma.ι f j)
    hom_inv_id := by cat_disch
    inv_hom_id := by
      ext j
      · simp
      · simp only [coprod.desc_comp, colimit.ι_desc, Cofan.mk_ι_app,
          eqToHom_refl, Category.id_comp, dite_true, BinaryCofan.ι_app_right,
          BinaryCofan.mk_inr, colimit.ι_desc_assoc, Discrete.functor_obj, Category.comp_id]
        exact dite_eq_right j.prop }
  let e' : c.pt ≅ f i ⨿ (∐ fun j : ({i}ᶜ : Set ι) ↦ f j) :=
    hc.coconePointUniqueUpToIso (getColimitCocone _).2 ≪≫ e
  have : coprod.inl ≫ e'.inv = c.ι.app ⟨i⟩ := by
    simp only [e, e', Iso.trans_inv, coprod.desc_comp, colimit.ι_desc,
      BinaryCofan.ι_app_left, BinaryCofan.mk_inl]
    exact colimit.comp_coconePointUniqueUpToIso_inv _ _
  clear_value e'
  rw [← this]
  have : IsPullback (𝟙 _) (g ≫ e'.hom) g e'.inv := IsPullback.of_horiz_isIso ⟨by simp⟩
  exact ⟨⟨⟨_, ((IsPullback.of_hasPullback (g ≫ e'.hom) coprod.inl).paste_horiz this).isLimit⟩⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Varianta20dceaebd21b7d5d5b77bc82dd1e05d4375fd1be5a3f8cad716928c67cad600.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Varianta20dceaebd21b7d5d5b77bc82dd1e05d4375fd1be5a3f8cad716928c67cad600.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `400fb56da10be156e6cd5ef700f13a535fe5b96e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
