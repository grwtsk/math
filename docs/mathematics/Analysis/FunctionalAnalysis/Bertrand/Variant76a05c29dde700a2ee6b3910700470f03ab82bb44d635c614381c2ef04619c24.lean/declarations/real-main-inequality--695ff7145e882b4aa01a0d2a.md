# real_main_inequality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:410f733a-f7c2-7c44-17d6-c2edadb5ce65",
  "kind": "theorem",
  "lexical_name": "real_main_inequality",
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
  "slug": "real-main-inequality--695ff7145e882b4aa01a0d2a",
  "source": {
    "blob": "baeb745b11750d08d34050e9625d90f410a90b98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 62,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Bertrand/Variant76a05c29dde700a2ee6b3910700470f03ab82bb44d635c614381c2ef04619c24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:695ff7145e882b4aa01a0d2a939b6e303f6d239d590fbae115c46f509c56d05d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Bertrand/Variant76a05c29dde700a2ee6b3910700470f03ab82bb44d635c614381c2ef04619c24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:410f733a-f7c2-7c44-17d6-c2edadb5ce65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem real_main_inequality {x : ℝ} (n_large : (512 : ℝ) ≤ x) :
    x * (2 * x) ^ sqrt (2 * x) * 4 ^ (2 * x / 3) ≤ 4 ^ x := by
  let f : ℝ → ℝ := fun x => log x + sqrt (2 * x) * log (2 * x) - log 4 / 3 * x
  have hf' : ∀ x, 0 < x → 0 < x * (2 * x) ^ sqrt (2 * x) / 4 ^ (x / 3) := fun x h =>
    div_pos (mul_pos h (rpow_pos_of_pos (mul_pos two_pos h) _)) (rpow_pos_of_pos four_pos _)
  have hf : ∀ x, 0 < x → f x = log (x * (2 * x) ^ sqrt (2 * x) / 4 ^ (x / 3)) := by
    intro x h5
    have h6 := mul_pos (zero_lt_two' ℝ) h5
    have h7 := rpow_pos_of_pos h6 (sqrt (2 * x))
    rw [log_div (mul_pos h5 h7).ne' (rpow_pos_of_pos four_pos _).ne', log_mul h5.ne' h7.ne',
      log_rpow h6, log_rpow zero_lt_four, ← mul_div_right_comm, ← mul_div, mul_comm x]
  have h5 : 0 < x := lt_of_lt_of_le (by norm_num1) n_large
  rw [← div_le_one (rpow_pos_of_pos four_pos x), ← div_div_eq_mul_div, ← rpow_sub four_pos, ←
    mul_div 2 x, mul_div_left_comm, ← mul_one_sub, (by norm_num1 : (1 : ℝ) - 2 / 3 = 1 / 3),
    mul_one_div, ← log_nonpos_iff (hf' x h5), ← hf x h5]
  -- porting note: the proof was rewritten, because it was too slow
  have h : ConcaveOn ℝ (Set.Ioi 0.5) f := by
    apply ConcaveOn.sub
    apply ConcaveOn.add
    exact strictConcaveOn_log_Ioi.concaveOn.subset
      (Set.Ioi_subset_Ioi (by norm_num)) (convex_Ioi 0.5)
    convert ((strictConcaveOn_sqrt_mul_log_Ioi.concaveOn.comp_linearMap
      ((2 : ℝ) • LinearMap.id))) using 1
    · ext x
      simp only [Set.mem_Ioi, Set.mem_preimage, LinearMap.smul_apply,
        LinearMap.id_coe, id_eq, smul_eq_mul]
      rw [← mul_lt_mul_left (two_pos)]
      norm_num1
      rfl
    apply ConvexOn.smul
    refine div_nonneg (log_nonneg (by norm_num1)) (by norm_num1)
    exact convexOn_id (convex_Ioi (0.5 : ℝ))
  suffices ∃ x1 x2, 0.5 < x1 ∧ x1 < x2 ∧ x2 ≤ x ∧ 0 ≤ f x1 ∧ f x2 ≤ 0 by
    obtain ⟨x1, x2, h1, h2, h0, h3, h4⟩ := this
    exact (h.right_le_of_le_left'' h1 ((h1.trans h2).trans_le h0) h2 h0 (h4.trans h3)).trans h4
  refine' ⟨18, 512, by norm_num1, by norm_num1, n_large, _, _⟩
  · have : sqrt (2 * 18) = 6 := (sqrt_eq_iff_mul_self_eq_of_pos (by norm_num1)).mpr (by norm_num1)
    rw [hf, log_nonneg_iff, this]
    rw [one_le_div] <;> norm_num1
    apply le_trans _ (le_mul_of_one_le_left _ _) <;> norm_num1
    apply Real.rpow_le_rpow <;> norm_num1
    apply rpow_nonneg_of_nonneg; norm_num1
    apply rpow_pos_of_pos; norm_num1
    apply hf' 18; norm_num1
    norm_num1
  · have : sqrt (2 * 512) = 32 :=
      (sqrt_eq_iff_mul_self_eq_of_pos (by norm_num1)).mpr (by norm_num1)
    rw [hf, log_nonpos_iff (hf' _ _), this, div_le_one] <;> norm_num1
    have : (512 : ℝ) = 2 ^ (9 : ℕ)
    · rw [rpow_nat_cast 2 9]; norm_num1
    conv_lhs => rw [this]
    have : (1024 : ℝ) = 2 ^ (10 : ℕ)
    · rw [rpow_nat_cast 2 10]; norm_num1
    rw [this, ← rpow_mul, ← rpow_add] <;> norm_num1
    have : (4 : ℝ) = 2 ^ (2 : ℕ)
    · rw [rpow_nat_cast 2 2]; norm_num1
    rw [this, ← rpow_mul] <;> norm_num1
    apply rpow_le_rpow_of_exponent_le <;> norm_num1
    apply rpow_pos_of_pos four_pos
 #align bertrand.real_main_inequality Bertrand.real_main_inequality

end Bertrand

end Real

section Nat

open Nat

/-- The inequality which contradicts Bertrand's postulate, for large enough `n`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Bertrand/Variant76a05c29dde700a2ee6b3910700470f03ab82bb44d635c614381c2ef04619c24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Bertrand/Variant76a05c29dde700a2ee6b3910700470f03ab82bb44d635c614381c2ef04619c24.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `baeb745b11750d08d34050e9625d90f410a90b98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
