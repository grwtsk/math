# integral_term_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdccd0a48781b270841d4381607ac6c992b7e0df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:383b1ebe-e0f7-ef6c-88f1-a401cdd75163",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef5e1059-3b44-9724-4fac-e89ce639f01c",
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
  "slug": "integral-term-bound--d4fb135cb75921fe00d4291a",
  "source": {
    "blob": "bdccd0a48781b270841d4381607ac6c992b7e0df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2275,
    "line": 2223,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4fb135cb75921fe00d4291ae0de15a5f640e2159e36573d345272d1051cd357",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef5e1059-3b44-9724-4fac-e89ce639f01c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2223–2275.

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

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean#L2223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdccd0a48781b270841d4381607ac6c992b7e0df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
