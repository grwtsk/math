# bijective_rightHomotopyClassToHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d721bce-4a89-5a89-be8b-7fb12ae0a8e3",
  "kind": "lemma",
  "lexical_name": "bijective_rightHomotopyClassToHom",
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
  "slug": "bijective-righthomotopyclasstohom--0590228250f645d1135ad614",
  "source": {
    "blob": "b1ca6cf0613f633b6d6c0df82408b632d53e7dae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 77,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FundamentalLemma/Variantbf6e7fe4a98ad53fc202d1a3ad419538c948d06427943ef088acce2ea44b27af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0590228250f645d1135ad614177da6f85a4004700bd9fbb44f15a3a4f3209032",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FundamentalLemma/Variantbf6e7fe4a98ad53fc202d1a3ad419538c948d06427943ef088acce2ea44b27af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d721bce-4a89-5a89-be8b-7fb12ae0a8e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bijective_rightHomotopyClassToHom :
    Function.Bijective (rightHomotopyClassToHom L : RightHomotopyClass X Y → _) := by
  wlog _ : IsCofibrant Y generalizing Y
  · obtain ⟨Y', _, p, _, _⟩ := CofibrantObject.HoCat.exists_resolution Y
    have _ : IsFibrant Y' := isFibrant_of_fibration p
    have hY' := this Y' inferInstance
    simp only [← bijective_leftHomotopyClassToHom_iff_bijective_rightHomotopyClassToHom] at hY' ⊢
    have := Localization.inverts L (weakEquivalences _) p
      (by rwa [← weakEquivalence_iff])
    rw [← Function.Bijective.of_comp_iff _
      (LeftHomotopyClass.postcomp_bijective_of_fibration_of_weakEquivalence _ p)]
    convert! (Iso.homCongr (Iso.refl (L.obj X)) (asIso (L.map p))).bijective.comp hY'
    ext f
    obtain ⟨f, rfl⟩ := f.mk_surjective
    simp
  wlog _ : IsFibrant X generalizing X
  · obtain ⟨X', i, _, _, _⟩ : ∃ (X' : C) (i : X ⟶ X'), Cofibration i ∧ WeakEquivalence i ∧
        IsFibrant X' :=
      ⟨_, FibrantObject.HoCat.iResolutionObj X, inferInstance, inferInstance, inferInstance⟩
    have _ := isCofibrant_of_cofibration i
    have hX' := this X' inferInstance
    have := Localization.inverts L (weakEquivalences _) i
      (by rwa [← weakEquivalence_iff])
    rw [← Function.Bijective.of_comp_iff _
      (RightHomotopyClass.precomp_bijective_of_cofibration_of_weakEquivalence Y i)]
    convert! (Iso.homCongr (asIso (L.map i)) (Iso.refl (L.obj Y))).symm.bijective.comp hX'
    ext f
    obtain ⟨f, rfl⟩ := f.mk_surjective
    simp
  let E := Localization.uniq BifibrantObject.toHoCat (BifibrantObject.ι ⋙ L) (weakEquivalences _)
  let e : BifibrantObject.toHoCat ⋙ E.functor ≅ BifibrantObject.ι ⋙ L :=
    Localization.compUniqFunctor BifibrantObject.toHoCat (BifibrantObject.ι ⋙ L)
      (weakEquivalences _)
  have : rightHomotopyClassToHom L =
      (BifibrantObject.HoCat.homEquivRight.trans (E.fullyFaithfulFunctor.homEquiv.trans
        (Iso.homCongr (e.app (.mk X)) (e.app (.mk Y))))) := by
    ext f
    obtain ⟨f, rfl⟩ := RightHomotopyClass.mk_surjective f
    exact (NatIso.naturality_1 e (BifibrantObject.homMk f)).symm
  rw [this]
  exact Equiv.bijective _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FundamentalLemma/Variantbf6e7fe4a98ad53fc202d1a3ad419538c948d06427943ef088acce2ea44b27af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FundamentalLemma/Variantbf6e7fe4a98ad53fc202d1a3ad419538c948d06427943ef088acce2ea44b27af.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1ca6cf0613f633b6d6c0df82408b632d53e7dae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
