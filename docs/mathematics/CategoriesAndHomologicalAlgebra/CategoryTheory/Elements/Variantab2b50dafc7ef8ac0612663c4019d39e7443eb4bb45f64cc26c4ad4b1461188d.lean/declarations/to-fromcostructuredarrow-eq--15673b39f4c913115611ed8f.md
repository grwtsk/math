# to_fromCostructuredArrow_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a41ebf1f5b662213cf67a0c6adec870c81e8af1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82c3f818-033c-95f6-8fa9-9ab66f702bdd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc260616-6273-0e0d-f577-99222c058dd4",
  "kind": "theorem",
  "lexical_name": "to_fromCostructuredArrow_eq",
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
  "slug": "to-fromcostructuredarrow-eq--15673b39f4c913115611ed8f",
  "source": {
    "blob": "8a41ebf1f5b662213cf67a0c6adec870c81e8af1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 237,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15673b39f4c913115611ed8fed00415fa1240985f6338ac3f650e5ba81b6d341",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc260616-6273-0e0d-f577-99222c058dd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem to_fromCostructuredArrow_eq (F : Cᵒᵖ ⥤ Type v) :
    (fromCostructuredArrow F).rightOp ⋙ toCostructuredArrow F = 𝟭 _ := by
  refine' Functor.ext _ _
  · intro X
    cases' X with X_left X_right X_hom
    cases X_right
    simp only [Functor.id_obj, Functor.rightOp_obj, toCostructuredArrow_obj, Functor.comp_obj,
      CostructuredArrow.mk]
    congr
    ext x f
    convert congr_fun (X_hom.naturality f.op).symm (𝟙 X_left)
    simp
  · intro X Y f
    ext
    simp [CostructuredArrow.eqToHom_left]
#align category_theory.category_of_elements.to_from_costructured_arrow_eq CategoryTheory.CategoryOfElements.to_fromCostructuredArrow_eq

/-- The equivalence `F.Elementsᵒᵖ ≅ (yoneda, F)` given by yoneda lemma. -/
@[simps! functor_obj functor_map inverse_obj inverse_map unitIso_inv counitIso_hom counitIso_inv]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variantab2b50dafc7ef8ac0612663c4019d39e7443eb4bb45f64cc26c4ad4b1461188d.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a41ebf1f5b662213cf67a0c6adec870c81e8af1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
