# lemma_abadeulmac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1848,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64dd9869-3161-cdb5-34e6-6a553cf1e1a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2239064d-f1e9-b701-2984-70b0125224f1",
  "kind": "theorem",
  "lexical_name": "lemma_abadeulmac",
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
  "slug": "lemma-abadeulmac--ae5e34c57d536f2473577bbf",
  "source": {
    "blob": "bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1949,
    "line": 1848,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae5e34c57d536f2473577bbfefb2343a0597da9b415b620d1f1cfed6c8fc431d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2239064d-f1e9-b701-2984-70b0125224f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1848–1949.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemma_abadeulmac {b : ℝ} (hb : 0 < b) (hb' : b.IsHalfInteger) {s : ℂ}
    (hs1 : s ≠ 1) (hsigma : 0 < s.re) :
    ∑ n ∈ Icc 1 ⌊b⌋₊, (n : ℂ) ^ (-s) =
      riemannZeta s + (b ^ (1 - s) : ℂ) / (1 - s) +
      s * ∫ y in Set.Ioi b, (Int.fract y - 1 / 2 : ℂ) * ((y : ℂ) ^ (-(s + 1))) := by
  have := @lemma_abadeulmac'
  obtain ⟨k, rfl⟩:=hb'
  lift k to@ℕ using Int.le_of_lt_add_one (mod_cast (by linear_combination hb:0<(k: ℝ) + 1))
  specialize this k.succ_pos hs1 hsigma
  norm_num[k.floor_eq_iff (hb.le.trans ↑ _)|>.mpr, sum_Icc_succ_top]at*
  conv =>
    enter [2, 2, 2, 1, 2, 1]
    equals (1 : ℝ) / 2 + k => ring_nf
  rw [←Set.Ioc_union_Ioi_eq_Ioi (add_le_add_left one_half_lt_one.le _), MeasureTheory.setIntegral_union₀]
  · conv =>
      enter [2, 2, 2, 1, 1, 2, 1]
      equals (k : ℝ) + 1/2 => ring_nf
    conv =>
      enter [2, 2, 2, 1, 1, 2, 2]
      equals (k : ℝ) + 1 => ring_nf
    rw [MeasureTheory.integral_Ioc_eq_integral_Ioo, MeasureTheory.setIntegral_congr_fun (g := fun x : ℝ => (x - k - 1/2 : ℂ) * x ^ (-1 + -s)) measurableSet_Ioo]
    · rw[MeasureTheory.setIntegral_congr_fun (g:=fun x:ℝ=>(x : ℂ)^(-s)-k*x^(-1+-s)-1/2*x^(-1+-s)) (measurableSet_Ioo),←MeasureTheory.integral_Ioc_eq_integral_Ioo]
      · norm_num[*,←intervalIntegral.integral_of_le _]
        have notmem : 0 ∉ Set.uIcc ((k : ℝ) + 1 / 2) ((k : ℝ) + 1) := by
          apply Set.notMem_uIcc_of_lt <;> positivity
        have  int1 : IntervalIntegrable (fun t ↦ (t : ℂ) ^ (-1 + -s)) volume (↑k + 1 / 2) (↑k + 1) := by
          exact intervalIntegral.intervalIntegrable_cpow (Or.inr notmem)
        have  int0 : IntervalIntegrable (fun t ↦ (t : ℂ) ^ (-s)) volume (↑k + 1 / 2) (↑k + 1) := by
          exact intervalIntegral.intervalIntegrable_cpow (Or.inr notmem)
        rw [intervalIntegral.integral_sub (int0.sub (int1.const_mul _)) (int1.const_mul _), intervalIntegral.integral_sub int0 (int1.const_mul _)]
        simp only [intervalIntegral.integral_const_mul]
        have ne_zero : s ≠ 0 := fun h ↦ (by simp_all)
        rw [integral_cpow (Or.inr ⟨(by grind), notmem⟩), integral_cpow (Or.inr ⟨(by simp[ne_zero]), notmem⟩)]
        norm_num
        rw [eq_sub_of_add_eq this]
        apply sub_eq_zero.mp
        field_simp [s.ne_zero_of_re_pos hsigma]
        ring_nf
        have {x : ℂ} (hx : x ≠ 0) : x ^ (1 - s) = x * x^(-s) := by
          rw [sub_eq_add_neg, cpow_add _ _ hx, cpow_one]
        rw [this, this]
        · have : 1 - s ≠ 0 := by grind
          field [s.ne_zero_of_re_pos hsigma]
        · rw [add_comm] at hb
          convert  ofReal_ne_zero.mpr hb.ne.symm
          simp
        · have : 1 + (k : ℝ) ≠ 0 := by linarith
          convert  ofReal_ne_zero.mpr this
          simp
      · use fun A B=>by norm_num[sub_mul,mul_comm (A : ℂ), (hb.trans B.1).ne',cpow_add,cpow_neg]
    · use fun and p=>by zify[Int.fract,Int.floor_eq_iff.2 (p.imp_left (by linear_combination·)),Int.cast_natCast]
  · norm_num[MeasureTheory.AEDisjoint]
  · norm_num
  · conv =>
      enter [2, 1]
      equals (k : ℝ) + 1/2 => ring_nf
    conv =>
      enter [2, 2]
      equals (k : ℝ) + 1 => ring_nf
    rw[integrableOn_Ioc_iff_integrableOn_Ioo,MeasureTheory.integrableOn_congr_fun (fun A B=>by rw [Int.fract,Int.floor_eq_iff.2 (B.imp_left (by linear_combination·))]) measurableSet_Ioo]
    exact (ContinuousOn.mul (by fun_prop) (.cpow_const (by fun_prop) fun and c=>.inl (hb.trans_le c.1))).integrableOn_Icc.mono_set Set.Ioo_subset_Icc_self
  · apply(integrableOn_Ioi_rpow_of_lt (by norm_num[*]:-1+-s.1< _) (by bound)).norm.mono' ((measurable_fract.complex_ofReal.sub_const _).mul (by fun_prop)).aestronglyMeasurable
    filter_upwards[MeasureTheory.ae_restrict_mem (by norm_num)] with S(F: S> _)
    have := k.cast_add_one_pos (α := ℝ)
    conv at this =>
      enter [2]
      equals (1 : ℝ) + k => ring_nf

    norm_num[abs_of_pos, S.rpow_pos_of_pos, (F.trans' this).le, norm_cpow_eq_rpow_re_of_nonneg, ne_of_gt,(norm_sub_le _ _).trans ∘le_of_lt]
    rw [norm_cpow_eq_rpow_re_of_nonneg]
    conv =>
      enter [1, 2, 2]
      equals (-1 : ℝ) + -s.re => simp
    · rw [abs_of_pos]
      · conv =>
          enter [2]
          equals (1 : ℝ) * S ^ (-1 + -s.re) => ring_nf
        gcongr
        · apply (S.rpow_pos_of_pos (by linarith) _).le

        exact (congr_arg _ (by zify)).trans_le ((norm_real (Int.fract S-1/2)).le.trans (max_le (by linear_combination Int.fract_lt_one S) (by linear_combination Int.fract_nonneg S)))
      · apply (S.rpow_pos_of_pos (by linarith) _)
    · linarith
    · simp only [add_re, neg_re, one_re, ne_eq]
      linarith

@[blueprint
  "lem:abadtoabsum"
  (title := "Estimate for a partial sum of $\\zeta(s)$")
  (statement := /--
Let $b>a>0$, $b\in \mathbb{Z} + \frac{1}{2}$.
Then, for all $s\in \mathbb{C}\setminus \{1\}$ with $\sigma = \Re s > 0$,
$$\sum_{n\leq a} \frac{1}{n^s} = -\sum_{a < n\leq b} \frac{1}{n^s} + \zeta(s)
  + \frac{b^{1-s}}{1-s} + O^*\left(\frac{|s|}{2 \sigma b^\sigma}\right).$$
-/)
  (proof := /--
By Lemma \ref{lem:abadeulmac}, $\sum_{n\leq a} = \sum_{n\leq b} - \sum_{a < n\leq b}$,
$\left|\{y\}-\frac{1}{2}\right| \leq \frac{1}{2}$ and
$\int_b^\infty \frac{dy}{|y^{s+1}|} = \frac{1}{\sigma b^\sigma}$.
-/)
  (latexEnv := "lemma")
  (discussion := 567)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean#L1848).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
