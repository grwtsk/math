# antilipschitz_of_norm_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffd59e79-7a7f-bb40-7a7c-e96c423a9e2c",
  "kind": "theorem",
  "lexical_name": "antilipschitz_of_norm_ge",
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
  "slug": "antilipschitz-of-norm-ge--98fd2d2a684e31967aa2f1ef",
  "source": {
    "blob": "7112c599b0081688cfe0b4890f026ac034186c39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 153,
    "path": "GRWTSK/Topology/MetricTopology/Hom/Variantaff349f4defb95b7fb72af64567529575ab15720c0f8a6d868637219fb8bfb37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98fd2d2a684e31967aa2f1ef7ee35138f5de07e10ee47be7b285d3d731168724",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hom/Variantaff349f4defb95b7fb72af64567529575ab15720c0f8a6d868637219fb8bfb37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffd59e79-7a7f-bb40-7a7c-e96c423a9e2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem antilipschitz_of_norm_ge {K : ℝ≥0} (h : ∀ x, ‖x‖ ≤ K * ‖f x‖) : AntilipschitzWith K f :=
  AntilipschitzWith.of_le_mul_dist fun x y => by simpa only [dist_eq_norm, map_sub] using h (x - y)

/-- A normed group hom is surjective on the subgroup `K` with constant `C` if every element
`x` of `K` has a preimage whose norm is bounded above by `C*‖x‖`. This is a more
abstract version of `f` having a right inverse defined on `K` with operator norm
at most `C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hom/Variantaff349f4defb95b7fb72af64567529575ab15720c0f8a6d868637219fb8bfb37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hom/Variantaff349f4defb95b7fb72af64567529575ab15720c0f8a6d868637219fb8bfb37.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7112c599b0081688cfe0b4890f026ac034186c39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
