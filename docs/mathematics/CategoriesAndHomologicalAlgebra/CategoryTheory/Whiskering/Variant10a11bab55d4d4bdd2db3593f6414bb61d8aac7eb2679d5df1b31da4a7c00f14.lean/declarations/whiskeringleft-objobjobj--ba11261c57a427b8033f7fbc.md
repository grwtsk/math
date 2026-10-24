# whiskeringLeft₃ObjObjObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b86f2926a5afacc4a82099541c576f7dec81b36c0d1d556769705b657d4154bd",
  "kind": "def",
  "lexical_name": "whiskeringLeft₃ObjObjObj",
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
  "slug": "whiskeringleft-objobjobj--ba11261c57a427b8033f7fbc",
  "source": {
    "blob": "a976835c2d639a4b88b7851f4aa3db21784e7de0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 381,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant10a11bab55d4d4bdd2db3593f6414bb61d8aac7eb2679d5df1b31da4a7c00f14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba11261c57a427b8033f7fbc33c8828085af9b0510fdb153b524115275596f1b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant10a11bab55d4d4bdd2db3593f6414bb61d8aac7eb2679d5df1b31da4a7c00f14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b86f2926a5afacc4a82099541c576f7dec81b36c0d1d556769705b657d4154bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def whiskeringLeft₃ObjObjObj (F₁ : C₁ ⥤ D₁) (F₂ : C₂ ⥤ D₂) (F₃ : C₃ ⥤ D₃) :
    (D₁ ⥤ D₂ ⥤ D₃ ⥤ E) ⥤ C₁ ⥤ C₂ ⥤ C₃ ⥤ E :=
  (whiskeringRight _ _ _).obj (((whiskeringLeft₂ E).obj F₂).obj F₃) ⋙
    (whiskeringLeft C₁ D₁ _).obj F₁

/-- Auxiliary definition for `whiskeringLeft₃`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant10a11bab55d4d4bdd2db3593f6414bb61d8aac7eb2679d5df1b31da4a7c00f14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant10a11bab55d4d4bdd2db3593f6414bb61d8aac7eb2679d5df1b31da4a7c00f14.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a976835c2d639a4b88b7851f4aa3db21784e7de0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
