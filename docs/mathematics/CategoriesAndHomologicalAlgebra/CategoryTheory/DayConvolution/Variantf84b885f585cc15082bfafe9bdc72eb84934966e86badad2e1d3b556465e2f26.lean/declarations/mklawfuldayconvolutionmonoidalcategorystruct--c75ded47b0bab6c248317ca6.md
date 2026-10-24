# mkLawfulDayConvolutionMonoidalCategoryStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:840871ee04c3c66a295d3884a76e0804f0bb5abd7b35003d38e4599f4bde2a0b",
  "kind": "def",
  "lexical_name": "mkLawfulDayConvolutionMonoidalCategoryStruct",
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
  "slug": "mklawfuldayconvolutionmonoidalcategorystruct--c75ded47b0bab6c248317ca6",
  "source": {
    "blob": "072e9465234fa69e7f9296926ff65678c6fc17a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1253,
    "line": 1207,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Variantf84b885f585cc15082bfafe9bdc72eb84934966e86badad2e1d3b556465e2f26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c75ded47b0bab6c248317ca60c74c0bf14bdd936a50d45969e0a2b0e6f552686",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Variantf84b885f585cc15082bfafe9bdc72eb84934966e86badad2e1d3b556465e2f26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:840871ee04c3c66a295d3884a76e0804f0bb5abd7b35003d38e4599f4bde2a0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1207–1253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkLawfulDayConvolutionMonoidalCategoryStruct :
    letI : MonoidalCategoryStruct D := mkMonoidalCategoryStruct C V D
    LawfulDayConvolutionMonoidalCategoryStruct C V D :=
  letI : MonoidalCategoryStruct D := mkMonoidalCategoryStruct C V D
  { ι := ι C V D
    faithful_ι := fullyFaithulι.faithful
    convolutionExtensionUnit d d' :=
      (convolutions C V d d').unit
    isPointwiseLeftKanExtensionConvolutionExtensionUnit d d' :=
      (convolutions C V d d').isPointwiseLeftKanExtensionUnit
    unitUnit := tensorUnitConvolutionUnit.can
    isPointwiseLeftKanExtensionUnitUnit :=
      tensorUnitConvolutionUnit.isPointwiseLeftKanExtensionCan
    convolutionExtensionUnit_comp_ι_map_tensorHom_app := by
      intros d₁ d₁' d₂ d₂' f f' x y
      simp [ι_map_tensorHom_eq C V D f f']
    convolutionExtensionUnit_comp_ι_map_whiskerLeft_app := by
      intros d₁ d₂ d₂' f x y
      simp [← id_tensorHom, ι_map_tensorHom_eq C V D]
    convolutionExtensionUnit_comp_ι_map_whiskerRight_app := by
      intros
      simp [← tensorHom_id, ι_map_tensorHom_eq C V D]
    associator_hom_unit_unit d₁ d₂ d₃ x₁ x₂ x₃ := by
      simp only [externalProductBifunctor_obj_obj, Functor.comp_obj, tensor_obj, associator,
        Functor.FullyFaithful.preimageIso_hom, Functor.FullyFaithful.map_preimage]
      let : DayConvolution (ι C V D |>.obj d₁) ((ι C V D |>.obj d₂) ⊛ (ι C V D |>.obj d₃)) :=
        convolutions C V _ _
      let : DayConvolution ((ι C V D |>.obj d₁) ⊛ (ι C V D |>.obj d₂)) (ι C V D |>.obj d₃) :=
        convolutions C V _ _
      apply DayConvolution.associator_hom_unit_unit
    leftUnitor_hom_unit_app _ _ := by
      simp only [Functor.comp_obj, tensor_obj, leftUnitor,
        Functor.FullyFaithful.preimageIso_hom, Functor.FullyFaithful.map_preimage]
      apply DayConvolutionUnit.leftUnitor_hom_unit_app
    rightUnitor_hom_unit_app _ _ := by
      simp only [Functor.comp_obj, tensor_obj, rightUnitor,
        Functor.FullyFaithful.preimageIso_hom, Functor.FullyFaithful.map_preimage]
      apply DayConvolutionUnit.rightUnitor_hom_unit_app }

end

variable {C V} in
/-- Given a fully faithful functor `ι : D ⥤ C ⥤ V` and mere existence of Day convolutions of
`ι.obj d` and `ι.obj d'` such that the convolution remains in the essential image of `ι`,
construct an `InducedLawfulDayConvolutionMonoidalCategoryStructCore` by letting all other
data be the generic ones from the `HasPointwiseLeftKanExtension` API. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Variantf84b885f585cc15082bfafe9bdc72eb84934966e86badad2e1d3b556465e2f26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Variantf84b885f585cc15082bfafe9bdc72eb84934966e86badad2e1d3b556465e2f26.lean#L1207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `072e9465234fa69e7f9296926ff65678c6fc17a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
