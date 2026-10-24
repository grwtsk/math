# mappingConeCompTriangle_mor₃_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "63ff57cbe92dff31cad80c3c3998163372814f1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4d56762-ae10-023c-c5ae-473c9fd48135",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d7de476b-a173-4b3e-7954-1c42aea7774e",
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
  "slug": "mappingconecomptriangle-mor-naturality--68025d659b67c801ab58ee22",
  "source": {
    "blob": "63ff57cbe92dff31cad80c3c3998163372814f1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 47,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68025d659b67c801ab58ee226e97ebf306db8afa0f8e548f5b93b6f40f58bcc6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7de476b-a173-4b3e-7954-1c42aea7774e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–66.

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
    inl_v_triangle_mor₃_f_assoc, triangle_obj₁, shiftFunctor_obj_X', shiftFunctor_obj_X,
    shiftFunctorObjXIso, HomologicalComplex.XIsoOfEq_rfl, Iso.refl_inv, Preadditive.neg_comp,
    id_comp, Preadditive.comp_neg, inr_f_desc_f_assoc, inr_f_triangle_mor₃_f_assoc, zero_comp,
    comp_zero, and_self]

namespace MappingConeCompHomotopyEquiv

/-- Given two composable morphisms `f` and `g` in the category of cochain complexes, this
is the canonical morphism (which is an homotopy equivalence) from `mappingCone g` to
the mapping cone of the morphism `mappingCone f ⟶ mappingCone (f ≫ g)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63ff57cbe92dff31cad80c3c3998163372814f1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
