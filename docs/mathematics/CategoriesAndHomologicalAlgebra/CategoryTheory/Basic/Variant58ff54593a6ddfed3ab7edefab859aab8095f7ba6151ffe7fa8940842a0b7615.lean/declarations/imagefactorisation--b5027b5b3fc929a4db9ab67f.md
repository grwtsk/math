# imageFactorisation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e62620c9b405a8ccaca61f046c2f5deb16c18bc1fd799c3b148dc72fa8e0400c",
  "kind": "def",
  "lexical_name": "imageFactorisation",
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
  "slug": "imagefactorisation--b5027b5b3fc929a4db9ab67f",
  "source": {
    "blob": "4dea1627419859821417cf1d4ef96ec3254772cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 160,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ff54593a6ddfed3ab7edefab859aab8095f7ba6151ffe7fa8940842a0b7615.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5027b5b3fc929a4db9ab67ff84d2cf1f1e6b3bbb3d3cf683dcb51c805b01e7f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ff54593a6ddfed3ab7edefab859aab8095f7ba6151ffe7fa8940842a0b7615.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e62620c9b405a8ccaca61f046c2f5deb16c18bc1fd799c3b148dc72fa8e0400c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def imageFactorisation {X Y : C} (f : X ⟶ Y) [IsIso (Abelian.coimageImageComparison f)] :
    ImageFactorisation f where
  F := imageMonoFactorisation f
  isImage :=
    { lift := fun F => inv (Abelian.coimageImageComparison f) ≫ cokernel.desc _ F.e F.kernel_ι_comp
      lift_fac := fun F => by
        rw [imageMonoFactorisation_m]
        simp only [Category.assoc]
        rw [IsIso.inv_comp_eq]
        ext
        simp }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ff54593a6ddfed3ab7edefab859aab8095f7ba6151ffe7fa8940842a0b7615.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant58ff54593a6ddfed3ab7edefab859aab8095f7ba6151ffe7fa8940842a0b7615.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dea1627419859821417cf1d4ef96ec3254772cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
