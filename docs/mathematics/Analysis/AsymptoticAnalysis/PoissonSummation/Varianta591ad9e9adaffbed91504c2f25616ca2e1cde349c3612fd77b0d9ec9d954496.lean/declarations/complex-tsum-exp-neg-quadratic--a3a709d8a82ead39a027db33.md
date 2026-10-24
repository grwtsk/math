# Complex.tsum_exp_neg_quadratic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83a248e8ac8228e59429f41d51b72a9b373575dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a591ad9e9adaffbed91504c2f25616ca2e1cde349c3612fd77b0d9ec9d954496.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5323e5c-dd86-d055-dfe7-e52a1121b918",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d560b10d-cbd6-f248-a095-16327b867f2c",
  "kind": "theorem",
  "lexical_name": "Complex.tsum_exp_neg_quadratic",
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
  "slug": "complex-tsum-exp-neg-quadratic--a3a709d8a82ead39a027db33",
  "source": {
    "blob": "83a248e8ac8228e59429f41d51b72a9b373575dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 84,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Varianta591ad9e9adaffbed91504c2f25616ca2e1cde349c3612fd77b0d9ec9d954496.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3a709d8a82ead39a027db33e90a7f4ae14ab190ff4636eec860ef9be2d854e0",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PoissonSummation/Varianta591ad9e9adaffbed91504c2f25616ca2e1cde349c3612fd77b0d9ec9d954496.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d560b10d-cbd6-f248-a095-16327b867f2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Complex.tsum_exp_neg_quadratic {a : ℂ} (ha : 0 < a.re) (b : ℂ) :
    (∑' n : ℤ, cexp (-π * a * n ^ 2 + 2 * π * b * n)) =
      1 / a ^ (1 / 2 : ℂ) * ∑' n : ℤ, cexp (-π / a * (n + I * b) ^ 2) := by
  let f : ℝ → ℂ := fun x ↦ cexp (-π * a * x ^ 2 + 2 * π * b * x)
  have hCf : Continuous f := by
    refine Complex.continuous_exp.comp (Continuous.add ?_ ?_)
    · exact continuous_const.mul (Complex.continuous_ofReal.pow 2)
    · exact continuous_const.mul Complex.continuous_ofReal
  have hFf : 𝓕 f = fun x : ℝ ↦ 1 / a ^ (1 / 2 : ℂ) * cexp (-π / a * (x + I * b) ^ 2) :=
    fourierIntegral_gaussian_pi' ha b
  have h1 : 0 < (↑π * a).re := by
    rw [re_ofReal_mul]
    exact mul_pos pi_pos ha
  have h2 : 0 < (↑π / a).re := by
    rw [div_eq_mul_inv, re_ofReal_mul, inv_re]
    refine mul_pos pi_pos (div_pos ha <| normSq_pos.mpr ?_)
    contrapose! ha
    rw [ha, zero_re]
  have f_bd : f =O[cocompact ℝ] (fun x => |x| ^ (-2 : ℝ)) := by
    convert (cexp_neg_quadratic_isLittleO_abs_rpow_cocompact ?_ _ (-2)).isBigO
    rwa [neg_mul, neg_re, neg_lt_zero]
  have Ff_bd : (𝓕 f) =O[cocompact ℝ] (fun x => |x| ^ (-2 : ℝ)) := by
    rw [hFf]
    have : ∀ (x : ℝ), -↑π / a * (↑x + I * b) ^ 2 =
        -↑π / a * x ^ 2 + (-2 * π * I * b) / a * x + π * b ^ 2 / a := by
      intro x; ring_nf; rw [I_sq]; ring
    simp_rw [this]
    conv => enter [2, x]; rw [Complex.exp_add, ← mul_assoc _ _ (Complex.exp _), mul_comm]
    refine ((cexp_neg_quadratic_isLittleO_abs_rpow_cocompact
      (?_) (-2 * ↑π * I * b / a) (-2)).isBigO.const_mul_left _).const_mul_left _
    rwa [neg_div, neg_re, neg_lt_zero]
  convert Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay hCf one_lt_two f_bd Ff_bd 0 using 1
  · simp only [f, zero_add, ofReal_intCast]
  · rw [← tsum_mul_left]
    simp only [QuotientAddGroup.mk_zero, fourier_eval_zero, mul_one, hFf, ofReal_intCast]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PoissonSummation/Varianta591ad9e9adaffbed91504c2f25616ca2e1cde349c3612fd77b0d9ec9d954496.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Varianta591ad9e9adaffbed91504c2f25616ca2e1cde349c3612fd77b0d9ec9d954496.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83a248e8ac8228e59429f41d51b72a9b373575dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
