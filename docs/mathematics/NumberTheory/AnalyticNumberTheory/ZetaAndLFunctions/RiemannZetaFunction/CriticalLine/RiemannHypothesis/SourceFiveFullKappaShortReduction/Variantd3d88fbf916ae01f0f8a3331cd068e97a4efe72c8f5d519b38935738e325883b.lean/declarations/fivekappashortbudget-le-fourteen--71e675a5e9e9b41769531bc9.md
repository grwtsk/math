# fiveKappaShortBudget_le_fourteen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bb2dbee-a87e-bf2d-aa28-489718956551",
  "kind": "theorem",
  "lexical_name": "fiveKappaShortBudget_le_fourteen",
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
  "slug": "fivekappashortbudget-le-fourteen--71e675a5e9e9b41769531bc9",
  "source": {
    "blob": "51fdf0d9854e2c7b125f986a4e82490246509b6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 197,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiveFullKappaShortReduction/Variantd3d88fbf916ae01f0f8a3331cd068e97a4efe72c8f5d519b38935738e325883b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71e675a5e9e9b41769531bc9ba82b77d447f7362359ffee72520c6495c1b5bf5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiveFullKappaShortReduction/Variantd3d88fbf916ae01f0f8a3331cd068e97a4efe72c8f5d519b38935738e325883b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bb2dbee-a87e-bf2d-aa28-489718956551`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fiveKappaShortBudget_le_fourteen {A : ℝ} (hA : 25600 ≤ A) :
    fiveKappaShortBudget A ≤ 14 := by
  have hp : 0 < A := by linarith
  have hA1 : 1 ≤ A := by linarith
  let T := Real.log (vaughanCutoff A : ℝ)
  let S := Real.sqrt A
  have hs0 : 0 < S := Real.sqrt_pos.2 hp
  have hs160 : 160 ≤ S := by
    apply Real.le_sqrt_of_sq_le
    norm_num
    exact hA
  have hss : S ^ 2 = A := Real.sq_sqrt hp.le
  have ht0 : 0 ≤ T := Real.log_nonneg (actual_cutoff_order A hA1).1
  have ht2 : T ^ 2 ≤ 64 * S :=
    RH16IndependentChallengeNext.actualCutoff_log_sq_le_sqrt hA1
  have htA : T ^ 2 ≤ A := (actual_cutoff_logs_le_scale hA).1
  have hTS : T ≤ S := by nlinarith
  have hSA : S ≤ A := by nlinarith
  have hK := RH16IndependentChallengeNext.actualFullPositiveKappa_four_abs_bounds
  have h1 : 2160 / S ≤ (27 / 2 : ℝ) := by
    apply (div_le_iff₀ hs0).2
    linarith
  have h2 : 720 / A ≤ (1 / 8 : ℝ) := by
    apply (div_le_iff₀ hp).2
    linarith
  have h3 : 25728 * S / A ^ 3 ≤ (1 / 8 : ℝ) := by
    have hA2 : (205824 : ℝ) ≤ A ^ 2 := by nlinarith
    have hm : 205824 * S ≤ A ^ 3 := calc
      _ ≤ 205824 * A := mul_le_mul_of_nonneg_left hSA (by norm_num)
      _ ≤ A ^ 2 * A := mul_le_mul_of_nonneg_right hA2 hp.le
      _ = _ := by ring
    apply (div_le_iff₀ (by positivity : 0 < A ^ 3)).2
    linarith
  rw [fiveKappaShortBudget_eq hp]
  calc
    _ ≤ (30 * T ^ 2 + 240 * T + 720) / A + 25728 * T / A ^ 3 := by
      change (5 * |fullPositiveKappa 1| * T ^ 2 + 10 * |fullPositiveKappa 2| * T +
        5 * |fullPositiveKappa 3|) / A + (67 / 3 : ℝ) * |fullPositiveKappa 4| * T / A ^ 3 ≤ _
      apply add_le_add
      · apply div_le_div_of_nonneg_right _ hp.le
        nlinarith [mul_le_mul_of_nonneg_right hK.1 (sq_nonneg T),
          mul_le_mul_of_nonneg_right hK.2.1 ht0]
      · apply div_le_div_of_nonneg_right _ (by positivity : 0 ≤ A ^ 3)
        nlinarith [mul_le_mul_of_nonneg_right hK.2.2.2 ht0]
    _ ≤ (1920 * S + 240 * S + 720) / A + 25728 * S / A ^ 3 := by
      apply add_le_add
      · apply div_le_div_of_nonneg_right _ hp.le
        nlinarith
      · exact div_le_div_of_nonneg_right
          (mul_le_mul_of_nonneg_left hTS (by norm_num)) (by positivity)
    _ = 2160 / S + 720 / A + 25728 * S / A ^ 3 := by
      have he : 2160 * S / A = 2160 / S := by
        apply (div_eq_div_iff hp.ne' hs0.ne').2
        nlinarith [hss]
      rw [add_div, add_div, ← add_div, show 1920 * S + 240 * S = 2160 * S by ring, he]
    _ ≤ 14 := by linarith


/-- The original complete corrected source keeps its separate genuine head and tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiveFullKappaShortReduction/Variantd3d88fbf916ae01f0f8a3331cd068e97a4efe72c8f5d519b38935738e325883b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiveFullKappaShortReduction/Variantd3d88fbf916ae01f0f8a3331cd068e97a4efe72c8f5d519b38935738e325883b.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51fdf0d9854e2c7b125f986a4e82490246509b6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
