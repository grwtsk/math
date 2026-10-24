# LiftStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c36617fa1b149720e3dfcae067585d70ae5dfac4b106fad5bf1e201e8f8d6be",
  "kind": "structure",
  "lexical_name": "LiftStruct",
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
  "slug": "liftstruct--abac950d0f00e7cb0f3a4d80",
  "source": {
    "blob": "e0aaa889c036865de99d09ada628b2689ad7284f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 195,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant2055408491526c0cf3dbb2da602e8b0d46779fb9c33b8a5fd8af96c01f6504b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abac950d0f00e7cb0f3a4d808d7e5a0655ab05b28337f4953fee3ff02df61c81",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant2055408491526c0cf3dbb2da602e8b0d46779fb9c33b8a5fd8af96c01f6504b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c36617fa1b149720e3dfcae067585d70ae5dfac4b106fad5bf1e201e8f8d6be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LiftStruct (sq : CommSq f i p g) where
  /-- The lift. -/
  l : B ⟶ X
  /-- The upper left triangle commutes. -/
  fac_left : i ≫ l = f := by cat_disch
  /-- The lower right triangle commutes. -/
  fac_right : l ≫ p = g := by cat_disch

attribute [to_dual self] LiftStruct.ext
attribute [to_dual self (reorder := A Y, B X, f g, i p, fac_left fac_right)] LiftStruct.mk

namespace LiftStruct

/-- A `LiftStruct` for a commutative square gives a `LiftStruct` for the
corresponding square in the opposite category. -/
@[simps, to_dual self]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant2055408491526c0cf3dbb2da602e8b0d46779fb9c33b8a5fd8af96c01f6504b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant2055408491526c0cf3dbb2da602e8b0d46779fb9c33b8a5fd8af96c01f6504b6.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0aaa889c036865de99d09ada628b2689ad7284f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
