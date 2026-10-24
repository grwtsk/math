# scaled_error_majorant_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f1c3812-536f-1ad7-5611-07d69f80a4a2",
  "kind": "theorem",
  "lexical_name": "scaled_error_majorant_tendsto",
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
  "slug": "scaled-error-majorant-tendsto--5e7e0cf3a4c266f7c481b52c",
  "source": {
    "blob": "49aff761e8366710c5820b3c6b97e5926850172a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 177,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMovingEndpointAttempt04/Variant8af62a00690a07b03c5439b7c20d82db051cebae389c54b37573db406db802e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e7e0cf3a4c266f7c481b52ca6e8c0e02d058cadfcbeadcea50d182c0bfd6bd8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMovingEndpointAttempt04/Variant8af62a00690a07b03c5439b7c20d82db051cebae389c54b37573db406db802e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f1c3812-536f-1ad7-5611-07d69f80a4a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem scaled_error_majorant_tendsto (K y : ℝ) :
    Tendsto (fun A : ℝ => 5*K*y/(4*A)+A*y*Real.exp (-A/2)+y*Real.exp (-A))
      atTop (𝓝 0) := by
  have h1 : Tendsto (fun A : ℝ => 5*K*y/(4*A)) atTop (𝓝 0) := by
    convert! (tendsto_inv_atTop_zero (𝕜:=ℝ)).const_mul (5*K*y/4) using 1
    · funext A
      simp only [div_eq_mul_inv,mul_inv_rev]
      ring
    · simp
  have hhalf : Tendsto (fun A : ℝ => A/2) atTop atTop := by
    convert! (tendsto_id : Tendsto (fun A : ℝ => A) atTop atTop).const_mul_atTop
      (by norm_num : (0:ℝ)<1/2) using 1
    funext A
    ring
  have h2 : Tendsto (fun A : ℝ => A*y*Real.exp (-A/2)) atTop (𝓝 0) := by
    have h := ((Real.tendsto_pow_mul_exp_neg_atTop_nhds_zero 1).comp hhalf).const_mul (2*y)
    simp only [Function.comp_def,pow_one,mul_zero] at h
    convert! h using 1
    funext A
    rw [neg_div]
    ring
  have h3 : Tendsto (fun A : ℝ => y*Real.exp (-A)) atTop (𝓝 0) :=
    by simpa using Real.tendsto_exp_neg_atTop_nhds_zero.const_mul y
  simpa only [add_zero] using (h1.add h2).add h3

/-- The physical position moves with the upper endpoint; y itself is fixed first. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMovingEndpointAttempt04/Variant8af62a00690a07b03c5439b7c20d82db051cebae389c54b37573db406db802e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMovingEndpointAttempt04/Variant8af62a00690a07b03c5439b7c20d82db051cebae389c54b37573db406db802e0.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49aff761e8366710c5820b3c6b97e5926850172a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
