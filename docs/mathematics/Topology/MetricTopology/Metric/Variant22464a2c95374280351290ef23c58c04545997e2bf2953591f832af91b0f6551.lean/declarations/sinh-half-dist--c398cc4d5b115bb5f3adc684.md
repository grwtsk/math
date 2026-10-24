# sinh_half_dist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fa25a43-b2bd-13a3-d798-7f2109c9a17a",
  "kind": "theorem",
  "lexical_name": "sinh_half_dist",
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
  "slug": "sinh-half-dist--c398cc4d5b115bb5f3adc684",
  "source": {
    "blob": "3e10e4da061773e6c3072a84e28881db30c9a5b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 53,
    "path": "GRWTSK/Topology/MetricTopology/Metric/Variant22464a2c95374280351290ef23c58c04545997e2bf2953591f832af91b0f6551.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c398cc4d5b115bb5f3adc6840a2d3c7f1befc8323395b1a91436503de9f783bc",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Metric/Variant22464a2c95374280351290ef23c58c04545997e2bf2953591f832af91b0f6551.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fa25a43-b2bd-13a3-d798-7f2109c9a17a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sinh_half_dist (z w : ℍ) :
    sinh (dist z w / 2) = dist (z : ℂ) w / (2 * √(z.im * w.im)) := by
  rw [dist_eq, mul_div_cancel_left₀ (arsinh _) two_ne_zero, sinh_arsinh]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Metric/Variant22464a2c95374280351290ef23c58c04545997e2bf2953591f832af91b0f6551.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Metric/Variant22464a2c95374280351290ef23c58c04545997e2bf2953591f832af91b0f6551.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e10e4da061773e6c3072a84e28881db30c9a5b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
