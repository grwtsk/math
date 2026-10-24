# Factorization.replace_div_score_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:255ab6d3-12ee-1290-a7a6-75bf33bd8e94",
  "kind": "lemma",
  "lexical_name": "Factorization.replace_div_score_le",
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
  "slug": "factorization-replace-div-score-le--408174ddcc058a5a392972f1",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 238,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:408174ddcc058a5a392972f1ebfd0e3cb1d56fa97f7f1b971ccd8992221b3d18",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:255ab6d3-12ee-1290-a7a6-75bf33bd8e94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Factorization.replace_div_score_le {n : ℕ} (f : Factorization n) (m p : ℕ)
    (hm : m ∈ f.a) (h_fac_pos : 0 < m.factorization p) (hp : p.Prime)
    (hp_mem : p ∈ (n + 1).primesBelow) (_h_bal_pos : f.balance p > 0) (L : ℕ) :
    let m' := m / p
    have hm' : m' ≤ n := (div_le_self m p).trans (f.ha m hm)
    have hm'_pos : 0 < m' := div_pos (le_of_dvd (f.hpos m hm)
      (hp.dvd_iff_one_le_factorization (f.hpos m hm).ne' |>.mpr h_fac_pos)) hp.pos
    (f.replace m m' hm hm' hm'_pos).score L ≤ f.score L := by
  simp only
  set m' := m / p with hm'_def
  have hm' : m' ≤ n := (div_le_self m p).trans (f.ha m hm)
  have hm_pos : 0 < m := f.hpos m hm
  have hm_ne : m ≠ 0 := hm_pos.ne'
  have hp_dvd : p ∣ m := hp.dvd_iff_one_le_factorization hm_ne |>.mpr h_fac_pos
  have hm'_pos : 0 < m' := div_pos (le_of_dvd hm_pos hp_dvd) hp.pos
  have h_waste : (f.replace m m' hm hm' hm'_pos).waste ≤ f.waste + Real.log p := by
    have h_waste_eq : (f.replace m m' hm hm' hm'_pos).waste =
        f.waste - Real.log (n / m) + Real.log (n / m') :=
      replace_sum f m m' hm hm' hm'_pos (fun x ↦ Real.log (n / x))
    rw [h_waste_eq]
    by_cases hn : n = 0
    · simp only [hn, CharP.cast_eq_zero, zero_div, log_zero, sub_zero, add_zero,
      le_add_iff_nonneg_right, ge_iff_le]; positivity
    · have hn_pos : (0 : ℝ) < n := cast_pos.mpr (pos_of_ne_zero hn)
      have hm_pos : (0 : ℝ) < m := cast_pos.mpr (pos_of_ne_zero hm_ne)
      have hp_pos : (0 : ℝ) < p := cast_pos.mpr hp.pos
      have hm'_pos : (0 : ℝ) < m' := by
        simp only [hm'_def]
        have : p ≤ m := hp.dvd_iff_one_le_factorization hm_ne |>.mpr h_fac_pos |> le_of_dvd
          (pos_of_ne_zero hm_ne)
        exact cast_pos.mpr (div_pos this hp.pos)
      simp only [hm'_def]
      rw [Real.log_div (by linarith) (by linarith),
          Real.log_div (by linarith) (by linarith),
          cast_div hp_dvd (cast_ne_zero.mpr hp.ne_zero),
          Real.log_div (by linarith) (by linarith)]
      ring_nf
      rfl
  have h_pointwise : ∀ q ∈ (n + 1).primesBelow,
      (if (f.replace m m' hm hm' hm'_pos).balance q > 0
       then ((f.replace m m' hm hm' hm'_pos).balance q : ℝ) * Real.log q
       else if q ≤ L then -((f.replace m m' hm hm' hm'_pos).balance q : ℝ) * Real.log L
       else -((f.replace m m' hm hm' hm'_pos).balance q : ℝ) * Real.log (n / q)) ≤
      (if f.balance q > 0 then (f.balance q : ℝ) * Real.log q
       else if q ≤ L then -(f.balance q : ℝ) * Real.log L
       else -(f.balance q : ℝ) * Real.log (n / q)) -
      (if q = p then Real.log p else 0) := fun q _ ↦ by
    by_cases hq_eq_p : q = p
    · have h_bal : (f.replace m m' hm hm' hm'_pos).balance q = f.balance q - 1 := by
        rw [replace_div_balance f m p hm h_fac_pos hp q, if_pos hq_eq_p]
      have hbp : 0 < f.balance q := hq_eq_p ▸ _h_bal_pos
      simp only [hq_eq_p, ↓reduceIte]
      rcases Int.lt_or_eq_of_le hbp with h1 | h1
      · split_ifs with h2 h3 <;> simp_all; nlinarith
      · rw [← hq_eq_p, h_bal, ← h1]
        simp
    · have h_bal_eq : (f.replace m m' hm hm' hm'_pos).balance q = f.balance q := by
        rw [replace_div_balance f m p hm h_fac_pos hp q, if_neg hq_eq_p]
      simp only [hq_eq_p, ↓reduceIte, sub_zero, h_bal_eq, le_refl]
  have h_sum_term := Finset.sum_le_sum h_pointwise
  simp only [Finset.sum_ite] at h_sum_term
  simp only [Finset.sum_sub_distrib] at h_sum_term
  have h_sum_term' : ∑ q ∈ (n + 1).primesBelow,
      (if (f.replace m m' hm hm' hm'_pos).balance q > 0
       then ((f.replace m m' hm hm' hm'_pos).balance q : ℝ) * Real.log q
       else if q ≤ L then -((f.replace m m' hm hm' hm'_pos).balance q : ℝ) * Real.log L
       else -((f.replace m m' hm hm' hm'_pos).balance q : ℝ) * Real.log (n / q)) ≤
      ∑ q ∈ (n + 1).primesBelow,
      (if f.balance q > 0 then (f.balance q : ℝ) * Real.log q
       else if q ≤ L then -(f.balance q : ℝ) * Real.log L
       else -(f.balance q : ℝ) * Real.log (n / q)) - Real.log p := by
    calc _ ≤ ∑ q ∈ (n + 1).primesBelow,
        ((if f.balance q > 0 then (f.balance q : ℝ) * Real.log q
         else if q ≤ L then -(f.balance q : ℝ) * Real.log L
         else -(f.balance q : ℝ) * Real.log (n / q)) -
        (if q = p then Real.log p else 0)) := Finset.sum_le_sum h_pointwise
      _ = _ := by
        rw [Finset.sum_sub_distrib]
        congr 1
        rw [← Finset.sum_filter]
        simp only [Finset.filter_eq', hp_mem, ↓reduceIte, Finset.sum_singleton]
  unfold score at *
  split_ifs <;> norm_num at *
  · linarith
  · unfold total_imbalance at *
    aesop
  · have hp_ge_one : (p : ℝ) ≥ 1 := one_le_cast.mpr hp.pos
    have hp_le_n : (p : ℝ) ≤ n := by
      exact_mod_cast le_of_lt_succ (lt_of_succ_le (succ_le_of_lt
        (lt_of_mem_primesBelow hp_mem)))
    linarith [Real.log_nonneg hp_ge_one, Real.log_le_log (cast_pos.mpr hp.pos) hp_le_n]
  · linarith

/-- Extends a factorization by adding a new factor `m`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
