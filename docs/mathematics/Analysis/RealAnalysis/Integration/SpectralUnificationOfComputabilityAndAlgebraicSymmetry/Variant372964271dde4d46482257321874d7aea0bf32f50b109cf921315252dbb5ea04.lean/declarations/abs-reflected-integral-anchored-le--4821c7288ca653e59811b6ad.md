# abs_reflected_integral_anchored_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "286bb213f233a42dae4badc1429313e4e1951888",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/372964271dde4d46482257321874d7aea0bf32f50b109cf921315252dbb5ea04.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b10ffef6-1158-5f53-ded8-a896e3878d0a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8761c09-9b96-2952-93cd-e6e65ddd9f71",
  "kind": "theorem",
  "lexical_name": "abs_reflected_integral_anchored_le",
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
  "slug": "abs-reflected-integral-anchored-le--4821c7288ca653e59811b6ad",
  "source": {
    "blob": "286bb213f233a42dae4badc1429313e4e1951888",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 188,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant372964271dde4d46482257321874d7aea0bf32f50b109cf921315252dbb5ea04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4821c7288ca653e59811b6ad3342e3e383b50af267fdd535c3cc780c5eec2ddd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant372964271dde4d46482257321874d7aea0bf32f50b109cf921315252dbb5ea04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8761c09-9b96-2952-93cd-e6e65ddd9f71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_reflected_integral_anchored_le {F : ℝ → ℝ}
    (hF : ContDiff ℝ 1 F) (hMom : TwoMomentProfile F) {L s : ℝ} (hzero : F 0 = 0)
    (hL : 0 ≤ L) (hderiv : ∀ t, |deriv F t| ≤ L) (hs : 0 ≤ s) :
    |∫ r in Ioi (0 : ℝ), reflectedMomentIntegrand F s r| ≤ L * (4 * s + 16) := by
  have hi1 : IntegrableOn (fun r : ℝ ↦ r * Real.exp (-r / 2)) (Ioi (0 : ℝ)) :=
    .of_integral_ne_zero (by rw [exponential_half_first_moment]; norm_num)
  have hi2 : IntegrableOn (fun r : ℝ ↦ r ^ 2 * Real.exp (-r / 2)) (Ioi (0 : ℝ)) :=
    .of_integral_ne_zero (by rw [exponential_half_second_moment]; norm_num)
  have hmaj : IntegrableOn (fun r ↦ L *
      (s * (r * Real.exp (-r / 2)) + r ^ 2 * Real.exp (-r / 2))) (Ioi (0 : ℝ)) :=
    ((hi1.const_mul s).add hi2).const_mul L
  have href : IntegrableOn (reflectedMomentIntegrand F s) (Ioi (0 : ℝ)) :=
    (reflectedMomentIntegrand_integrable hMom s).integrableOn
  have hpoint (r : ℝ) (hr : 0 < r) : |reflectedMomentIntegrand F s r| ≤
      L * (s * (r * Real.exp (-r / 2)) + r ^ 2 * Real.exp (-r / 2)) := by
    have hsr : |s - r| ≤ s + r := by
      simpa only [abs_of_nonneg hs, abs_of_nonneg hr.le] using abs_sub s r
    have hFt := (anchored_profile_abs_le hF hzero hderiv (s - r)).trans
      (mul_le_mul_of_nonneg_left hsr hL)
    unfold reflectedMomentIntegrand
    rw [abs_mul, abs_mul, abs_of_pos hr, abs_of_pos (Real.exp_pos _)]
    calc
      _ ≤ (r * Real.exp (-r / 2)) * (L * (s + r)) :=
        mul_le_mul_of_nonneg_left hFt (by positivity)
      _ = _ := by ring
  calc
    _ ≤ ∫ r in Ioi (0 : ℝ), |reflectedMomentIntegrand F s r| :=
      abs_integral_le_integral_abs
    _ ≤ ∫ r in Ioi (0 : ℝ), L *
        (s * (r * Real.exp (-r / 2)) + r ^ 2 * Real.exp (-r / 2)) := by
      refine setIntegral_mono_ae_restrict href.norm hmaj ?_
      exact (ae_restrict_iff' measurableSet_Ioi).2 (Eventually.of_forall hpoint)
    _ = _ := by
      rw [integral_const_mul, integral_add (hi1.const_mul s) hi2,
        integral_const_mul, exponential_half_first_moment, exponential_half_second_moment]
      ring

/-- Reflection yields the second anchored contribution to the sampled integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant372964271dde4d46482257321874d7aea0bf32f50b109cf921315252dbb5ea04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant372964271dde4d46482257321874d7aea0bf32f50b109cf921315252dbb5ea04.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `286bb213f233a42dae4badc1429313e4e1951888` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
