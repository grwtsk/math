# actualNinthNormalizedCriticalEarlyBudget_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5f8337b-fdf8-fb44-9cc0-99974a64da98",
  "kind": "theorem",
  "lexical_name": "actualNinthNormalizedCriticalEarlyBudget_tendsto_zero",
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
  "slug": "actualninthnormalizedcriticalearlybudget-tendsto-zero--c72c1623cab7a5379822dfca",
  "source": {
    "blob": "655e4f2ceb04bf5f444bffd0271cb60e1e82c45f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 213,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCriticalCovarianceEdgeNine/Variant5f5a1ee578bcd53c5ca51339316afbac962b3ea4080acd784b47c59cbf03f316.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c72c1623cab7a5379822dfca97414822b6f122dcb770907d3ebc213fa38ec38c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualCriticalCovarianceEdgeNine/Variant5f5a1ee578bcd53c5ca51339316afbac962b3ea4080acd784b47c59cbf03f316.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5f8337b-fdf8-fb44-9cc0-99974a64da98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNinthNormalizedCriticalEarlyBudget_tendsto_zero (T : ℝ) :
    Tendsto (actualNinthNormalizedCriticalEarlyBudget T) atTop (𝓝 0) := by
  have hh := ((power_exp_tendsto_zero 9).const_mul |actualEarlyCriticalErrorCenter T|).add
    ((power_exp_tendsto_zero 7).const_mul
      (2 * B * Real.exp (T / 2) * (5 / 8 * T ^ 2 + 5 / 2 * T)))
  unfold actualNinthNormalizedCriticalEarlyBudget
  simpa only [mul_zero, add_zero] using hh

/-- The exact early/late split keeps a fixed amplitude and its normalized edge cost explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualCriticalCovarianceEdgeNine/Variant5f5a1ee578bcd53c5ca51339316afbac962b3ea4080acd784b47c59cbf03f316.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCriticalCovarianceEdgeNine/Variant5f5a1ee578bcd53c5ca51339316afbac962b3ea4080acd784b47c59cbf03f316.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655e4f2ceb04bf5f444bffd0271cb60e1e82c45f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
