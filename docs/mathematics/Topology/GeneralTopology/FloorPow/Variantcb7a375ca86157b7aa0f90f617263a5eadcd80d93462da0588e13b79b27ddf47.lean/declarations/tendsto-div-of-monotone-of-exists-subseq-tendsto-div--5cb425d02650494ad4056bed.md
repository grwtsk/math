# tendsto_div_of_monotone_of_exists_subseq_tendsto_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8c1144e0c5a634f4e2264fc1d2a84add4d01f3e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb7a375ca86157b7aa0f90f617263a5eadcd80d93462da0588e13b79b27ddf47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:759892e8-6be8-da86-4866-675aad0b7276",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d385fe58-3bd4-d1e6-2c6c-d113ba339c5c",
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
  "slug": "tendsto-div-of-monotone-of-exists-subseq-tendsto-div--5cb425d02650494ad4056bed",
  "source": {
    "blob": "8c1144e0c5a634f4e2264fc1d2a84add4d01f3e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 31,
    "path": "GRWTSK/Topology/GeneralTopology/FloorPow/Variantcb7a375ca86157b7aa0f90f617263a5eadcd80d93462da0588e13b79b27ddf47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cb425d02650494ad4056bedc9319cb0236e8f75cd95ff6427fadf2badfcc358",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FloorPow/Variantcb7a375ca86157b7aa0f90f617263a5eadcd80d93462da0588e13b79b27ddf47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d385fe58-3bd4-d1e6-2c6c-d113ba339c5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–181.

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
      tendsto_const_nhds.div_atTop (tendsto_natCast_atTop_iff.2 ctop)
    apply le_of_tendsto_of_tendsto' this clim fun n => ?_
    gcongr
    exact hmono zero_le
  have A : ∀ ε : ℝ, 0 < ε → ∀ᶠ n in atTop, u n - n * l ≤ ε * (1 + ε + l) * n := by
    intro ε εpos
    rcases hlim (1 + ε) ((lt_add_iff_pos_right _).2 εpos) with ⟨c, cgrowth, ctop, clim⟩
    have L : ∀ᶠ n in atTop, u (c n) - c n * l ≤ ε * c n := by
      rw [← tendsto_sub_nhds_zero_iff, ← Asymptotics.isLittleO_one_iff ℝ,
        Asymptotics.isLittleO_iff] at clim
      filter_upwards [clim εpos, ctop (Ioi_mem_atTop 0)] with n hn cnpos'
      have cnpos : 0 < c n := cnpos'
      calc
        u (c n) - c n * l = (u (c n) / c n - l) * c n := by field
        _ ≤ ε * c n := by
          gcongr
          refine (le_abs_self _).trans ?_
          simpa using hn
    obtain ⟨a, ha⟩ :
      ∃ a : ℕ, ∀ b : ℕ, a ≤ b → (c (b + 1) : ℝ) ≤ (1 + ε) * c b ∧ u (c b) - c b * l ≤ ε * c b :=
      eventually_atTop.1 (cgrowth.and L)
    let M := ((Finset.range (a + 1)).image fun i => c i).max' (by simp)
    filter_upwards [Ici_mem_atTop M] with n hn
    have exN : ∃ N, n < c N := by
      rcases (tendsto_atTop.1 ctop (n + 1)).exists with ⟨N, hN⟩
      exact ⟨N, by lia⟩
    let N := Nat.find exN
    have ncN : n < c N := Nat.find_spec exN
    have aN : a + 1 ≤ N := by
      by_contra! h
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
      have A : a ≤ N - 1 := (Nat.le_sub_one_iff_lt Npos).mpr aN
      have B : N - 1 + 1 = N := Nat.succ_pred_eq_of_pos Npos
      have := (ha _ A).1
      rwa [B] at this
    calc
      u n - n * l ≤ u (c N) - c (N - 1) * l := by gcongr; exact hmono ncN.le
      _ = u (c N) - c N * l + (c N - c (N - 1)) * l := by ring
      _ ≤ ε * c N + ε * c (N - 1) * l := by
        gcongr
        · exact (ha N (a.le_succ.trans aN)).2
        · linarith only [IcN]
      _ ≤ ε * ((1 + ε) * c (N - 1)) + ε * c (N - 1) * l := by gcongr
      _ = ε * (1 + ε + l) * c (N - 1) := by ring
      _ ≤ ε * (1 + ε + l) * n := by gcongr
  have B : ∀ ε : ℝ, 0 < ε → ∀ᶠ n : ℕ in atTop, (n : ℝ) * l - u n ≤ ε * (1 + l) * n := by
    intro ε εpos
    rcases hlim (1 + ε) ((lt_add_iff_pos_right _).2 εpos) with ⟨c, cgrowth, ctop, clim⟩
    have L : ∀ᶠ n : ℕ in atTop, (c n : ℝ) * l - u (c n) ≤ ε * c n := by
      rw [← tendsto_sub_nhds_zero_iff, ← Asymptotics.isLittleO_one_iff ℝ,
        Asymptotics.isLittleO_iff] at clim
      filter_upwards [clim εpos, ctop (Ioi_mem_atTop 0)] with n hn cnpos'
      have cnpos : 0 < c n := cnpos'
      calc
        (c n : ℝ) * l - u (c n) = -(u (c n) / c n - l) * c n := by field
        _ ≤ ε * c n := by
          gcongr
          refine le_trans (neg_le_abs _) ?_
          simpa using hn
    obtain ⟨a, ha⟩ :
      ∃ a : ℕ,
        ∀ b : ℕ, a ≤ b → (c (b + 1) : ℝ) ≤ (1 + ε) * c b ∧ (c b : ℝ) * l - u (c b) ≤ ε * c b :=
      eventually_atTop.1 (cgrowth.and L)
    let M := ((Finset.range (a + 1)).image fun i => c i).max' (by simp)
    filter_upwards [Ici_mem_atTop M] with n hn
    have exN : ∃ N, n < c N := by
      rcases (tendsto_atTop.1 ctop (n + 1)).exists with ⟨N, hN⟩
      exact ⟨N, by lia⟩
    let N := Nat.find exN
    have ncN : n < c N := Nat.find_spec exN
    have aN : a + 1 ≤ N := by
      by_contra! h
      have cNM : c N ≤ M := by
        apply le_max'
        apply mem_image_of_mem
        exact mem_range.2 h
      exact lt_irrefl _ ((cNM.trans hn).trans_lt ncN)
    have Npos : 0 < N := lt_of_lt_of_le Nat.succ_pos' aN
    have aN' : a ≤ N - 1 := (Nat.le_sub_one_iff_lt Npos).mpr aN
    have cNn : c (N - 1) ≤ n := by
      have : N - 1 < N := Nat.pred_lt Npos.ne'
      simpa only [not_lt] using Nat.find_min exN this
    calc
      (n : ℝ) * l - u n ≤ c N * l - u (c (N - 1)) := by
        gcongr
        exact hmono cNn
      _ ≤ (1 + ε) * c (N - 1) * l - u (c (N - 1)) := by
        gcongr
        have B : N - 1 + 1 = N := Nat.succ_pred_eq_of_pos Npos
        simpa [B] using (ha _ aN').1
      _ = c (N - 1) * l - u (c (N - 1)) + ε * c (N - 1) * l := by ring
      _ ≤ ε * c (N - 1) + ε * c (N - 1) * l := add_le_add (ha _ aN').2 le_rfl
      _ = ε * (1 + l) * c (N - 1) := by ring
      _ ≤ ε * (1 + l) * n := by gcongr
  refine tendsto_order.2 ⟨fun d hd => ?_, fun d hd => ?_⟩
  · obtain ⟨ε, hε, εpos⟩ : ∃ ε : ℝ, d + ε * (1 + l) < l ∧ 0 < ε := by
      have L : Tendsto (fun ε => d + ε * (1 + l)) (𝓝[>] 0) (𝓝 (d + 0 * (1 + l))) := by
        apply Tendsto.mono_left _ nhdsWithin_le_nhds
        exact tendsto_const_nhds.add (tendsto_id.mul tendsto_const_nhds)
      simp only [zero_mul, add_zero] at L
      exact (((tendsto_order.1 L).2 l hd).and self_mem_nhdsWithin).exists
    filter_upwards [B ε εpos, Ioi_mem_atTop 0] with n hn npos
    simp_rw [div_eq_inv_mul]
    calc
      d < (n : ℝ)⁻¹ * n * (l - ε * (1 + l)) := by
        rw [inv_mul_cancel₀, one_mul]
        · linarith only [hε]
        · exact Nat.cast_ne_zero.2 (ne_of_gt npos)
      _ = (n : ℝ)⁻¹ * (n * l - ε * (1 + l) * n) := by ring
      _ ≤ (n : ℝ)⁻¹ * u n := by gcongr; linarith only [hn]
  · obtain ⟨ε, hε, εpos⟩ : ∃ ε : ℝ, l + ε * (1 + ε + l) < d ∧ 0 < ε := by
      have L : Tendsto (fun ε => l + ε * (1 + ε + l)) (𝓝[>] 0) (𝓝 (l + 0 * (1 + 0 + l))) := by
        apply Tendsto.mono_left _ nhdsWithin_le_nhds
        exact
          tendsto_const_nhds.add
            (tendsto_id.mul ((tendsto_const_nhds.add tendsto_id).add tendsto_const_nhds))
      simp only [zero_mul, add_zero] at L
      exact (((tendsto_order.1 L).2 d hd).and self_mem_nhdsWithin).exists
    filter_upwards [A ε εpos, Ioi_mem_atTop 0] with n hn (npos : 0 < n)
    calc
      u n / n ≤ (n * l + ε * (1 + ε + l) * n) / n := by gcongr; linarith only [hn]
      _ = (l + ε * (1 + ε + l)) := by field
      _ < d := hε

/-- If a monotone sequence `u` is such that `u ⌊c^n⌋₊ / ⌊c^n⌋₊` converges to a limit `l` for all
`c > 1`, then `u n / n` tends to `l`. It is even enough to have the assumption for a sequence of
`c`s converging to `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FloorPow/Variantcb7a375ca86157b7aa0f90f617263a5eadcd80d93462da0588e13b79b27ddf47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FloorPow/Variantcb7a375ca86157b7aa0f90f617263a5eadcd80d93462da0588e13b79b27ddf47.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c1144e0c5a634f4e2264fc1d2a84add4d01f3e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
