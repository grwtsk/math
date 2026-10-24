# CovariantDerivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9ab12eb05346681aabaf2d69692bc84b291e607b8758c2514aea1c628f2fcf6",
  "kind": "structure",
  "lexical_name": "CovariantDerivative",
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
  "slug": "covariantderivative--a1b93c533e7c5f70dd68f4b4",
  "source": {
    "blob": "ba2001d70aecd37f77d8576635be665896eff63e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 374,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1b93c533e7c5f70dd68f4b436be2519aa6f8eaef4af2cbe7d8b9910a1b50c14",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9ab12eb05346681aabaf2d69692bc84b291e607b8758c2514aea1c628f2fcf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CovariantDerivative where
  /-- The covariant derivative as a function. -/
  toFun : (Π x : M, V x) → (Π x : M, TangentSpace I x →L[𝕜] V x)
  isCovariantDerivativeOnUniv : IsCovariantDerivativeOn F toFun Set.univ

namespace CovariantDerivative

attribute [coe] toFun

/-- Coercion of a `CovariantDerivative` to function -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba2001d70aecd37f77d8576635be665896eff63e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
