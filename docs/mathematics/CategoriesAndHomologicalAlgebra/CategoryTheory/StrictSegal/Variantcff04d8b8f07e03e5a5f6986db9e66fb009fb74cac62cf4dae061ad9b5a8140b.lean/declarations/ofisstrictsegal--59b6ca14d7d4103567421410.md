# ofIsStrictSegal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c19293e83ca1c2266f8c85fb73e5552642d015eab030019b091febb5f80c9403",
  "kind": "def",
  "lexical_name": "ofIsStrictSegal",
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
  "slug": "ofisstrictsegal--59b6ca14d7d4103567421410",
  "source": {
    "blob": "d1598c3ddb4d30b6b7e6b71734f5f9a78c4d68f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 236,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59b6ca14d7d41035674214102dd18d2af42dee69f2b808cc1d083ce7c754589d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c19293e83ca1c2266f8c85fb73e5552642d015eab030019b091febb5f80c9403`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofIsStrictSegal [IsStrictSegal X] : StrictSegal X where
  spineToSimplex {n} :=
    Equiv.ofBijective (X.spine n) (IsStrictSegal.segal n) |>.invFun
  spine_spineToSimplex n :=
    funext <| Equiv.ofBijective (X.spine n) _ |>.right_inv
  spineToSimplex_spine n :=
    funext <| Equiv.ofBijective (X.spine n) _ |>.left_inv

variable {X} (sx : StrictSegal X)

/-- A `StrictSegal` structure on a simplicial set `X` restricts to a
`Truncated.StrictSegal` structure on the `n + 1`-truncation of `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1598c3ddb4d30b6b7e6b71734f5f9a78c4d68f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
