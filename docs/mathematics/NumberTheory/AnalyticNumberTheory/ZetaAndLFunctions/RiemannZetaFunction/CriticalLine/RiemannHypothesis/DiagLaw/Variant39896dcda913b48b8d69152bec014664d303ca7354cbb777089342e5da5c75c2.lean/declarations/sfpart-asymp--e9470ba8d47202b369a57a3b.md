# sfPart_asymp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a1ead751faa8933ff3be87e4e7713190b476296",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 296,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac51a4aa-890d-74cf-19b4-7a09fa11cab5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dea22099-df51-de91-d1f5-0b0fea6f9aa9",
  "kind": "theorem",
  "lexical_name": "sfPart_asymp",
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
  "slug": "sfpart-asymp--e9470ba8d47202b369a57a3b",
  "source": {
    "blob": "5a1ead751faa8933ff3be87e4e7713190b476296",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 296,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9470ba8d47202b369a57a3bae1ae5006f74721b91be41601046fc2fe669559f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dea22099-df51-de91-d1f5-0b0fea6f9aa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sfPart_asymp (k : ℕ) (hk : 2 ≤ k) :
    ∃ C : ℝ, ∀ (l : ℝ), 2 ≤ l → ∀ (Λs : ℂ), Λs.re = l / 2 → |Λs.im| ≤ 1 →
      ∀ y : ℝ, 0 ≤ y → y ≤ l →
        |sfPart Λs k y - l ^ 2 * (dcoef k * (y / l) ^ (2 * k + 2))| ≤ C * (1 + l) := by
  obtain ⟨CW, hW⟩ := Wk_asymp k (by omega)
  obtain ⟨CN, hCN0, hCN⟩ := Nsf_le_poly k (by omega)
  obtain ⟨j, rfl⟩ : ∃ j, k = j + 2 := ⟨k - 2, by omega⟩
  have hj1 : j + 2 - 1 = j + 1 := by omega
  set r : ℝ := (((j + 1).factorial : ℝ) ^ 2) / ((j + 2).factorial : ℝ) with hr
  set mk : ℝ := ((j + 2 : ℕ) : ℝ) / ((((j + 2 : ℕ) : ℝ) + 1) * ((2 * (j + 2)).factorial : ℝ)) with hmk
  have hr0 : 0 ≤ r := by positivity
  have hmk0 : 0 ≤ mk := by positivity
  -- the constant
  refine ⟨(16:ℝ) ^ (j + 2) * r * |CW| + (j + 2) * 4 ^ (j + 3) * r * mk
      + 4 ^ (j + 2) * 2 ^ (j + 1) * r * CN + 1, ?_⟩
  intro l hl Λs hre him y hy hyl
  have hl0 : 0 < l := by linarith
  have hlne : l ≠ 0 := hl0.ne'
  have hl1 : 1 ≤ l := by linarith
  have hΛ0 : Λs ≠ 0 := by
    intro h; rw [h] at hre; simp at hre; linarith
  have hpow := pow_scaling_identity l y hlne (j + 2)
  set a : ℝ := (‖Λs‖ ^ 2)⁻¹ with ha
  set b : ℝ := 4 / l ^ 2 with hb
  have hbl : b * l ^ 2 = 4 := by rw [hb]; field_simp
  have ha0 : 0 ≤ a := by positivity
  have ha4 : a ≤ b := inv_normSq_param_le hl hre him
  have hak : |a ^ (j + 2) - b ^ (j + 2)| ≤ (j + 2 : ℕ) * b ^ (j + 2 + 1) :=
    inv_normSq_pow_param hl hre him (j + 2)
  have h4l : 0 ≤ b := by positivity
  set X := ⌊Real.exp y⌋₊ with hX
  set g : ℕ → ℝ := fun N => (lamLog ^ (j + 2)) N * Real.log N ^ 2 / N with hg
  have hg0 : ∀ N, 0 ≤ g N := fun N => div_nonneg (mul_nonneg (lamLogPow_nonneg _ _) (sq_nonneg _)) (Nat.cast_nonneg N)
  -- step 1: sfPart = a^k r Σ_{layer} g
  have hstep1 : sfPart Λs (j + 2) y
      = a ^ (j + 2) * r * ∑ N ∈ (Ioc 0 X).filter (fun N => Squarefree N ∧ ω N = j + 2), g N := by
    unfold sfPart
    rw [← hX, mul_sum]
    refine sum_congr rfl fun N hN => ?_
    obtain ⟨-, hsf, hω⟩ := mem_filter.mp hN
    rw [norm_sq_xiCoeff_squarefree hsf (by omega) Λs hΛ0, hω, hj1]
    simp only [hg, hr, ha]
    ring
  -- step 2: layer sum = all − off-layer
  have hsplit : ∑ N ∈ (Ioc 0 X).filter (fun N => Squarefree N ∧ ω N = j + 2), g N
      = (∑ N ∈ Ioc 0 X, g N) - ∑ N ∈ (Ioc 0 X).filter (fun N => ¬ (Squarefree N ∧ ω N = j + 2)), g N := by
    rw [eq_sub_iff_add_eq]; exact sum_filter_add_sum_filter_not _ _ _
  set Wv := ∑ N ∈ Ioc 0 X, g N with hWv
  set E := ∑ N ∈ (Ioc 0 X).filter (fun N => ¬ (Squarefree N ∧ ω N = j + 2)), g N with hE
  have hE0 : 0 ≤ E := sum_nonneg fun N _ => hg0 N
  have hEle : E ≤ y ^ (j + 2 + 2) * (CN * (1 + y) ^ (j + 1)) := by
    have h1 := lamLogPow_offlayer_le (j + 2) hy
    rw [← hX] at h1
    have h2 := hCN y hy
    rw [hj1] at h2
    exact h1.trans (mul_le_mul_of_nonneg_left h2 (pow_nonneg hy _))
  have hWmain : |Wv - mk * y ^ (2 * (j + 2) + 2)| ≤ CW * (1 + y) ^ (2 * (j + 2) + 1) := by
    have := hW y hy
    rw [Wk_def, ← hX] at this
    exact this
  -- step 3: the identities  r·mk·4^k = d_k  and  b^k y^{2k+2} = l²·4^k·(y/l)^{2k+2}
  have hcoef : r * mk * 4 ^ (j + 2) = dcoef (j + 2) := by
    simp only [hr, hmk, dcoef]
    rw [hj1]
    have hfac : ((j + 2).factorial : ℝ) = ((j:ℝ) + 2) * ((j + 1).factorial : ℝ) := by
      rw [Nat.factorial_succ (j + 1)]; push_cast; ring
    rw [hfac]
    have hf0 : ((j + 1).factorial : ℝ) ≠ 0 := by positivity
    have hf1 : ((2 * (j + 2)).factorial : ℝ) ≠ 0 := by positivity
    have hj2 : (j:ℝ) + 2 ≠ 0 := by positivity
    have hj3 : (j:ℝ) + 2 + 1 ≠ 0 := by positivity
    push_cast
    field_simp
  have hmain_id : b ^ (j + 2) * r * (mk * y ^ (2 * (j + 2) + 2))
      = l ^ 2 * (dcoef (j + 2) * (y / l) ^ (2 * (j + 2) + 2)) := by
    rw [← hcoef]
    calc b ^ (j + 2) * r * (mk * y ^ (2 * (j + 2) + 2))
        = r * mk * (b ^ (j + 2) * y ^ (2 * (j + 2) + 2)) := by ring
      _ = r * mk * (l ^ 2 * (4 ^ (j + 2) * (y / l) ^ (2 * (j + 2) + 2))) := by rw [hpow]
      _ = _ := by ring
  -- step 4: decomposition of the difference
  have hdecomp : sfPart Λs (j + 2) y - l ^ 2 * (dcoef (j + 2) * (y / l) ^ (2 * (j + 2) + 2))
      = a ^ (j + 2) * r * (Wv - mk * y ^ (2 * (j + 2) + 2))
        + (a ^ (j + 2) - b ^ (j + 2)) * r * (mk * y ^ (2 * (j + 2) + 2))
        - a ^ (j + 2) * r * E := by
    rw [hstep1, hsplit, ← hmain_id]; ring
  rw [hdecomp]
  -- step 5: bound the three terms
  have hy1 : 1 + y ≤ 2 * l := by linarith
  have hy1' : 0 ≤ 1 + y := by linarith
  have hT1 : |a ^ (j + 2) * r * (Wv - mk * y ^ (2 * (j + 2) + 2))| ≤ (16:ℝ) ^ (j + 2) * r * |CW| * (1 + l) := by
    rw [abs_mul, abs_mul, abs_of_nonneg (pow_nonneg ha0 _), abs_of_nonneg hr0]
    have h16 : b ^ (j + 2) * (2 * l) ^ (2 * (j + 2)) = (16:ℝ) ^ (j + 2) := by
      rw [pow_mul, ← mul_pow]
      congr 1
      calc b * (2 * l) ^ 2 = 4 * (b * l ^ 2) := by ring
        _ = 16 := by rw [hbl]; norm_num
    calc a ^ (j + 2) * r * |Wv - mk * y ^ (2 * (j + 2) + 2)|
        ≤ b ^ (j + 2) * r * (CW * (1 + y) ^ (2 * (j + 2) + 1)) :=
          mul_le_mul (mul_le_mul_of_nonneg_right (pow_le_pow_left₀ ha0 ha4 _) hr0) hWmain (abs_nonneg _)
            (mul_nonneg (pow_nonneg h4l _) hr0)
      _ ≤ b ^ (j + 2) * r * (|CW| * ((2 * l) ^ (2 * (j + 2)) * (1 + l))) := by
          refine mul_le_mul_of_nonneg_left ?_ (mul_nonneg (pow_nonneg h4l _) hr0)
          rw [pow_succ]
          exact mul_le_mul (le_abs_self CW) (mul_le_mul (pow_le_pow_left₀ hy1' hy1 _) (by linarith) hy1'
            (pow_nonneg (by linarith) _)) (mul_nonneg (pow_nonneg hy1' _) hy1') (abs_nonneg _)
      _ = (b ^ (j + 2) * (2 * l) ^ (2 * (j + 2))) * r * |CW| * (1 + l) := by ring
      _ = (16:ℝ) ^ (j + 2) * r * |CW| * (1 + l) := by rw [h16]
  have hT2 : |(a ^ (j + 2) - b ^ (j + 2)) * r * (mk * y ^ (2 * (j + 2) + 2))|
      ≤ (j + 2) * 4 ^ (j + 3) * r * mk * (1 + l) := by
    rw [abs_mul, abs_mul, abs_of_nonneg hr0, abs_of_nonneg (mul_nonneg hmk0 (pow_nonneg hy _))]
    have h4 : b ^ (j + 2 + 1) * l ^ (2 * (j + 2) + 2) = (4:ℝ) ^ (j + 3) := by
      rw [show 2 * (j + 2) + 2 = 2 * (j + 2 + 1) by ring, pow_mul, ← mul_pow, hbl]
    calc |a ^ (j + 2) - b ^ (j + 2)| * r * (mk * y ^ (2 * (j + 2) + 2))
        ≤ ((j + 2 : ℕ) * b ^ (j + 2 + 1)) * r * (mk * l ^ (2 * (j + 2) + 2)) :=
          mul_le_mul (mul_le_mul_of_nonneg_right hak hr0)
            (mul_le_mul_of_nonneg_left (pow_le_pow_left₀ hy hyl _) hmk0)
            (mul_nonneg hmk0 (pow_nonneg hy _))
            (mul_nonneg (mul_nonneg (Nat.cast_nonneg _) (pow_nonneg h4l _)) hr0)
      _ = (j + 2 : ℕ) * (b ^ (j + 2 + 1) * l ^ (2 * (j + 2) + 2)) * r * mk := by ring
      _ = (j + 2) * 4 ^ (j + 3) * r * mk := by rw [h4]; push_cast; ring
      _ ≤ (j + 2) * 4 ^ (j + 3) * r * mk * (1 + l) :=
          le_mul_of_one_le_right (by positivity) (by linarith)
  have hT3 : |a ^ (j + 2) * r * E| ≤ 4 ^ (j + 2) * 2 ^ (j + 1) * r * CN * (1 + l) := by
    rw [abs_of_nonneg (mul_nonneg (mul_nonneg (pow_nonneg ha0 _) hr0) hE0)]
    have h42 : b ^ (j + 2) * (l ^ (j + 2 + 2) * (2 * l) ^ (j + 1)) = 4 ^ (j + 2) * 2 ^ (j + 1) * l := by
      have : l ^ (j + 2 + 2) * (2 * l) ^ (j + 1) = 2 ^ (j + 1) * ((l ^ 2) ^ (j + 2) * l) := by
        rw [mul_pow, ← pow_mul]; ring
      rw [this, show (4:ℝ) ^ (j + 2) = (b * l ^ 2) ^ (j + 2) by rw [hbl], mul_pow]
      ring
    calc a ^ (j + 2) * r * E
        ≤ b ^ (j + 2) * r * (y ^ (j + 2 + 2) * (CN * (1 + y) ^ (j + 1))) :=
          mul_le_mul (mul_le_mul_of_nonneg_right (pow_le_pow_left₀ ha0 ha4 _) hr0) hEle hE0
            (mul_nonneg (pow_nonneg h4l _) hr0)
      _ ≤ b ^ (j + 2) * r * (l ^ (j + 2 + 2) * (CN * (2 * l) ^ (j + 1))) := by
          refine mul_le_mul_of_nonneg_left ?_ (mul_nonneg (pow_nonneg h4l _) hr0)
          exact mul_le_mul (pow_le_pow_left₀ hy hyl _) (mul_le_mul_of_nonneg_left
            (pow_le_pow_left₀ hy1' hy1 _) hCN0) (mul_nonneg hCN0 (pow_nonneg hy1' _)) (pow_nonneg hl0.le _)
      _ = (b ^ (j + 2) * (l ^ (j + 2 + 2) * (2 * l) ^ (j + 1))) * r * CN := by ring
      _ = 4 ^ (j + 2) * 2 ^ (j + 1) * r * CN * l := by rw [h42]; ring
      _ ≤ 4 ^ (j + 2) * 2 ^ (j + 1) * r * CN * (1 + l) := by
          refine mul_le_mul_of_nonneg_left (by linarith) (by positivity)
  have hsum3 := add_le_add (add_le_add hT1 hT2) hT3
  calc |a ^ (j + 2) * r * (Wv - mk * y ^ (2 * (j + 2) + 2))
        + (a ^ (j + 2) - b ^ (j + 2)) * r * (mk * y ^ (2 * (j + 2) + 2))
        - a ^ (j + 2) * r * E|
      ≤ |a ^ (j + 2) * r * (Wv - mk * y ^ (2 * (j + 2) + 2))|
        + |(a ^ (j + 2) - b ^ (j + 2)) * r * (mk * y ^ (2 * (j + 2) + 2))|
        + |a ^ (j + 2) * r * E| := abs_sub_le_of_three _ _ _
    _ ≤ (16:ℝ) ^ (j + 2) * r * |CW| * (1 + l) + (j + 2) * 4 ^ (j + 3) * r * mk * (1 + l)
        + 4 ^ (j + 2) * 2 ^ (j + 1) * r * CN * (1 + l) := hsum3
    _ = ((16:ℝ) ^ (j + 2) * r * |CW| + (j + 2) * 4 ^ (j + 3) * r * mk
        + 4 ^ (j + 2) * 2 ^ (j + 1) * r * CN) * (1 + l) := by ring
    _ ≤ _ := by
        refine mul_le_mul_of_nonneg_right (by linarith) (by linarith)

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a1ead751faa8933ff3be87e4e7713190b476296` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
