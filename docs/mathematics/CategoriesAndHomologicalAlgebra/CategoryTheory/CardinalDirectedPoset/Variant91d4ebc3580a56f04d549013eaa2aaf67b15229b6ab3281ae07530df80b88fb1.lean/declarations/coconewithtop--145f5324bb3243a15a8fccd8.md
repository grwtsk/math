# coconeWithTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c6cb8deff6fdf9e8b3a44960d39ec949321c55fb243bfe67686b42c429ab0fe",
  "kind": "abbrev",
  "lexical_name": "coconeWithTop",
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
  "slug": "coconewithtop--145f5324bb3243a15a8fccd8",
  "source": {
    "blob": "9ff6478bcfb8f6cdfe0a091f3c95295ced13edc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 328,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalDirectedPoset/Variant91d4ebc3580a56f04d549013eaa2aaf67b15229b6ab3281ae07530df80b88fb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:145f5324bb3243a15a8fccd8f2a203c9e33c88820362204b520fbbadf337cd27",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalDirectedPoset/Variant91d4ebc3580a56f04d549013eaa2aaf67b15229b6ab3281ae07530df80b88fb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c6cb8deff6fdf9e8b3a44960d39ec949321c55fb243bfe67686b42c429ab0fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev coconeWithTop : Cocone (functorOfPredicateSet (J.PropSetWithTop κ')) :=
  coconeOfPredicateSet (PropSetWithTop J κ')

set_option backward.isDefEq.respectTransparency.types false in
/-- If `J : CardinalDirectedPoset κ` and `κ'` is any regular cardinal,
then `J.withTop` is the `κ'`-filtered colimit of its subsets that are of
cardinality `< κ'` and contain `⊤`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalDirectedPoset/Variant91d4ebc3580a56f04d549013eaa2aaf67b15229b6ab3281ae07530df80b88fb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalDirectedPoset/Variant91d4ebc3580a56f04d549013eaa2aaf67b15229b6ab3281ae07530df80b88fb1.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ff6478bcfb8f6cdfe0a091f3c95295ced13edc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
