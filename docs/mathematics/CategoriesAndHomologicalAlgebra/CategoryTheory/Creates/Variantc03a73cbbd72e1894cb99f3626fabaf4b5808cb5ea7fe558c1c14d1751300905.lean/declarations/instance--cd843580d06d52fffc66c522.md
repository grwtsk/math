# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5bc75618d3e2b3fbda9a0398c60458910f40bfd8bc769f85d10d6b17856d3711",
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
  "slug": "instance--cd843580d06d52fffc66c522",
  "source": {
    "blob": "e503cb042d9f123a4d9b3c25a498ded56950c18b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 496,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variantc03a73cbbd72e1894cb99f3626fabaf4b5808cb5ea7fe558c1c14d1751300905.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd843580d06d52fffc66c52203604c6ffce250e5dfc4269b4a4b69935639c9f0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variantc03a73cbbd72e1894cb99f3626fabaf4b5808cb5ea7fe558c1c14d1751300905.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5bc75618d3e2b3fbda9a0398c60458910f40bfd8bc769f85d10d6b17856d3711`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) preservesColimitOfShape_of_createsColimitsOfShape_and_hasColimitsOfShape
    (F : C ⥤ D) [CreatesColimitsOfShape J F] [HasColimitsOfShape J D] :
    PreservesColimitsOfShape J F where

-- see Note [lower instance priority]
/-- `F` preserves limits if it creates limits and `D` has limits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variantc03a73cbbd72e1894cb99f3626fabaf4b5808cb5ea7fe558c1c14d1751300905.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variantc03a73cbbd72e1894cb99f3626fabaf4b5808cb5ea7fe558c1c14d1751300905.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e503cb042d9f123a4d9b3c25a498ded56950c18b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
