# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9fb71cb7791a72f7274f079072ac9a9f88b9fa82ba5727acbf5ac91a030092e",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--0b1038a2b9aaabd8b3f97e1c",
  "source": {
    "blob": "751f9abc3b40499b88b5eb0d51d8006dc535d9f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 223,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b1038a2b9aaabd8b3f97e1c22354dcc9019f64c00528b45865ab3305ec4003f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9fb71cb7791a72f7274f079072ac9a9f88b9fa82ba5727acbf5ac91a030092e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {α : Type w} [SmallCategory α] [FinCategory α] [HasLimitsOfShape α C] {I : Type v}
    [SmallCategory I] [IsFiltered I] :
    PreservesLimitsOfShape α (Ind.lim I : (I ⥤ C) ⥤ _) :=
  haveI : PreservesLimitsOfShape α (Ind.lim I ⋙ Ind.inclusion C) :=
    preservesLimitsOfShape_of_natIso Ind.limCompInclusion.symm
  preservesLimitsOfShape_of_reflects_of_preserves _ (Ind.inclusion C)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `751f9abc3b40499b88b5eb0d51d8006dc535d9f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
