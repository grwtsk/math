# phase_pointwise_of_matveev_input

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80e28d5c-22f9-0f8d-5ad9-7b9b3757e6b1",
  "kind": "theorem",
  "lexical_name": "phase_pointwise_of_matveev_input",
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
  "slug": "phase-pointwise-of-matveev-input--a43d601006b3ffb8d81854bf",
  "source": {
    "blob": "60c0dad4b528c5b7d891471eaf3a9165f758695d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 143,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatveevPhaseBridge/Variant03045a36fd91095287a568da21ae86a582173b3d4757105d20c08aac8adceeb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a43d601006b3ffb8d81854bfc4f14042fcbd051002a963dfedc6d389f82a4843",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatveevPhaseBridge/Variant03045a36fd91095287a568da21ae86a582173b3d4757105d20c08aac8adceeb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80e28d5c-22f9-0f8d-5ad9-7b9b3757e6b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phase_pointwise_of_matveev_input (hinput : MatveevTwoLogInput)
    {H δ : ℝ} (hH : 0 < H) (hδ : 0 ≤ δ) (hδH : δ ≤ 2 * H) :
    certificateConstant * (1 + H) ^ (-((matveevExponent + 1 : ℕ) : ℝ)) * δ ≤
      phaseDistance δ 0 := by
  have hpow : 0 ≤ (1 + H) ^ (-((matveevExponent + 1 : ℕ) : ℝ)) :=
    Real.rpow_nonneg (by linarith) _
  by_cases hnear : δ * Real.log 3 ≤ Real.pi
  · have hp : (1 + H) ^ (-((matveevExponent + 1 : ℕ) : ℝ)) ≤ 1 :=
      Real.rpow_le_one_of_one_le_of_nonpos (by linarith) (neg_nonpos.mpr (Nat.cast_nonneg _))
    have hc := mul_le_of_le_one_right certificateConstant_positive.le hp
    have hs := mul_le_mul_of_nonneg_right (hc.trans (min_le_left _ _)) hδ
    exact hs.trans (phase_distance_near hδ hnear)
  · have hf := phase_distance_far hinput hδ hδH (lt_of_not_ge hnear)
    have he : (1 + H) ^ (-((matveevExponent + 1 : ℕ) : ℝ)) * (1 + H) =
        (1 + H) ^ (-(matveevExponent : ℝ)) := by
      conv_lhs => arg 2; rw [← Real.rpow_one (1 + H)]
      rw [← Real.rpow_add (by linarith : 0 < 1 + H)]
      congr 1
      push_cast
      ring
    have hd := mul_le_mul_of_nonneg_left
      (hδH.trans (by linarith : 2 * H ≤ 2 * (1 + H)))
      (mul_nonneg certificateConstant_positive.le hpow)
    have hright : certificateConstant * (1 + H) ^ (-((matveevExponent + 1 : ℕ) : ℝ)) *
        (2 * (1 + H)) = 2 * certificateConstant * (1 + H) ^ (-(matveevExponent : ℝ)) := by
      calc
        _ = 2 * certificateConstant *
          ((1 + H) ^ (-((matveevExponent + 1 : ℕ) : ℝ)) * (1 + H)) := by ring
        _ = _ := by rw [he]
    rw [hright] at hd
    have hc := mul_le_mul_of_nonneg_left (min_le_right
      (2 * logLength / Real.pi) (2 * Real.exp (-(matveevExponent : ℝ)) / logLength))
      (by norm_num : (0 : ℝ) ≤ 2)
    have hs := mul_le_mul_of_nonneg_right hc
      (Real.rpow_nonneg (by linarith : 0 ≤ 1 + H) (-(matveevExponent : ℝ)))
    have hfactor : 2 * (2 * Real.exp (-(matveevExponent : ℝ)) / logLength) *
        (1 + H) ^ (-(matveevExponent : ℝ)) =
        4 * Real.exp (-(matveevExponent : ℝ)) / logLength *
          (1 + H) ^ (-(matveevExponent : ℝ)) := by ring
    rw [hfactor] at hs
    apply hd.trans
    exact hs.trans hf

/-- The complete geometric bridge is now proved. Only the exact external
two-log lower bound is required by the downstream certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatveevPhaseBridge/Variant03045a36fd91095287a568da21ae86a582173b3d4757105d20c08aac8adceeb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatveevPhaseBridge/Variant03045a36fd91095287a568da21ae86a582173b3d4757105d20c08aac8adceeb4.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60c0dad4b528c5b7d891471eaf3a9165f758695d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
