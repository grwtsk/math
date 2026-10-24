# nonaffineWork_eq_three_physical_blocks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b734fb8-eb8d-03b0-127d-44efc8431ccb",
  "kind": "theorem",
  "lexical_name": "nonaffineWork_eq_three_physical_blocks",
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
  "slug": "nonaffinework-eq-three-physical-blocks--cfa096aa4a3db08f92a7556b",
  "source": {
    "blob": "830cc440c74384e6dee11e348bbed4619b4a5e3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 363,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExportReview/Variant898a7577132a96632ae69e2c0825b94d0e45b0e65cc79852611ce81d569e1299.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfa096aa4a3db08f92a7556be10427e3f33efb88771379105dbdf6a0eec2fa30",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExportReview/Variant898a7577132a96632ae69e2c0825b94d0e45b0e65cc79852611ce81d569e1299.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b734fb8-eb8d-03b0-127d-44efc8431ccb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonaffineWork_eq_three_physical_blocks (A : ℝ) (hA : 80 ≤ A) :
    nonaffineWork A = initialPhysicalBlock A + firstPhysicalBlock A + remainingPhysicalTail A := by
  have hp : 0 < A := by linarith
  have h24 : Real.log 2 ≤ Real.log 4 := log_two_le_three.trans log_three_le_four
  have h4A : Real.log 4 ≤ 2 * A := by
    linarith [Real.log_four_eq, log_two_bounds.2]
  have hi₀ := physical_block_integrable A 0 (Real.log 2) hp log_two_bounds.1
  have hi₁ := physical_block_integrable A (Real.log 2) (Real.log 4) hp h24
  have hi₂ := physical_block_integrable A (Real.log 4) (2 * A) hp h4A
  unfold nonaffineWork initialPhysicalBlock firstPhysicalBlock remainingPhysicalTail
  rw [intervalIntegral.integral_add_adjacent_intervals hi₀ hi₁,
    intervalIntegral.integral_add_adjacent_intervals (hi₀.trans hi₁) hi₂]

/-- Only the displayed head and tail bounds can supply the missing global arithmetic cap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExportReview/Variant898a7577132a96632ae69e2c0825b94d0e45b0e65cc79852611ce81d569e1299.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExportReview/Variant898a7577132a96632ae69e2c0825b94d0e45b0e65cc79852611ce81d569e1299.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `830cc440c74384e6dee11e348bbed4619b4a5e3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
