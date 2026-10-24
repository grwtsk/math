# braiding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6428ca7530c46b4d7d55024a4b404570d02d8a05ac87e12011c3fcac68acca6c",
  "kind": "def",
  "lexical_name": "braiding",
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
  "slug": "braiding--36cdfe4c45c67bbe8f300c8e",
  "source": {
    "blob": "66ebc79848cfe35f6dd1e41ab2f9a99f3b46dcd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 51,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36cdfe4c45c67bbe8f300c8e8f5693bbfcf715a0347d4589a47ab5c64f1c68b4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6428ca7530c46b4d7d55024a4b404570d02d8a05ac87e12011c3fcac68acca6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def braiding [HasTensor X Y] [HasTensor Y X] : tensorObj X Y ≅ tensorObj Y X where
  hom k := tensorObjDesc (fun i j hij => (β_ _ _).hom ≫
    ιTensorObj Y X j i k (by simpa only [add_comm j i] using hij))
  inv k := tensorObjDesc (fun i j hij => (β_ _ _).inv ≫
    ιTensorObj X Y j i k (by simpa only [add_comm j i] using hij))

variable {Y Z} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66ebc79848cfe35f6dd1e41ab2f9a99f3b46dcd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
