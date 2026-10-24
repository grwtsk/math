# tendsto_linear_div_sinh_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 5616,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74471923-8a9b-b20d-b966-9373ffef85f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f1d7cbc0-eeeb-b96e-af97-f274486bf217",
  "kind": "lemma",
  "lexical_name": "tendsto_linear_div_sinh_sq",
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
  "slug": "tendsto-linear-div-sinh-sq--413c071dc9d64157a5bc20b0",
  "source": {
    "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5671,
    "line": 5616,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:413c071dc9d64157a5bc20b0593dcfccfc51006e1df2c46bd678553ec9036744",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1d7cbc0-eeeb-b96e-af97-f274486bf217`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5616–5671.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma tendsto_linear_div_sinh_sq (c : ℝ) :
    Filter.Tendsto (fun x : ℝ ↦ (x + c) / Real.sinh x ^ 2) Filter.atTop (nhds 0) := by
  rw [tendsto_zero_iff_norm_tendsto_zero]
  have h_lim_upper : Filter.Tendsto (fun (x : ℝ) ↦ (x + c) * (16 / rexp (2 * x))) Filter.atTop (nhds 0) := by
    refine Filter.Tendsto.congr' (f₁ := fun x ↦ 16 * (x * rexp (-2 * x)) + 16 * c * rexp (-2 * x)) ?_ ?_
    · filter_upwards with x; field_simp [Real.exp_pos (2 * x)]; ring_nf; simp only [Real.exp_neg]; field_simp
    · have h1 : Filter.Tendsto (fun x ↦ 16 * (x * rexp (-2 * x))) Filter.atTop (nhds 0) := by
        have h_lim := Real.tendsto_pow_mul_exp_neg_atTop_nhds_zero 1
        simp only [pow_one] at h_lim
        have h_comp := h_lim.comp (Filter.tendsto_id.const_mul_atTop (by norm_num : (0 : ℝ) < 2))
        convert h_comp.const_mul (8 : ℝ) using 1
        · ext x; simp; ring
        · simp
      have h2 : Filter.Tendsto (fun x ↦ 16 * c * rexp (-2 * x)) Filter.atTop (nhds 0) := by
        have h_lim := Real.tendsto_exp_neg_atTop_nhds_zero
        have h_comp := h_lim.comp (Filter.tendsto_id.const_mul_atTop (by norm_num : (0 : ℝ) < 2))
        convert h_comp.const_mul (16 * c) using 1
        · ext x; simp
        · simp
      convert Filter.Tendsto.add h1 h2; simp
  refine Filter.Tendsto.squeeze' (h := fun (x : ℝ) ↦ (x + c) * (16 / rexp (2 * x))) tendsto_const_nhds h_lim_upper ?_ ?_
  · filter_upwards with x; apply norm_nonneg
  · filter_upwards [Filter.eventually_ge_atTop 1, Filter.eventually_ge_atTop (max 0 (-c))] with x hx hxc
    have h_pos_num : 0 ≤ x + c := by
      have : -c ≤ max 0 (-c) := le_max_right 0 (-c)
      linarith
    have h_sinh_pos' : 0 < Real.sinh x := Real.sinh_pos_iff.mpr (by linarith)
    have h_nonneg : 0 ≤ (x + c) / Real.sinh x ^ 2 := div_nonneg h_pos_num (sq_nonneg _)
    rw [Real.norm_eq_abs, abs_of_nonneg h_nonneg, Real.sinh_eq]
    apply mul_le_mul_of_nonneg_left _ h_pos_num
    have h_sinh_pos_sq : 0 < (rexp x - rexp (-x)) ^ 2 := by
      apply pow_pos; rw [sub_pos, Real.exp_lt_exp]; linarith [hx]
    field_simp [Real.exp_pos x]
    apply (div_le_iff₀ h_sinh_pos_sq).mpr
    have h_exp_sq : rexp (x * 2) = (rexp x) ^ 2 := by
      rw [Real.exp_mul, Real.rpow_two, sq]
    rw [h_exp_sq]
    have h_16 : (16 : ℝ) = 4 ^ 2 := by norm_num
    rw [h_16, ← mul_pow, ← mul_pow]
    apply pow_le_pow_left₀ (by positivity)
    rw [mul_sub]
    have h_exp_2x : 2 ≤ rexp (2 * x) := by
      apply (Real.exp_log (by norm_num : 0 < (2 : ℝ))).symm.le.trans
      apply Real.exp_le_exp.mpr
      calc
        Real.log 2 ≤ (1 : ℝ) := by
          rw [Real.log_le_iff_le_exp (by norm_num)]
          linarith [Real.add_one_le_exp 1]
        _ ≤ 2 := by norm_num
        _ = 2 * 1 := by norm_num
        _ ≤ 2 * x := by gcongr
    replace h_exp_2x : 2 ≤ rexp x / rexp (-x) := by
      rwa [← Real.exp_sub, sub_neg_eq_add, ← two_mul]
    field_simp [Real.exp_pos x] at h_exp_2x ⊢
    linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean#L5616).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef2608fe2b2171a00303ea2d042ad23b0efe93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
