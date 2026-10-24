# exists_q_primes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be7ad580-f4aa-bd37-fa4f-9554ad6dc223",
  "kind": "theorem",
  "lexical_name": "exists_q_primes",
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
  "slug": "exists-q-primes--a4eafababe0541f5a014bc06",
  "source": {
    "blob": "5cb9afb3bbcc8b6114129c1b549a9f2ad5d98440",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1255,
    "line": 1094,
    "path": "GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4eafababe0541f5a014bc06d4d032bda203dbfdecceb32154d7d69904ba7d00",
  "verification": {
    "reference": "docs/verification/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be7ad580-f4aa-bd37-fa4f-9554ad6dc223`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1094–1255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_q_primes {n : ℕ} (hn : n ≥ X₀ ^ 2) :
    ∃ q : Fin 3 → ℕ, (∀ i, Nat.Prime (q i)) ∧ StrictMono q ∧
      (∀ i : Fin 3, n * (1 + 1 / (log √(n : ℝ)) ^ 3) ^ (-((3 : ℝ) - (i : ℕ))) ≤ q i) ∧
      q 2 < n := by
  let x := √(n : ℝ)
  have hx_pos : 0 < x := (by grind : (0 : ℝ) < X₀).trans_le (hsqrt_ge hn)
  have hlog_pos : 0 < log x := by positivity [hlog hn]
  set ε := 1 / (log x) ^ 3 with hε_def
  have hε_pos : 0 < ε := by positivity
  have h1ε_pos : 0 < 1 + ε := by linarith
  have hn_pos : (0 : ℝ) < n := by positivity
  have hn_eq_x2 : (n : ℝ) = x ^ 2 := (sq_sqrt hn_pos.le).symm
  -- Show that ε is small (ε ≤ 1/11.4³)
  have hε_small : ε ≤ 1 / 11.4 ^ 3 := by
    simp only [hε_def]
    apply div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 1)
    · apply pow_pos; linarith [log_X₀_gt]
    · apply pow_le_pow_left₀ (by linarith : (0 : ℝ) ≤ 11.4) (hlog hn)
  have h1ε3_pos : 0 < (1 + ε) ^ 3 := by positivity
  have h1ε2_pos : 0 < (1 + ε) ^ 2 := by positivity
  have h1ε3_le_2 : (1 + ε) ^ 3 ≤ 2 := by
    have h1 : (1 + ε) ^ 3 ≤ (1 + 1 / 11.4 ^ 3) ^ 3 := by
      apply pow_le_pow_left₀ (by linarith) (by linarith)
    calc (1 + ε) ^ 3 ≤ (1 + 1 / 11.4 ^ 3) ^ 3 := h1
      _ ≤ 2 := by norm_num
  -- Define y_i = n / (1 + ε)^(3-i), and show y_i ≥ X₀
  have hy₀_ge : n / (1 + ε) ^ 3 ≥ X₀ := by
    calc n / (1 + ε) ^ 3 = x ^ 2 / (1 + ε) ^ 3 := by rw [hn_eq_x2]
      _ ≥ x ^ 2 / 2 := div_le_div_of_nonneg_left (sq_nonneg x) (by grind) h1ε3_le_2
      _ ≥ X₀ ^ 2 / 2 := by
        apply div_le_div_of_nonneg_right (sq_le_sq' (by linarith) (hsqrt_ge hn))
        norm_num
      _ ≥ X₀ := by norm_num
  have h1ε2_le_1ε3 : (1 + ε) ^ 2 ≤ (1 + ε) ^ 3 := by nlinarith [sq_nonneg ε]
  have h1ε_le_1ε2 : 1 + ε ≤ (1 + ε) ^ 2 := by nlinarith [sq_nonneg ε]
  have hy₁_ge : n / (1 + ε) ^ 2 ≥ X₀ := le_trans hy₀_ge
    (div_le_div_of_nonneg_left hn_pos.le h1ε2_pos h1ε2_le_1ε3)
  have hy₂_ge : n / (1 + ε) ≥ X₀ := le_trans hy₁_ge
    (div_le_div_of_nonneg_left hn_pos.le h1ε_pos h1ε_le_1ε2)
  -- Apply Dusart to get primes
  obtain ⟨q₀, hq₀_prime, hq₀_lb, hq₀_ub⟩ :=
    Dusart.proposition_5_4 (n / (1 + ε) ^ 3) hy₀_ge
  obtain ⟨q₁, hq₁_prime, hq₁_lb, hq₁_ub⟩ :=
    Dusart.proposition_5_4 (n / (1 + ε) ^ 2) hy₁_ge
  obtain ⟨q₂, hq₂_prime, hq₂_lb, hq₂_ub⟩ :=
    Dusart.proposition_5_4 (n / (1 + ε)) hy₂_ge
  -- Show y_i ≥ x (needed for upper bound helper)
  have hx_ge_2 : x ≥ 2 := by linarith [hsqrt_ge hn, (by grind : (2 : ℝ) ≤ X₀)]
  have hy₀_ge_x : n / (1 + ε) ^ 3 ≥ x := by
    calc n / (1 + ε) ^ 3 = x ^ 2 / (1 + ε) ^ 3 := by rw [hn_eq_x2]
      _ ≥ x ^ 2 / 2 := div_le_div_of_nonneg_left (sq_nonneg x) (by grind) h1ε3_le_2
      _ ≥ x := by rw [ge_iff_le, le_div_iff₀' (by norm_num : (0 : ℝ) < 2)]; nlinarith
  have hy₁_ge_x : n / (1 + ε) ^ 2 ≥ x := le_trans hy₀_ge_x
    (div_le_div_of_nonneg_left hn_pos.le h1ε2_pos h1ε2_le_1ε3)
  have hy₂_ge_x : n / (1 + ε) ≥ x := le_trans hy₁_ge_x
    (div_le_div_of_nonneg_left hn_pos.le h1ε_pos h1ε_le_1ε2)
  -- Upper bound helper: show q_i upper bound implies q_i ≤ next threshold
  have upper {y : ℝ} (hy_pos : 0 < y) (hy_ge : y ≥ x) {q : ℕ}
      (hq : (q : ℝ) ≤ y + y / (log y) ^ (3 : ℝ)) : (q : ℝ) ≤ y * (1 + ε) := by
    have hlog_ge : log y ≥ log x := log_le_log hx_pos hy_ge
    have h : y / (log y) ^ (3 : ℝ) ≤ y / (log x) ^ (3 : ℝ) :=
      div_le_div_of_nonneg_left hy_pos.le (rpow_pos_of_pos hlog_pos 3)
        (rpow_le_rpow hlog_pos.le hlog_ge (by grind))
    calc (q : ℝ) ≤ y + y / (log y) ^ (3 : ℝ) := hq
      _ ≤ y + y / (log x) ^ (3 : ℝ) := add_le_add_right h y
      _ = y * (1 + ε) := by simp only [hε_def, ← rpow_natCast]; field_simp; ring_nf
  -- Get upper bounds
  have hq₀_ub' : (q₀ : ℝ) ≤ n / (1 + ε) ^ 2 := by
    have := upper (by positivity) hy₀_ge_x hq₀_ub
    calc (q₀ : ℝ) ≤ (n / (1 + ε) ^ 3) * (1 + ε) := this
      _ = n / (1 + ε) ^ 2 := by field_simp
  have hq₁_ub' : (q₁ : ℝ) ≤ n / (1 + ε) := by
    have := upper (by positivity) hy₁_ge_x hq₁_ub
    calc (q₁ : ℝ) ≤ (n / (1 + ε) ^ 2) * (1 + ε) := this
      _ = n / (1 + ε) := by field_simp
  have hq₂_ub' : (q₂ : ℝ) ≤ n := by
    have := upper (by positivity) hy₂_ge_x hq₂_ub
    calc (q₂ : ℝ) ≤ (n / (1 + ε)) * (1 + ε) := this
      _ = n := by field_simp
  -- StrictMono: q₀ < q₁ < q₂
  have hq₀_lt_q₁ : q₀ < q₁ := Nat.cast_lt.mp (hq₀_ub'.trans_lt hq₁_lb)
  have hq₁_lt_q₂ : q₁ < q₂ := Nat.cast_lt.mp (hq₁_ub'.trans_lt hq₂_lb)
  -- q₂ < n: the Dusart interval has upper bound y₂ * (1 + 1/(log y₂)³) < y₂ * (1 + ε) = n
  have hq₂_lt_n : q₂ < n := by
    have hy₂_pos : 0 < (n : ℝ) / (1 + ε) := by positivity
    have hy₂_lt_n : n / (1 + ε) < n := div_lt_self hn_pos (by linarith)
    have hlog_y₂_pos : 0 < log (n / (1 + ε)) := log_pos (by linarith : 1 < (n : ℝ) / (1 + ε))
    have hx_lt_y₂ : x < n / (1 + ε) := by
      have h1ε_lt_1ε3 : (1 + ε) < (1 + ε) ^ 3 := by nlinarith [sq_nonneg ε, sq_nonneg (1 + ε)]
      have h1 : n / (1 + ε) ^ 3 < n / (1 + ε) :=
        div_lt_div_of_pos_left hn_pos h1ε_pos h1ε_lt_1ε3
      calc x ≤ n / (1 + ε) ^ 3 := hy₀_ge_x
        _ < n / (1 + ε) := h1
    have hlog_y₂_gt : log (n / (1 + ε)) > log x := log_lt_log hx_pos hx_lt_y₂
    have hq₂_strict : (q₂ : ℝ) < n := by
      calc (q₂ : ℝ) ≤ n / (1 + ε) + (n / (1 + ε)) / (log (n / (1 + ε))) ^ 3 := hq₂_ub
        _ = (n / (1 + ε)) * (1 + 1 / (log (n / (1 + ε))) ^ 3) := by
            have hpos : (0 : ℝ) < log (n / (1 + ε)) := hlog_y₂_pos
            field_simp [hpos.ne']
            rw [mul_comm]
            norm_cast
        _ < (n / (1 + ε)) * (1 + 1 / (log x) ^ 3) := by
          apply mul_lt_mul_of_pos_left _ hy₂_pos
          gcongr
        _ = (n / (1 + ε)) * (1 + ε) := by simp only [hε_def]
        _ = n := by field_simp
    exact Nat.cast_lt.mp hq₂_strict
  refine ⟨![q₀, q₁, q₂], fun i ↦ by fin_cases i <;> assumption,
    Fin.strictMono_iff_lt_succ.mpr fun i ↦ by fin_cases i <;> assumption,
    fun i ↦ ?_, hq₂_lt_n⟩
  fin_cases i <;> simp only [hε_def]
  · -- Case i = 0: n * (1 + ε)^(-3) ≤ q₀
    simp only [CharP.cast_eq_zero, sub_zero]
    have heq : (n : ℝ) * (1 + 1 / (log x) ^ 3) ^ (-(3 : ℝ)) = n / (1 + ε) ^ 3 := by
      rw [rpow_neg h1ε_pos.le, div_eq_mul_inv]
      norm_cast
    rw [heq]
    exact hq₀_lb.le
  · -- Case i = 1: show n * (1 + ε)^(-2) ≤ q₁
    simp only [Nat.cast_one]
    have heq : (n : ℝ) * (1 + 1 / (log x) ^ 3) ^ (-(3 - 1 : ℝ)) = n / (1 + ε) ^ 2 := by
      have h1 : -(3 - 1 : ℝ) = -2 := by ring
      rw [h1, rpow_neg h1ε_pos.le, div_eq_mul_inv]
      norm_cast
    rw [heq]
    exact hq₁_lb.le
  · -- Case i = 2: show n * (1 + ε)^(-1) ≤ q₂
    simp only [Nat.cast_ofNat]
    have heq : (n : ℝ) * (1 + 1 / (log x) ^ 3) ^ (-(3 - 2 : ℝ)) = n / (1 + ε) := by
      have h1 : -(3 - 2 : ℝ) = -1 := by ring
      rw [h1, rpow_neg h1ε_pos.le, rpow_one, div_eq_mul_inv]
    rw [heq]
    exact hq₂_lb.le

blueprint_comment /--
\subsection{Bounding the factors in \eqref{eq:main-ineq}}
-/

@[blueprint
  "lem:qi-product"
  (title := "Bounds for the \\(q_i\\)-product")
  (statement := /--
  With \(p_i,q_i\) as in Lemmas~\ref{lem:choose-pi} and \ref{lem:choose-qi}, we have
  \begin{equation}\label{eq:qi-upper}
    \prod_{i=1}^3 \Bigl(1 + \frac{1}{q_i}\Bigr)
    \le
    \prod_{i=1}^3 \Bigl(1 + \frac{\bigl(1 + \frac{1}{\log^3 \sqrt{n}}\bigr)^i}{n} \Bigr).
  \end{equation}
  -/)
  (proof := /--
  By Lemma~\ref{lem:choose-qi}, each \(q_i\) is at least
  \[
    n\Bigl(1 + \frac{1}{\log^3 \sqrt{n}}\Bigr)^{-j}
  \]
  for suitable indices \(j\), so \(1/q_i\) is bounded above by
  \[
    \frac{\bigl(1 + \frac{1}{\log^3 \sqrt{n}}\bigr)^i}{n}
  \]
  after reindexing. Multiplying the three inequalities gives \eqref{eq:qi-upper}.
  -/)
  (proofUses := ["lem:choose-qi"])
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean#L1094).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cb9afb3bbcc8b6114129c1b549a9f2ad5d98440` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
