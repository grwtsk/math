# second_endpoint_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c056d69-e3d2-11ef-08db-6d83850a3439",
  "kind": "theorem",
  "lexical_name": "second_endpoint_integral",
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
  "slug": "second-endpoint-integral--7e295aa0fde8ce4095b2cdff",
  "source": {
    "blob": "9e9b5247dac3ec939078d9153055024225151a1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSchedulingSignedProfile/Variant9596924b4584feeafd9cfa2349a115b5645667b5eb57858dabc605b514c146d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e295aa0fde8ce4095b2cdffd5811d4c375937d55a3859598b3cfe5653150fb7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceSchedulingSignedProfile/Variant9596924b4584feeafd9cfa2349a115b5645667b5eb57858dabc605b514c146d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c056d69-e3d2-11ef-08db-6d83850a3439`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem second_endpoint_integral (f : ℝ → ℝ) (hf : ContDiff ℝ 2 f)
    (c T : ℝ) (hT : f T = 0) (hT' : deriv f T = 0) :
    (∫ t in c..T, (t - c) * deriv (deriv f) t) = f c := by
  have hf1 : ContDiff ℝ 1 f := hf.of_le (by norm_num)
  have hfd : ContDiff ℝ 1 (deriv f) := hf.deriv'
  rw [intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (u := fun t : ℝ => t - c) (v := deriv f)
    (u' := fun _ => (1 : ℝ)) (v' := deriv (deriv f))
    (by fun_prop) hfd.continuous.continuousOn
    (fun t _ => (hasDerivAt_id t).sub_const c)
    (fun t _ => (hfd.differentiable (by norm_num) t).hasDerivAt)
    (continuous_const.intervalIntegrable c T)
    (hfd.continuous_deriv_one.intervalIntegrable c T)]
  simp only [sub_self, zero_mul, one_mul, hT', mul_zero, zero_sub]
  rw [intervalIntegral.integral_deriv_eq_sub
    (fun t _ => hf1.differentiable (by norm_num) t)
    (hf1.continuous_deriv_one.intervalIntegrable c T), hT]
  ring

/-- Finite exact integration of the actual signed profile, including cutoff events. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceSchedulingSignedProfile/Variant9596924b4584feeafd9cfa2349a115b5645667b5eb57858dabc605b514c146d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceSchedulingSignedProfile/Variant9596924b4584feeafd9cfa2349a115b5645667b5eb57858dabc605b514c146d5.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e9b5247dac3ec939078d9153055024225151a1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
