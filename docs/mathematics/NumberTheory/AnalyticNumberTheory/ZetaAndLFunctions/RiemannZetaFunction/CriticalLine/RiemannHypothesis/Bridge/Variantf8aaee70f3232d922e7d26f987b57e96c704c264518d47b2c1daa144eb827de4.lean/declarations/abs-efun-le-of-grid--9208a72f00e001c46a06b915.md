# abs_Efun_le_of_grid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7d0d26e944e626559e985530a2ec6d3e3e97b70",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b920ca5-e55f-a873-d416-c55863bf7d21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e65dc04-0493-6c49-301e-0bd75a396201",
  "kind": "theorem",
  "lexical_name": "abs_Efun_le_of_grid",
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
  "slug": "abs-efun-le-of-grid--9208a72f00e001c46a06b915",
  "source": {
    "blob": "e7d0d26e944e626559e985530a2ec6d3e3e97b70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 119,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9208a72f00e001c46a06b9157cee2cd6137d43ec74559f37b46bb30495aa11e4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e65dc04-0493-6c49-301e-0bd75a396201`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_Efun_le_of_grid (hN : 0 < N) {B₂ : ℝ}
    (hE : ∀ i j, 1 ≤ i → i ≤ N → 1 ≤ j → j ≤ N →
        |Egrid S N j| + |Dleft S N i| / N ≤ B₂ ∧ |Egrid S N j| + |Dright S N i| / N ≤ B₂) :
    ∀ x ∈ Icc (0 : ℝ) 1, |Efun (massOf S N) N x| ≤ B₂ := by
  have hNr : (0 : ℝ) < N := by exact_mod_cast hN
  have hN1 : 1 ≤ N := hN
  -- B₂ dominates every |D^±_i|/N and every |Egrid j| (the other summand is ≥ 0)
  have hB0 : 0 ≤ B₂ := le_trans (by positivity) (hE 1 1 le_rfl hN1 le_rfl hN1).1
  intro x hx
  rcases eq_or_lt_of_le hx.2 with hx1 | hx1
  · -- x = 1 = N/N
    subst hx1
    rw [show (1 : ℝ) = (N : ℝ) / N from (div_self hNr.ne').symm, Efun_grid_eq_Egrid hN le_rfl]
    have h := (hE N N hN1 le_rfl hN1 le_rfl).1
    linarith [div_nonneg (abs_nonneg (Dleft S N N)) hNr.le]
  · -- x ∈ [m/N, (m+1)/N) with m < N
    set m : ℕ := ⌊(N : ℝ) * x⌋₊ with hm
    have hmx : (m : ℝ) ≤ N * x := Nat.floor_le (by have := hx.1; positivity)
    have hxm : (N : ℝ) * x < m + 1 := Nat.lt_floor_add_one _
    have hmN : m < N := by
      have : (m : ℝ) < N := lt_of_le_of_lt hmx (by nlinarith [hx.1])
      exact_mod_cast this
    have hlo : (m : ℝ) / N ≤ x := by rw [div_le_iff₀ hNr]; linarith
    have hhi : x < ((m : ℝ) + 1) / N := by rw [lt_div_iff₀ hNr]; linarith
    -- split the integral at m/N
    have hI1 : IntervalIntegrable (Dfun (massOf S N) N) volume 0 ((m : ℝ) / N) :=
      (intervalIntegrable_Dfun hN).mono_set (by
        rw [Set.uIcc_of_le zero_le_one, Set.uIcc_of_le (by positivity)]
        exact Icc_subset_Icc le_rfl (by rw [div_le_one hNr]; exact_mod_cast hmN.le))
    have hI2 : IntervalIntegrable (Dfun (massOf S N) N) volume ((m : ℝ) / N) x :=
      (intervalIntegrable_Dfun hN).mono_set (by
        rw [Set.uIcc_of_le zero_le_one, Set.uIcc_of_le hlo]
        exact Icc_subset_Icc (by positivity) hx.2)
    have hsplit : Efun (massOf S N) N x = Efun (massOf S N) N ((m : ℝ) / N) + ∫ t in ((m : ℝ) / N)..x, Dfun (massOf S N) N t := by
      unfold Efun; rw [intervalIntegral.integral_add_adjacent_intervals hI1 hI2]
    -- on (m/N, x] ⊆ the open cell, |D| ≤ C := max |Dleft (m+1)| |Dright m|
    set C : ℝ := max |Dleft S N (m + 1)| |Dright S N m| with hC
    have hbound : ∀ t ∈ Set.uIoc ((m : ℝ) / N) x, ‖Dfun (massOf S N) N t‖ ≤ C := by
      intro t ht
      rw [Set.uIoc_of_le hlo] at ht
      have ht' : t ∈ Ioo ((m : ℝ) / N) ((m + 1 : ℝ) / N) := ⟨ht.1, lt_of_le_of_lt ht.2 hhi⟩
      obtain ⟨h1, h2⟩ := Dfun_cell_bounds hN hmN ht'
      rw [Real.norm_eq_abs]
      exact abs_le_max_abs h1 h2
    have hint : |∫ t in ((m : ℝ) / N)..x, Dfun (massOf S N) N t| ≤ C / N := by
      have h := intervalIntegral.norm_integral_le_of_norm_le_const hbound
      rw [Real.norm_eq_abs] at h
      refine h.trans ?_
      have hC0 : 0 ≤ C := le_trans (abs_nonneg _) (le_max_left _ _)
      have : |x - (m : ℝ) / N| ≤ 1 / N := by
        rw [abs_of_nonneg (by linarith)]
        have : ((m : ℝ) + 1) / N = (m : ℝ) / N + 1 / N := by ring
        linarith
      calc C * |x - (m : ℝ) / N| ≤ C * (1 / N) := mul_le_mul_of_nonneg_left this hC0
        _ = C / N := by ring
    rw [hsplit, Efun_grid_eq_Egrid hN hmN.le]
    have htri : |Egrid S N m + ∫ t in ((m : ℝ) / N)..x, Dfun (massOf S N) N t| ≤ |Egrid S N m| + C / N :=
      (abs_add_le _ _).trans (by linarith)
    refine htri.trans ?_
    -- |Egrid m| + C/N ≤ B₂ from the grid hypotheses (m = 0: Egrid 0 = 0 and use j = 1)
    have key : ∀ {Dv : ℝ}, (∀ j, 1 ≤ j → j ≤ N → |Egrid S N j| + |Dv| / N ≤ B₂) → |Egrid S N m| + |Dv| / N ≤ B₂ := by
      intro Dv h
      rcases Nat.eq_zero_or_pos m with h0 | hpos
      · rw [h0]; simp only [Egrid, U_zero, Nat.cast_zero, zero_div]
        have := h 1 le_rfl hN1
        norm_num
        linarith [abs_nonneg (Egrid S N 1)]
      · exact h m hpos hmN.le
    rcases le_total |Dleft S N (m + 1)| |Dright S N m| with hle | hle
    · have hCe : C = |Dright S N m| := max_eq_right hle
      rw [hCe]
      refine key fun j hj1 hj2 => ?_
      rcases Nat.eq_zero_or_pos m with h0 | hpos
      · -- Dright 0 = 0
        have : Dright S N m = 0 := by rw [h0]; simp [Dright, T_zero]
        rw [this, abs_zero, zero_div, add_zero]
        have := (hE 1 j le_rfl hN1 hj1 hj2).1
        linarith [div_nonneg (abs_nonneg (Dleft S N 1)) hNr.le]
      · exact (hE m j hpos hmN.le hj1 hj2).2
    · have hCe : C = |Dleft S N (m + 1)| := max_eq_left hle
      rw [hCe]
      exact key fun j hj1 hj2 => (hE (m + 1) j (Nat.succ_pos m) (Nat.succ_le_of_lt hmN) hj1 hj2).1

/-! ## §3. The package consumed by the ceiling-stability theorem -/

/-- **from a checked certificate to the interval hypotheses**: for every form factor S inside the enclosures, the atom masses
s := S/N satisfy |D(1)| ≤ bD1, |E(1)| ≤ bE1, |D| ≤ b1 on [0,1], |E| ≤ b2 on [0,1]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7d0d26e944e626559e985530a2ec6d3e3e97b70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
