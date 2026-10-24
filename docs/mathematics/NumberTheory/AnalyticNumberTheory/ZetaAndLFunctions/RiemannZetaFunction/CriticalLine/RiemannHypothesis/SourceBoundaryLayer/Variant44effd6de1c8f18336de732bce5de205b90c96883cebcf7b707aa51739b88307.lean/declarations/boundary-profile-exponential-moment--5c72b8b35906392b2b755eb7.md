# boundary_profile_exponential_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70dc7d04-763b-17ed-8d18-7b2882d82608",
  "kind": "theorem",
  "lexical_name": "boundary_profile_exponential_moment",
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
  "slug": "boundary-profile-exponential-moment--5c72b8b35906392b2b755eb7",
  "source": {
    "blob": "a2af18921c9e15508675b3c1d33e987398dc4ac4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 212,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant44effd6de1c8f18336de732bce5de205b90c96883cebcf7b707aa51739b88307.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c72b8b35906392b2b755eb7009c15005a4bfeb41df7bba76642cfe601ac172b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant44effd6de1c8f18336de732bce5de205b90c96883cebcf7b707aa51739b88307.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70dc7d04-763b-17ed-8d18-7b2882d82608`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_profile_exponential_moment (k : ℕ) :
    profileExponentialMoment k =
      ((8 / 315 : ℝ) * (2 ^ (k + 10) * ((k + 9).factorial : ℝ)) -
        (512 / 35 : ℝ) * (2 ^ (k + 8) * ((k + 7).factorial : ℝ)) +
          (6144 / 5 : ℝ) * (2 ^ (k + 6) * ((k + 5).factorial : ℝ))) /
            (4096 / 109395 : ℝ) := by
  unfold profileExponentialMoment
  simp_rw [profile_moment_integrand_eq]
  have h9 := (half_exponential_power_integrable (k + 9)).const_mul (8 / 315 : ℝ)
  have h7 := (half_exponential_power_integrable (k + 7)).const_mul (512 / 35 : ℝ)
  have h5 := (half_exponential_power_integrable (k + 5)).const_mul (6144 / 5 : ℝ)
  have h97 : IntegrableOn (fun y : ℝ ↦ (8 / 315 : ℝ) *
      (y ^ (k + 9) * Real.exp (-y / 2)) - (512 / 35 : ℝ) *
        (y ^ (k + 7) * Real.exp (-y / 2))) (Ioi 0) := h9.sub h7
  rw [integral_div, integral_add h97 h5, integral_sub h9 h7]
  simp_rw [integral_const_mul, half_exponential_power_integral]

/-- The limiting boundary profile annihilates the constant smooth density mode. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant44effd6de1c8f18336de732bce5de205b90c96883cebcf7b707aa51739b88307.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant44effd6de1c8f18336de732bce5de205b90c96883cebcf7b707aa51739b88307.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2af18921c9e15508675b3c1d33e987398dc4ac4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
