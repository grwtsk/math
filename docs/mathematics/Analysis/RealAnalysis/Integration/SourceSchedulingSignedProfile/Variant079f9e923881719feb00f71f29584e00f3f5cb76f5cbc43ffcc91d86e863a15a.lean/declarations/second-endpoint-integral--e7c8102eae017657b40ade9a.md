# second_endpoint_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6950219-5f06-0568-9e15-8a5dc7ff6419",
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
  "slug": "second-endpoint-integral--e7c8102eae017657b40ade9a",
  "source": {
    "blob": "c0d9c7f1efed4b385020c98feece283847a955a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 39,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSchedulingSignedProfile/Variant079f9e923881719feb00f71f29584e00f3f5cb76f5cbc43ffcc91d86e863a15a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7c8102eae017657b40ade9a8e7d66241ffd34415a8e66eb5be5dde2ec8b1608",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceSchedulingSignedProfile/Variant079f9e923881719feb00f71f29584e00f3f5cb76f5cbc43ffcc91d86e863a15a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6950219-5f06-0568-9e15-8a5dc7ff6419`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–58.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceSchedulingSignedProfile/Variant079f9e923881719feb00f71f29584e00f3f5cb76f5cbc43ffcc91d86e863a15a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceSchedulingSignedProfile/Variant079f9e923881719feb00f71f29584e00f3f5cb76f5cbc43ffcc91d86e863a15a.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0d9c7f1efed4b385020c98feece283847a955a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
