# finite_plain_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dda3a426fe8ba6517e513ba7e06a9a06e7dacc0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 298,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3a79b17629c321b3dd623049d45a1703de8636212df3c9901e6d7a58d6aa183.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:942cbc29-4c49-d97f-a2bb-fa78adcd9aa6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0cdaa5bb-f9b7-d0d3-4a3f-c8b612e8f35b",
  "kind": "theorem",
  "lexical_name": "finite_plain_error",
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
  "slug": "finite-plain-error--6ae9004a3f680e55681912c9",
  "source": {
    "blob": "dda3a426fe8ba6517e513ba7e06a9a06e7dacc0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 298,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd3a79b17629c321b3dd623049d45a1703de8636212df3c9901e6d7a58d6aa183.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ae9004a3f680e55681912c9548598e5975fad615df5505c65f399617b64224c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd3a79b17629c321b3dd623049d45a1703de8636212df3c9901e6d7a58d6aa183.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cdaa5bb-f9b7-d0d3-4a3f-c8b612e8f35b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem finite_plain_error {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x B0 B1 : ℝ} (hx : 0 < x) (hB : ProfileSupBounds F B0 B1) (N : ℕ) :
    |leftSampleSum (plainTerm F x) N - ∫ u in (1 : ℝ)..(N + 1 : ℝ), plainTerm F x u| ≤
      Real.exp (-Real.log x / 2) * (B0 + 2 * B1) := by
  let M : ℝ → ℝ := fun u ↦ Real.exp (-Real.log x / 2) * (B1 + B0 / 2) * halfDensity u
  have hm : IntegrableOn M (Ioi (1 : ℝ)) :=
    halfDensity_integrableOn.const_mul (Real.exp (-Real.log x / 2) * (B1 + B0 / 2))
  have hle : (1 : ℝ) ≤ N + 1 := by norm_num
  have hsub : Ioc (1 : ℝ) (N + 1 : ℝ) ⊆ Ioi (1 : ℝ) := fun _ h ↦ h.1
  have hmi : IntervalIntegrable M volume 1 (N+1) :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hle).2 (hm.mono_set hsub)
  calc
    _ ≤ ∫ u in (1 : ℝ)..(N + 1 : ℝ), |plainDeriv F x u| :=
      finite_plain_sampling_error hF hx N
    _ ≤ ∫ u in (1 : ℝ)..(N + 1 : ℝ), M u := by
      apply intervalIntegral.integral_mono_on hle
        (plainDeriv_intervalIntegrable hF hx zero_lt_one hle).abs hmi
      intro u hu
      exact plainDeriv_abs_le hu.1 hB
    _ ≤ ∫ u in Ioi (1 : ℝ), M u := by
      rw [intervalIntegral.integral_of_le hle]
      apply setIntegral_mono_set hm
      · filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
        dsimp [M, halfDensity]
        exact mul_nonneg (mul_nonneg (Real.exp_pos _).le (by linarith [hB.1, hB.2.1]))
          (div_nonneg (Real.exp_pos _).le (by have hu1 : (1 : ℝ) < u := hu; linarith))
      · exact Eventually.of_forall hsub
    _ = _ := by rw [integral_const_mul, halfDensity_integral]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd3a79b17629c321b3dd623049d45a1703de8636212df3c9901e6d7a58d6aa183.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd3a79b17629c321b3dd623049d45a1703de8636212df3c9901e6d7a58d6aa183.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dda3a426fe8ba6517e513ba7e06a9a06e7dacc0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
