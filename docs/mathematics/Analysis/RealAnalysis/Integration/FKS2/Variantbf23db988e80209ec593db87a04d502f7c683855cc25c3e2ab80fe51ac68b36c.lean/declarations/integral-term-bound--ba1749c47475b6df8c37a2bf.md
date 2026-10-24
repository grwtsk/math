# integral_term_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72fe413f-f792-6379-c54f-4f35c14a808e",
  "kind": "lemma",
  "lexical_name": "integral_term_bound",
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
  "slug": "integral-term-bound--ba1749c47475b6df8c37a2bf",
  "source": {
    "blob": "b782c60ba436204bfe0cbe2f3e10cf9ae3c50f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2283,
    "line": 2231,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba1749c47475b6df8c37a2bf30edd402bc854998726ce55951fd60d3d0261354",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72fe413f-f792-6379-c54f-4f35c14a808e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2231–2283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_term_bound {A B C R x₀ x₁ x : ℝ}
  (hB : B ≥ 3 / 2)
  (hR : R > 0) (hA : A > 0)
  (hE_theta : Eθ.classicalBound A B C R x₀)
  (hx1_gt1 : x₁ > 1) (hx₁x₀ : x₁ ≥ x₀) (hx : x ≥ x₁)
  (hx0_ge2 : x₀ ≥ 2)
  (hsqrt_cond : 0 ≤ √(log x₀) - C / (2 * √R))
  (hx1_exp : x₁ ≥ exp ((1 + C / (2 * sqrt R)) ^ 2)) :
  (log x / x) * ∫ t in x₀..x, Eθ t / log t ^ 2 ≤
  2 * dawson (√(log x₁) - C / (2 * √R)) / √(log x₁) *
  admissible_bound A B C R x := by
  -- Apply the integral bound from lemma_12.
  have h_integral_bound : ∫ t in x₀..x, Eθ t / Real.log t ^ 2 ≤
      (2 * A) / R ^ B * x * max ((Real.log x₀) ^ ((2 * B - 3) / 2)) ((Real.log x) ^ ((2 * B - 3) / 2)) *
      Real.exp (-C * Real.sqrt (Real.log x / R)) * dawson (Real.sqrt (Real.log x) - C / (2 * Real.sqrt R)) := by
        convert lemma_12 _ _ _ _ ?_ ?_ using 1;
        any_goals linarith;
        · exact intervalIntegral.integral_congr fun t ht => by rw [ abs_of_nonneg ( Eθ_nonneg t ( by linarith [ Set.mem_Icc.mp ( by simpa [ show x₀ ≤ x by linarith ] using ht ) ] ) ) ] ;
        · assumption;
  -- Multiply by log x / x and use integral_algebra to simplify:
  have h_integral_mul : (log x / x) * ∫ t in x₀..x, Eθ t / Real.log t ^ 2 ≤
      2 * (max ((Real.log x₀) ^ ((2 * B - 3) / 2)) ((Real.log x) ^ ((2 * B - 3) / 2))) * (Real.log x) ^ (1 - B) *
      dawson (Real.sqrt (Real.log x) - C / (2 * Real.sqrt R)) * admissible_bound A B C R x := by
        convert mul_le_mul_of_nonneg_left h_integral_bound ( show 0 ≤ Real.log x / x from div_nonneg ( Real.log_nonneg <| by linarith ) <| by linarith ) using 1 ; ring_nf;
        unfold admissible_bound; ring_nf;
        rw [ Real.mul_rpow ( by linarith [ Real.log_nonneg ( by linarith : ( 1:ℝ ) ≤ x ) ] ) ( by positivity ), Real.inv_rpow ( by positivity ) ] ; ring_nf;
        by_cases hxtemp : x = 0
        · simp [hxtemp]
          linarith
        · congr 2
          · simp only [mul_comm, mul_left_comm, mul_assoc, mul_eq_mul_left_iff]
            simp only [ne_eq, hxtemp, not_false_eq_true, mul_inv_cancel_left₀, mul_eq_mul_left_iff,
              inv_eq_zero]
            rw [ ← mul_assoc ]
            rw [ ← Real.rpow_add ( Real.log_pos <| by linarith ) ]
            norm_num
          congr
          rw [ Real.sqrt_eq_rpow ]
  -- Apply m_simplify to get m * (log x)^(1-B) ≤ 1/√(log x₁).
  have h_m_simplify : max ((Real.log x₀) ^ ((2 * B - 3) / 2)) ((Real.log x) ^ ((2 * B - 3) / 2)) * (Real.log x) ^ (1 - B) ≤ 1 / Real.sqrt (Real.log x₁) := by
    apply m_simplify hB (by linarith) (by linarith) hx₁x₀ hx (Real.log_pos (by linarith));
  -- Apply dawson_mono_ge_one to get dawson(√(log x)-C/(2√R)) ≤ dawson(√(log x₁)-C/(2√R)).
  have h_dawson_mono : dawson (Real.sqrt (Real.log x) - C / (2 * Real.sqrt R)) ≤ dawson (Real.sqrt (Real.log x₁) - C / (2 * Real.sqrt R)) := by
    apply dawson_mono_ge_one;
    · exact le_trans (sqrt_log_minus_ge_one hx1_exp) (sub_le_sub_right (Real.sqrt_le_sqrt <| Real.log_le_log (by linarith) (by linarith)) _);
    · exact sub_le_sub_right ( Real.sqrt_le_sqrt <| Real.log_le_log ( by linarith ) <| by linarith ) _;
  refine le_trans h_integral_mul ?_;
  convert mul_le_mul_of_nonneg_right ( mul_le_mul ( mul_le_mul_of_nonneg_left h_m_simplify zero_le_two ) h_dawson_mono ( ?_ ) ( ?_ ) ) ( show 0 ≤ admissible_bound A B C R x from ?_ ) using 1 <;> ring_nf;
  · apply_rules [ dawson_nonneg ];
    ring_nf at *; linarith [ Real.sqrt_le_sqrt ( show Real.log x₀ ≤ Real.log x by exact Real.log_le_log ( by linarith ) ( by linarith ) ) ] ;
  · positivity;
  · exact mul_nonneg ( mul_nonneg hA.le ( Real.rpow_nonneg ( div_nonneg ( Real.log_nonneg ( by linarith ) ) hR.le ) _ ) ) ( Real.exp_nonneg _ )

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean#L2231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b782c60ba436204bfe0cbe2f3e10cf9ae3c50f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
