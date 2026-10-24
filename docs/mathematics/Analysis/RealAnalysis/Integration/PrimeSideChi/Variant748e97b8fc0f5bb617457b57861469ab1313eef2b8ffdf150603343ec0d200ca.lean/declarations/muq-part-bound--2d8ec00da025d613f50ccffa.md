# muq_part_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdfbbe56c3098980c3d63ba72430b2e80671deeb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 598,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/748e97b8fc0f5bb617457b57861469ab1313eef2b8ffdf150603343ec0d200ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:edfae95c-4789-aecb-9096-70df7756894c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3682642-4f7d-3561-2d60-5cc2e80c5693",
  "kind": "lemma",
  "lexical_name": "muq_part_bound",
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
  "slug": "muq-part-bound--2d8ec00da025d613f50ccffa",
  "source": {
    "blob": "bdfbbe56c3098980c3d63ba72430b2e80671deeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 652,
    "line": 598,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant748e97b8fc0f5bb617457b57861469ab1313eef2b8ffdf150603343ec0d200ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d8ec00da025d613f50ccffa6e56726e9a70b2e8455545deb0674b4553e64583",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant748e97b8fc0f5bb617457b57861469ab1313eef2b8ffdf150603343ec0d200ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3682642-4f7d-3561-2d60-5cc2e80c5693`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 598–652.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma muq_part_bound (hΓq : GammaFactsChi κ q) (hq : 1 ≤ q) (hF : LocalHypsCoreW cϱ p F) {K : ℝ}
    (_hK0 : 0 ≤ K)
    (hK : ∀ t : ℝ, 2 ≤ t → ∀ r : ℝ, |muq κ q (t + r) - muq κ q t| ≤ K * (|r| + r ^ 2) / t)
    {t : ℝ} (ht : 2 ≤ t) :
    |(∫ r, F.phiHat r ^ 2 * muq κ q (t + r)) - 2 * π * F.a * p.L * muq κ q t|
      ≤ K * ((∫ r, F.phiHat r ^ 2 * |r|) + (∫ r, F.phiHat r ^ 2 * r ^ 2)) / t := by
  have ht0 : (0:ℝ) < t := by linarith
  obtain ⟨M, hM0, hM⟩ := muq_linear_bound hΓq hq
  have hmeas : MeasureTheory.AEStronglyMeasurable (fun r => F.phiHat r ^ 2 * muq κ q (t + r))
      MeasureTheory.volume := by
    have hc' : Continuous fun r => F.phiHat r ^ 2 * muq κ q (t + r) := by
      have h1 := hΓq.smooth.continuous
      have h2 := hF.phiHat_cont
      fun_prop
    exact hc'.aestronglyMeasurable
  have hint : MeasureTheory.Integrable (fun r => F.phiHat r ^ 2 * muq κ q (t + r)) := by
    refine MeasureTheory.Integrable.mono'
      ((hF.phiHat_sq_integrable.const_mul (M + t)).add hF.phiHat_sq_mul_abs_integrable) hmeas ?_
    refine Filter.Eventually.of_forall fun r => ?_
    simp only [Real.norm_eq_abs, Pi.add_apply]
    rw [abs_mul, abs_of_nonneg (sq_nonneg _)]
    have htr : |t + r| ≤ t + |r| := by
      calc |t + r| ≤ |t| + |r| := abs_add_le _ _
        _ = t + |r| := by rw [abs_of_pos ht0]
    calc F.phiHat r ^ 2 * |muq κ q (t + r)| ≤ F.phiHat r ^ 2 * (M + |t + r|) := by
          gcongr
          exact hM _
      _ ≤ F.phiHat r ^ 2 * (M + (t + |r|)) := by gcongr
      _ = (M + t) * F.phiHat r ^ 2 + F.phiHat r ^ 2 * |r| := by ring
  have hconst : 2 * π * F.a * p.L * muq κ q t = ∫ r, F.phiHat r ^ 2 * muq κ q t := by
    rw [MeasureTheory.integral_mul_const, hF.phiHat_sq_integral]
  rw [hconst, ← MeasureTheory.integral_sub hint (hF.phiHat_sq_integrable.mul_const _)]
  have hgi : MeasureTheory.Integrable
      (fun r => K * (F.phiHat r ^ 2 * |r|) / t + K * (F.phiHat r ^ 2 * r ^ 2) / t) :=
    ((hF.phiHat_sq_mul_abs_integrable.const_mul K).div_const t).add
      ((hF.phiHat_sq_mul_sq_integrable.const_mul K).div_const t)
  rw [← Real.norm_eq_abs]
  calc ‖∫ r, F.phiHat r ^ 2 * muq κ q (t + r) - F.phiHat r ^ 2 * muq κ q t‖
      ≤ ∫ r, K * (F.phiHat r ^ 2 * |r|) / t + K * (F.phiHat r ^ 2 * r ^ 2) / t := by
        refine MeasureTheory.norm_integral_le_of_norm_le hgi
          (Filter.Eventually.of_forall fun r => ?_)
        rw [Real.norm_eq_abs, ← mul_sub, abs_mul, abs_of_nonneg (sq_nonneg _)]
        calc F.phiHat r ^ 2 * |muq κ q (t + r) - muq κ q t|
            ≤ F.phiHat r ^ 2 * (K * (|r| + r ^ 2) / t) := by
              gcongr
              exact hK t ht r
          _ = K * (F.phiHat r ^ 2 * |r|) / t + K * (F.phiHat r ^ 2 * r ^ 2) / t := by ring
    _ = K * ((∫ r, F.phiHat r ^ 2 * |r|) + (∫ r, F.phiHat r ^ 2 * r ^ 2)) / t := by
        rw [MeasureTheory.integral_add ((hF.phiHat_sq_mul_abs_integrable.const_mul K).div_const t)
          ((hF.phiHat_sq_mul_sq_integrable.const_mul K).div_const t),
          MeasureTheory.integral_div, MeasureTheory.integral_div,
          MeasureTheory.integral_const_mul, MeasureTheory.integral_const_mul]
        ring

/-- Integrability of φ̂(r)² μ_χ(t+r). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant748e97b8fc0f5bb617457b57861469ab1313eef2b8ffdf150603343ec0d200ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant748e97b8fc0f5bb617457b57861469ab1313eef2b8ffdf150603343ec0d200ca.lean#L598).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdfbbe56c3098980c3d63ba72430b2e80671deeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
