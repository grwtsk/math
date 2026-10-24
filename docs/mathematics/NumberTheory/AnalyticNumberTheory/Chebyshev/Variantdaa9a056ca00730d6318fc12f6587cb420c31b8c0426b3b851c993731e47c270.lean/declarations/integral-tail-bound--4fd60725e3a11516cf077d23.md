# integral_tail_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f527e07a44c44619e45eb142a7aa0d20a239b39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/daa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7054ed1e-78ad-7335-6896-5212bf503dcd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9e7e8ce-5943-797b-2e00-dfe8651d3bea",
  "kind": "lemma",
  "lexical_name": "integral_tail_bound",
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
  "slug": "integral-tail-bound--4fd60725e3a11516cf077d23",
  "source": {
    "blob": "5f527e07a44c44619e45eb142a7aa0d20a239b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 107,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fd60725e3a11516cf077d2317aadc980641a7a81dbeabd5571411a73002c8a4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9e7e8ce-5943-797b-2e00-dfe8651d3bea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma integral_tail_bound {x : ℝ} (hx : 1 ≤ x) :
    ∫ t in Set.Ioc 1 x, t ^ (-(2⁻¹ : ℝ) - 1) * Chebyshev.psi t
      ≤ Real.log 4 * (2 * Real.sqrt x - 2) + Real.log x ^ 2 := by
  have hx0 : (0 : ℝ) < x := lt_of_lt_of_le one_pos hx
  -- the explicit dominating integrand
  set g : ℝ → ℝ := fun t => Real.log 4 * t ^ (-(2⁻¹ : ℝ)) + 2 * (Real.log t * t⁻¹) with hg
  have hcont_g : ContinuousOn g (Set.Icc 1 x) := by
    apply ContinuousOn.add
    · exact continuousOn_const.mul fun t ht =>
        (Real.continuousAt_rpow_const t _
          (Or.inl (by nlinarith [ht.1] : t ≠ 0))).continuousWithinAt
    · refine continuousOn_const.mul (ContinuousOn.mul ?_ ?_)
      · exact fun t ht => (Real.continuousAt_log (by nlinarith [ht.1])).continuousWithinAt
      · exact continuousOn_inv₀.mono fun t ht => by
          simp only [Set.mem_compl_iff, Set.mem_singleton_iff]
          nlinarith [ht.1]
  -- step 1: pointwise comparison with g on Ioc 1 x
  have hpoint : ∀ t ∈ Set.Ioc (1 : ℝ) x,
      t ^ (-(2⁻¹ : ℝ) - 1) * Chebyshev.psi t ≤ g t := by
    intro t ht
    have ht1 : (1 : ℝ) ≤ t := ht.1.le
    have ht0 : (0 : ℝ) < t := lt_of_lt_of_le one_pos ht1
    have hψ : Chebyshev.psi t ≤ Real.log 4 * t + 2 * Real.sqrt t * Real.log t :=
      Chebyshev.psi_le ht1
    have hrnn : (0 : ℝ) ≤ t ^ (-(2⁻¹ : ℝ) - 1) := Real.rpow_nonneg ht0.le _
    calc t ^ (-(2⁻¹ : ℝ) - 1) * Chebyshev.psi t
        ≤ t ^ (-(2⁻¹ : ℝ) - 1) * (Real.log 4 * t + 2 * Real.sqrt t * Real.log t) :=
          mul_le_mul_of_nonneg_left hψ hrnn
      _ = g t := by
          rw [hg]
          have e1 : t ^ (-(2⁻¹ : ℝ) - 1) * t = t ^ (-(2⁻¹ : ℝ)) := by
            rw [← Real.rpow_add_one ht0.ne']
            ring_nf
          have e2 : t ^ (-(2⁻¹ : ℝ) - 1) * Real.sqrt t = t⁻¹ := by
            rw [Real.sqrt_eq_rpow, ← Real.rpow_add ht0, ← Real.rpow_neg_one t]
            norm_num
          calc t ^ (-(2⁻¹ : ℝ) - 1) * (Real.log 4 * t + 2 * Real.sqrt t * Real.log t)
              = Real.log 4 * (t ^ (-(2⁻¹ : ℝ) - 1) * t)
                + 2 * ((t ^ (-(2⁻¹ : ℝ) - 1) * Real.sqrt t) * Real.log t) := by ring
            _ = Real.log 4 * t ^ (-(2⁻¹ : ℝ)) + 2 * (Real.log t * t⁻¹) := by
                rw [e1, e2]; ring
  -- step 2: integrability of both sides on Ioc 1 x
  have hint_g : IntegrableOn g (Set.Ioc 1 x) :=
    (hcont_g.integrableOn_Icc).mono_set Set.Ioc_subset_Icc_self
  have hmeas_f : AEStronglyMeasurable (fun t : ℝ => t ^ (-(2⁻¹ : ℝ) - 1) * Chebyshev.psi t)
      (volume.restrict (Set.Ioc 1 x)) := by
    refine AEStronglyMeasurable.mul ?_ ?_
    · exact (ContinuousOn.aestronglyMeasurable (fun t ht =>
        (Real.continuousAt_rpow_const t _
          (Or.inl (by nlinarith [(Set.mem_Ioc.mp ht).1] : t ≠ 0))).continuousWithinAt)
        measurableSet_Ioc)
    · exact (Chebyshev.psi_mono.measurable.aestronglyMeasurable).restrict
  have hint_f : IntegrableOn (fun t : ℝ => t ^ (-(2⁻¹ : ℝ) - 1) * Chebyshev.psi t)
      (Set.Ioc 1 x) := by
    refine Integrable.mono' (g := fun _ => (Real.log 4 + 4) * x)
      (integrableOn_const (by simp)) hmeas_f ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
    have ht1 : (1 : ℝ) ≤ t := ht.1.le
    have ht0 : (0 : ℝ) < t := lt_of_lt_of_le one_pos ht1
    have h1 : t ^ (-(2⁻¹ : ℝ) - 1) ≤ 1 :=
      Real.rpow_le_one_of_one_le_of_nonpos ht1 (by norm_num)
    have h2 : (0 : ℝ) ≤ Chebyshev.psi t := Chebyshev.psi_nonneg t
    have h3 : Chebyshev.psi t ≤ (Real.log 4 + 4) * x :=
      le_trans (Chebyshev.psi_mono ht.2) (Chebyshev.psi_le_const_mul_self hx0.le)
    have hrnn : (0 : ℝ) ≤ t ^ (-(2⁻¹ : ℝ) - 1) := Real.rpow_nonneg ht0.le _
    rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg hrnn h2)]
    calc t ^ (-(2⁻¹ : ℝ) - 1) * Chebyshev.psi t ≤ 1 * Chebyshev.psi t :=
          mul_le_mul_of_nonneg_right h1 h2
      _ = Chebyshev.psi t := one_mul _
      _ ≤ (Real.log 4 + 4) * x := h3
  -- step 3: compare, then evaluate ∫ g
  refine le_trans (setIntegral_mono_on hint_f hint_g measurableSet_Ioc hpoint) ?_
  rw [← intervalIntegral.integral_of_le hx]
  have hi1 : IntervalIntegrable (fun t : ℝ => Real.log 4 * t ^ (-(2⁻¹ : ℝ))) volume 1 x := by
    apply ContinuousOn.intervalIntegrable
    rw [Set.uIcc_of_le hx]
    exact continuousOn_const.mul fun t ht =>
      (Real.continuousAt_rpow_const t _
        (Or.inl (by nlinarith [ht.1] : t ≠ 0))).continuousWithinAt
  have hi2 : IntervalIntegrable (fun t : ℝ => 2 * (Real.log t * t⁻¹)) volume 1 x := by
    apply ContinuousOn.intervalIntegrable
    rw [Set.uIcc_of_le hx]
    refine continuousOn_const.mul (ContinuousOn.mul ?_ ?_)
    · exact fun t ht => (Real.continuousAt_log (by nlinarith [ht.1])).continuousWithinAt
    · exact continuousOn_inv₀.mono fun t ht => by
        simp only [Set.mem_compl_iff, Set.mem_singleton_iff]
        nlinarith [ht.1]
  rw [hg]
  rw [intervalIntegral.integral_add hi1 hi2, intervalIntegral.integral_const_mul,
    intervalIntegral.integral_const_mul]
  have hv1 : ∫ t in (1:ℝ)..x, t ^ (-(2⁻¹ : ℝ)) = 2 * Real.sqrt x - 2 := by
    rw [integral_rpow (Or.inl (by norm_num : (-1 : ℝ) < -(2⁻¹)))]
    rw [Real.one_rpow]
    rw [Real.sqrt_eq_rpow]
    norm_num
    ring
  have hv2 : ∫ t in (1:ℝ)..x, Real.log t * t⁻¹ = Real.log x ^ 2 / 2 := by
    have hftc : ∀ t ∈ Set.uIcc (1:ℝ) x,
        HasDerivAt (fun t : ℝ => Real.log t ^ 2 / 2) (Real.log t * t⁻¹) t := by
      intro t ht
      rw [Set.uIcc_of_le hx] at ht
      have ht0 : t ≠ 0 := by nlinarith [ht.1]
      have h := ((Real.hasDerivAt_log ht0).pow 2).div_const 2
      have heq : Real.log t * t⁻¹ = ((2 : ℕ) : ℝ) * Real.log t ^ (2 - 1) * t⁻¹ / 2 := by
        push_cast
        ring
      rw [heq]
      exact h
    have hint : IntervalIntegrable (fun t : ℝ => Real.log t * t⁻¹) volume 1 x := by
      apply ContinuousOn.intervalIntegrable
      rw [Set.uIcc_of_le hx]
      refine ContinuousOn.mul ?_ ?_
      · exact fun t ht => (Real.continuousAt_log (by nlinarith [ht.1])).continuousWithinAt
      · exact continuousOn_inv₀.mono fun t ht => by
          simp only [Set.mem_compl_iff, Set.mem_singleton_iff]
          nlinarith [ht.1]
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt hftc hint]
    simp [Real.log_one]
  rw [hv1, hv2]
  ring_nf
  nlinarith [Real.sqrt_nonneg x, Real.log_nonneg hx]

end Cheb1b

/-- Precise partial-summation bound: Σ_{n≤x} Λ(n)/√n ≤ 2 log 4·√x + 2 log x + (log x)²/2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f527e07a44c44619e45eb142a7aa0d20a239b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
