# image_ι_op_comp_imageUnopOp_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9d03ef5-0414-5d16-f5b7-925ae4867d59",
  "kind": "theorem",
  "lexical_name": "image_ι_op_comp_imageUnopOp_hom",
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
  "slug": "image-op-comp-imageunopop-hom--4c4a76e7a32d6dcefa10d980",
  "source": {
    "blob": "b7a1184f23ec151050967cc3459efdfb5d5d2486",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 149,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant57fcacd6251dd56e94c686ea2cf34fbda733d1b91907b9e0c1f19e3d095c61a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c4a76e7a32d6dcefa10d98070ab55691741469c411909a787b689d353a918ef",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant57fcacd6251dd56e94c686ea2cf34fbda733d1b91907b9e0c1f19e3d095c61a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9d03ef5-0414-5d16-f5b7-925ae4867d59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_ι_op_comp_imageUnopOp_hom :
    (image.ι g.unop).op ≫ (imageUnopOp g).hom = factorThruImage g := by
  simp only [imageUnopOp, Iso.trans, Iso.symm, Iso.op, cokernelOpOp_inv, cokernelEpiComp_hom,
    cokernelCompIsIso_hom, Abelian.coimageIsoImage'_hom, ← Category.assoc, ← op_comp]
  simp only [Category.assoc, Abelian.imageIsoImage_hom_comp_image_ι, kernel.lift_ι,
    Quiver.Hom.op_unop, cokernelIsoOfEq_hom_comp_desc_assoc, cokernel.π_desc_assoc,
    cokernel.π_desc]
  simp only [eqToHom_refl]
  rw [IsIso.inv_id, Category.id_comp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant57fcacd6251dd56e94c686ea2cf34fbda733d1b91907b9e0c1f19e3d095c61a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant57fcacd6251dd56e94c686ea2cf34fbda733d1b91907b9e0c1f19e3d095c61a1.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7a1184f23ec151050967cc3459efdfb5d5d2486` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
