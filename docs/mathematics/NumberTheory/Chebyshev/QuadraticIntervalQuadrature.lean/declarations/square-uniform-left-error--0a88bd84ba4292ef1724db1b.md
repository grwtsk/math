# square_uniform_left_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96488e12-4328-d888-9579-0ad5b6dcbce8",
  "kind": "theorem",
  "lexical_name": "square_uniform_left_error",
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
  "slug": "square-uniform-left-error--0a88bd84ba4292ef1724db1b",
  "source": {
    "blob": "2c7834c86fa1f5ab2e553b689e850e4dc9bc25cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 30,
    "path": "GRWTSK/NumberTheory/Chebyshev/QuadraticIntervalQuadrature.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a88bd84ba4292ef1724db1b092182429b7fa43672eaef74997a6a6288bf52c3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/QuadraticIntervalQuadrature.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96488e12-4328-d888-9579-0ad5b6dcbce8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem square_uniform_left_error (n : ℕ) (hn : 1 ≤ n) {β : ℝ} {z : ℂ}
    (hz : z.re ≤ β) (N : ℕ) (hN : 0 < N) :
    ‖squareKernel n z -
      leftSum (uniformNodes (squareEndpoint n) (squareEndpoint (n + 1)) N) N z‖ ≤
      spatialSlopeBound (squareEndpoint n) (squareEndpoint (n + 1)) β z *
        (2 * (n : ℝ) + 1) ^ 2 / (2 * (N : ℝ)) := by
  simpa only [squareKernel, squareEndpoint_width] using
    uniform_leftSum_error (squareEndpoint_gt_one n hn)
      (squareEndpoint_strict_order n).le hz N hN

/-- This is a proved source candidate for the center-sum evaluation budget.
Each node value still requires its own numerical enclosure proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/QuadraticIntervalQuadrature.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/QuadraticIntervalQuadrature.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c7834c86fa1f5ab2e553b689e850e4dc9bc25cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
