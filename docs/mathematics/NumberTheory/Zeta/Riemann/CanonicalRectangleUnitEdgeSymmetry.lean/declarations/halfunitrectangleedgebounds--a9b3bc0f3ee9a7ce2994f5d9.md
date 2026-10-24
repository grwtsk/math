# HalfUnitRectangleEdgeBounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d908fc891bbda1be71a232c58eec865f787320f34a0d35b75e6e765ba7b4795a",
  "kind": "structure",
  "lexical_name": "HalfUnitRectangleEdgeBounds",
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
  "slug": "halfunitrectangleedgebounds--a9b3bc0f3ee9a7ce2994f5d9",
  "source": {
    "blob": "533e881b6db8f06e93797a3030c7256bbd1ef42e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 117,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeSymmetry.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9b3bc0f3ee9a7ce2994f5d9d0d21603639a6e42d503742c141fa3ebf1cbedfc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeSymmetry.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d908fc891bbda1be71a232c58eec865f787320f34a0d35b75e6e765ba7b4795a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HalfUnitRectangleEdgeBounds (N : ℕ) where
  bottom : Interval
  right : Interval
  left : Interval
  bottom_integrable :
    IntervalIntegrable (bottomUnitDensity N) volume 0 1
  right_integrable :
    IntervalIntegrable (rightUnitDensity N) volume 0 1
  left_integrable :
    IntervalIntegrable (leftUnitDensity N) volume 0 1
  bottom_re_integrable :
    IntervalIntegrable (fun x => (bottomUnitDensity N x).re) volume 0 1
  right_re_integrable :
    IntervalIntegrable (fun x => (rightUnitDensity N x).re) volume 0 1
  left_re_integrable :
    IntervalIntegrable (fun x => (leftUnitDensity N x).re) volume 0 1
  bottom_bounds :
    ∀ x ∈ Icc (0 : ℝ) 1, bottom.Contains (bottomUnitDensity N x).re
  right_half_bounds :
    ∀ x ∈ Icc (0 : ℝ) (1 / 2), right.Contains (rightUnitDensity N x).re
  left_half_bounds :
    ∀ x ∈ Icc (0 : ℝ) (1 / 2), left.Contains (leftUnitDensity N x).re

namespace HalfUnitRectangleEdgeBounds

/-- A right-edge bound on the left half extends to the whole unit interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeSymmetry.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeSymmetry.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `533e881b6db8f06e93797a3030c7256bbd1ef42e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
