# O1_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18f1bb05-4b2e-b3b2-8670-17d5501c3ed9",
  "kind": "theorem",
  "lexical_name": "O1_bound",
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
  "slug": "o1-bound--103bd591850eabffc783bea9",
  "source": {
    "blob": "58d748132d6f743c5d970eb298820b14bd6285ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPOffDiag/Variantd27d45733788cf40c3357c62e6927d7fbd071a634575ea78c5565a17c865d948.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:103bd591850eabffc783bea99434adadbe36944dc50c7bfb24c7cb2634285af1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPOffDiag/Variantd27d45733788cf40c3357c62e6927d7fbd071a634575ea78c5565a17c865d948.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18f1bb05-4b2e-b3b2-8670-17d5501c3ed9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem O1_bound {C : ℝ} (hMV : Zeta23.MVHilbert C) (hC : 0 ≤ C) {Φ : ℝ → ℝ} {T : ℝ} (hT : 0 ≤ T)
    (hΦ : Continuous Φ) (hΦ2 : Integrable fun x => Φ x ^ 2) (X : ℝ) :
    |∑ n ∈ primeRange X, ∑ m ∈ primeRange X,
        (if n = m then (0:ℝ) else acoef n * acoef m * Aminus Φ T (Real.log n) (Real.log m))|
      ≤ 16 * C * (∫ x, Φ x ^ 2) * ∑ n ∈ primeRange X, (Λ n : ℝ) ^ 2 := by
  set W : ℝ := ∫ x, Φ x ^ 2 with hW
  have hW0 : 0 ≤ W := MeasureTheory.integral_nonneg fun x => sq_nonneg _
  set Λ2 : ℝ := ∑ n ∈ primeRange X, (Λ n : ℝ) ^ 2 with hΛ2
  have hΛ2nn : 0 ≤ Λ2 := Finset.sum_nonneg fun n _ => sq_nonneg _
  -- the eight MV-shaped sums (u/v/c/trig as in sub_mul_Aminus_eq, divided by θ)
  set S1 : ℝ := ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (if n = m then (0:ℝ) else
    (fun k => acoef k * Cm Φ T (Real.log k)) n * acoef m
      * Real.sin ((2 * T) * (Real.log n - Real.log m)) / (Real.log n - Real.log m)) with hS1
  set S2 : ℝ := ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (if n = m then (0:ℝ) else
    (fun k => acoef k * Sm Φ T (Real.log k)) n * acoef m
      * Real.cos ((2 * T) * (Real.log n - Real.log m)) / (Real.log n - Real.log m)) with hS2
  set S3 : ℝ := ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (if n = m then (0:ℝ) else
    acoef n * (fun k => acoef k * Cm Φ T (Real.log k)) m
      * Real.sin (T * (Real.log n - Real.log m)) / (Real.log n - Real.log m)) with hS3
  set S4 : ℝ := ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (if n = m then (0:ℝ) else
    acoef n * (fun k => acoef k * Sm Φ T (Real.log k)) m
      * Real.cos (T * (Real.log n - Real.log m)) / (Real.log n - Real.log m)) with hS4
  set S5 : ℝ := ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (if n = m then (0:ℝ) else
    acoef n * (fun k => acoef k * Cp Φ T (Real.log k)) m
      * Real.sin ((2 * T) * (Real.log n - Real.log m)) / (Real.log n - Real.log m)) with hS5
  set S6 : ℝ := ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (if n = m then (0:ℝ) else
    acoef n * (fun k => acoef k * Sp Φ T (Real.log k)) m
      * Real.cos ((2 * T) * (Real.log n - Real.log m)) / (Real.log n - Real.log m)) with hS6
  set S7 : ℝ := ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (if n = m then (0:ℝ) else
    (fun k => acoef k * Cp Φ T (Real.log k)) n * acoef m
      * Real.sin (T * (Real.log n - Real.log m)) / (Real.log n - Real.log m)) with hS7
  set S8 : ℝ := ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (if n = m then (0:ℝ) else
    (fun k => acoef k * Sp Φ T (Real.log k)) n * acoef m
      * Real.cos (T * (Real.log n - Real.log m)) / (Real.log n - Real.log m)) with hS8
  -- split the target into the eight sums
  have hsplit : ∑ n ∈ primeRange X, ∑ m ∈ primeRange X,
      (if n = m then (0:ℝ) else acoef n * acoef m * Aminus Φ T (Real.log n) (Real.log m))
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
      have hA := sub_mul_Aminus_eq (Φ := Φ) hT hΦ hθ
      have hAm : Aminus Φ T (Real.log n) (Real.log m)
          = ((Real.sin ((Real.log n - Real.log m) * (2 * T)) * Cm Φ T (Real.log n)
              + Real.cos ((Real.log n - Real.log m) * (2 * T)) * Sm Φ T (Real.log n)
              - (Real.sin ((Real.log n - Real.log m) * T) * Cm Φ T (Real.log m)
                + Real.cos ((Real.log n - Real.log m) * T) * Sm Φ T (Real.log m)))
            + (Real.sin ((Real.log n - Real.log m) * (2 * T)) * Cp Φ T (Real.log m)
              + Real.cos ((Real.log n - Real.log m) * (2 * T)) * Sp Φ T (Real.log m)
              - (Real.sin ((Real.log n - Real.log m) * T) * Cp Φ T (Real.log n)
                + Real.cos ((Real.log n - Real.log m) * T) * Sp Φ T (Real.log n))))
            / (Real.log n - Real.log m) := by
        rw [eq_div_iff hθ]
        rw [mul_comm]
        exact hA
      rw [hAm, mul_comm ((2 : ℝ) * T) (Real.log n - Real.log m),
        mul_comm T (Real.log n - Real.log m)]
      field_simp
      ring
  -- bound each sum via H-MV + the moment bounds
  have hw_Cm : ∀ n ∈ primeRange X, |Cm Φ T (Real.log n)| ≤ W := fun n _ => abs_Cm_le hT hΦ hΦ2 _
  have hw_Sm : ∀ n ∈ primeRange X, |Sm Φ T (Real.log n)| ≤ W := fun n _ => abs_Sm_le hT hΦ hΦ2 _
  have hw_Cp : ∀ n ∈ primeRange X, |Cp Φ T (Real.log n)| ≤ W := fun n _ => abs_Cp_le hT hΦ hΦ2 _
  have hw_Sp : ∀ n ∈ primeRange X, |Sp Φ T (Real.log n)| ≤ W := fun n _ => abs_Sp_le hT hΦ hΦ2 _
  have hb1 : |S1| ≤ 2 * C * W * Λ2 := by
    rw [hS1]
    refine le_trans ((MV_real hMV X (2 * T)
      (fun k => acoef k * Cm Φ T (Real.log k)) acoef).2) ?_
    exact (MV_size_le hC X hW0 hw_Cm).2
  have hb2 : |S2| ≤ 2 * C * W * Λ2 := by
    rw [hS2]
    refine le_trans ((MV_real hMV X (2 * T)
      (fun k => acoef k * Sm Φ T (Real.log k)) acoef).1) ?_
    exact (MV_size_le hC X hW0 hw_Sm).2
  have hb3 : |S3| ≤ 2 * C * W * Λ2 := by
    rw [hS3]
    refine le_trans ((MV_real hMV X T
      acoef (fun k => acoef k * Cm Φ T (Real.log k))).2) ?_
    exact (MV_size_le hC X hW0 hw_Cm).1
  have hb4 : |S4| ≤ 2 * C * W * Λ2 := by
    rw [hS4]
    refine le_trans ((MV_real hMV X T
      acoef (fun k => acoef k * Sm Φ T (Real.log k))).1) ?_
    exact (MV_size_le hC X hW0 hw_Sm).1
  have hb5 : |S5| ≤ 2 * C * W * Λ2 := by
    rw [hS5]
    refine le_trans ((MV_real hMV X (2 * T)
      acoef (fun k => acoef k * Cp Φ T (Real.log k))).2) ?_
    exact (MV_size_le hC X hW0 hw_Cp).1
  have hb6 : |S6| ≤ 2 * C * W * Λ2 := by
    rw [hS6]
    refine le_trans ((MV_real hMV X (2 * T)
      acoef (fun k => acoef k * Sp Φ T (Real.log k))).1) ?_
    exact (MV_size_le hC X hW0 hw_Sp).1
  have hb7 : |S7| ≤ 2 * C * W * Λ2 := by
    rw [hS7]
    refine le_trans ((MV_real hMV X T
      (fun k => acoef k * Cp Φ T (Real.log k)) acoef).2) ?_
    exact (MV_size_le hC X hW0 hw_Cp).2
  have hb8 : |S8| ≤ 2 * C * W * Λ2 := by
    rw [hS8]
    refine le_trans ((MV_real hMV X T
      (fun k => acoef k * Sp Φ T (Real.log k)) acoef).1) ?_
    exact (MV_size_le hC X hW0 hw_Sp).2
  -- assemble
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

end PrimeSide
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPOffDiag/Variantd27d45733788cf40c3357c62e6927d7fbd071a634575ea78c5565a17c865d948.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPOffDiag/Variantd27d45733788cf40c3357c62e6927d7fbd071a634575ea78c5565a17c865d948.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58d748132d6f743c5d970eb298820b14bd6285ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
