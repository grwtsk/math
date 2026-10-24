# integral_riesz_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bec1a1f1ffb3ef5fcc820b3ff68054d69a624b39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4dc6b429d4e1487048ac6192f0c85171fba82757cc48df9fe984b74f1ddf40f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b939d82-0d36-f2ac-3e64-e45f1c113556",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9cfed18e-a69e-13c5-19ae-ca0f5a276995",
  "kind": "lemma",
  "lexical_name": "integral_riesz_aux",
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
  "slug": "integral-riesz-aux--2516c131a07f5ab051adc89a",
  "source": {
    "blob": "bec1a1f1ffb3ef5fcc820b3ff68054d69a624b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 174,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Real/Variant4dc6b429d4e1487048ac6192f0c85171fba82757cc48df9fe984b74f1ddf40f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2516c131a07f5ab051adc89ad7ed0ceacd62f99b1f381006edc2c436aac983d6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Real/Variant4dc6b429d4e1487048ac6192f0c85171fba82757cc48df9fe984b74f1ddf40f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cfed18e-a69e-13c5-19ae-ca0f5a276995`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma integral_riesz_aux (f : C_c(X, ℝ)) : Λ f ≤ ∫ x, f x ∂(rieszMeasure hΛ) := by
  let μ := rieszMeasure hΛ
  let K := tsupport f
  -- Suffices to show that `Λ f ≤ ∫ x, f x ∂μ + ε` for arbitrary `ε`.
  apply le_iff_forall_pos_le_add.mpr
  intro ε hε
  -- Choose an interval `(a, b)` which contains the range of `f`.
  obtain ⟨a, b, hab⟩ : ∃ a b : ℝ, a < b ∧ range f ⊆ Ioo a b := by
    obtain ⟨r, hr⟩ := (Metric.isCompact_iff_isClosed_bounded.mp
      (HasCompactSupport.isCompact_range f.2 f.1.2)).2.subset_ball_lt 0 0
    exact ⟨-r, r, by linarith, hr.2.trans_eq (by simp [Real.ball_eq_Ioo])⟩
  -- Choose `N` positive and sufficiently large such that `ε'` is sufficiently small
  obtain ⟨N, hN, hε'⟩ := exists_nat_large (b - a) (2 * μ.real K + |a| + b) hε
  let ε' := (b - a) / N
  replace hε' : 0 < ε' ∧  ε' * (2 * μ.real K + |a| + b + ε') ≤ ε :=
    ⟨div_pos (sub_pos.mpr hab.1) (Nat.cast_pos'.mpr hN), hε'⟩
  -- Take a partition of the support of `f` into sets `E` by partitioning the range.
  obtain ⟨E, hE⟩ := range_cut_partition f a hε'.1 N <| by
    field_simp [ε', ← mul_div_assoc, mul_div_cancel_left₀, hab.2]
  -- Introduce notation for the partition of the range.
  let y : Fin N → ℝ := fun n ↦ a + ε' * (n + 1)
  -- The measure of each `E n` is finite.
  have hE' (n : Fin N) : μ (E n) ≠ ∞ := by
    have h : E n ⊆ tsupport f := by rw [hE.1]; exact subset_iUnion _ _
    refine lt_top_iff_ne_top.mp ?_
    apply lt_of_le_of_lt <| measure_mono h
    dsimp [μ]
    rw [rieszMeasure, ← coe_toContinuousMap, ← ContinuousMap.toFun_eq_coe,
      Content.measure_apply _ f.2.measurableSet]
    exact Content.outerMeasure_lt_top_of_isCompact _ f.2
  -- Define sets `V` which are open approximations to the sets `E`
  obtain ⟨V, hV⟩ : ∃ V : Fin N → Opens X, ∀ n, E n ⊆ (V n) ∧ (∀ x ∈ V n, f x < y n + ε') ∧
      μ (V n) ≤ μ (E n) + ENNReal.ofReal (ε' / N) := by
    have h_ε' := (div_pos hε'.1 (Nat.cast_pos'.mpr hN))
    have h n x (hx : x ∈ E n) := lt_add_of_le_of_pos ((hE.2.2.1 n x hx).right) hε'.1
    have h' n := Eq.trans_ne
      (Content.measure_apply (rieszContent (toNNRealLinear Λ hΛ)) (hE.2.2.2 n)).symm (hE' n)
    choose V hV using fun n ↦ exists_open_approx f h_ε' (E n) (h' n) (hE.2.2.2 n) (h n)
    exact ⟨V, hV⟩
  -- Define a partition of unity subordinated to the sets `V`
  obtain ⟨g, hg⟩ : ∃ g : Fin N → C_c(X, ℝ), (∀ n, tsupport (g n) ⊆ (V n).carrier) ∧
      EqOn (∑ n : Fin N, (g n)) 1 (tsupport f.toFun) ∧ (∀ n x, (g n) x ∈ Icc 0 1) ∧
      ∀ n, HasCompactSupport (g n) := by
    have : tsupport f ⊆ ⋃ n, (V n).carrier := calc
      _ = ⋃ j, E j := hE.1
      _ ⊆ _ := by gcongr with n; exact (hV n).1
    obtain ⟨g', hg⟩ := exists_continuous_sum_one_of_isOpen_isCompact (fun n ↦ (V n).2) f.2 this
    exact ⟨fun n ↦ ⟨g' n, hg.2.2.2 n⟩, hg⟩
  -- The proof is completed by a chain of inequalities.
  calc Λ f
    _ = Λ (∑ n, g n • f) := ?_
    _ = ∑ n, Λ (g n • f) := by simp
    _ ≤ ∑ n, Λ ((y n + ε') • g n) := ?_
    _ = ∑ n, (y n + ε') * Λ (g n) := by simp
    -- That `y n + ε'` can be negative is bad in the inequalities so we artificially include `|a|`.
    _ = ∑ n, (|a| + y n + ε') * Λ (g n) - |a| * ∑ n, Λ (g n) :=
      by simp [add_assoc, add_mul |a|, Finset.sum_add_distrib, Finset.mul_sum]
    _ ≤ ∑ n, (|a| + y n + ε') * (μ.real (E n) + ε' / N) - |a| * ∑ n, Λ (g n) := ?_
    _ ≤ ∑ n, (|a| + y n + ε') * (μ.real (E n) + ε' / N) - |a| * μ.real K := ?_
    _ = ∑ n, (y n - ε') * μ.real (E n) +
      2 * ε' * μ.real K + ε' / N * ∑ n, (|a| + y n + ε') := ?_
    _ ≤ ∫ (x : X), f x ∂μ + 2 * ε' * μ.real K + ε' / N * ∑ n, (|a| + y n + ε') := ?_
    _ ≤ ∫ (x : X), f x ∂μ + ε' * (2 * μ.real K + |a| + b + ε') := ?_
    _ ≤ ∫ (x : X), f x ∂μ + ε := by simp [hε'.2]
  · -- Equality since `∑ i : Fin N, (g i)` is equal to unity on the support of `f`
    congr; ext x
    simp only [coe_sum, coe_smulc, smul_eq_mul, Finset.sum_apply, coe_mul, Pi.mul_apply,
      ← Finset.sum_mul, ← Finset.sum_apply]
    by_cases hx : x ∈ tsupport f
    · simp [hg.2.1 hx]
    · simp [image_eq_zero_of_notMem_tsupport hx]
  · -- Use that `f ≤ y n + ε'` on `V n`
    gcongr with n hn
    apply monotone_of_nonneg hΛ
    intro x
    by_cases hx : x ∈ tsupport (g n)
    · rw [smul_eq_mul, mul_comm]
      apply mul_le_mul_of_nonneg_right ?_ (hg.2.2.1 n x).1
      exact le_of_lt <| (hV n).2.1 x <| mem_of_subset_of_mem (hg.1 n) hx
    · simp [image_eq_zero_of_notMem_tsupport hx]
  · -- Use that `Λ (g n) ≤ μ (V n)).toReal ≤ μ (E n)).toReal + ε' / N`
    gcongr with n hn
    · calc
        _ ≤ |a| + a := neg_le_iff_add_nonneg'.mp <| neg_abs_le a
        _ ≤ |a| + a + ε' * (n + 1) := (le_add_iff_nonneg_right (|a| + a)).mpr <| Left.mul_nonneg
          (le_of_lt hε'.1) <| Left.add_nonneg (Nat.cast_nonneg' n) (zero_le_one' ℝ)
        _ ≤ _ := by rw [← add_assoc, le_add_iff_nonneg_right]; exact le_of_lt hε'.1
    · calc
        _ ≤ μ.real (V n) := by
          apply (ENNReal.ofReal_le_iff_le_toReal _).mp
          · exact le_rieszMeasure_tsupport_subset hΛ (fun x ↦ hg.2.2.1 n x) (hg.1 n)
          · rw [← lt_top_iff_ne_top]
            apply lt_of_le_of_lt (hV n).2.2
            rw [WithTop.add_lt_top]
            exact ⟨WithTop.lt_top_iff_ne_top.mpr (hE' n), ENNReal.ofReal_lt_top⟩
        _ ≤ _ := by
          rw [← ENNReal.toReal_ofReal (div_nonneg (le_of_lt hε'.1) (Nat.cast_nonneg _))]
          apply ENNReal.toReal_le_add (hV n).2.2
          · exact hE' n
          · exact ENNReal.ofReal_ne_top
  · -- Use that `μ K ≤ Λ (∑ n, g n)`
    gcongr
    rw [← map_sum Λ g _]
    have h x : 0 ≤ (∑ n, g n) x := by simpa using Fintype.sum_nonneg fun n ↦ (hg.2.2.1 n x).1
    apply ENNReal.toReal_le_of_le_ofReal
    · exact hΛ (∑ n, g n) (fun x ↦ h x)
    · have h' x (hx : x ∈ K) : (∑ n, g n) x = 1 := by simp [hg.2.1 hx]
      refine rieszMeasure_le_of_eq_one hΛ h f.2 h'
  · -- Rearrange the sums
    have (n : Fin N) : (|a| + y n + ε') * μ.real (E n) =
        (|a| + 2 * ε') * μ.real (E n) + (y n - ε') * μ.real (E n) := by linarith
    simp_rw [mul_add, this]
    have : ∑ i, μ.real (E i) = μ.real K := by
      suffices h : μ K = ∑ i, (μ (E i)) by
        simp only [measureReal_def, h]
        exact Eq.symm <| ENNReal.toReal_sum <| fun n _ ↦ hE' n
      dsimp [K]; rw [hE.1]
      rw [measure_iUnion (fun m n hmn ↦ hE.2.1 trivial trivial hmn) hE.2.2.2]
      exact tsum_fintype fun b ↦ μ (E b)
    rw [Finset.sum_add_distrib, Finset.sum_add_distrib, ← Finset.mul_sum, this, ← Finset.sum_mul]
    linarith
  · -- Use that `y n - ε' ≤ f x` on `E n`
    gcongr
    have h : ∀ n, (y n - ε') * μ.real (E n) ≤ ∫ x in (E n), f x ∂μ := by
      intro n
      apply setIntegral_ge_of_const_le (hE.2.2.2 n) (hE' n)
      · intro x hx
        dsimp [y]; linarith [(hE.2.2.1 n x hx).1]
      · apply Integrable.integrableOn
        dsimp [μ, rieszMeasure]
        exact Continuous.integrable_of_hasCompactSupport f.1.2 f.2
    calc
      _ ≤ ∑ n, ∫ (x : X) in E n, f x ∂μ := Finset.sum_le_sum fun i a ↦ h i
      _ = ∫ x in (⋃ n, E n), f x ∂μ := by
        refine Eq.symm <| integral_fintype_iUnion hE.2.2.2 (fun _ _ ↦ hE.2.1 trivial trivial) ?_
        dsimp [μ, rieszMeasure]
        exact fun _ ↦
          Integrable.integrableOn <| Continuous.integrable_of_hasCompactSupport f.1.2 f.2
      _ = ∫ x in tsupport f, f x ∂μ := by simp_rw [hE.1]
      _ = _ := setIntegral_tsupport
  · -- Rough bound of the sum
    have h : ∑ n : Fin N, y n ≤ N * b := by
      have (n : Fin N) := calc y n
        _ ≤ a + ε' * N := by simp_all [y, show (n : ℝ) + 1 ≤ N by norm_cast; omega]
        _ = b := by field_simp [ε', ← mul_div_assoc, mul_div_cancel_left₀]
      have : ∑ n, y n ≤ ∑ n, b := Finset.sum_le_sum (fun n ↦ fun _ ↦ this n)
      simp_all
    simp only [add_assoc, add_le_add_iff_left, Finset.sum_add_distrib, Finset.sum_add_distrib,
               Fin.sum_const, Fin.sum_const, nsmul_eq_mul, ← add_assoc, mul_add, ← mul_assoc]
    simpa [show (N : ℝ) ≠ 0 by simp [hN.ne.symm], mul_comm _ ε', div_eq_mul_inv, mul_assoc]
      using (mul_le_mul_iff_of_pos_left hε'.1).mpr <| (inv_mul_le_iff₀ (Nat.cast_pos'.mpr hN)).mpr h

/-- The **Riesz-Markov-Kakutani representation theorem**: given a positive linear functional `Λ`,
the integral of `f` with respect to the `rieszMeasure` associated to `Λ` is equal to `Λ f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Real/Variant4dc6b429d4e1487048ac6192f0c85171fba82757cc48df9fe984b74f1ddf40f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Real/Variant4dc6b429d4e1487048ac6192f0c85171fba82757cc48df9fe984b74f1ddf40f2.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bec1a1f1ffb3ef5fcc820b3ff68054d69a624b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
