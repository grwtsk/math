# anchored_two_moment_sampling_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19086404-bc0f-acb9-8897-1e932aaa91a4",
  "kind": "theorem",
  "lexical_name": "anchored_two_moment_sampling_bound",
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
  "slug": "anchored-two-moment-sampling-bound--ae1b2d89cb1a168c47c7d482",
  "source": {
    "blob": "bfd3891d155ef0d1ec274c0d41b51fd96dce50e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 246,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantee2055cc74208e61d93010342c368af745e635e95b5619bfad6b106168932f3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae1b2d89cb1a168c47c7d4828272acb9a8dbda097fb9a2482902557928682619",
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

Occurrence: `result:19086404-bc0f-acb9-8897-1e932aaa91a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem anchored_two_moment_sampling_bound {F : ℝ → ℝ}
    (hF : ContDiff ℝ 1 F) (hMom : TwoMomentProfile F) {L : ℝ} (hzero : F 0 = 0)
    (hL : 0 ≤ L) (hderiv : ∀ t, |deriv F t| ≤ L)
    (s : ℝ) (hs : 0 ≤ s) (N : ℕ) (hTail : SamplingTailZero F (Real.exp s) N) :
    |∑ k ∈ Finset.Icc 1 N, Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
        F (s + Real.log (k : ℝ))| ≤ L * (8 * s + 32) := by
  have herr := finite_sampling_error_anchored_le hF hzero hL hderiv hs N
  rw [finite_interval_eq_Ioi_of_tailZero hF (Real.exp_pos s) N hTail] at herr
  have hint := abs_sampling_integral_anchored_le hF hMom hzero hL hderiv hs
  have hbase : |leftSampleSum (logSamplingTerm F (Real.exp s)) N| ≤
      Real.exp (-s / 2) * L * (8 * s + 32) := by
    have htri := abs_add_le
      (leftSampleSum (logSamplingTerm F (Real.exp s)) N -
        ∫ u in Ioi (1 : ℝ), logSamplingTerm F (Real.exp s) u)
      (∫ u in Ioi (1 : ℝ), logSamplingTerm F (Real.exp s) u)
    rw [sub_add_cancel] at htri
    nlinarith
  have hm := mul_le_mul_of_nonneg_left hbase (Real.exp_pos (s / 2)).le
  have he : Real.exp (s / 2) * (Real.exp (-s / 2) * L * (8 * s + 32)) =
      L * (8 * s + 32) := by
    have he0 : Real.exp (s / 2) * Real.exp (-s / 2) = 1 := by
      rw [← Real.exp_add, show s / 2 + -s / 2 = 0 by ring, Real.exp_zero]
    calc
      _ = (Real.exp (s / 2) * Real.exp (-s / 2)) * L * (8 * s + 32) := by ring
      _ = _ := by rw [he0, one_mul]
  rw [he] at hm
  rw [← exp_half_mul_leftSampleSum F N s, abs_mul, abs_of_pos (Real.exp_pos _)]
  exact hm

end
end EstimateAnchoredTwoMomentSampling
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantee2055cc74208e61d93010342c368af745e635e95b5619bfad6b106168932f3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantee2055cc74208e61d93010342c368af745e635e95b5619bfad6b106168932f3e.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfd3891d155ef0d1ec274c0d41b51fd96dce50e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
