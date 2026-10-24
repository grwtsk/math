# logSample_deriv_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c7b71d8-a8b3-ebc3-b569-70fc9b360076",
  "kind": "theorem",
  "lexical_name": "logSample_deriv_integrableOn",
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
  "slug": "logsample-deriv-integrableon--56b9b3cc1e0f69ce8fe953db",
  "source": {
    "blob": "db37b78f749808402160d96b5b8bcf4072dc9ffc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 336,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variant784d87078fb54ed8f24ed284a5171f498a99ea824fc80d829a839e4dcbf750a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56b9b3cc1e0f69ce8fe953db35881bed6f3f3b53af47e6b5f5bf3450a3537f01",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variant784d87078fb54ed8f24ed284a5171f498a99ea824fc80d829a839e4dcbf750a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c7b71d8-a8b3-ebc3-b569-70fc9b360076`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logSample_deriv_integrableOn (t : ℝ) :
    IntegrableOn (deriv (logSample t)) (Ioi 1) := by
  have hc := translated_compact sampleDerivativeProfile profile_compact t
  have hi : Integrable (fun r : ℝ => Real.exp (-r / 2) *
      |sampleDerivativeProfile (t - 1 - r)|) :=
    ((continuous_id.neg.div_const 2).rexp.mul
      (profile_cont.comp (continuous_const.sub continuous_id)).abs).integrable_of_hasCompactSupport
        hc.abs.mul_left
  have hs : IntegrableOn (fun r : ℝ => Real.exp r *
      |deriv (logSample t) (Real.exp r)|) (Ioi 0) := by
    simpa only [logSample_deriv_exp] using hi.integrableOn (s := Ioi 0)
  have hh : IntegrableOn (fun x => |deriv (logSample t) x|) (Ioi 1) := by
    simpa only [smul_eq_mul, Real.exp_zero] using
      (integrableOn_comp_exp_Ioi (fun x => |deriv (logSample t) x|) 0).mp hs
  exact (integrable_norm_iff (stronglyMeasurable_deriv _).aestronglyMeasurable).mp (by
    simpa only [Real.norm_eq_abs, IntegrableOn] using hh)

/-- The full derivative variation has a genuine exponentially decaying source bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variant784d87078fb54ed8f24ed284a5171f498a99ea824fc80d829a839e4dcbf750a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variant784d87078fb54ed8f24ed284a5171f498a99ea824fc80d829a839e4dcbf750a9.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db37b78f749808402160d96b5b8bcf4072dc9ffc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
