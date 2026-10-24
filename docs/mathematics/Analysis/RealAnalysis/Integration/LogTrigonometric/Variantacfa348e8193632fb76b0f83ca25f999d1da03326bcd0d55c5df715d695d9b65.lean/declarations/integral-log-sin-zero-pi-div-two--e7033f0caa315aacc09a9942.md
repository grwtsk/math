# integral_log_sin_zero_pi_div_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7b2131c-b32f-d890-88fc-435a5a270cb0",
  "kind": "theorem",
  "lexical_name": "integral_log_sin_zero_pi_div_two",
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
  "slug": "integral-log-sin-zero-pi-div-two--e7033f0caa315aacc09a9942",
  "source": {
    "blob": "16363fe5ab3972abf4646b194b3f33d1d3d220c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogTrigonometric/Variantacfa348e8193632fb76b0f83ca25f999d1da03326bcd0d55c5df715d695d9b65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7033f0caa315aacc09a9942b40207c933ab7beb6bbae8536e4c1a74f43db7e9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogTrigonometric/Variantacfa348e8193632fb76b0f83ca25f999d1da03326bcd0d55c5df715d695d9b65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7b2131c-b32f-d890-88fc-435a5a270cb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_log_sin_zero_pi_div_two : ∫ x in 0..(π / 2), log (sin x) = -log 2 * π / 2 := by
  calc ∫ x in 0..(π / 2), log (sin x)
    _ = ∫ x in 0..(π / 2), (log (sin (2 * x)) - log 2 - log (cos x)) := by
      apply intervalIntegral.integral_congr_codiscreteWithin
      apply Filter.codiscreteWithin_mono (by tauto : Ι 0 (π / 2) ⊆ Set.univ)
      have t₀ : sin ⁻¹' {0}ᶜ ∈ Filter.codiscrete ℝ := by
        apply analyticOnNhd_sin.preimage_zero_mem_codiscrete (x := π / 2)
        simp
      have t₁ : cos ⁻¹' {0}ᶜ ∈ Filter.codiscrete ℝ := by
        apply analyticOnNhd_cos.preimage_zero_mem_codiscrete (x := 0)
        simp
      filter_upwards [t₀, t₁] with y h₁y h₂y
      simp_all only [Set.preimage_compl, Set.mem_compl_iff, Set.mem_preimage, Set.mem_singleton_iff,
        sin_two_mul, ne_eq, mul_eq_zero, OfNat.ofNat_ne_zero, or_self, not_false_eq_true, log_mul]
      ring
    _ = (∫ x in 0..(π / 2), log (sin (2 * x))) - π / 2 * log 2
        - ∫ x in 0..(π / 2), log (cos x) := by
      rw [intervalIntegral.integral_sub _ _,
        intervalIntegral.integral_sub _ intervalIntegrable_const,
        intervalIntegral.integral_const]
      · simp
      · simpa using (intervalIntegrable_log_sin (a := 0) (b := π)).comp_mul_left
      · apply IntervalIntegrable.sub _ intervalIntegrable_const
        simpa using (intervalIntegrable_log_sin (a := 0) (b := π)).comp_mul_left
      · exact intervalIntegrable_log_cos
    _ = (∫ x in 0..(π / 2), log (sin (2 * x)))
        - π / 2 * log 2 - ∫ x in 0..(π / 2), log (sin x) := by
      simp [← sin_pi_div_two_sub,
        intervalIntegral.integral_comp_sub_left (fun x ↦ log (sin x)) (π / 2)]
    _ = -log 2 * π / 2 := by
      simp only [intervalIntegral.integral_comp_mul_left (f := fun x ↦ log (sin x)) two_ne_zero,
        mul_zero, (by linarith : 2 * (π / 2) = π),
        integral_log_sin_zero_pi_eq_two_mul_integral_log_sin_zero_pi_div_two, smul_eq_mul, ne_eq,
        OfNat.ofNat_ne_zero, not_false_eq_true, inv_mul_cancel_left₀, sub_sub_cancel_left, neg_mul]
      linarith

/--
The integral of `log ∘ sin` on `0 … π` equals `-log 2 * π`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogTrigonometric/Variantacfa348e8193632fb76b0f83ca25f999d1da03326bcd0d55c5df715d695d9b65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogTrigonometric/Variantacfa348e8193632fb76b0f83ca25f999d1da03326bcd0d55c5df715d695d9b65.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16363fe5ab3972abf4646b194b3f33d1d3d220c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
