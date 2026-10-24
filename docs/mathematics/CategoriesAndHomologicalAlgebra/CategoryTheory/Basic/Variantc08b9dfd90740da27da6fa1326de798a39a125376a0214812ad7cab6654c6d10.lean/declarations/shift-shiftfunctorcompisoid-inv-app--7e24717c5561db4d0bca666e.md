# shift_shiftFunctorCompIsoId_inv_app

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
      "line": 508,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c08b9dfd90740da27da6fa1326de798a39a125376a0214812ad7cab6654c6d10.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:266b7fea-feb4-6414-b6c0-1316ae28e20f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fba51ae9-88a9-9ad8-cedc-68d635509d47",
  "kind": "theorem",
  "lexical_name": "shift_shiftFunctorCompIsoId_inv_app",
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
  "slug": "shift-shiftfunctorcompisoid-inv-app--7e24717c5561db4d0bca666e",
  "source": {
    "blob": "ee271249d13116c05674a769ffdfbb16f79a4f95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 508,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc08b9dfd90740da27da6fa1326de798a39a125376a0214812ad7cab6654c6d10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e24717c5561db4d0bca666e9a6ef98a9238604bd9d24fde74bb1e62d94c6402",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc08b9dfd90740da27da6fa1326de798a39a125376a0214812ad7cab6654c6d10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fba51ae9-88a9-9ad8-cedc-68d635509d47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shift_shiftFunctorCompIsoId_inv_app (n m : A) (h : n + m = 0) (X : C) :
  ((shiftFunctorCompIsoId C n m h).inv.app X)⟦n⟧' =
    ((shiftFunctorCompIsoId C m n
      (by rw [← neg_eq_of_add_eq_zero_left h, add_right_neg])).inv.app (X⟦n⟧)) := by
  rw [← cancel_mono (((shiftFunctorCompIsoId C n m h).hom.app X)⟦n⟧'),
    ← Functor.map_comp, Iso.inv_hom_id_app, Functor.map_id,
    shift_shiftFunctorCompIsoId_hom_app, Iso.inv_hom_id_app]
  rfl
#align category_theory.shift_shift_functor_comp_iso_id_inv_app CategoryTheory.shift_shiftFunctorCompIsoId_inv_app

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc08b9dfd90740da27da6fa1326de798a39a125376a0214812ad7cab6654c6d10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc08b9dfd90740da27da6fa1326de798a39a125376a0214812ad7cab6654c6d10.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee271249d13116c05674a769ffdfbb16f79a4f95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
