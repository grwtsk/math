# monoidalOfLawfulDayConvolutionMonoidalCategoryStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:480c38f1a5e774060604de7bfc26f4b67183faca2b5bdb5ddeb6690e43aae8ca",
  "kind": "def",
  "lexical_name": "monoidalOfLawfulDayConvolutionMonoidalCategoryStruct",
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
  "slug": "monoidaloflawfuldayconvolutionmonoidalcategorystruct--57c39b52901d8b647bbd7d7f",
  "source": {
    "blob": "4855534a709cd95d7105a597df2707345582ae2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1056,
    "line": 929,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Varianteb90c07f3242bb3190abb71fd971b897bcde7d87d7525c08065c1bd90ed0fdbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57c39b52901d8b647bbd7d7f30a4fb02c8ce0bf9ec1b351b0b925a0bec6c6a47",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Varianteb90c07f3242bb3190abb71fd971b897bcde7d87d7525c08065c1bd90ed0fdbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:480c38f1a5e774060604de7bfc26f4b67183faca2b5bdb5ddeb6690e43aae8ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 929–1056.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monoidalOfLawfulDayConvolutionMonoidalCategoryStruct
    (D : Type u₃) [Category.{v₃} D]
    [MonoidalCategoryStruct D]
    [LawfulDayConvolutionMonoidalCategoryStruct C V D]
    [∀ (v : V) (d : C), Limits.PreservesColimitsOfShape
      (CostructuredArrow (tensor C) d) (tensorLeft v)]
    [∀ (v : V) (d : C), Limits.PreservesColimitsOfShape
      (CostructuredArrow (tensor C) d) (tensorRight v)]
    [∀ (v : V) (d : C), Limits.PreservesColimitsOfShape
      (CostructuredArrow (Functor.fromPUnit.{0} <| 𝟙_ C) d) (tensorLeft v)]
    [∀ (v : V) (d : C), Limits.PreservesColimitsOfShape
      (CostructuredArrow (Functor.fromPUnit.{0} <| 𝟙_ C) d) (tensorRight v)]
    [∀ (v : V) (d : C × C),
      Limits.PreservesColimitsOfShape
        (CostructuredArrow ((𝟭 C).prod <| Functor.fromPUnit.{0} <| 𝟙_ C) d)
        (tensorRight v)]
    [∀ (v : V) (d : C × C),
      Limits.PreservesColimitsOfShape
        (CostructuredArrow ((tensor C).prod (𝟭 C)) d) (tensorRight v)] :
    MonoidalCategory D :=
  MonoidalCategory.ofTensorHom
    (id_tensorHom_id := fun x y => by
      apply Functor.Faithful.map_injective (F := ι C V D)
      simp only [ι_map_tensorHom_hom_eq_tensorHom, Functor.map_id]
      apply (DayConvolution.corepresentableBy
        (ι C V D |>.obj _) (ι C V D |>.obj _)).homEquiv.injective
      dsimp
      ext ⟨_, _⟩
      simp only [externalProductBifunctor_obj_obj, Functor.comp_obj, tensor_obj,
        corepresentableBy_homEquiv_apply_app, unit_app_map_app, NatTrans.id_app,
        tensorHom_id, id_whiskerRight, Category.id_comp]
      dsimp [DayConvolution.convolution]
      simp)
    (tensorHom_comp_tensorHom := fun _ _ _ _ => by
      apply Functor.Faithful.map_injective (F := ι C V D)
      simp only [ι_map_tensorHom_hom_eq_tensorHom, Functor.map_comp]
      apply (corepresentableBy (ι C V D |>.obj _) (ι C V D |>.obj _)).homEquiv.injective
      dsimp
      ext ⟨_, _⟩
      simp)
    (id_tensorHom := fun x {y₁ y₂} f => by
      apply Functor.Faithful.map_injective (F := ι C V D)
      simp only [ι_map_tensorHom_hom_eq_tensorHom]
      apply (corepresentableBy (ι C V D |>.obj _) (ι C V D |>.obj _)).homEquiv.injective
      dsimp
      ext ⟨x, y⟩
      dsimp
      simp only [Functor.map_id, unit_app_map_app, Functor.comp_obj, tensor_obj,
        NatTrans.id_app, id_tensorHom]
      dsimp [unit]
      rw [convolutionExtensionUnit_comp_ι_map_whiskerLeft_app])
    (tensorHom_id := fun x {y₁ y₂} f => by
      apply Functor.Faithful.map_injective (F := ι C V D)
      simp only [ι_map_tensorHom_hom_eq_tensorHom]
      apply (corepresentableBy (ι C V D |>.obj _) (ι C V D |>.obj _)).homEquiv.injective
      dsimp
      ext ⟨x, y⟩
      dsimp
      simp only [Functor.map_id, DayConvolution.unit_app_map_app, Functor.comp_obj,
        tensor_obj, NatTrans.id_app, tensorHom_id]
      dsimp [DayConvolution.unit]
      rw [convolutionExtensionUnit_comp_ι_map_whiskerRight_app])
    (associator_naturality := fun f₁ f₂ f₃ => by
      apply Functor.Faithful.map_injective (F := ι C V D)
      simp only [Functor.map_comp, ι_map_associator_hom_eq_associator_hom,
        ι_map_tensorHom_hom_eq_tensorHom]
      exact DayConvolution.associator_naturality
        ((ι C V D).map f₁) ((ι C V D).map f₂) ((ι C V D).map f₃))
    (leftUnitor_naturality := fun f => by
      apply Functor.Faithful.map_injective (F := ι C V D)
      simp only [Functor.map_comp, ι_map_tensorHom_hom_eq_tensorHom, Functor.map_id]
      rw [ι_map_leftUnitor_hom_eq_leftUnitor_hom,
        ι_map_leftUnitor_hom_eq_leftUnitor_hom]
      exact DayConvolutionUnit.leftUnitor_naturality
        (ι C V D |>.obj <| 𝟙_ D) (ι C V D |>.map f))
    (rightUnitor_naturality := fun f => by
      apply Functor.Faithful.map_injective (F := ι C V D)
      simp only [Functor.map_comp, ι_map_tensorHom_hom_eq_tensorHom, Functor.map_id]
      rw [ι_map_rightUnitor_hom_eq_rightUnitor_hom, ι_map_rightUnitor_hom_eq_rightUnitor_hom]
      exact DayConvolutionUnit.rightUnitor_naturality
        (ι C V D |>.obj <| 𝟙_ D) (ι C V D |>.map f))
    (pentagon := fun a b c d => by
      apply Functor.Faithful.map_injective (F := ι C V D)
      simp only [Functor.map_comp, Functor.map_id, ι_map_tensorHom_hom_eq_tensorHom,
        ι_map_associator_hom_eq_associator_hom]
      -- this is a bit painful...
      let : DayConvolution
          (((ι C V D |>.obj a) ⊛ (ι C V D |>.obj b)) ⊛ (ι C V D |>.obj c))
          (ι C V D |>.obj d) :=
        convolution C V D _ _
      let : DayConvolution
          ((ι C V D |>.obj a) ⊛ (ι C V D |>.obj b))
          ((ι C V D |>.obj c) ⊛ (ι C V D |>.obj d)) :=
        convolution C V D _ _
      let : DayConvolution
          ((ι C V D |>.obj a) ⊛ ((ι C V D |>.obj b) ⊛ (ι C V D |>.obj c)))
          (ι C V D |>.obj d) :=
        convolution C V D _ _
      let : DayConvolution
          (ι C V D |>.obj a)
          ((ι C V D |>.obj b) ⊛ ((ι C V D |>.obj c) ⊛ (ι C V D |>.obj d))) :=
        convolution C V D _ _
      let : DayConvolution
          (ι C V D |>.obj a)
          (((ι C V D |>.obj b) ⊛ (ι C V D |>.obj c)) ⊛ (ι C V D |>.obj d)) :=
        convolution C V D _ _
      exact DayConvolution.pentagon
        (ι C V D |>.obj a) (ι C V D |>.obj b) (ι C V D |>.obj c) (ι C V D |>.obj d))
    (triangle := fun a b => by
      apply Functor.Faithful.map_injective (F := ι C V D)
      simp only [Functor.map_comp, Functor.map_id, ι_map_tensorHom_hom_eq_tensorHom,
        ι_map_associator_hom_eq_associator_hom, ι_map_leftUnitor_hom_eq_leftUnitor_hom,
        ι_map_rightUnitor_hom_eq_rightUnitor_hom]
      exact DayConvolution.triangle
        (ι C V D |>.obj a) (ι C V D |>.obj b) (ι C V D |>.obj <| 𝟙_ D))

/-! In what follows, we give a constructor for `LawfulDayConvolutionMonoidalCategoryStruct`
that does not assume a pre-existing `MonoidalCategoryStruct` and builds one from
the data of suitable convolutions, while giving definitional control over
as many parameters as we can. -/

/-- An `InducedLawfulDayConvolutionMonoidalCategoryStructCore C V D` bundles the
core data needed to construct a full `LawfulDayConvolutionMonoidalCategoryStructCore`.
We are making this a class so that it can act as a "proxy" for inferring `DayConvolution`
instances (which is all the more important that we are modifying the instances given in the
constructor to get better ones defeq-wise). As this object is purely about the internals
of definitions of Day convolutions monoidal structures, it is advised to not register
this class globally. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Varianteb90c07f3242bb3190abb71fd971b897bcde7d87d7525c08065c1bd90ed0fdbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Varianteb90c07f3242bb3190abb71fd971b897bcde7d87d7525c08065c1bd90ed0fdbb.lean#L929).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4855534a709cd95d7105a597df2707345582ae2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
