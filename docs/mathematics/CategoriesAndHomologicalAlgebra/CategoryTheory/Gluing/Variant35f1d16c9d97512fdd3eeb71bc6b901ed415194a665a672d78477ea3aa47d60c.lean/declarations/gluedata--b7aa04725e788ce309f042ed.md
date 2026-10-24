# GlueData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2860eca74d4807a797176888483d50862cd30807ff78db24ae3db45036e2d618",
  "kind": "structure",
  "lexical_name": "GlueData",
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
  "slug": "gluedata--b7aa04725e788ce309f042ed",
  "source": {
    "blob": "4e6d1d416ea9780fe285b3c8057f66c02528deb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 552,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7aa04725e788ce309f042edcd0a5ae17a1e898e623e8054b1f0738956c1d10d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2860eca74d4807a797176888483d50862cd30807ff78db24ae3db45036e2d618`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GlueData extends CategoryTheory.GlueData (SheafedSpace.{u, v, v} C) where
  f_open : ∀ i j, SheafedSpace.IsOpenImmersion (f i j)

attribute [instance] GlueData.f_open

namespace GlueData

variable {C}
variable (D : GlueData C)

local notation "𝖣" => D.toGlueData

/-- The glue data of presheafed spaces associated to a family of glue data of sheafed spaces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant35f1d16c9d97512fdd3eeb71bc6b901ed415194a665a672d78477ea3aa47d60c.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e6d1d416ea9780fe285b3c8057f66c02528deb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
