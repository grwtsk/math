# pushforward_sheaf_of_sheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b225bd0-aeee-6c92-d58e-de56c1f81933",
  "kind": "theorem",
  "lexical_name": "pushforward_sheaf_of_sheaf",
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
  "slug": "pushforward-sheaf-of-sheaf--d80ec838381717fb206ae71a",
  "source": {
    "blob": "d0e66ffa2e01171db42502b12d2920ef79a72bf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 90,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant4fb01117983b82c9d28bb5d44e76b43c850e9c0e7815ecbaf4626a4a018d7a5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d80ec838381717fb206ae71a111522e6cd858a3ef7a679e99b94137378a970c3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant4fb01117983b82c9d28bb5d44e76b43c850e9c0e7815ecbaf4626a4a018d7a5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b225bd0-aeee-6c92-d58e-de56c1f81933`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pushforward_sheaf_of_sheaf {F : X.Presheaf C} (h : F.IsSheaf) : (f _* F).IsSheaf := by
  rw [isSheaf_iff_isSheafPairwiseIntersections] at h ⊢
  exact SheafConditionPairwiseIntersections.pushforward_sheaf_of_sheaf f h
set_option linter.uppercaseLean3 false in
#align Top.sheaf.pushforward_sheaf_of_sheaf TopCat.Sheaf.pushforward_sheaf_of_sheaf

/-- The pushforward functor.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant4fb01117983b82c9d28bb5d44e76b43c850e9c0e7815ecbaf4626a4a018d7a5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant4fb01117983b82c9d28bb5d44e76b43c850e9c0e7815ecbaf4626a4a018d7a5c.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0e66ffa2e01171db42502b12d2920ef79a72bf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
