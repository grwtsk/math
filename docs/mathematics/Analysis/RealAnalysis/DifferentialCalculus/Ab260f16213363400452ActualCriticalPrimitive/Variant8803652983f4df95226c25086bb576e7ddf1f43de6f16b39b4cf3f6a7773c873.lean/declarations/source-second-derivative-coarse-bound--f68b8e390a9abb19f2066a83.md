# source_second_derivative_coarse_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:103e423e-4ed2-acf9-62a1-38f1192ad59f",
  "kind": "theorem",
  "lexical_name": "source_second_derivative_coarse_bound",
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
  "slug": "source-second-derivative-coarse-bound--f68b8e390a9abb19f2066a83",
  "source": {
    "blob": "a0a99f0b1b1e0cb00c990a16a5f3f6e2c4ff0ac7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 160,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Ab260f16213363400452ActualCriticalPrimitive/Variant8803652983f4df95226c25086bb576e7ddf1f43de6f16b39b4cf3f6a7773c873.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f68b8e390a9abb19f2066a834c561244fb589ed217ae023b8646864606975da0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Ab260f16213363400452ActualCriticalPrimitive/Variant8803652983f4df95226c25086bb576e7ddf1f43de6f16b39b4cf3f6a7773c873.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:103e423e-4ed2-acf9-62a1-38f1192ad59f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_second_derivative_coarse_bound (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤ 65 / (3 * A ^ 2) := by
  apply (sourceCorrelation_second_deriv_abs_le_coefficient hA t).trans
  have hp : 0 < A ^ 2 := sq_pos_of_pos (by linarith)
  apply (div_le_div_iff₀ (by positivity) (by positivity)).2
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Ab260f16213363400452ActualCriticalPrimitive/Variant8803652983f4df95226c25086bb576e7ddf1f43de6f16b39b4cf3f6a7773c873.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Ab260f16213363400452ActualCriticalPrimitive/Variant8803652983f4df95226c25086bb576e7ddf1f43de6f16b39b4cf3f6a7773c873.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0a99f0b1b1e0cb00c990a16a5f3f6e2c4ff0ac7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
