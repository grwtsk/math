# proposition_5_4b

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe0cf559-084a-6393-47ff-e674c082ffd5",
  "kind": "theorem",
  "lexical_name": "proposition_5_4b",
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
  "slug": "proposition-5-4b--1a811d8e4a4f7004603c2de6",
  "source": {
    "blob": "7ebe65bc6274dee5409981605bdc80f837fc7a8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 633,
    "line": 522,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dusart/Variant093e278cd84868236dd4a673649b2824c13486f2d178d1d570b53c1311519905.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a811d8e4a4f7004603c2de6d2b39006f0986e56e7c243cc3c36c82ef7bfcb2e",
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

Occurrence: `result:fe0cf559-084a-6393-47ff-e674c082ffd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 522–633.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem proposition_5_4b (x : ℝ) (hx : x ∈ Set.Ioo 360653 4e18) : HasPrimeInInterval x (x / (log x)^(3:ℝ)) := by
  have hx_lo := hx.1
  have hx_hi := hx.2
  have hx_pos : (0:ℝ) < x := by linarith
  have hx_ge2 : x ≥ 2 := by linarith
  have hlog_pos : 0 < log x := Real.log_pos (by linarith)
  have hpow_eq : (log x) ^ (3 : ℝ) = (log x) ^ (3 : ℕ) := rpow_natCast (log x) 3
  have hpow_pos : (0:ℝ) < (log x) ^ (3 : ℕ) := by positivity
  suffices ∃ (g : ℕ), HasPrimeInInterval x (g : ℝ) ∧ (g : ℝ) ≤ x / (log x) ^ (3 : ℕ) by
    obtain ⟨g, ⟨p, hp, hxp, hpg⟩, hgle⟩ := this
    exact ⟨p, hp, hxp, hpg.trans (by rw [hpow_eq]; linarith)⟩
  have num_bound : ∀ (g : ℕ) (U : ℝ), log x ≤ U → 0 < U →
      (g : ℝ) * U ^ 3 ≤ x → (g : ℝ) ≤ x / (log x) ^ (3 : ℕ) := by
    intro g U hlogU hU_pos hgU
    have hU3 : (log x) ^ (3:ℕ) ≤ U ^ (3:ℕ) := pow_le_pow_left₀ hlog_pos.le hlogU 3
    rw [le_div_iff₀ hpow_pos]; exact le_trans (by nlinarith) hgU
  have gap_record : ∀ (p g : ℕ), (p, g) ∈ eSHP.table_8 → x ≤ (p : ℝ) →
      HasPrimeInInterval x (g : ℝ) :=
    fun p g hmem hle ↦ prime_gap_record.hasPrimeInInterval
      (eSHP.table_8_prime_gap p g hmem) hle hx_ge2 le_rfl
  have log_bound : ∀ (U : ℝ), x ≤ exp U → log x ≤ U :=
    fun U h ↦ (Real.log_le_iff_le_exp hx_pos).mpr h
  by_cases! h1 : x ≤ 370261
  · have hmem : ((370261 : ℕ), (112 : ℕ)) ∈ eSHP.table_8 := by decide
    refine ⟨112, gap_record _ _ hmem (by push_cast; linarith), ?_⟩
    have hexp : (370261 : ℝ) ≤ exp (1283/100) := by interval_decide
    exact num_bound 112 (1283/100) (log_bound _ (by linarith)) (by norm_num) (by push_cast; nlinarith)
  · by_cases! h2 : x ≤ 492113
    · have hmem : ((492113 : ℕ), (114 : ℕ)) ∈ eSHP.table_8 := by decide
      refine ⟨114, gap_record _ _ hmem (by push_cast; linarith), ?_⟩
      have hexp : (492113 : ℝ) ≤ exp (1312/100) := by interval_decide
      exact num_bound 114 (1312/100) (log_bound _ (by linarith)) (by norm_num) (by push_cast; nlinarith)
    · by_cases! h3 : x ≤ 2010733
      · have hmem : ((2010733 : ℕ), (148 : ℕ)) ∈ eSHP.table_8 := by decide
        refine ⟨148, gap_record _ _ hmem (by push_cast; linarith), ?_⟩
        have hexp : (2010733 : ℝ) ≤ exp (1452/100) := by interval_decide
        exact num_bound 148 (1452/100) (log_bound _ (by linarith)) (by norm_num) (by push_cast; nlinarith)
      · by_cases! h4 : x ≤ 17051707
        · have hmem : ((17051707 : ℕ), (180 : ℕ)) ∈ eSHP.table_8 := by decide
          refine ⟨180, gap_record _ _ hmem (by push_cast; linarith), ?_⟩
          have hexp : (17051707 : ℝ) ≤ exp (1666/100) := by interval_decide
          exact num_bound 180 (1666/100) (log_bound _ (by linarith)) (by norm_num) (by push_cast; nlinarith)
        · refine ⟨1476, ?_, ?_⟩
          · by_cases! h5 : x ≤ 1425172824437699411
            · have hmem : ((1425172824437699411 : ℕ), (1476 : ℕ)) ∈ eSHP.table_8 := by decide
              exact gap_record _ _ hmem (by push_cast; linarith)
            · set m := ⌊x⌋₊ with hm_def
              set k := m.primeCounting with hk_def
              set q := nth_prime k with hq_def
              have hx_nn : (0:ℝ) ≤ x := by linarith
              have hm_le_x : (m : ℝ) ≤ x := Nat.floor_le hx_nn
              have hm_ge2 : 2 ≤ m := Nat.le_floor hx_ge2
              have hk_pos : 0 < k := by
                by_contra! hk0
                have hk0' : k = 0 := Nat.eq_zero_of_not_pos (by omega)
                have : m ≤ 1 := Nat.primeCounting_eq_zero_iff.mp (by simpa [k] using hk0')
                omega
              have hm_lt_q : m < q := by
                have : m + 1 ≤ q :=
                  (Nat.count_le_iff_le_nth (p := Nat.Prime) infinite_setOf_prime).1
                    (by simp [hk_def, Nat.primeCounting, Nat.primeCounting'])
                omega
              have hq_prime : Nat.Prime q := by simp [q]
              have hprev_le_m : nth_prime (k - 1) ≤ m := by
                have hk1 : k - 1 < k := Nat.sub_lt (Nat.succ_le_of_lt hk_pos) (by norm_num)
                have : nth_prime (k - 1) < m + 1 :=
                  (Nat.lt_nth_iff_count_lt (p := Nat.Prime) infinite_setOf_prime).1
                    (by simpa [hk_def, Nat.primeCounting, Nat.primeCounting'] using hk1)
                omega
              have hprev_bound : nth_prime (k - 1) ≤ 4 * 10 ^ 18 := by
                have h4e : (4e18 : ℝ) = 4 * 10 ^ 18 := by norm_num
                have hm_lt : (m : ℝ) < 4 * 10 ^ 18 := by rw [← h4e]; exact lt_of_le_of_lt hm_le_x hx_hi
                have hm_nat : m < 4 * 10 ^ 18 := by exact_mod_cast hm_lt
                omega
              have hgap : nth_prime_gap (k - 1) ≤ 1476 := eSHP.max_prime_gap (k - 1) hprev_bound
              have hk' : k - 1 + 1 = k := Nat.sub_add_cancel (Nat.succ_le_of_lt hk_pos)
              have hmono : nth_prime (k - 1) ≤ q := by
                calc nth_prime (k - 1) ≤ nth_prime (k - 1 + 1) :=
                      (nth_strictMono infinite_setOf_prime).monotone (Nat.le_succ _)
                  _ = q := by simp [q, hk']
              have hq_le : q ≤ m + 1476 := by
                calc q = nth_prime (k - 1) + (q - nth_prime (k - 1)) :=
                      (Nat.add_sub_of_le hmono).symm
                  _ = nth_prime (k - 1) + nth_prime_gap (k - 1) := by
                      simp [nth_prime_gap, hk', q]
                  _ ≤ m + 1476 := by omega
              refine ⟨q, hq_prime, ?_, ?_⟩
              · have h_fl : x < (m : ℝ) + 1 := by simpa [m] using Nat.lt_floor_add_one x
                have h_qm : (m : ℝ) + 1 ≤ q := by exact_mod_cast (Nat.succ_le_iff.mpr hm_lt_q)
                linarith
              · have h_qle : (q : ℝ) ≤ (m : ℝ) + (1476 : ℝ) := by exact_mod_cast hq_le
                push_cast; linarith
          · by_cases! h6 : x ≤ exp 22
            · exact num_bound 1476 22 (log_bound 22 h6) (by norm_num) (by push_cast; nlinarith)
            · have hexp43 : (4e18 : ℝ) ≤ exp 43 := by interval_decide
              have hx_le_exp43 : x ≤ exp 43 := le_of_lt (lt_of_lt_of_le hx_hi hexp43)
              exact num_bound 1476 43 (log_bound 43 hx_le_exp43) (by norm_num)
                (by
                  push_cast
                  have hexp22_lb : (117352333 : ℝ) ≤ exp 22 := by interval_decide
                  nlinarith)

@[blueprint "Dusart_prop_5_4c"
  (title := "Dusart Proposition 5.4, substep 3")
  (statement := /--
  For $89693 \leq x \leq 360653$, there exists a prime $p$ with
  \[
  x < p \le x\Bigl(1 + \frac{1}{\log^3 x}\Bigr).
  \]
  -/)
  (proof := /-- This is a computer computation, likely not formalizable within Lean. -/)
  (latexEnv := "sublemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Dusart/Variant093e278cd84868236dd4a673649b2824c13486f2d178d1d570b53c1311519905.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Dusart/Variant093e278cd84868236dd4a673649b2824c13486f2d178d1d570b53c1311519905.lean#L522).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ebe65bc6274dee5409981605bdc80f837fc7a8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
