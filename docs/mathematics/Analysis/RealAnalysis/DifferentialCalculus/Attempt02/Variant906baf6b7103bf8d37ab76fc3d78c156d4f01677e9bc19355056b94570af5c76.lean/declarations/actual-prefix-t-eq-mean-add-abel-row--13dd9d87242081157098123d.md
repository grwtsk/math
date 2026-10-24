# actual_prefix_T_eq_mean_add_abel_row

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d73ec19-35bb-25a9-ff88-7eea7d91d506",
  "kind": "theorem",
  "lexical_name": "actual_prefix_T_eq_mean_add_abel_row",
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
  "slug": "actual-prefix-t-eq-mean-add-abel-row--13dd9d87242081157098123d",
  "source": {
    "blob": "2364cc6ed409a55caaab7df94fda557bac5ad630",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 128,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant906baf6b7103bf8d37ab76fc3d78c156d4f01677e9bc19355056b94570af5c76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13dd9d87242081157098123da073bf267bc836d224c04731c221991cbf5520d5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant906baf6b7103bf8d37ab76fc3d78c156d4f01677e9bc19355056b94570af5c76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d73ec19-35bb-25a9-ff88-7eea7d91d506`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_prefix_T_eq_mean_add_abel_row {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
      actualLogColumnPrefix A s * actualTwistedTimeDensity A t s) =
      actualCenteredPrefixPeriodMean (vaughanCutoff A) *
        (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
          actualTwistedTimeDensity A t s) + actualPeriodicColumnAbelRow A t := by
  rw [mean_cell_decomposition hA t]
  have h := actual_centered_prefix_finite_abel (vaughanCutoff A) (vaughanCutoff A + 1)
    (sourceKernelCutoff A / (vaughanCutoff A + 1)) (vaughanCutoff_pos A hA) (by omega)
    (actual_column_window_nonempty hA) (fun M => actualPeriodicColumnEndpointWeight A t M)
  simpa only [actualPeriodicColumnAbelRow] using congrArg
    (fun x : ℝ => actualCenteredPrefixPeriodMean (vaughanCutoff A) *
      (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
        actualTwistedTimeDensity A t s) + x) h

/-- Every periodic divisor remains in the actual finite correlation-weighted Fubini inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant906baf6b7103bf8d37ab76fc3d78c156d4f01677e9bc19355056b94570af5c76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant906baf6b7103bf8d37ab76fc3d78c156d4f01677e9bc19355056b94570af5c76.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2364cc6ed409a55caaab7df94fda557bac5ad630` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
