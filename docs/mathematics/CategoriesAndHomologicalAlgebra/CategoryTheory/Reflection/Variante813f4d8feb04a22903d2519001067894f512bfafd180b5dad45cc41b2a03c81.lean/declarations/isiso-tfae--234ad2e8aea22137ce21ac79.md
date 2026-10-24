# isIso_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a2df7bc9c08fa470bf5e4c812e3dd77de31a876",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e813f4d8feb04a22903d2519001067894f512bfafd180b5dad45cc41b2a03c81.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9351ffb1-2e8e-2438-a870-637ca33572ee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a66e2e3f-2cb4-141f-4c1c-aa7e8f8030e6",
  "kind": "theorem",
  "lexical_name": "isIso_tfae",
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
  "slug": "isiso-tfae--234ad2e8aea22137ce21ac79",
  "source": {
    "blob": "0a2df7bc9c08fa470bf5e4c812e3dd77de31a876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 84,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variante813f4d8feb04a22903d2519001067894f512bfafd180b5dad45cc41b2a03c81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:234ad2e8aea22137ce21ac795c4d2a67cc3af27bb3f46c1464f2417cf377fa22",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variante813f4d8feb04a22903d2519001067894f512bfafd180b5dad45cc41b2a03c81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a66e2e3f-2cb4-141f-4c1c-aa7e8f8030e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIso_tfae : List.TFAE
    [ ∀ (c : C) (d : D), IsIso (adj.unit.app ((ihom d).obj (R.obj c)))
    , ∀ (c : C) (d : D), IsIso ((pre (adj.unit.app d)).app (R.obj c))
    , ∀ (d d' : D), IsIso (L.map ((adj.unit.app d) ▷ d'))
    , ∀ (d d' : D), IsIso (L.map ((adj.unit.app d) ⊗ (adj.unit.app d')))] := by
  tfae_have 3 → 4
  | h => by
    -- We can commute the tensor product in the condition that `L.map ((adj.unit.app d) ▷ d')` is
    -- an isomorphism:
    have h' : ∀ d d', IsIso (L.map (d ◁ (adj.unit.app d'))) := by
      intro d d'
      have := braiding_naturality (𝟙 d) (adj.unit.app d')
      rw [← Iso.eq_comp_inv, id_tensorHom] at this
      rw [this]
      simp only [map_comp, id_obj, comp_obj, tensorHom_id, Category.assoc]
      infer_instance
    intro d d'
    -- We then write the tensor product of the two units as the composition of the whiskered units,
    -- and conclude.
    have : (adj.unit.app d) ⊗ (adj.unit.app d') =
        (adj.unit.app d ▷ d') ≫ (((L ⋙ R).obj _) ◁ adj.unit.app d') := by
      simp [← tensorHom_id, ← id_tensorHom, ← tensor_comp]
    rw [this, map_comp]
    infer_instance
  tfae_have 4 → 1
  | _, _, _ => by
    -- It is enough to show that the unit is a split monomorphism, and the retraction is given
    -- by `adjRetraction` above.
    let _ : Reflective R := { L := L, adj := adj }
    have : IsIso adj.toMonad.μ := μ_iso_of_reflective (R := R)
    erw [← adj.toMonad.isSplitMono_iff_isIso_unit]
    exact ⟨⟨adjRetraction adj _ _, adjRetraction_is_retraction adj _ _⟩⟩
  tfae_have 1 → 3
  | h, d, d' => by
    rw [isIso_iff_isIso_coyoneda_map]
    intro c
    -- `w₁, w₃, w₄` are the three stacked commutative squares in the proof on nLab:
    have w₁ : (coyoneda.map (L.map (adj.unit.app d ▷ d')).op).app c = (adj.homEquiv _ _).symm ∘
        (coyoneda.map (adj.unit.app d ▷ d').op).app (R.obj c) ∘ adj.homEquiv _ _ := by ext; simp
    rw [w₁, isIso_iff_bijective]
    simp only [comp_obj, coyoneda_obj_obj, id_obj, EquivLike.comp_bijective,
      EquivLike.bijective_comp]
    -- We commute the tensor product using the auxiliary commutative square `w₂`.
    have w₂ : ((coyoneda.map (adj.unit.app d ▷ d').op).app (R.obj c)) =
        ((yoneda.obj (R.obj c)).mapIso (β_ _ _)).hom ∘
          ((coyoneda.map (d' ◁ adj.unit.app d).op).app (R.obj c)) ∘
            ((yoneda.obj (R.obj c)).mapIso (β_ _ _)).hom := by ext; simp
    rw [w₂, ← types_comp, ← types_comp, ← isIso_iff_bijective]
    refine IsIso.comp_isIso' (IsIso.comp_isIso' inferInstance ?_) inferInstance
    have w₃ : ((coyoneda.map (d' ◁ adj.unit.app d).op).app (R.obj c)) =
        ((ihom.adjunction d').homEquiv _ _).symm ∘
          ((coyoneda.map (adj.unit.app _).op).app _) ∘ (ihom.adjunction d').homEquiv _ _ := by
      ext
      simp only [id_obj, op_tensorObj, coyoneda_obj_obj, unop_tensorObj, comp_obj,
        coyoneda_map_app, Quiver.Hom.unop_op, Function.comp_apply,
        Adjunction.homEquiv_unit, Adjunction.homEquiv_counit]
      simp
    rw [w₃, isIso_iff_bijective]
    simp only [comp_obj, op_tensorObj, coyoneda_obj_obj, unop_tensorObj, id_obj,
      yoneda_obj_obj, tensorLeft_obj, EquivLike.comp_bijective, EquivLike.bijective_comp]
    have w₄ : (coyoneda.map (adj.unit.app d).op).app ((ihom d').obj (R.obj c)) ≫
        (coyoneda.obj ⟨d⟩).map (adj.unit.app ((ihom d').obj (R.obj c))) =
          (coyoneda.obj ⟨(L ⋙ R).obj d⟩).map (adj.unit.app ((ihom d').obj (R.obj c))) ≫
            (coyoneda.map (adj.unit.app d).op).app _ := by simp
    rw [← isIso_iff_bijective]
    suffices IsIso ((coyoneda.map (adj.unit.app d).op).app ((ihom d').obj (R.obj c)) ≫
        (coyoneda.obj ⟨d⟩).map (adj.unit.app ((ihom d').obj (R.obj c)))) from
      IsIso.of_isIso_comp_right _ ((coyoneda.obj ⟨d⟩).map (adj.unit.app ((ihom d').obj (R.obj c))))
    rw [w₄]
    refine IsIso.comp_isIso' inferInstance ?_
    constructor
    -- We give the inverse of the bottom map in the stack of commutative squares:
    refine ⟨fun f ↦ R.map ((adj.homEquiv _ _).symm f), ?_, by ext; simp⟩
    ext f
    simp only [comp_obj, coyoneda_obj_obj, id_obj, Adjunction.homEquiv_counit,
      map_comp, types_comp_apply, coyoneda_map_app, Quiver.Hom.unop_op, Category.assoc,
      types_id_apply]
    have : f = R.map (R.preimage f) := by simp
    rw [this]
    simp [← map_comp, ← map_comp_assoc, -map_preimage]
  tfae_have 2 ↔ 3 := by
    conv => lhs; intro c d; rw [isIso_iff_isIso_yoneda_map]
    conv => rhs; intro d d'; rw [isIso_iff_isIso_coyoneda_map]
    -- bring the quantifiers out of the `↔`:
    rw [forall_swap]; apply forall_congr'; intro d
    rw [forall_swap]; apply forall₂_congr; intro d' c
    -- `w₁, w₂,` are the two stacked commutative squares in the proof on nLab:
    have w₁ : ((coyoneda.map (L.map (adj.unit.app d ▷ d')).op).app c) =
        (adj.homEquiv _ _).symm ∘
          (coyoneda.map (adj.unit.app d ▷ d').op).app (R.obj c) ∘
            (adj.homEquiv _ _) := by ext; simp
    have w₂ : ((yoneda.map ((pre (adj.unit.app d)).app (R.obj c))).app ⟨d'⟩) =
          ((ihom.adjunction d).homEquiv _ _) ∘
            ((coyoneda.map (adj.unit.app d ▷ d').op).app (R.obj c)) ∘
              ((ihom.adjunction ((L ⋙ R).obj d)).homEquiv _ _).symm := by
      rw [← Function.comp_assoc, ((ihom.adjunction ((L ⋙ R).obj d)).homEquiv _ _).eq_comp_symm]
      ext
      simp only [id_obj, yoneda_obj_obj, comp_obj, Function.comp_apply,
        yoneda_map_app, op_tensorObj, coyoneda_obj_obj, unop_tensorObj, op_whiskerRight,
        coyoneda_map_app, unop_whiskerRight, Quiver.Hom.unop_op]
      rw [Adjunction.homEquiv_unit, Adjunction.homEquiv_unit]
      simp
    rw [w₂, w₁, isIso_iff_bijective, isIso_iff_bijective]
    simp
  tfae_finish

end

section

open Functor.OplaxMonoidal Functor.LaxMonoidal Functor.Monoidal

variable [MonoidalCategory C]
variable {L : D ⥤ C} [L.Monoidal] {R : C ⥤ D} [R.Faithful] [R.Full] (adj : L ⊣ R)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variante813f4d8feb04a22903d2519001067894f512bfafd180b5dad45cc41b2a03c81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variante813f4d8feb04a22903d2519001067894f512bfafd180b5dad45cc41b2a03c81.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a2df7bc9c08fa470bf5e4c812e3dd77de31a876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
