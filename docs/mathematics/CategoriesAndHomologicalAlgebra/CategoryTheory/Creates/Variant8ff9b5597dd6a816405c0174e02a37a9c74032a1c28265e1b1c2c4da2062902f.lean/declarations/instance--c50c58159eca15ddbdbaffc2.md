# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4c5bf89f4e6341d2aa6b878e203f82e505034a5c3f97cd8c1f69e273171a30e",
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
  "slug": "instance--c50c58159eca15ddbdbaffc2",
  "source": {
    "blob": "fdc34b33fc9de2b977fe4a6e0340624ae643bafb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 359,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant8ff9b5597dd6a816405c0174e02a37a9c74032a1c28265e1b1c2c4da2062902f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c50c58159eca15ddbdbaffc2cb8437bd3f0f07e93d54e84ec95b571821be7410",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant8ff9b5597dd6a816405c0174e02a37a9c74032a1c28265e1b1c2c4da2062902f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4c5bf89f4e6341d2aa6b878e203f82e505034a5c3f97cd8c1f69e273171a30e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) preservesLimitsOfCreatesLimitsAndHasLimits (F : C ⥤ D)
    [CreatesLimitsOfSize.{w, w'} F] [HasLimitsOfSize.{w, w'} D] : PreservesLimitsOfSize.{w, w'} F
    where
#align category_theory.preserves_limits_of_creates_limits_and_has_limits CategoryTheory.preservesLimitsOfCreatesLimitsAndHasLimits

/-- If `F` reflects isomorphisms and we can lift any colimit cocone to a colimit cocone,
then `F` creates colimits.
In particular here we don't need to assume that F reflects colimits.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant8ff9b5597dd6a816405c0174e02a37a9c74032a1c28265e1b1c2c4da2062902f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant8ff9b5597dd6a816405c0174e02a37a9c74032a1c28265e1b1c2c4da2062902f.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdc34b33fc9de2b977fe4a6e0340624ae643bafb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
