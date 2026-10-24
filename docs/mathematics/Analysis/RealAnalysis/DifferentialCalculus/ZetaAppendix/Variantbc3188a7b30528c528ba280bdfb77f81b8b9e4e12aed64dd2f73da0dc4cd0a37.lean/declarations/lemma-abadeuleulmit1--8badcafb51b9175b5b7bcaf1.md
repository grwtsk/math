# lemma_abadeuleulmit1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4049d6c7-4a7d-2478-e068-6a3129ebf0a6",
  "kind": "theorem",
  "lexical_name": "lemma_abadeuleulmit1",
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
  "slug": "lemma-abadeuleulmit1--8badcafb51b9175b5b7bcaf1",
  "source": {
    "blob": "8d4e5744caad9c4a9cac4d9b39a2102c21fd6987",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2235,
    "line": 2154,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8badcafb51b9175b5b7bcaf1cc5e9f967cedf813aa5289ed1a78eb0109d48b44",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4049d6c7-4a7d-2478-e068-6a3129ebf0a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2154–2235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemma_abadeuleulmit1 {z : ℂ} (hz : z ∈ integerComplement) :
    (π / sin (π * z)) =
    (1 / z) + ∑' (n : ℕ+), (-1) ^ (n : ℕ) * ((1 / (z - n) : ℂ) + (1 / (z + n) : ℂ)) := calc
  _ = (1 / 2) * π * 2 / sin (π * z) := by field_simp
  _ = (1 / 2) * (π * cot (π * z / 2)) - (1 / 2) * (π * cot (π * (z + 1) / 2)) := by
    have : π * z / 2 + π / 2 = π * (z + 1) / 2 := by grind
    have := this ▸ trig'' (z := π * z / 2) ?_
    · by_contra!
      obtain ⟨n, hn⟩ := this
      have := mul_right_cancel₀ (by exact_mod_cast pi_ne_zero)
        ((mul_comm (π : ℂ) z) ▸ ((div_left_inj' (by grind)).1 hn))
      simp_all [integerComplement]
    · rw [mul_div_assoc, ← mul_sub, ← mul_sub, mul_assoc, this]; field_simp
  _ = (1 / 2) * (1 / (z / 2) + ∑' n : ℕ+, (1 / (z / 2 - n) + 1 / (z / 2 + n))) -
      (1 / 2) * (1 / ((z + 1) / 2) + ∑' n : ℕ+, (1 / ((z + 1) / 2 - n)
      + 1 / ((z + 1) / 2 + n))) := by
      congr
      · have : z / 2 ∈ integerComplement := by
          simp_all only [integerComplement, Set.mem_compl_iff, Set.mem_range, not_exists]
          refine fun n hn ↦ hz (2 * n) ?_
          grind
        simpa [mul_div_assoc] using cot_series_rep this
      · have : (z + 1) / 2 ∈ integerComplement := by
          simp_all only [integerComplement, Set.mem_compl_iff, Set.mem_range, not_exists]
          refine fun n hn ↦ hz (2 * n - 1) ?_
          grind
        simpa [mul_div_assoc] using cot_series_rep this
  _ = 1 / z + ∑' n : ℕ+, (1 / (z - 2 * n) + 1 / (z + 2 * n)) -
      (1 / (z + 1) + ∑' n : ℕ+, (1 / (z + 1 - 2 * n) + 1 / (z + 1 + 2 * n))) := by
      field_simp
      rw [mul_sub, mul_add, mul_add, ← div_eq_mul_one_div, ← div_eq_mul_one_div,
        Summable.tsum_mul_left 2 (hsummable hz), Summable.tsum_mul_left 2 (hsummable' hz)]
  _ = 1 / z + ∑' n : ℕ+, (1 / (z - 2 * n) + 1 / (z + 2 * n)) -
      ∑' n : ℕ+, (1 / (z - (2 * n - 1)) + 1 / (z + (2 * n - 1))) := by
      congr
      refine Eq.symm (sub_eq_iff_eq_add.1 ?_)
      rw [← Summable.tsum_sub ?_ (hsummable' hz)]
      · simp only [sub_sub_eq_add_sub, add_sub_add_left_eq_sub, tsum_pnat_eq_tsum_succ
          (f := fun b ↦ (1 / (z + (2 * b - 1)) - 1 / (z + (2 * b + 1)))), add_assoc z 1,
          add_comm (1 : ℂ)]
        refine HasSum.tsum_eq ((Summable.hasSum_iff_tendsto_nat ?_).2 ?_)
        · suffices Summable (fun n : ℤ ↦ 2 * ((z + n + 1) * (z + n + 3))⁻¹) by
            have hi : (fun n : ℕ ↦ (2 * n : ℤ)).Injective := fun _ _ _ ↦ by simp_all
            have := this.comp_injective hi
            convert this using 2 with n
            rw [one_div, one_div, inv_sub_inv]
            · simp; field_simp; ring
            · simp_all only [integerComplement, mem_compl_iff, Set.mem_range, not_exists,
                ne_eq, add_eq_zero_iff_eq_neg]
              exact fun h ↦ hz (-(2 * (n + 1) - 1)) (by simp_all)
            · simp_all only [integerComplement, mem_compl_iff, Set.mem_range, not_exists,
                ne_eq, add_eq_zero_iff_eq_neg]
              exact fun h ↦ hz (-(2 * (n + 1) + 1)) (by simp_all)
          refine Summable.mul_left 2 ?_
          apply EisensteinSeries.summable_inv_of_isBigO_rpow_inv (a := 2) (by norm_cast)
          simpa [pow_two] using (EisensteinSeries.linear_inv_isBigO_right_add 1 3 z).mul
            (EisensteinSeries.linear_inv_isBigO_right_add 1 1 z)
        · refine (Filter.tendsto_congr (telescoping_sum z)).2 ?_
          nth_rw 2 [← sub_zero (1 / (z + 1))]
          simpa [add_comm _ (1 : ℂ), ← add_assoc, one_mul, - one_div, Function.comp_def] using
            ((EisensteinSeries.tendsto_zero_inv_linear (1 + z) 1).comp
            (tendsto_id.const_mul_atTop' (by linarith))).const_sub (1 / (z + 1))
      · exact hsummable'' hz
  _ = 1 / z + ∑' n : ℕ+, (-1) ^ (2 * n : ℕ) * (1 / (z - 2 * n) + 1 / (z + 2 * n)) +
      ∑' n : ℕ+, (-1) * (1 / (z - (2 * n - 1)) + 1 / (z + (2 * n - 1))) := by
      rw [Summable.tsum_mul_left (-1), neg_one_mul, ← sub_eq_add_neg]
      · congr; ext ; simp
      · exact hsummable'' hz
  _ = 1 / z + ∑' n : ℕ+, (-1) ^ (2 * n : ℕ) * (1 / (z - 2 * n) + 1 / (z + 2 * n)) +
      ∑' n : ℕ+, (-1) ^ (2 * n - 1 : ℕ) * (1 / (z - (2 * n - 1)) + 1 / (z + (2 * n - 1))) := by
      congr; simp [neg_one_pow]
  _ = (1 / z) + ∑' (n : ℕ+), (-1) ^ (n : ℕ) * ((1 / (z - n) : ℂ) + (1 / (z + n) : ℂ)) := by
      have hn (n : ℕ+) : ((2 * n - 1 : ℕ+) : ℕ) = 2 * n - 1 := by
        have : 1 < 2 * n := Nat.le_trans (by norm_num; rfl) (Nat.mul_le_mul_left 2 n.2)
        simp [PNat.sub_coe, this]
      rw [add_assoc, ← tsum_even_add_odd' (f := fun n ↦ (-1) ^ (n : ℕ) * ((1 / (z - n) : ℂ)
        + (1 / (z + n) : ℂ))), add_comm (∑' (k : ℕ+), (-1) ^ ((2 * k - 1 : ℕ+) : ℕ) * _) _]
      · congr <;> aesop
      · simpa using asummable hz
      · convert asummable'' hz <;> aesop

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean#L2154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d4e5744caad9c4a9cac4d9b39a2102c21fd6987` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
