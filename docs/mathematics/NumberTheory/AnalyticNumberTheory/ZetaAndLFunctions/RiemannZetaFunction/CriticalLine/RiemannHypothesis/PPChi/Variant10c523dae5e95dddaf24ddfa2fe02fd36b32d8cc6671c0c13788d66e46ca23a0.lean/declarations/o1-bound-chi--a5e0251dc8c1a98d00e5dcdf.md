# O1_bound_chi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db2e3d52969f93d93f479a49e8e0c273da06f899",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 615,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d749b02b-6953-3b0e-8dea-5998e40a3cb3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06f4c9e6-e9a3-450f-006a-222e017396ef",
  "kind": "theorem",
  "lexical_name": "O1_bound_chi",
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
  "slug": "o1-bound-chi--a5e0251dc8c1a98d00e5dcdf",
  "source": {
    "blob": "db2e3d52969f93d93f479a49e8e0c273da06f899",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 778,
    "line": 615,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5e0251dc8c1a98d00e5dcdf2e06290528a533957b13fcf977751dc0fc96d894",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06f4c9e6-e9a3-450f-006a-222e017396ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 615–778.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem O1_bound_chi {C : ℝ} (hMV : Zeta23.MVHilbert C) (hC : 0 ≤ C) (hT : 0 ≤ T)
    (hΦ : Continuous Φ) (hΦ2 : Integrable fun x => Φ x ^ 2) (hc1 : ∀ n, ‖c n‖ ≤ 1) (X : ℝ) :
    |∑ n ∈ primeRange X, ∑ m ∈ primeRange X,
        (if n = m then (0:ℝ) else (acoef n * ‖c n‖) * (acoef m * ‖c m‖)
          * AminusPh Φ T (Real.log n) (Real.log m) (c n).arg (c m).arg)|
      ≤ 16 * C * (∫ x, Φ x ^ 2) * ∑ n ∈ primeRange X, (Λ n : ℝ) ^ 2 := by
  set W : ℝ := ∫ x, Φ x ^ 2 with hW
  have hW0 : 0 ≤ W := MeasureTheory.integral_nonneg fun x => sq_nonneg _
  set Λ2 : ℝ := ∑ n ∈ primeRange X, (Λ n : ℝ) ^ 2 with hΛ2
  have hΛ2nn : 0 ≤ Λ2 := Finset.sum_nonneg fun n _ => sq_nonneg _
  set S1 : ℝ := ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (if n = m then (0:ℝ) else
    acoef n * (‖c n‖ * Cm Φ T (Real.log n)) * (acoef m * ‖c m‖)
      * Real.sin ((2 * T) * (Real.log n - Real.log m) - ((c n).arg - (c m).arg)) / (Real.log n - Real.log m)) with hS1
  set S2 : ℝ := ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (if n = m then (0:ℝ) else
    acoef n * (‖c n‖ * Sm Φ T (Real.log n)) * (acoef m * ‖c m‖)
      * Real.cos ((2 * T) * (Real.log n - Real.log m) - ((c n).arg - (c m).arg)) / (Real.log n - Real.log m)) with hS2
  set S3 : ℝ := ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (if n = m then (0:ℝ) else
    acoef n * ‖c n‖ * (acoef m * (‖c m‖ * Cm Φ T (Real.log m)))
      * Real.sin (T * (Real.log n - Real.log m) - ((c n).arg - (c m).arg)) / (Real.log n - Real.log m)) with hS3
  set S4 : ℝ := ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (if n = m then (0:ℝ) else
    acoef n * ‖c n‖ * (acoef m * (‖c m‖ * Sm Φ T (Real.log m)))
      * Real.cos (T * (Real.log n - Real.log m) - ((c n).arg - (c m).arg)) / (Real.log n - Real.log m)) with hS4
  set S5 : ℝ := ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (if n = m then (0:ℝ) else
    acoef n * ‖c n‖ * (acoef m * (‖c m‖ * Cp Φ T (Real.log m)))
      * Real.sin ((2 * T) * (Real.log n - Real.log m) - ((c n).arg - (c m).arg)) / (Real.log n - Real.log m)) with hS5
  set S6 : ℝ := ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (if n = m then (0:ℝ) else
    acoef n * ‖c n‖ * (acoef m * (‖c m‖ * Sp Φ T (Real.log m)))
      * Real.cos ((2 * T) * (Real.log n - Real.log m) - ((c n).arg - (c m).arg)) / (Real.log n - Real.log m)) with hS6
  set S7 : ℝ := ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (if n = m then (0:ℝ) else
    acoef n * (‖c n‖ * Cp Φ T (Real.log n)) * (acoef m * ‖c m‖)
      * Real.sin (T * (Real.log n - Real.log m) - ((c n).arg - (c m).arg)) / (Real.log n - Real.log m)) with hS7
  set S8 : ℝ := ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (if n = m then (0:ℝ) else
    acoef n * (‖c n‖ * Sp Φ T (Real.log n)) * (acoef m * ‖c m‖)
      * Real.cos (T * (Real.log n - Real.log m) - ((c n).arg - (c m).arg)) / (Real.log n - Real.log m)) with hS8
  have hsplit : ∑ n ∈ primeRange X, ∑ m ∈ primeRange X,
      (if n = m then (0:ℝ) else (acoef n * ‖c n‖) * (acoef m * ‖c m‖)
        * AminusPh Φ T (Real.log n) (Real.log m) ((c n).arg) ((c m).arg))
      = S1 + S2 - S3 - S4 + S5 + S6 - S7 - S8 := by
    rw [hS1, hS2, hS3, hS4, hS5, hS6, hS7, hS8]
    simp only [← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun n hn => Finset.sum_congr rfl fun m hm => ?_
    by_cases hnm : n = m
    · simp [hnm]
    · simp only [if_neg hnm]
      have hθ : Real.log n - Real.log m ≠ 0 := by
        have hn1 := one_le_of_mem_primeRange hn
        have hm1 := one_le_of_mem_primeRange hm
        have hinj : Real.log n ≠ Real.log m := by
          rcases lt_or_gt_of_ne hnm with hlt | hgt
          · exact ne_of_lt (Real.log_lt_log (by exact_mod_cast hn1) (by exact_mod_cast hlt))
          · exact ne_of_gt (Real.log_lt_log (by exact_mod_cast hm1) (by exact_mod_cast hgt))
        exact sub_ne_zero.mpr hinj
      have hA := sub_mul_AminusPh_eq (Φ := Φ) hT hΦ hθ ((c n).arg) ((c m).arg)
      have hAm : AminusPh Φ T (Real.log n) (Real.log m) ((c n).arg) ((c m).arg)
          = ((Real.sin ((Real.log n - Real.log m) * (2 * T) - ((c n).arg - (c m).arg)) * Cm Φ T (Real.log n)
              + Real.cos ((Real.log n - Real.log m) * (2 * T) - ((c n).arg - (c m).arg)) * Sm Φ T (Real.log n)
              - (Real.sin ((Real.log n - Real.log m) * T - ((c n).arg - (c m).arg)) * Cm Φ T (Real.log m)
                + Real.cos ((Real.log n - Real.log m) * T - ((c n).arg - (c m).arg)) * Sm Φ T (Real.log m)))
            + (Real.sin ((Real.log n - Real.log m) * (2 * T) - ((c n).arg - (c m).arg)) * Cp Φ T (Real.log m)
              + Real.cos ((Real.log n - Real.log m) * (2 * T) - ((c n).arg - (c m).arg)) * Sp Φ T (Real.log m)
              - (Real.sin ((Real.log n - Real.log m) * T - ((c n).arg - (c m).arg)) * Cp Φ T (Real.log n)
                + Real.cos ((Real.log n - Real.log m) * T - ((c n).arg - (c m).arg)) * Sp Φ T (Real.log n))))
            / (Real.log n - Real.log m) := by
        rw [eq_div_iff hθ, mul_comm]
        exact hA
      rw [hAm, mul_comm ((2 : ℝ) * T) (Real.log n - Real.log m),
        mul_comm T (Real.log n - Real.log m)]
      field_simp
      ring
  have hb : ∀ (M : ℕ → ℝ), (∀ n ∈ primeRange X, |M n| ≤ W) →
      (∀ n ∈ primeRange X, |‖c n‖ * M n| ≤ W) := by
    intro M hM n hn
    rw [abs_mul, abs_of_nonneg (norm_nonneg _)]
    calc ‖c n‖ * |M n| ≤ 1 * W := by
          apply mul_le_mul (hc1 n) (hM n hn) (abs_nonneg _) zero_le_one
      _ = W := one_mul _
  have hc1' : ∀ n ∈ primeRange X, |(‖c n‖ : ℝ)| ≤ 1 := by
    intro n _
    rw [abs_of_nonneg (norm_nonneg _)]
    exact hc1 n
  have hw_Cm : ∀ n ∈ primeRange X, |Cm Φ T (Real.log n)| ≤ W := fun n _ => abs_Cm_le hT hΦ hΦ2 _
  have hw_Sm : ∀ n ∈ primeRange X, |Sm Φ T (Real.log n)| ≤ W := fun n _ => abs_Sm_le hT hΦ hΦ2 _
  have hw_Cp : ∀ n ∈ primeRange X, |Cp Φ T (Real.log n)| ≤ W := fun n _ => abs_Cp_le hT hΦ hΦ2 _
  have hw_Sp : ∀ n ∈ primeRange X, |Sp Φ T (Real.log n)| ≤ W := fun n _ => abs_Sp_le hT hΦ hΦ2 _
  have hb1 : |S1| ≤ 2 * C * W * Λ2 := by
    rw [hS1]
    have h := (MV_real_ph hMV X (2 * T) (fun k => acoef k * (‖c k‖ * Cm Φ T (Real.log k))) (fun k => acoef k * ‖c k‖) (fun k => (c k).arg)).2
    have hsz := (MV_size_le₂ hC X hW0 hc1' (hb _ hw_Cm)).2
    have hfin := h.trans hsz
    rw [← hΛ2] at hfin
    exact hfin
  have hb2 : |S2| ≤ 2 * C * W * Λ2 := by
    rw [hS2]
    have h := (MV_real_ph hMV X (2 * T) (fun k => acoef k * (‖c k‖ * Sm Φ T (Real.log k))) (fun k => acoef k * ‖c k‖) (fun k => (c k).arg)).1
    have hsz := (MV_size_le₂ hC X hW0 hc1' (hb _ hw_Sm)).2
    have hfin := h.trans hsz
    rw [← hΛ2] at hfin
    exact hfin
  have hb3 : |S3| ≤ 2 * C * W * Λ2 := by
    rw [hS3]
    have h := (MV_real_ph hMV X (T) (fun k => acoef k * ‖c k‖) (fun k => acoef k * (‖c k‖ * Cm Φ T (Real.log k))) (fun k => (c k).arg)).2
    have hsz := (MV_size_le₂ hC X hW0 hc1' (hb _ hw_Cm)).1
    have hfin := h.trans hsz
    rw [← hΛ2] at hfin
    exact hfin
  have hb4 : |S4| ≤ 2 * C * W * Λ2 := by
    rw [hS4]
    have h := (MV_real_ph hMV X (T) (fun k => acoef k * ‖c k‖) (fun k => acoef k * (‖c k‖ * Sm Φ T (Real.log k))) (fun k => (c k).arg)).1
    have hsz := (MV_size_le₂ hC X hW0 hc1' (hb _ hw_Sm)).1
    have hfin := h.trans hsz
    rw [← hΛ2] at hfin
    exact hfin
  have hb5 : |S5| ≤ 2 * C * W * Λ2 := by
    rw [hS5]
    have h := (MV_real_ph hMV X (2 * T) (fun k => acoef k * ‖c k‖) (fun k => acoef k * (‖c k‖ * Cp Φ T (Real.log k))) (fun k => (c k).arg)).2
    have hsz := (MV_size_le₂ hC X hW0 hc1' (hb _ hw_Cp)).1
    have hfin := h.trans hsz
    rw [← hΛ2] at hfin
    exact hfin
  have hb6 : |S6| ≤ 2 * C * W * Λ2 := by
    rw [hS6]
    have h := (MV_real_ph hMV X (2 * T) (fun k => acoef k * ‖c k‖) (fun k => acoef k * (‖c k‖ * Sp Φ T (Real.log k))) (fun k => (c k).arg)).1
    have hsz := (MV_size_le₂ hC X hW0 hc1' (hb _ hw_Sp)).1
    have hfin := h.trans hsz
    rw [← hΛ2] at hfin
    exact hfin
  have hb7 : |S7| ≤ 2 * C * W * Λ2 := by
    rw [hS7]
    have h := (MV_real_ph hMV X (T) (fun k => acoef k * (‖c k‖ * Cp Φ T (Real.log k))) (fun k => acoef k * ‖c k‖) (fun k => (c k).arg)).2
    have hsz := (MV_size_le₂ hC X hW0 hc1' (hb _ hw_Cp)).2
    have hfin := h.trans hsz
    rw [← hΛ2] at hfin
    exact hfin
  have hb8 : |S8| ≤ 2 * C * W * Λ2 := by
    rw [hS8]
    have h := (MV_real_ph hMV X (T) (fun k => acoef k * (‖c k‖ * Sp Φ T (Real.log k))) (fun k => acoef k * ‖c k‖) (fun k => (c k).arg)).1
    have hsz := (MV_size_le₂ hC X hW0 hc1' (hb _ hw_Sp)).2
    have hfin := h.trans hsz
    rw [← hΛ2] at hfin
    exact hfin
  rw [hsplit]
  have habs : |S1 + S2 - S3 - S4 + S5 + S6 - S7 - S8|
      ≤ |S1| + |S2| + |S3| + |S4| + |S5| + |S6| + |S7| + |S8| := by
    have t1 := abs_add_le S1 S2
    have t2 := abs_sub (S1 + S2) S3
    have t3 := abs_sub (S1 + S2 - S3) S4
    have t4 := abs_add_le (S1 + S2 - S3 - S4) S5
    have t5 := abs_add_le (S1 + S2 - S3 - S4 + S5) S6
    have t6 := abs_sub (S1 + S2 - S3 - S4 + S5 + S6) S7
    have t7 := abs_sub (S1 + S2 - S3 - S4 + S5 + S6 - S7) S8
    linarith
  calc |S1 + S2 - S3 - S4 + S5 + S6 - S7 - S8|
      ≤ |S1| + |S2| + |S3| + |S4| + |S5| + |S6| + |S7| + |S8| := habs
    _ ≤ 8 * (2 * C * W * Λ2) := by linarith
    _ = 16 * C * W * Λ2 := by ring

end O1Chi

/-! ## The coprime g-sandwich (§5.4 with [eq:cheb2] restricted to (n,q)=1) -/

section SandwichChi
variable {p : Setting} {F : LocalFun}

/-- Upper half, over the window-generic Core layer (uses only g ≤ A_φ ≤ (L−|y|)₊). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean#L615).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db2e3d52969f93d93f479a49e8e0c273da06f899` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
