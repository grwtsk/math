# preservesColimitsLeftOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:098184c90822e96832707d9ede9f6add5592165bda126bf6f91c82cb8c5dcc0b",
  "kind": "def",
  "lexical_name": "preservesColimitsLeftOp",
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
  "slug": "preservescolimitsleftop--96a06ed8de1aa75c6f834258",
  "source": {
    "blob": "ef00d9191c63ed2423eeb07e7340687dfec5a597",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 190,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96a06ed8de1aa75c6f8342584efd4dd2d80b9d18b32663cf1c3f7afe8711a2af",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:098184c90822e96832707d9ede9f6add5592165bda126bf6f91c82cb8c5dcc0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preservesColimitsLeftOp (F : C ⥤ Dᵒᵖ) [PreservesLimits F] : PreservesColimits F.leftOp
    where preservesColimitsOfShape {_} _ := preservesColimitsOfShapeLeftOp _ _
#align category_theory.limits.preserves_colimits_left_op CategoryTheory.Limits.preservesColimitsLeftOp

/-- If `F : Cᵒᵖ ⥤ D` preserves limits, then `F.right_op : C ⥤ Dᵒᵖ` preserves colimits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantde912cc1ad9f61d6660be2fdf19428d02be3d2609be4d8ad51f6ab595c149985.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef00d9191c63ed2423eeb07e7340687dfec5a597` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
