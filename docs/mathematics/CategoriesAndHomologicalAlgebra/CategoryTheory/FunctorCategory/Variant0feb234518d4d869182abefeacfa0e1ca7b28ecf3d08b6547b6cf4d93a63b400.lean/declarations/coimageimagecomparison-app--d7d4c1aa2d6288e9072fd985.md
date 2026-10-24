# coimageImageComparison_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e519abad-1c87-b098-6604-156c1d8151e4",
  "kind": "theorem",
  "lexical_name": "coimageImageComparison_app",
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
  "slug": "coimageimagecomparison-app--d7d4c1aa2d6288e9072fd985",
  "source": {
    "blob": "264fb7f8f1a488164dcbcef510dbee0d81577f29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 66,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0feb234518d4d869182abefeacfa0e1ca7b28ecf3d08b6547b6cf4d93a63b400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7d4c1aa2d6288e9072fd9859943a8dbdeac3daf7f082e331498d2a220e49035",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0feb234518d4d869182abefeacfa0e1ca7b28ecf3d08b6547b6cf4d93a63b400.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e519abad-1c87-b098-6604-156c1d8151e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coimageImageComparison_app :
    coimageImageComparison (α.app X) =
      (coimageObjIso α X).inv ≫ (coimageImageComparison α).app X ≫ (imageObjIso α X).hom := by
  ext
  dsimp
  dsimp [imageObjIso, coimageObjIso, cokernel.map]
  simp only [coimage_image_factorisation, PreservesKernel.iso_hom, Category.assoc,
    kernel.lift_ι, Category.comp_id, PreservesCokernel.iso_inv,
    cokernel.π_desc_assoc, Category.id_comp]
  erw [kernelComparison_comp_ι _ ((evaluation C D).obj X)]
  erw [π_comp_cokernelComparison_assoc _ ((evaluation C D).obj X)]
  conv_lhs => rw [← coimage_image_factorisation α]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0feb234518d4d869182abefeacfa0e1ca7b28ecf3d08b6547b6cf4d93a63b400.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant0feb234518d4d869182abefeacfa0e1ca7b28ecf3d08b6547b6cf4d93a63b400.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `264fb7f8f1a488164dcbcef510dbee0d81577f29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
