# TriangularBoundaryTailData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f845e89e17d8739ed0f17080848c71f5cfdf9c6ba455585118371519feecf499",
  "kind": "structure",
  "lexical_name": "TriangularBoundaryTailData",
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
  "slug": "triangularboundarytaildata--a08bc208845216bb98b851f4",
  "source": {
    "blob": "0398d337b42e44879a34768aa73295fa335385c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 13,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularTailDecomposition.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a08bc208845216bb98b851f480ccddf8a4d1e533fe835754d19cb86f0a409cb2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularTailDecomposition.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f845e89e17d8739ed0f17080848c71f5cfdf9c6ba455585118371519feecf499`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TriangularBoundaryTailData
    (X N m : ℕ) (tailBound : ℝ) where
  left : ℕ
  right : ℕ
  left_le_right : left ≤ right
  right_le_fourX : right ≤ 4 * X
  interval_length_le :
    right - left ≤ Nat.ceil ((X : ℝ) / (N : ℝ))
  nearBoundaryError : ℝ
  tailError : ℝ
  totalApproximationError : ℝ
  total_error_eq :
    totalApproximationError =
      nearBoundaryError + tailError
  nearBoundaryError_abs_le :
    |nearBoundaryError| ≤ primeIntervalLogMass left right
  tailBound_nonnegative : 0 ≤ tailBound
  tailError_abs_le :
    |tailError| ≤ tailBound

/-- The total approximation error is bounded by the already-closed arithmetic
boundary term plus the remaining tail budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularTailDecomposition.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularTailDecomposition.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0398d337b42e44879a34768aa73295fa335385c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
