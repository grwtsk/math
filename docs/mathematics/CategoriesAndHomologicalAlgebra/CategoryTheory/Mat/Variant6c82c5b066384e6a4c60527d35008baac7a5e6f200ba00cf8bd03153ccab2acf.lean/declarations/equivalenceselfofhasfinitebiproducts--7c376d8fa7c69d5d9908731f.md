# equivalenceSelfOfHasFiniteBiproducts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb77c6039b7c77b41a5f7a0feb10b79f1419cf95c72f325ff7e14d0d13c28d32",
  "kind": "def",
  "lexical_name": "equivalenceSelfOfHasFiniteBiproducts",
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
  "slug": "equivalenceselfofhasfinitebiproducts--7c376d8fa7c69d5d9908731f",
  "source": {
    "blob": "6272da13cb771916f50c170a425cc2617eab1321",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 466,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c376d8fa7c69d5d9908731f2e0ab0fbc1569eb25a300adf75f471f51a608eb0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb77c6039b7c77b41a5f7a0feb10b79f1419cf95c72f325ff7e14d0d13c28d32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivalenceSelfOfHasFiniteBiproducts (C : Type (u₁ + 1)) [LargeCategory C] [Preadditive C]
    [HasFiniteBiproducts C] : Mat_ C ≌ C :=
  Equivalence.mk
    (-- I suspect this is already an adjoint equivalence, but it seems painful to verify.
      lift
      (𝟭 C))
    (embedding C) (ext equivalenceSelfOfHasFiniteBiproductsAux) (embeddingLiftIso (𝟭 C))

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variant6c82c5b066384e6a4c60527d35008baac7a5e6f200ba00cf8bd03153ccab2acf.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6272da13cb771916f50c170a425cc2617eab1321` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
