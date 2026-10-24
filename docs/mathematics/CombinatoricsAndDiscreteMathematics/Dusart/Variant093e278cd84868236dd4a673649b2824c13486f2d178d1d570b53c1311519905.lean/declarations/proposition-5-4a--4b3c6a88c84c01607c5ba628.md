# proposition_5_4a

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d9d720f-c3d3-2c68-4dc6-707d1200a594",
  "kind": "theorem",
  "lexical_name": "proposition_5_4a",
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
  "slug": "proposition-5-4a--4b3c6a88c84c01607c5ba628",
  "source": {
    "blob": "7ebe65bc6274dee5409981605bdc80f837fc7a8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 437,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dusart/Variant093e278cd84868236dd4a673649b2824c13486f2d178d1d570b53c1311519905.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b3c6a88c84c01607c5ba6285f1bb4631604233905bcf60a6b47289d9a363d44",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Dusart/Variant093e278cd84868236dd4a673649b2824c13486f2d178d1d570b53c1311519905.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d9d720f-c3d3-2c68-4dc6-707d1200a594`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem proposition_5_4a : HasPrimeInInterval.log_thm 4e18 3 := by
  intro x hx
  have hx_pos : 0 < x := by linarith
  have hlog_pos : 0 < log x := Real.log_pos (by linarith)
  have hpow_pos : 0 < (log x) ^ 3 := by positivity
  -- Use BKLNW Table_15 row (29, M₂₉) which gives θ bounds with M 2 = 2.4334e-2.
  -- This row applies for x ≥ exp 29, satisfied for x ≥ 4e18.
  set M₂₉ : Fin 5 → ℝ := ![2.7336e-5, 7.9272e-4, 2.4334e-2, 5.7184e1, 1.3441e5]
  have htab : ((29 : ℝ), M₂₉) ∈ BKLNW.Table_15 := by
    simp [BKLNW.Table_15, M₂₉]
  have hM : M₂₉ ⟨2, by norm_num⟩ = 2.4334e-2 := rfl
  have hfin_val : (⟨2, by norm_num⟩ : Fin 5).val + 1 = 3 := rfl
  have hx_ge_exp29 : x ≥ exp (29 : ℝ) := by
    have : exp (29 : ℝ) ≤ (4e18 : ℝ) := by interval_decide
    linarith
  obtain ⟨hlb_x, hub_x⟩ :=
    BKLNW.thm_1b_table (by norm_num : (29 : ℝ) > 0) htab ⟨2, by norm_num⟩ hx_ge_exp29
  rw [hM, hfin_val] at hlb_x hub_x
  -- Derive Eθ x ≤ 2.4334e-2 / (log x)^3 from the θ bounds
  have hEθ_x : Eθ x ≤ 2.4334e-2 / (log x) ^ 3 := by
    unfold Eθ
    rw [div_le_div_iff₀ hx_pos hpow_pos]
    have h1 : θ x - x ≤ 2.4334e-2 / (log x) ^ 3 * x := by nlinarith
    have h2 : x - θ x ≤ 2.4334e-2 / (log x) ^ 3 * x := by nlinarith
    calc |θ x - x| * (log x) ^ 3
        ≤ 2.4334e-2 / (log x) ^ 3 * x * (log x) ^ 3 := by
            apply mul_le_mul_of_nonneg_right _ (le_of_lt hpow_pos)
            rw [abs_le]; exact ⟨by linarith, h1⟩
        _ = 2.4334e-2 * x := by field_simp [hpow_pos.ne']
  set h := x / (log x) ^ 3 with hh_def
  have hh_pos : 0 < h := by positivity
  obtain ⟨hlb_xh, hub_xh⟩ :=
    BKLNW.thm_1b_table (by norm_num : (29 : ℝ) > 0) htab ⟨2, by norm_num⟩
      (show x + h ≥ exp (29 : ℝ) by linarith)
  rw [hM, hfin_val] at hlb_xh hub_xh
  have hEθ_xh : Eθ (x + h) ≤ 2.4334e-2 / (log x) ^ 3 := by
    have hxh_pos : 0 < x + h := by linarith
    have hlog_le : log x ≤ log (x + h) :=
      Real.log_le_log hx_pos (by linarith)
    have hpow_le : (log x) ^ 3 ≤ (log (x + h)) ^ 3 :=
      pow_le_pow_left₀ hlog_pos.le hlog_le 3
    have hlog_xh_pos : 0 < log (x + h) := Real.log_pos (by linarith)
    have hpow_xh_pos : 0 < (log (x + h)) ^ 3 := pow_pos hlog_xh_pos 3
    have h1 : θ (x + h) - (x + h) ≤ 2.4334e-2 / (log (x + h)) ^ 3 * (x + h) := by nlinarith
    have h2 : (x + h) - θ (x + h) ≤ 2.4334e-2 / (log (x + h)) ^ 3 * (x + h) := by nlinarith
    have hEθ_xh_tight : Eθ (x + h) ≤ 2.4334e-2 / (log (x + h)) ^ 3 := by
      unfold Eθ
      rw [div_le_div_iff₀ hxh_pos hpow_xh_pos]
      calc |θ (x + h) - (x + h)| * (log (x + h)) ^ 3
          ≤ 2.4334e-2 / (log (x + h)) ^ 3 * (x + h) * (log (x + h)) ^ 3 := by
              apply mul_le_mul_of_nonneg_right _ (le_of_lt hpow_xh_pos)
              rw [abs_le]; exact ⟨by linarith, h1⟩
          _ = 2.4334e-2 * (x + h) := by field_simp [hpow_xh_pos.ne']
    exact hEθ_xh_tight.trans (div_le_div_of_nonneg_left (by norm_num) hpow_pos hpow_le)
  have hmain : x * Eθ x + (x + h) * Eθ (x + h) ≤ (2 * x + h) * (2.4334e-2 / (log x) ^ 3) := by
    nlinarith [mul_le_mul_of_nonneg_left hEθ_x hx_pos.le,
               mul_le_mul_of_nonneg_left hEθ_xh (by linarith : (0:ℝ) ≤ x + h)]
  have hlog_gt10 : (10 : ℝ) < log x :=
    (lt_log_iff_exp_lt hx_pos).mpr (lt_of_lt_of_le (by interval_decide) hx)
  have hlog3_gt : (249.5 : ℝ) < (log x) ^ 3 := by
    have : (log x) ^ 3 = log x * log x * log x := by ring
    nlinarith
  have hcoeff : (2 * x + h) * (2.4334e-2 / (log x) ^ 3) < h := by
    have : (2 * x + h) * (2.4334e-2 / (log x) ^ 3) =
        h * (2.4334e-2 * (2 + 1 / (log x) ^ 3)) := by
      simp only [hh_def]; field_simp [hpow_pos.ne']
    rw [this]
    have hlt : 2.4334e-2 * (2 + 1 / (log x) ^ 3) < 1 := by
      have : 1 / (log x) ^ 3 < 1 / 249.5 :=
        one_div_lt_one_div_of_lt (by norm_num) hlog3_gt
      nlinarith
    linarith [mul_lt_mul_of_pos_left hlt hh_pos]
  simpa [h] using Eθ.hasPrimeInInterval x h hx_pos hh_pos (lt_of_le_of_lt hmain hcoeff)

@[blueprint "Dusart_prop_5_4b"
  (title := "Dusart Proposition 5.4, substep 2")
  (statement := /--
  For $360653 < x < 4 \times 10^{18}$, there exists a prime $p$ with
  \[
  x < p \le x\Bigl(1 + \frac{1}{\log^3 x}\Bigr).
  \]
  -/)
  (proof := /-- Use Lemma \ref{prime-gap-record-interval} and Proposition \ref{table-8-prime-gap}.  -/)
  (latexEnv := "sublemma")
  (discussion := 911)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Dusart/Variant093e278cd84868236dd4a673649b2824c13486f2d178d1d570b53c1311519905.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Dusart/Variant093e278cd84868236dd4a673649b2824c13486f2d178d1d570b53c1311519905.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ebe65bc6274dee5409981605bdc80f837fc7a8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
