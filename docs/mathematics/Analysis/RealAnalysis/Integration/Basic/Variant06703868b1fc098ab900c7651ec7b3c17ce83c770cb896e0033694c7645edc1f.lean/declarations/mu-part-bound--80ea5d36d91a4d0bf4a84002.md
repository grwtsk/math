# mu_part_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7555aaf5deacab10b78c258feefd3537a539fd36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba1693d8-517f-3ee5-343c-7b6d6a534319",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4e52c35a-0aff-79de-320b-2f9072b991e7",
  "kind": "lemma",
  "lexical_name": "mu_part_bound",
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
  "slug": "mu-part-bound--80ea5d36d91a4d0bf4a84002",
  "source": {
    "blob": "7555aaf5deacab10b78c258feefd3537a539fd36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1202,
    "line": 1159,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80ea5d36d91a4d0bf4a84002700f1cede0561a0fce647edf0fdc19836b403ab2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e52c35a-0aff-79de-320b-2f9072b991e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1159–1202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mu_part_bound (hΓ : Zeta23.GammaFacts) (hF : LocalHypsCore cϱ p F) {K : ℝ}
    (hK : ∀ t : ℝ, 2 ≤ t → ∀ r : ℝ, |Zeta23.mu (t + r) - Zeta23.mu t| ≤ (K * |r| + 10 * r ^ 2) / t)
    {t : ℝ} (ht : 2 ≤ t) :
    |(∫ r, F.phiHat r ^ 2 * Zeta23.mu (t + r)) - 2 * π * F.a * p.L * Zeta23.mu t|
      ≤ (K * (∫ r, F.phiHat r ^ 2 * |r|) + 10 * (∫ r, F.phiHat r ^ 2 * r ^ 2)) / t := by
  have ht0 : 0 < t := by linarith
  obtain ⟨M, hM0, hM⟩ := mu_linear_bound hΓ
  have hmeas : AEStronglyMeasurable (fun r => F.phiHat r ^ 2 * Zeta23.mu (t + r)) volume := by
    have hc : Continuous fun r => F.phiHat r ^ 2 * Zeta23.mu (t + r) := by
      have := hΓ.smooth.continuous; have := hF.phiHat_cont; fun_prop
    exact hc.aestronglyMeasurable
  have hint : Integrable (fun r => F.phiHat r ^ 2 * Zeta23.mu (t + r)) := by
    refine Integrable.mono'
      ((hF.phiHat_sq_integrable.const_mul (M + t)).add hF.phiHat_sq_mul_abs_integrable) hmeas ?_
    refine Filter.Eventually.of_forall fun r => ?_
    simp only [Real.norm_eq_abs, Pi.add_apply]
    rw [abs_mul, abs_of_nonneg (sq_nonneg _)]
    have htr : |t + r| ≤ t + |r| := by
      calc |t + r| ≤ |t| + |r| := abs_add_le _ _
        _ = t + |r| := by rw [abs_of_pos ht0]
    calc F.phiHat r ^ 2 * |Zeta23.mu (t + r)| ≤ F.phiHat r ^ 2 * (M + |t + r|) := by
          gcongr; exact hM _
      _ ≤ F.phiHat r ^ 2 * (M + (t + |r|)) := by gcongr
      _ = (M + t) * F.phiHat r ^ 2 + F.phiHat r ^ 2 * |r| := by ring
  have hconst : 2 * π * F.a * p.L * Zeta23.mu t = ∫ r, F.phiHat r ^ 2 * Zeta23.mu t := by
    rw [integral_mul_const, hF.phiHat_sq_integral]
  rw [hconst, ← integral_sub hint (hF.phiHat_sq_integrable.mul_const _)]
  have hgi : Integrable (fun r => (K * (F.phiHat r ^ 2 * |r|) + 10 * (F.phiHat r ^ 2 * r ^ 2)) / t) :=
    ((hF.phiHat_sq_mul_abs_integrable.const_mul K).add
      (hF.phiHat_sq_mul_sq_integrable.const_mul 10)).div_const t
  rw [← Real.norm_eq_abs]
  calc ‖∫ r, F.phiHat r ^ 2 * Zeta23.mu (t + r) - F.phiHat r ^ 2 * Zeta23.mu t‖
      ≤ ∫ r, (K * (F.phiHat r ^ 2 * |r|) + 10 * (F.phiHat r ^ 2 * r ^ 2)) / t := by
        refine norm_integral_le_of_norm_le hgi (Filter.Eventually.of_forall fun r => ?_)
        rw [Real.norm_eq_abs, ← mul_sub, abs_mul, abs_of_nonneg (sq_nonneg _)]
        calc F.phiHat r ^ 2 * |Zeta23.mu (t + r) - Zeta23.mu t|
            ≤ F.phiHat r ^ 2 * ((K * |r| + 10 * r ^ 2) / t) := by gcongr; exact hK t ht r
          _ = _ := by ring
    _ = (K * (∫ r, F.phiHat r ^ 2 * |r|) + 10 * (∫ r, F.phiHat r ^ 2 * r ^ 2)) / t := by
        rw [integral_div, integral_add (hF.phiHat_sq_mul_abs_integrable.const_mul K)
          (hF.phiHat_sq_mul_sq_integrable.const_mul 10), integral_const_mul, integral_const_mul]

/-- **Π-part of [prop:trace] at one grid point** (§5.2: `|G^Π_kk| ≤ 6√X·2πaL/T + O(√X T⁻³)`):
for `t ≥ 2`, `|∫ φ̂(r)² Π_X(t+r) dr| ≤ (6√X/t)·2πaL + (12√X/t²)·∫φ̂²r²`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean#L1159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7555aaf5deacab10b78c258feefd3537a539fd36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
