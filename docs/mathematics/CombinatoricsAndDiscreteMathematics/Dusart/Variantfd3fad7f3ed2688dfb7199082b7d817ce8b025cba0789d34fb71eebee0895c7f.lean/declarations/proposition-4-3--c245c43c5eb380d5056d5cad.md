# proposition_4_3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4d176ef04c86581c0693188cbf24d0c2c3308ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd3fad7f3ed2688dfb7199082b7d817ce8b025cba0789d34fb71eebee0895c7f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b176dab4-413e-0f3f-7520-a189acb2341e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02808a9d-5a3e-ed51-90c8-21e28f593a58",
  "kind": "theorem",
  "lexical_name": "proposition_4_3",
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
  "slug": "proposition-4-3--c245c43c5eb380d5056d5cad",
  "source": {
    "blob": "b4d176ef04c86581c0693188cbf24d0c2c3308ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 183,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dusart/Variantfd3fad7f3ed2688dfb7199082b7d817ce8b025cba0789d34fb71eebee0895c7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c245c43c5eb380d5056d5cad0a3c9233c0229877a52e3a320df56d1464a48e3a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Dusart/Variantfd3fad7f3ed2688dfb7199082b7d817ce8b025cba0789d34fb71eebee0895c7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02808a9d-5a3e-ed51-90c8-21e28f593a58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem proposition_4_3 {x : ℝ} (hx : x ≥ 121) :
  ψ x - θ x ≥ 1 - (4 * Real.log 2) / (log x) * sqrt x ∧
  ψ x - θ x ≥ sqrt (log x ^ 3 / x) * θ (x ^ (1 / 2 : ℝ)) := by
  have hx_pos : 0 < x := by linarith
  have hx_nonneg : 0 ≤ x := by linarith
  have hlog_pos : 0 < log x := Real.log_pos (by linarith)
  have hsqrt_pos : 0 < sqrt x := Real.sqrt_pos.mpr hx_pos
  have hpsi_theta_nn : ψ x - θ x ≥ 0 := by linarith [theta_le_psi x]
  -- Key: ψ x - θ x ≥ θ (x^(1/2))
  have hpsi_sub : ψ x - θ x ≥ θ (x ^ ((1:ℝ) / 2)) := by
    have hx2 : (2 : ℝ) ≤ x := by linarith
    have h := psi_eq_theta_add_sum_theta hx2
    linarith [Finset.single_le_sum (f := fun (n : ℕ) => θ (x ^ ((1:ℝ) / ↑n)))
      (fun (i : ℕ) _ => theta_nonneg (x ^ ((1:ℝ) / ↑i)))
      (show (2 : ℕ) ∈ Finset.Icc 2 ⌊log x / Real.log 2⌋₊ from by
        simp only [Finset.mem_Icc, le_refl, true_and]
        apply Nat.le_floor; rw [Nat.cast_ofNat]
        have hlog2_pos : (0 : ℝ) < Real.log 2 := by positivity
        rw [le_div_iff₀ hlog2_pos]
        nlinarith [Real.log_le_log (by positivity : (0:ℝ) < 4) (show (4:ℝ) ≤ x by linarith),
                   show Real.log (4:ℝ) = 2 * Real.log 2 from by
                     rw [show (4:ℝ) = 2^2 from by norm_num, Real.log_pow]; ring])]
  -- (log x)^3 ≤ x for x ≥ 121 (via interval bootstrapping)
  have hlog_cube : (log x) ^ 3 ≤ x := by
    -- Helper: in [a,b] with (log b)^3 ≤ a and a ≥ 1, deduce (log x)^3 ≤ x
    have hlci : ∀ (a b : ℝ), 1 ≤ a → (Real.log b) ^ 3 ≤ a → a ≤ x → x ≤ b → (log x) ^ 3 ≤ x :=
      fun a b ha hlog hxa hxb =>
        calc (log x) ^ 3 ≤ (log b) ^ 3 :=
              pow_le_pow_left₀ (Real.log_nonneg (by linarith)) (Real.log_le_log (by linarith) hxb) 3
          _ ≤ a := hlog
          _ ≤ x := hxa
    -- Macro for the interval_auto step: prove (Real.log c)^3 ≤ d
    have hpow3 : ∀ (c d : ℝ), Real.log c * (Real.log c * Real.log c) ≤ d →
        (Real.log c) ^ 3 ≤ d := fun c d h => by nlinarith [show (Real.log c)^3 = Real.log c * (Real.log c * Real.log c) from by ring]
    by_cases! h1 : x ≤ 130
    · exact hlci 121 130 (by norm_num) (hpow3 130 121 (by linarith [show Real.log 130 * (Real.log 130 * Real.log 130) < 121 from by interval_auto])) hx h1
    · by_cases! h2 : x ≤ 155
      · exact hlci 130 155 (by norm_num) (hpow3 155 130 (by linarith [show Real.log 155 * (Real.log 155 * Real.log 155) < 130 from by interval_auto])) h1.le h2
      · by_cases! h3 : x ≤ 200
        · exact hlci 155 200 (by norm_num) (hpow3 200 155 (by linarith [show Real.log 200 * (Real.log 200 * Real.log 200) < 155 from by interval_auto])) h2.le h3
        · by_cases! h4 : x ≤ 300
          · exact hlci 200 300 (by norm_num) (hpow3 300 200 (by linarith [show Real.log 300 * (Real.log 300 * Real.log 300) < 200 from by interval_auto])) h3.le h4
          · by_cases! h5 : x ≤ 550
            · exact hlci 300 550 (by norm_num) (hpow3 550 300 (by linarith [show Real.log 550 * (Real.log 550 * Real.log 550) < 300 from by interval_auto])) h4.le h5
            · by_cases! h6 : x ≤ 1500
              · exact hlci 550 1500 (by norm_num) (hpow3 1500 550 (by linarith [show Real.log 1500 * (Real.log 1500 * Real.log 1500) < 550 from by interval_auto])) h5.le h6
              · by_cases! h7 : x ≤ 10000
                · exact hlci 1500 10000 (by norm_num) (hpow3 10000 1500 (by linarith [show Real.log 10000 * (Real.log 10000 * Real.log 10000) < 1500 from by interval_auto])) h6.le h7
                · by_cases! h8 : x ≤ (10:ℝ)^8
                  · exact hlci 10000 ((10:ℝ)^8) (by norm_num) (hpow3 ((10:ℝ)^8) 10000 (by linarith [show Real.log ((10:ℝ)^8) * (Real.log ((10:ℝ)^8) * Real.log ((10:ℝ)^8)) < 10000 from by interval_auto])) h7.le h8
                  · by_cases! h9 : x ≤ 3 * (10:ℝ)^10
                    · exact hlci ((10:ℝ)^8) (3 * (10:ℝ)^10) (by norm_num) (hpow3 (3 * (10:ℝ)^10) ((10:ℝ)^8) (by linarith [show Real.log (3 * (10:ℝ)^10) * (Real.log (3 * (10:ℝ)^10) * Real.log (3 * (10:ℝ)^10)) < (10:ℝ)^8 from by interval_auto])) h8.le h9
                    · -- Tail: x ≥ 3*10^10, so log x ≥ 24, use exp(t) ≥ t^4/24 ≥ t^3
                      have hlog_nn : 0 ≤ log x := hlog_pos.le
                      have hlog_ge : 24 ≤ log x := le_of_lt (lt_of_lt_of_le
                        (show (24:ℝ) < Real.log (3 * (10:ℝ)^10) by interval_auto)
                        (Real.log_le_log (by positivity) h9.le))
                      calc (log x) ^ 3 ≤ (log x) ^ 4 / 24 := by nlinarith [pow_nonneg hlog_nn 3]
                        _ ≤ Real.exp (log x) := by
                            have h := Real.sum_le_exp_of_nonneg hlog_nn 5
                            simp [Finset.sum_range_succ, Nat.factorial] at h
                            nlinarith [pow_nonneg hlog_nn 2, pow_nonneg hlog_nn 3]
                        _ = x := Real.exp_log hx_pos
  constructor
  · -- First bound: ψ x - θ x ≥ 1 - (4 * log 2) / (log x) * sqrt x
    -- The RHS is ≤ 0 since 4 log 2 * √x / log x ≥ 1, and ψ - θ ≥ 0.
    suffices h : 1 - (4 * Real.log 2) / (log x) * sqrt x ≤ 0 by linarith
    rw [sub_nonpos, div_mul_eq_mul_div, le_div_iff₀ hlog_pos]
    -- Need: log x ≤ 4 * log 2 * √x
    have hlog_le : log x ≤ 2 * sqrt x := by
      have h := Real.log_le_rpow_div hx_nonneg (show (0:ℝ) < 1/2 by norm_num)
      rw [← sqrt_eq_rpow] at h; linarith
    have h2 : (2 : ℝ) ≤ 4 * Real.log 2 := by
      have : (1 : ℝ) < 2 * Real.log 2 := by
        have : (1 : ℝ) < Real.log 4 := by
          rw [show (1:ℝ) = Real.log (Real.exp 1) from (Real.log_exp 1).symm]
          exact Real.log_lt_log (Real.exp_pos 1) (lt_trans Real.exp_one_lt_three (by norm_num))
        linarith [show Real.log (4:ℝ) = 2 * Real.log 2 from by
          rw [show (4:ℝ) = 2^2 from by norm_num, Real.log_pow]; ring]
      linarith
    nlinarith [mul_le_mul_of_nonneg_right h2 hsqrt_pos.le]
  · -- Second bound: ψ x - θ x ≥ sqrt (log³x / x) * θ (x^(1/2))
    -- Since √(log³x/x) ≤ 1 and θ(x^(1/2)) ≥ 0, and ψ-θ ≥ θ(x^(1/2)).
    have htheta_nn : 0 ≤ θ (x ^ ((1:ℝ) / 2)) := theta_nonneg _
    have hsqrt_le : sqrt (log x ^ 3 / x) ≤ 1 :=
      Real.sqrt_le_one.mpr (div_le_one_of_le₀ hlog_cube hx_pos.le)
    nlinarith [mul_le_mul_of_nonneg_right hsqrt_le htheta_nn]

@[blueprint "Dusart_prop_4_4"
  (title := "Dusart Proposition 4.4")
  (statement := /--
  For $x > 0$, we have
  \[
  \psi(x) - \vartheta(x) - \vartheta(\sqrt{x}) < 1.777745 x^{1/3}.
  \]
  -/)
  (latexEnv := "proposition")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Dusart/Variantfd3fad7f3ed2688dfb7199082b7d817ce8b025cba0789d34fb71eebee0895c7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Dusart/Variantfd3fad7f3ed2688dfb7199082b7d817ce8b025cba0789d34fb71eebee0895c7f.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4d176ef04c86581c0693188cbf24d0c2c3308ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
