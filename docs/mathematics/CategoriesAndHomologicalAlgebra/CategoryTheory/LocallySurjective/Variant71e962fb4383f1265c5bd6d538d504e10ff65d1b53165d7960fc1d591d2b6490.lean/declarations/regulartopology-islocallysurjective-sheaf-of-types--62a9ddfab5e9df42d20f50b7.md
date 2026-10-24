# regularTopology.isLocallySurjective_sheaf_of_types

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78015eaf-8ef3-fcc4-4c86-f9519915fa18",
  "kind": "lemma",
  "lexical_name": "regularTopology.isLocallySurjective_sheaf_of_types",
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
  "slug": "regulartopology-islocallysurjective-sheaf-of-types--62a9ddfab5e9df42d20f50b7",
  "source": {
    "blob": "99783b0824f32a0e69eb852c71a4104a399b98a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 116,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant71e962fb4383f1265c5bd6d538d504e10ff65d1b53165d7960fc1d591d2b6490.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62a9ddfab5e9df42d20f50b7694212f888a80050cfd99769e02e1d675cb23c7b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant71e962fb4383f1265c5bd6d538d504e10ff65d1b53165d7960fc1d591d2b6490.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78015eaf-8ef3-fcc4-4c86-f9519915fa18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma regularTopology.isLocallySurjective_sheaf_of_types [Preregular C] [FinitaryPreExtensive C]
    {F G : Cᵒᵖ ⥤ Type w} (f : F ⟶ G) [PreservesFiniteProducts F] [PreservesFiniteProducts G]
      (h : Presheaf.IsLocallySurjective (coherentTopology C) f) :
        Presheaf.IsLocallySurjective (regularTopology C) f where
  imageSieve_mem y := by
    replace h := h.1 y
    rw [coherentTopology.mem_sieves_iff_hasEffectiveEpiFamily] at h
    obtain ⟨α, _, Z, π, h, h'⟩ := h
    rw [mem_sieves_iff_hasEffectiveEpi]
    let x : (a : α) → (F.obj ⟨Z a⟩) := fun a ↦ (h' a).choose
    let i' : ((a : α) → (F.obj ⟨Z a⟩)) ≅ (F.obj ⟨∐ Z⟩) := (Types.productIso _).symm ≪≫
      (PreservesProduct.iso F _).symm ≪≫ F.mapIso (opCoproductIsoProduct _).symm
    refine ⟨∐ Z, Sigma.desc π, inferInstance, i'.hom x, ?_⟩
    have := preservesLimitsOfShape_of_equiv (Discrete.opposite α).symm G
    apply Concrete.isLimit_ext _ (isLimitOfPreserves G (coproductIsCoproduct Z).op)
    intro ⟨⟨a⟩⟩
    simp only [Functor.comp_obj, Functor.op_obj, Discrete.functor_obj_eq_as, Functor.mapCone_pt,
      Cocone.op_pt, Cofan.mk_pt, Functor.const_obj_obj, Functor.mapCone_π_app, Cocone.op_π,
      NatTrans.op_app, Cofan.mk_ι_app, Functor.mapIso_symm, Iso.trans_hom, Iso.symm_hom,
      Functor.mapIso_inv, comp_apply, ← f.naturality_apply (Sigma.ι Z a).op, i']
    have : f.app ⟨Z a⟩ (x a) = G.map (π a).op y := (h' a).choose_spec
    convert! this
    · rw [← Functor.map_comp_apply, opCoproductIsoProduct_inv_comp_ι, ← piComparison_comp_π]
      change ((PreservesProduct.iso F _).hom ≫ _) _ = _
      have := Types.productIso_hom_comp_eval (fun a ↦ F.obj (op (Z a))) a
      rw [← Iso.eq_inv_comp] at this
      simp only [types_comp_apply, Iso.inv_hom_id_apply]
      simp [← comp_apply]
    · simp only [← Functor.map_comp_apply, ← op_comp, Sigma.ι_comp_desc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant71e962fb4383f1265c5bd6d538d504e10ff65d1b53165d7960fc1d591d2b6490.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant71e962fb4383f1265c5bd6d538d504e10ff65d1b53165d7960fc1d591d2b6490.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99783b0824f32a0e69eb852c71a4104a399b98a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
