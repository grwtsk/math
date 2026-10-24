# PositiveTraceAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2d6ccbfcb214910d18ad079999abbd73e1cda44d946980a31fa9122cc549354",
  "kind": "structure",
  "lexical_name": "PositiveTraceAlgebra",
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
  "slug": "positivetracealgebra--dea3ed4e9519f3e36c72a72f",
  "source": {
    "blob": "cd25e4eb1d51fbd33e426778681953c7091e275a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 33,
    "path": "GRWTSK/Algebra/Positivity/Variant6dd968bc5fd2f7ae72164a37886f1da1db08f5c9ea015f02f72353894899f82b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dea3ed4e9519f3e36c72a72f08ab1d4e0ab8701ef317e1ac273b81c40e6cf9f1",
  "verification": {
    "reference": "docs/verification/Algebra/Positivity/Variant6dd968bc5fd2f7ae72164a37886f1da1db08f5c9ea015f02f72353894899f82b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2d6ccbfcb214910d18ad079999abbd73e1cda44d946980a31fa9122cc549354`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PositiveTraceAlgebra
    (Algebra : Type uAlgebra) where
  star : Algebra → Algebra
  multiply : Algebra → Algebra → Algebra
  trace : Algebra → ℝ
  positive :
    ∀ element,
      0 ≤ trace
        (multiply (star element) element)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Positivity/Variant6dd968bc5fd2f7ae72164a37886f1da1db08f5c9ea015f02f72353894899f82b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Positivity/Variant6dd968bc5fd2f7ae72164a37886f1da1db08f5c9ea015f02f72353894899f82b.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd25e4eb1d51fbd33e426778681953c7091e275a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
