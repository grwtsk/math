# actual_first_pole_moment_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f893907b-6b16-b519-ab99-53dd8a11ec9f",
  "kind": "theorem",
  "lexical_name": "actual_first_pole_moment_zero",
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
  "slug": "actual-first-pole-moment-zero--60b44fa550454efb67f6073c",
  "source": {
    "blob": "3daa8733b4de0c8f9a17cc512675df9a99841ea3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 68,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variantff34ce592fa9af9b09394d8e32b2167bcf02e8add82cdda622bbbffdd3f331e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60b44fa550454efb67f6073c5b13a94c13fb34e73730d591ad11d8f248f2cb4c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variantff34ce592fa9af9b09394d8e32b2167bcf02e8add82cdda622bbbffdd3f331e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f893907b-6b16-b519-ab99-53dd8a11ec9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_first_pole_moment_zero {A : ℝ} (hA : 1 ≤ A) :
    (∫ t : ℝ, t * Real.exp (t/2) *
      sourceCorrelation explicitSecondDerivative A t) = 0 := by
  have hp : 0 < A := by linarith
  let q : ℝ → ℝ := normalizedTest explicitSecondDerivative A
  let F : ℝ → ℝ := fun x => Real.exp ((1/2 : ℝ)*x) * q x
  let G : ℝ → ℝ := fun x => Real.exp ((1/2 : ℝ)*x) * q (-x)
  have hq : Continuous q := (normalizedTest_contDiff A hp).continuous
  have hqs : HasCompactSupport q := normalizedTest_hasCompactSupport A hp
  have hF : Continuous F := by fun_prop
  have hG : Continuous G := by fun_prop
  have hFs : HasCompactSupport F := hqs.mul_left
  have hGs : HasCompactSupport G :=
    (hqs.comp_homeomorph (Homeomorph.neg ℝ)).mul_left
  have hFzero : (∫ x : ℝ, F x) = 0 :=
    weighted_normalizedTest_integral_zero A (1/2) hA (by norm_num)
  have hGzero : (∫ x : ℝ, G x) = 0 := by
    have hn := weighted_normalizedTest_integral_zero A (-(1/2)) hA (by norm_num)
    change (∫ x : ℝ, Real.exp ((-(1/2) : ℝ)*x) * q x) = 0 at hn
    have href := integral_neg_eq_self
      (fun x : ℝ => Real.exp ((-(1/2) : ℝ)*x) * q x) volume
    simp only [neg_mul_neg] at href
    exact href.trans hn
  have hm := first_convolution_moment F G hF hG hFs hGs
  rw [hFzero, hGzero, mul_zero, zero_mul, add_zero] at hm
  have he (t : ℝ) : t * Real.exp (t/2) *
      sourceCorrelation explicitSecondDerivative A t = t * (F ⋆ G) t := by
    have hw := weighted_correlation_eq_convolution q (1/2) t
    change Real.exp ((1/2 : ℝ)*t)*sourceCorrelation explicitSecondDerivative A t =
      (F ⋆ G) t at hw
    rw [← hw, show (1/2 : ℝ)*t=t/2 by ring]
    ring
  simpa only [he] using hm

/-- Exact full-line annihilation of every independently chosen quadratic background. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variantff34ce592fa9af9b09394d8e32b2167bcf02e8add82cdda622bbbffdd3f331e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variantff34ce592fa9af9b09394d8e32b2167bcf02e8add82cdda622bbbffdd3f331e0.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3daa8733b4de0c8f9a17cc512675df9a99841ea3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
