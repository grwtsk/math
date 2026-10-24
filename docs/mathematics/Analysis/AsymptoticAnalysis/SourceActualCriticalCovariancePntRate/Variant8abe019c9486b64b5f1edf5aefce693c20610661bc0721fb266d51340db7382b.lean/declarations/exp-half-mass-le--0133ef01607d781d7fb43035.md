# exp_half_mass_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:feca7fd3-015b-3a62-15fa-c0f4b8fb9be4",
  "kind": "theorem",
  "lexical_name": "exp_half_mass_le",
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
  "slug": "exp-half-mass-le--0133ef01607d781d7fb43035",
  "source": {
    "blob": "ab49b2673b4308eafc95ed10056e7f48a5172fd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 41,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceActualCriticalCovariancePntRate/Variant8abe019c9486b64b5f1edf5aefce693c20610661bc0721fb266d51340db7382b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0133ef01607d781d7fb430358684f6088d14e74143a551521d297e32e8b13060",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceActualCriticalCovariancePntRate/Variant8abe019c9486b64b5f1edf5aefce693c20610661bc0721fb266d51340db7382b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:feca7fd3-015b-3a62-15fa-c0f4b8fb9be4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exp_half_mass_le {l b : ℝ} :
    (∫ t in l..b, Real.exp (t / 2)) ≤ 2 * Real.exp (b / 2) := by
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => 2 * Real.exp (t / 2))
      (Real.exp (t / 2)) t := by
    exact (((hasDerivAt_id t).div_const 2).exp.const_mul 2).congr_deriv
      (by dsimp; ring)
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).intervalIntegrable _ _)]
  have := Real.exp_pos (l / 2)
  linarith

/-- The complete true early center has a genuine finite absolute bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceActualCriticalCovariancePntRate/Variant8abe019c9486b64b5f1edf5aefce693c20610661bc0721fb266d51340db7382b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceActualCriticalCovariancePntRate/Variant8abe019c9486b64b5f1edf5aefce693c20610661bc0721fb266d51340db7382b.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab49b2673b4308eafc95ed10056e7f48a5172fd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
