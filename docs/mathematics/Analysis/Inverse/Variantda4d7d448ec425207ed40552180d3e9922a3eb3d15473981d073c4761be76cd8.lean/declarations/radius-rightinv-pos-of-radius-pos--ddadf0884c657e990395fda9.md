# radius_rightInv_pos_of_radius_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4002faa92ad69e93264c02064e7a1f74a0447741",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 505,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72f11533-fcff-9f75-1710-48c8c5e84d7d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0db1dd6a-dad1-170f-b232-f90c1dfb515a",
  "kind": "theorem",
  "lexical_name": "radius_rightInv_pos_of_radius_pos",
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
  "slug": "radius-rightinv-pos-of-radius-pos--ddadf0884c657e990395fda9",
  "source": {
    "blob": "4002faa92ad69e93264c02064e7a1f74a0447741",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 582,
    "line": 505,
    "path": "GRWTSK/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddadf0884c657e990395fda9ddaa9d44fd4f6dd2657363f7118889987b915f66",
  "verification": {
    "reference": "docs/verification/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0db1dd6a-dad1-170f-b232-f90c1dfb515a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–582.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem radius_rightInv_pos_of_radius_pos (p : FormalMultilinearSeries 𝕜 E F) (i : E ≃L[𝕜] F)
    (hp : 0 < p.radius) : 0 < (p.rightInv i).radius := by
  obtain ⟨C, r, Cpos, rpos, ple⟩ :
    ∃ (C r : _) (_ : 0 < C) (_ : 0 < r), ∀ n : ℕ, ‖p n‖ ≤ C * r ^ n :=
    le_mul_pow_of_radius_pos p hp
  let I := ‖(i.symm : F →L[𝕜] E)‖
  -- choose `a` small enough to make sure that `∑_{k ≤ n} aᵏ Qₖ` will be controllable by
  -- induction
  obtain ⟨a, apos, ha1, ha2⟩ :
    ∃ (a : _) (apos : 0 < a),
      2 * I * C * r ^ 2 * (I + 1) ^ 2 * a ≤ 1 ∧ r * (I + 1) * a ≤ 1 / 2 := by
    have :
      Tendsto (fun a => 2 * I * C * r ^ 2 * (I + 1) ^ 2 * a) (𝓝 0)
        (𝓝 (2 * I * C * r ^ 2 * (I + 1) ^ 2 * 0)) :=
      tendsto_const_nhds.mul tendsto_id
    have A : ∀ᶠ a in 𝓝 0, 2 * I * C * r ^ 2 * (I + 1) ^ 2 * a < 1 := by
      apply (tendsto_order.1 this).2; simp [zero_lt_one]
    have : Tendsto (fun a => r * (I + 1) * a) (𝓝 0) (𝓝 (r * (I + 1) * 0)) :=
      tendsto_const_nhds.mul tendsto_id
    have B : ∀ᶠ a in 𝓝 0, r * (I + 1) * a < 1 / 2 := by
      apply (tendsto_order.1 this).2; simp [zero_lt_one]
    have C : ∀ᶠ a in 𝓝[>] (0 : ℝ), (0 : ℝ) < a := by
      filter_upwards [self_mem_nhdsWithin] with _ ha using ha
    rcases(C.and ((A.and B).filter_mono inf_le_left)).exists with ⟨a, ha⟩
    exact ⟨a, ha.1, ha.2.1.le, ha.2.2.le⟩
  -- check by induction that the partial sums are suitably bounded, using the choice of `a` and the
  -- inductive control from Lemma `radius_rightInv_pos_of_radius_pos_aux2`.
  let S n := ∑ k in Ico 1 n, a ^ k * ‖p.rightInv i k‖
  have IRec : ∀ n, 1 ≤ n → S n ≤ (I + 1) * a := by
    apply Nat.le_induction
    · simp only
      rw [Ico_eq_empty_of_le (le_refl 1), sum_empty]
      exact mul_nonneg (add_nonneg (norm_nonneg _) zero_le_one) apos.le
    · intro n one_le_n hn
      have In : 2 ≤ n + 1 := by linarith only [one_le_n]
      have Snonneg : 0 ≤ S n :=
        sum_nonneg fun x _ => mul_nonneg (pow_nonneg apos.le _) (norm_nonneg _)
      have rSn : r * S n ≤ 1 / 2 :=
        calc
          r * S n ≤ r * ((I + 1) * a) := mul_le_mul_of_nonneg_left hn rpos.le
          _ ≤ 1 / 2 := by rwa [← mul_assoc]
      calc
        S (n + 1) ≤ I * a + I * C * ∑ k in Ico 2 (n + 1), (r * S n) ^ k :=
          radius_rightInv_pos_of_radius_pos_aux2 In p i rpos.le apos.le Cpos.le ple
        _ = I * a + I * C * (((r * S n) ^ 2 - (r * S n) ^ (n + 1)) / (1 - r * S n)) := by
          rw [geom_sum_Ico' _ In]; exact ne_of_lt (rSn.trans_lt (by norm_num))
        _ ≤ I * a + I * C * ((r * S n) ^ 2 / (1 / 2)) := by
          apply_rules [add_le_add, le_refl, mul_le_mul_of_nonneg_left, mul_nonneg, norm_nonneg,
            Cpos.le]
          refine' div_le_div (sq_nonneg _) _ (by norm_num) (by linarith only [rSn])
          simp only [sub_le_self_iff]
          apply pow_nonneg (mul_nonneg rpos.le Snonneg)
        _ = I * a + 2 * I * C * (r * S n) ^ 2 := by ring
        _ ≤ I * a + 2 * I * C * (r * ((I + 1) * a)) ^ 2 := by
          apply_rules [add_le_add, le_refl, mul_le_mul_of_nonneg_left, mul_nonneg, norm_nonneg,
            Cpos.le, zero_le_two, pow_le_pow_of_le_left, rpos.le]
        _ = (I + 2 * I * C * r ^ 2 * (I + 1) ^ 2 * a) * a := by ring
        _ ≤ (I + 1) * a := by apply_rules [mul_le_mul_of_nonneg_right, apos.le, add_le_add, le_refl]
  -- conclude that all coefficients satisfy `aⁿ Qₙ ≤ (I + 1) a`.
  let a' : NNReal := ⟨a, apos.le⟩
  suffices H : (a' : ENNReal) ≤ (p.rightInv i).radius
  · apply lt_of_lt_of_le _ H; exact_mod_cast apos
  apply le_radius_of_bound _ ((I + 1) * a) fun n => ?_
  by_cases hn : n = 0
  · have : ‖p.rightInv i n‖ = ‖p.rightInv i 0‖ := by congr <;> try rw [hn]
    simp only [this, norm_zero, zero_mul, rightInv_coeff_zero]
    apply_rules [mul_nonneg, add_nonneg, norm_nonneg, zero_le_one, apos.le]
  · have one_le_n : 1 ≤ n := bot_lt_iff_ne_bot.2 hn
    calc
      ‖p.rightInv i n‖ * (a' : ℝ) ^ n = a ^ n * ‖p.rightInv i n‖ := mul_comm _ _
      _ ≤ ∑ k in Ico 1 (n + 1), a ^ k * ‖p.rightInv i k‖ :=
        (haveI : ∀ k ∈ Ico 1 (n + 1), 0 ≤ a ^ k * ‖p.rightInv i k‖ := fun k _ =>
          mul_nonneg (pow_nonneg apos.le _) (norm_nonneg _)
        single_le_sum this (by simp [one_le_n]))
      _ ≤ (I + 1) * a := IRec (n + 1) (by norm_num)
#align formal_multilinear_series.radius_right_inv_pos_of_radius_pos FormalMultilinearSeries.radius_rightInv_pos_of_radius_pos

end FormalMultilinearSeries
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4002faa92ad69e93264c02064e7a1f74a0447741` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
