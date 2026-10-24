# finite_sampling_error_anchored_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:461ae880-25d5-a384-74d1-e4aedda854ef",
  "kind": "theorem",
  "lexical_name": "finite_sampling_error_anchored_le",
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
  "slug": "finite-sampling-error-anchored-le--facc2adccd17180d0b9d56d5",
  "source": {
    "blob": "bfd3891d155ef0d1ec274c0d41b51fd96dce50e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 173,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantee2055cc74208e61d93010342c368af745e635e95b5619bfad6b106168932f3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:facc2adccd17180d0b9d56d56d4ee3f4a243cf1883290dbebe1a5333dfcf6bf1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantee2055cc74208e61d93010342c368af745e635e95b5619bfad6b106168932f3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:461ae880-25d5-a384-74d1-e4aedda854ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_sampling_error_anchored_le {F : ℝ → ℝ}
    (hF : ContDiff ℝ 1 F) {L s : ℝ} (hzero : F 0 = 0)
    (hL : 0 ≤ L) (hderiv : ∀ t, |deriv F t| ≤ L) (hs : 0 ≤ s) (N : ℕ) :
    |leftSampleSum (logSamplingTerm F (Real.exp s)) N -
        ∫ u in (1 : ℝ)..(N + 1 : ℝ), logSamplingTerm F (Real.exp s) u| ≤
      Real.exp (-s / 2) * L * (4 * s + 16) := by
  have hfinite := finite_log_sampling_error hF (Real.exp_pos s) N
  have hder := anchored_samplingDerivative_integrable hF hzero hL hderiv hs
  have habs : IntegrableOn (fun u ↦ |logSamplingDerivative F (Real.exp s) u|)
      (Ioi (1 : ℝ)) := by
    simpa only [IntegrableOn, Real.norm_eq_abs] using hder.norm
  have hmono : (∫ u in (1 : ℝ)..(N + 1 : ℝ),
      |logSamplingDerivative F (Real.exp s) u|) ≤
      ∫ u in Ioi (1 : ℝ), |logSamplingDerivative F (Real.exp s) u| := by
    rw [intervalIntegral.integral_of_le (by norm_num : (1 : ℝ) ≤ N + 1)]
    apply setIntegral_mono_set habs
    · exact (ae_restrict_iff' measurableSet_Ioi).2
        (Eventually.of_forall fun _ _ ↦ abs_nonneg _)
    · exact Eventually.of_forall fun _ hu ↦ hu.1
  exact hfinite.trans (hmono.trans
    (integral_abs_samplingDerivative_anchored_le hF hzero hL hderiv hs))

/-- The signed integral is reflected before its anchored linear majorant is applied. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantee2055cc74208e61d93010342c368af745e635e95b5619bfad6b106168932f3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantee2055cc74208e61d93010342c368af745e635e95b5619bfad6b106168932f3e.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfd3891d155ef0d1ec274c0d41b51fd96dce50e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
