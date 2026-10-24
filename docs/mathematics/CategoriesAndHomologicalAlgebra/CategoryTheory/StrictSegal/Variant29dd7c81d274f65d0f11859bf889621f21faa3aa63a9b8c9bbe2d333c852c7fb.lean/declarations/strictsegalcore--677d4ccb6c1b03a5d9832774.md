# StrictSegalCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de6526fcd5bfe7432c463ba5e6c4e164d5867ac0b537700a6b45e9e9b8b9e2fe",
  "kind": "structure",
  "lexical_name": "StrictSegalCore",
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
  "slug": "strictsegalcore--677d4ccb6c1b03a5d9832774",
  "source": {
    "blob": "fd1b8e896e9baccd775850773bc451a1fdf083a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 449,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant29dd7c81d274f65d0f11859bf889621f21faa3aa63a9b8c9bbe2d333c852c7fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:677d4ccb6c1b03a5d98327747acad3c3d06f8f4b1213eaf146e571606c05e31f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant29dd7c81d274f65d0f11859bf889621f21faa3aa63a9b8c9bbe2d333c852c7fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de6526fcd5bfe7432c463ba5e6c4e164d5867ac0b537700a6b45e9e9b8b9e2fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StrictSegalCore (n : ℕ) where
  /-- Map which produces an `n + 1`-simplex from a `1`-simplex and an `n`-simplex when
  the target vertex of the `1`-simplex equals the zeroth simplex of the `n`-simplex. -/
  concat (x : X _⦋1⦌) (s : X _⦋n⦌) (h : X.δ 0 x = X.map (SimplexCategory.const _ _ 0).op s) :
    X _⦋n + 1⦌
  map_mkOfSucc_zero_concat x s h : X.map (mkOfSucc 0).op (concat x s h) = x
  δ₀_concat x s h : X.δ 0 (concat x s h) = s
  injective {x y : X _⦋n + 1⦌} (h : X.map (mkOfSucc 0).op x = X.map (mkOfSucc 0).op y)
    (h₀ : X.δ 0 x = X.δ 0 y) : x = y

namespace StrictSegalCore

variable {X} (h : ∀ n, X.StrictSegalCore n) {n : ℕ} (p : X.Path n)

/-- Auxiliary definition for `StrictSegalCore.spineToSimplex`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant29dd7c81d274f65d0f11859bf889621f21faa3aa63a9b8c9bbe2d333c852c7fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant29dd7c81d274f65d0f11859bf889621f21faa3aa63a9b8c9bbe2d333c852c7fb.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd1b8e896e9baccd775850773bc451a1fdf083a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
