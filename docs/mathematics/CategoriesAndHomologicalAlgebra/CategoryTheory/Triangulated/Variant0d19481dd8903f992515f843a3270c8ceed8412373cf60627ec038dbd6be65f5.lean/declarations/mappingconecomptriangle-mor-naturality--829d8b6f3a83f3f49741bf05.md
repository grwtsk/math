# mappingConeCompTriangle_mor₃_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c3158650f852d3c05dcb18c92862ba658a689bd8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f17b0e3-fac8-3920-e989-898c3718f5a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6b3849b-970b-3149-aa48-a6c1f3eaa555",
  "kind": "lemma",
  "lexical_name": "mappingConeCompTriangle_mor₃_naturality",
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
  "slug": "mappingconecomptriangle-mor-naturality--829d8b6f3a83f3f49741bf05",
  "source": {
    "blob": "c3158650f852d3c05dcb18c92862ba658a689bd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 57,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:829d8b6f3a83f3f49741bf057046b120edece8f492c00f6faebf35efcc691238",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6b3849b-970b-3149-aa48-a6c1f3eaa555`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mappingConeCompTriangle_mor₃_naturality {Y₁ Y₂ Y₃ : CochainComplex C ℤ} (f' : Y₁ ⟶ Y₂)
    (g' : Y₂ ⟶ Y₃) (φ : mk₂ f g ⟶ mk₂ f' g') :
    map g g' (φ.app 1) (φ.app 2) (naturality' φ 1 2) ≫ (mappingConeCompTriangle f' g').mor₃ =
      (mappingConeCompTriangle f g).mor₃ ≫
        (map f f' (φ.app 0) (φ.app 1) (naturality' φ 0 1))⟦1⟧' := by
  ext n
  dsimp [map]
  -- the following list of lemmas was obtained by doing simp? [ext_from_iff _ (n + 1) _ rfl]
  simp only [Int.reduceNeg, Fin.isValue, assoc, inr_f_desc_f, HomologicalComplex.comp_f,
    ext_from_iff _ (n + 1) _ rfl, inl_v_desc_f_assoc, Cochain.zero_cochain_comp_v, Cochain.ofHom_v,
    inl_v_triangle_mor₃_f_assoc, triangle_obj₁, shiftFunctor_obj_X',
    shiftFunctorObjXIso, HomologicalComplex.XIsoOfEq_rfl, Iso.refl_inv, Preadditive.neg_comp,
    id_comp, Preadditive.comp_neg, inr_f_desc_f_assoc, inr_f_triangle_mor₃_f_assoc, zero_comp,
    comp_zero, and_self]

namespace MappingConeCompHomotopyEquiv

set_option backward.isDefEq.respectTransparency false in
/-- Given two composable morphisms `f` and `g` in the category of cochain complexes, this
is the canonical morphism (which is a homotopy equivalence) from `mappingCone g` to
the mapping cone of the morphism `mappingCone f ⟶ mappingCone (f ≫ g)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3158650f852d3c05dcb18c92862ba658a689bd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
