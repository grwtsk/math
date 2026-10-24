# sheafHom_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c57abdb7f0afcf62a5be016bc7845b4366895f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 430,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:918a725d-7d84-6ea2-bb9d-87ab936a6240",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:517419cd-0e0f-5524-9e12-dd9349838a03",
  "kind": "theorem",
  "lexical_name": "sheafHom_eq",
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
  "slug": "sheafhom-eq--acabe22099aac32e52e0fb1b",
  "source": {
    "blob": "2c57abdb7f0afcf62a5be016bc7845b4366895f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 430,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acabe22099aac32e52e0fb1b4e5cb251efe13c14d1034e38159c4c2c8bdaa597",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:517419cd-0e0f-5524-9e12-dd9349838a03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sheafHom_eq (α : ℱ ⟶ ℱ'.val) : sheafHom H (whiskerLeft G.op α) = α := by
  ext X
  apply yoneda.map_injective
  -- porting note: deleted next line as it's not needed in Lean 4
  ext U
  -- porting note: Lean 3 didn't need to be told the explicit input to image_preimage
  erw [yoneda.image_preimage ((H.sheafYonedaHom (whiskerLeft G.op α)).app X)]
  symm
  change (show (ℱ'.val ⋙ coyoneda.obj (op (unop U))).obj (op (unop X)) from _) = _
  apply sheaf_eq_amalgamation ℱ' (H.is_cover _)
  -- porting note: next line was not needed in mathlib3
  · exact (pushforwardFamily_compatible H _ _)
  intro Y f hf
  conv_lhs => rw [← hf.some.fac]
  dsimp
  simp
#align category_theory.cover_dense.sheaf_hom_eq CategoryTheory.CoverDense.sheafHom_eq

/-- A full and cover-dense functor `G` induces an equivalence between morphisms into a sheaf and
morphisms over the restrictions via `G`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c57abdb7f0afcf62a5be016bc7845b4366895f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
