# IsAbsKan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a75e4b5f4364c783ca2c058ed1558799a0c31d6c4e931e6f2e08738f83b98452",
  "kind": "abbrev",
  "lexical_name": "IsAbsKan",
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
  "slug": "isabskan--63ee30ca7deeb907e31d0d6c",
  "source": {
    "blob": "0a4db2bd51c9a862901f0a0082aa865b7ccd154c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variantb75b48684342663b50a46c0b371945aa93fce6b29b7b98c352ef3d9a5f31b658.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63ee30ca7deeb907e31d0d6cbb1b95eb47343570e688c69708448ecbf03d920a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variantb75b48684342663b50a46c0b371945aa93fce6b29b7b98c352ef3d9a5f31b658.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a75e4b5f4364c783ca2c058ed1558799a0c31d6c4e931e6f2e08738f83b98452`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev IsAbsKan (t : LeftExtension f g) :=
  ∀ {x : B} (h : c ⟶ x), IsKan (t.whisker h)

namespace IsKan

variable {s t : LeftExtension f g}

/-- To show that a left extension `t` is a Kan extension, we need to show that for every left
extension `s` there is a unique morphism `t ⟶ s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variantb75b48684342663b50a46c0b371945aa93fce6b29b7b98c352ef3d9a5f31b658.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsKan/Variantb75b48684342663b50a46c0b371945aa93fce6b29b7b98c352ef3d9a5f31b658.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a4db2bd51c9a862901f0a0082aa865b7ccd154c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
