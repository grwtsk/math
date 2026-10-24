# assoc_inv_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee271249d13116c05674a769ffdfbb16f79a4f95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c08b9dfd90740da27da6fa1326de798a39a125376a0214812ad7cab6654c6d10.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f98c302e-803f-20f0-f4fc-b62a9b3236c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa619607-8ee3-bbf6-898d-85c230b31dc4",
  "kind": "lemma",
  "lexical_name": "assoc_inv_app",
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
  "slug": "assoc-inv-app--322553138136cbe7a1a0f8e5",
  "source": {
    "blob": "ee271249d13116c05674a769ffdfbb16f79a4f95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 93,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc08b9dfd90740da27da6fa1326de798a39a125376a0214812ad7cab6654c6d10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:322553138136cbe7a1a0f8e524c64258ed6305a4aadabf6ede8110b8b0efd473",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc08b9dfd90740da27da6fa1326de798a39a125376a0214812ad7cab6654c6d10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa619607-8ee3-bbf6-898d-85c230b31dc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma assoc_inv_app (h : ShiftMkCore C A) (m₁ m₂ m₃ : A) (X : C) :
  (h.F m₃).map ((h.add m₁ m₂).inv.app X) ≫ (h.add (m₁ + m₂) m₃).inv.app X =
    (h.add m₂ m₃).inv.app ((h.F m₁).obj X) ≫ (h.add m₁ (m₂ + m₃)).inv.app X ≫
      eqToHom (by rw [add_assoc]) := by
  rw [← cancel_mono ((h.add (m₁ + m₂) m₃).hom.app X ≫ (h.F m₃).map ((h.add m₁ m₂).hom.app X)),
    Category.assoc, Category.assoc, Category.assoc, Iso.inv_hom_id_app_assoc, ← Functor.map_comp,
    Iso.inv_hom_id_app, Functor.map_id, h.assoc_hom_app, eqToHom_trans_assoc, eqToHom_refl,
    Category.id_comp, Iso.inv_hom_id_app_assoc, Iso.inv_hom_id_app]
  rfl
#align category_theory.shift_mk_core.assoc_inv_app CategoryTheory.ShiftMkCore.assoc_inv_app

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc08b9dfd90740da27da6fa1326de798a39a125376a0214812ad7cab6654c6d10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc08b9dfd90740da27da6fa1326de798a39a125376a0214812ad7cab6654c6d10.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee271249d13116c05674a769ffdfbb16f79a4f95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
