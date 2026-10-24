# tendsto_div_of_monotone_of_exists_subseq_tendsto_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9de6e9ed-8e94-cfc0-ca57-a218e1e1be84",
  "kind": "theorem",
  "lexical_name": "tendsto_div_of_monotone_of_exists_subseq_tendsto_div",
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
  "slug": "tendsto-div-of-monotone-of-exists-subseq-tendsto-div--279c981e0387e3d9712b3472",
  "source": {
    "blob": "53c11322aab29bc3cf0b63f35884f96d5b1dc65a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 38,
    "path": "GRWTSK/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:279c981e0387e3d9712b3472d9626e837de43869adcf409d748aeef8e84ec248",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9de6e9ed-8e94-cfc0-ca57-a218e1e1be84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_div_of_monotone_of_exists_subseq_tendsto_div (u : ℕ → ℝ) (l : ℝ)
    (hmono : Monotone u)
    (hlim : ∀ a : ℝ, 1 < a → ∃ c : ℕ → ℕ, (∀ᶠ n in atTop, (c (n + 1) : ℝ) ≤ a * c n) ∧
      Tendsto c atTop atTop ∧ Tendsto (fun n => u (c n) / c n) atTop (𝓝 l)) :
    Tendsto (fun n => u n / n) atTop (𝓝 l) := by
  /- To check the result up to some `ε > 0`, we use a sequence `c` for which the ratio
    `c (N+1) / c N` is bounded by `1 + ε`. Sandwiching a given `n` between two consecutive values of
    `c`, say `c N` and `c (N+1)`, one can then bound `u n / n` from above by `u (c N) / c (N - 1)`
    and from below by `u (c (N - 1)) / c N` (using that `u` is monotone), which are both comparable
    to the limit `l` up to `1 + ε`.
    We give a version of this proof by clearing out denominators first, to avoid discussing the sign
    of different quantities. -/
  have lnonneg : 0 ≤ l := by
    rcases hlim 2 one_lt_two with ⟨c, _, ctop, clim⟩
    have : Tendsto (fun n => u 0 / c n) atTop (𝓝 0) :=
      tendsto_const_nhds.div_atTop (tendsto_nat_cast_atTop_iff.2 ctop)
    apply le_of_tendsto_of_tendsto' this clim fun n => _
    simp_rw [div_eq_inv_mul]
    exact fun n => mul_le_mul_of_nonneg_left (hmono (zero_le _)) (inv_nonneg.2 (Nat.cast_nonneg _))
  have A : ∀ ε : ℝ, 0 < ε → ∀ᶠ n in atTop, u n - n * l ≤ ε * (1 + ε + l) * n := by
    intro ε εpos
    rcases hlim (1 + ε) ((lt_add_iff_pos_right _).2 εpos) with ⟨c, cgrowth, ctop, clim⟩
    have L : ∀ᶠ n in atTop, u (c n) - c n * l ≤ ε * c n := by
      rw [← tendsto_sub_nhds_zero_iff, ← Asymptotics.isLittleO_one_iff ℝ,
        Asymptotics.isLittleO_iff] at clim
      filter_upwards [clim εpos, ctop (Ioi_mem_atTop 0)] with n hn cnpos'
      have cnpos : 0 < c n := cnpos'
      calc
        u (c n) - c n * l = (u (c n) / c n - l) * c n := by
          simp only [cnpos.ne', Ne.def, Nat.cast_eq_zero, not_false_iff, field_simps]
        _ ≤ ε * c n := by
          refine' mul_le_mul_of_nonneg_right _ (Nat.cast_nonneg _)
          simp only [mul_one, Real.norm_eq_abs, abs_one] at hn
          exact le_trans (le_abs_self _) hn
    obtain ⟨a, ha⟩ :
      ∃ a : ℕ, ∀ b : ℕ, a ≤ b → (c (b + 1) : ℝ) ≤ (1 + ε) * c b ∧ u (c b) - c b * l ≤ ε * c b :=
      eventually_atTop.1 (cgrowth.and L)
    let M := ((Finset.range (a + 1)).image fun i => c i).max' (by simp)
    filter_upwards [Ici_mem_atTop M]with n hn
    have exN : ∃ N, n < c N := by
      rcases(tendsto_atTop.1 ctop (n + 1)).exists with ⟨N, hN⟩
      exact ⟨N, by linarith only [hN]⟩
    let N := Nat.find exN
    have ncN : n < c N := Nat.find_spec exN
    have aN : a + 1 ≤ N := by
      by_contra' h
      have cNM : c N ≤ M := by
        apply le_max'
        apply mem_image_of_mem
        exact mem_range.2 h
      exact lt_irrefl _ ((cNM.trans hn).trans_lt ncN)
    have Npos : 0 < N := lt_of_lt_of_le Nat.succ_pos' aN
    have cNn : c (N - 1) ≤ n := by
      have : N - 1 < N := Nat.pred_lt Npos.ne'
      simpa only [not_lt] using Nat.find_min exN this
    have IcN : (c N : ℝ) ≤ (1 + ε) * c (N - 1) := by
      have A : a ≤ N - 1 := by
        apply @Nat.le_of_add_le_add_right a 1 (N - 1)
        rw [Nat.sub_add_cancel Npos]
        exact aN
      have B : N - 1 + 1 = N := Nat.succ_pred_eq_of_pos Npos
      have := (ha _ A).1
      rwa [B] at this
    calc
      u n - n * l ≤ u (c N) - c (N - 1) * l := by
        apply sub_le_sub (hmono ncN.le)
        apply mul_le_mul_of_nonneg_right (Nat.cast_le.2 cNn) lnonneg
      _ = u (c N) - c N * l + (c N - c (N - 1)) * l := by ring
      _ ≤ ε * c N + ε * c (N - 1) * l := by
        apply add_le_add
        · apply (ha _ _).2
          exact le_trans (by simp only [le_add_iff_nonneg_right, zero_le']) aN
        · apply mul_le_mul_of_nonneg_right _ lnonneg
          linarith only [IcN]
      _ ≤ ε * ((1 + ε) * c (N - 1)) + ε * c (N - 1) * l :=
        (add_le_add (mul_le_mul_of_nonneg_left IcN εpos.le) le_rfl)
      _ = ε * (1 + ε + l) * c (N - 1) := by ring
      _ ≤ ε * (1 + ε + l) * n := by
        refine' mul_le_mul_of_nonneg_left (Nat.cast_le.2 cNn) _
        apply mul_nonneg εpos.le
        linarith only [εpos, lnonneg]
  have B : ∀ ε : ℝ, 0 < ε → ∀ᶠ n : ℕ in atTop, (n : ℝ) * l - u n ≤ ε * (1 + l) * n := by
    intro ε εpos
    rcases hlim (1 + ε) ((lt_add_iff_pos_right _).2 εpos) with ⟨c, cgrowth, ctop, clim⟩
    have L : ∀ᶠ n : ℕ in atTop, (c n : ℝ) * l - u (c n) ≤ ε * c n := by
      rw [← tendsto_sub_nhds_zero_iff, ← Asymptotics.isLittleO_one_iff ℝ,
        Asymptotics.isLittleO_iff] at clim
      filter_upwards [clim εpos, ctop (Ioi_mem_atTop 0)]with n hn cnpos'
      have cnpos : 0 < c n := cnpos'
      calc
        (c n : ℝ) * l - u (c n) = -(u (c n) / c n - l) * c n := by
          simp only [cnpos.ne', Ne.def, Nat.cast_eq_zero, not_false_iff, neg_sub, field_simps]
        _ ≤ ε * c n := by
          refine' mul_le_mul_of_nonneg_right _ (Nat.cast_nonneg _)
          simp only [mul_one, Real.norm_eq_abs, abs_one] at hn
          exact le_trans (neg_le_abs_self _) hn
    obtain ⟨a, ha⟩ :
      ∃ a : ℕ,
        ∀ b : ℕ, a ≤ b → (c (b + 1) : ℝ) ≤ (1 + ε) * c b ∧ (c b : ℝ) * l - u (c b) ≤ ε * c b :=
      eventually_atTop.1 (cgrowth.and L)
    let M := ((Finset.range (a + 1)).image fun i => c i).max' (by simp)
    filter_upwards [Ici_mem_atTop M]with n hn
    have exN : ∃ N, n < c N := by
      rcases(tendsto_atTop.1 ctop (n + 1)).exists with ⟨N, hN⟩
      exact ⟨N, by linarith only [hN]⟩
    let N := Nat.find exN
    have ncN : n < c N := Nat.find_spec exN
    have aN : a + 1 ≤ N := by
      by_contra' h
      have cNM : c N ≤ M := by
        apply le_max'
        apply mem_image_of_mem
        exact mem_range.2 h
      exact lt_irrefl _ ((cNM.trans hn).trans_lt ncN)
    have Npos : 0 < N := lt_of_lt_of_le Nat.succ_pos' aN
    have aN' : a ≤ N - 1 := by
      apply @Nat.le_of_add_le_add_right a 1 (N - 1)
      rw [Nat.sub_add_cancel Npos]
      exact aN
    have cNn : c (N - 1) ≤ n := by
      have : N - 1 < N := Nat.pred_lt Npos.ne'
      simpa only [not_lt] using Nat.find_min exN this
    calc
      (n : ℝ) * l - u n ≤ c N * l - u (c (N - 1)) := by
        refine' add_le_add (mul_le_mul_of_nonneg_right (Nat.cast_le.2 ncN.le) lnonneg) _
        exact neg_le_neg (hmono cNn)
      _ ≤ (1 + ε) * c (N - 1) * l - u (c (N - 1)) := by
        refine' add_le_add (mul_le_mul_of_nonneg_right _ lnonneg) le_rfl
        have B : N - 1 + 1 = N := Nat.succ_pred_eq_of_pos Npos
        have := (ha _ aN').1
        rwa [B] at this
      _ = c (N - 1) * l - u (c (N - 1)) + ε * c (N - 1) * l := by ring
      _ ≤ ε * c (N - 1) + ε * c (N - 1) * l := (add_le_add (ha _ aN').2 le_rfl)
      _ = ε * (1 + l) * c (N - 1) := by ring
      _ ≤ ε * (1 + l) * n := by
        refine' mul_le_mul_of_nonneg_left (Nat.cast_le.2 cNn) _
        exact mul_nonneg εpos.le (add_nonneg zero_le_one lnonneg)
  refine' tendsto_order.2 ⟨fun d hd => _, fun d hd => _⟩
  · obtain ⟨ε, hε, εpos⟩ : ∃ ε : ℝ, d + ε * (1 + l) < l ∧ 0 < ε := by
      have L : Tendsto (fun ε => d + ε * (1 + l)) (𝓝[>] 0) (𝓝 (d + 0 * (1 + l))) := by
        apply Tendsto.mono_left _ nhdsWithin_le_nhds
        exact tendsto_const_nhds.add (tendsto_id.mul tendsto_const_nhds)
      simp only [zero_mul, add_zero] at L
      exact (((tendsto_order.1 L).2 l hd).and self_mem_nhdsWithin).exists
    filter_upwards [B ε εpos, Ioi_mem_atTop 0]with n hn npos
    simp_rw [div_eq_inv_mul]
    calc
      d < (n : ℝ)⁻¹ * n * (l - ε * (1 + l)) := by
        rw [inv_mul_cancel, one_mul]
        · linarith only [hε]
        · exact Nat.cast_ne_zero.2 (ne_of_gt npos)
      _ = (n : ℝ)⁻¹ * (n * l - ε * (1 + l) * n) := by ring
      _ ≤ (n : ℝ)⁻¹ * u n := by
        refine' mul_le_mul_of_nonneg_left _ (inv_nonneg.2 (Nat.cast_nonneg _))
        linarith only [hn]
  · obtain ⟨ε, hε, εpos⟩ : ∃ ε : ℝ, l + ε * (1 + ε + l) < d ∧ 0 < ε := by
      have L : Tendsto (fun ε => l + ε * (1 + ε + l)) (𝓝[>] 0) (𝓝 (l + 0 * (1 + 0 + l))) := by
        apply Tendsto.mono_left _ nhdsWithin_le_nhds
        exact
          tendsto_const_nhds.add
            (tendsto_id.mul ((tendsto_const_nhds.add tendsto_id).add tendsto_const_nhds))
      simp only [zero_mul, add_zero] at L
      exact (((tendsto_order.1 L).2 d hd).and self_mem_nhdsWithin).exists
    filter_upwards [A ε εpos, Ioi_mem_atTop 0]with n hn npos
    simp_rw [div_eq_inv_mul]
    calc
      (n : ℝ)⁻¹ * u n ≤ (n : ℝ)⁻¹ * (n * l + ε * (1 + ε + l) * n) := by
        refine' mul_le_mul_of_nonneg_left _ (inv_nonneg.2 (Nat.cast_nonneg _))
        linarith only [hn]
      _ = (n : ℝ)⁻¹ * n * (l + ε * (1 + ε + l)) := by ring
      _ < d := by
        rwa [inv_mul_cancel, one_mul]
        exact Nat.cast_ne_zero.2 (ne_of_gt npos)

#align tendsto_div_of_monotone_of_exists_subseq_tendsto_div tendsto_div_of_monotone_of_exists_subseq_tendsto_div

/-- If a monotone sequence `u` is such that `u ⌊c^n⌋₊ / ⌊c^n⌋₊` converges to a limit `l` for all
`c > 1`, then `u n / n` tends to `l`. It is even enough to have the assumption for a sequence of
`c`s converging to `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53c11322aab29bc3cf0b63f35884f96d5b1dc65a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
