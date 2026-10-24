# actualClosedPrimeHead_error_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69f34d7b-5de4-d262-c776-7b1fd807b2e3",
  "kind": "theorem",
  "lexical_name": "actualClosedPrimeHead_error_le",
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
  "slug": "actualclosedprimehead-error-le--c7a168efff348548273a05c8",
  "source": {
    "blob": "5eef67adede891c7960520ebfeaf53c801e89eb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 291,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative02/Variant8eeb75e7cf2f6c1d03d27b303c7ebeb95acaf5e4836c19b45c64a4c424c0bd31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7a168efff348548273a05c8cd36ee175ab8748ce5cbf5692f7a2c3573911724",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative02/Variant8eeb75e7cf2f6c1d03d27b303c7ebeb95acaf5e4836c19b45c64a4c424c0bd31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69f34d7b-5de4-d262-c776-7b1fd807b2e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedPrimeHead_error_le (A c d T : ℝ) (hA : 1 ≤ A)
    (hd : 1 < d) (hdc : d < c) (hT : 1 ≤ T) :
    ‖actualInitialPrimeHead A c T - actualClosedPrimeHead A c T‖ ≤
      exteriorTailNumerator A c d/(5*Real.pi*T^5) := by
  have hi : Integrable (exteriorDensity A c) :=
    actualExteriorPrimeDensity_integrable A c hA (by linarith)
  have he (t : ℝ) : actualInitialPrimeDensity A c t =
      actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
        actualClosedPrimeDirichletPolynomial A ((c:ℂ)+(t:ℂ)*I) + exteriorDensity A c t := by
    rw [actualInitialPrimeDensity_eq_series A c t (by linarith),
      actualPrimeSeries_eq_closed_add_exterior A _ (by simp; linarith)]
    unfold exteriorDensity
    ring
  have hhead : actualInitialPrimeHead A c T - actualClosedPrimeHead A c T =
      (1/(2*Real.pi):ℂ) * ∫ t in -T..T, exteriorDensity A c t := by
    unfold actualInitialPrimeHead actualClosedPrimeHead
    simp_rw [he]
    rw [intervalIntegral.integral_add (closed_density_integrable A c hA).intervalIntegrable
      hi.intervalIntegrable]
    ring
  have hs := intervalIntegral.integral_Iic_sub_Iic
    (hi.integrableOn (s := Iic (-T))) (hi.integrableOn (s := Iic T))
  have ht := intervalIntegral.integral_Iic_add_Ioi
    (hi.integrableOn (s := Iic T)) (hi.integrableOn (s := Ioi T))
  have hneg : (∫ t in Ioi T, exteriorDensity A c (-t)) =
      ∫ t in Iic (-T), exteriorDensity A c t := integral_comp_neg_Ioi _ _
  have hz := actualExteriorPrimeDensity_fullLine_zero A c hA (by linarith)
  change (1/(2*Real.pi):ℂ) * (∫ t : ℝ, exteriorDensity A c t) = 0 at hz
  have hx : (1/(2*Real.pi):ℂ) * (∫ t in -T..T, exteriorDensity A c t) =
      -(1/(2*Real.pi):ℂ) * ((∫ t in Ioi T, exteriorDensity A c t) +
        ∫ t in Ioi T, exteriorDensity A c (-t)) := by
    rw [hneg, ← ht, ← hs] at hz
    linear_combination hz
  obtain ⟨hb1,hb2⟩ := exterior_one_tail_norm A c d T hA hd hdc hT
  rw [hhead, hx, norm_mul]
  have hp : ‖-(1/(2*Real.pi):ℂ)‖ = 1/(2*Real.pi) := by
    norm_num [norm_div, norm_mul, Real.norm_eq_abs, abs_of_pos Real.pi_pos]
  rw [hp]
  calc
    _ ≤ (1/(2*Real.pi)) * (exteriorTailNumerator A c d/(5*T^5) +
        exteriorTailNumerator A c d/(5*T^5)) := by
      exact mul_le_mul_of_nonneg_left
        ((norm_add_le _ _).trans (add_le_add hb1 hb2)) (by positivity)
    _ = _ := by ring

/-- Explicit actual arithmetic constant; it is a genuine convergent Mangoldt mass at d>1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative02/Variant8eeb75e7cf2f6c1d03d27b303c7ebeb95acaf5e4836c19b45c64a4c424c0bd31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative02/Variant8eeb75e7cf2f6c1d03d27b303c7ebeb95acaf5e4836c19b45c64a4c424c0bd31.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eef67adede891c7960520ebfeaf53c801e89eb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
