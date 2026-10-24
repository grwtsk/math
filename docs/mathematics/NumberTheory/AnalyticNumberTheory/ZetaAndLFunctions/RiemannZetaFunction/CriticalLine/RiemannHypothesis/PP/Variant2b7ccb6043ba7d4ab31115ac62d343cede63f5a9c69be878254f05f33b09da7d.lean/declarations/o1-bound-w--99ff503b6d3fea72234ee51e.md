# O1_bound_w

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "53f44380c7a4ec8099d45d329c081f43824d4a9e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 323,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b7ccb6043ba7d4ab31115ac62d343cede63f5a9c69be878254f05f33b09da7d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f1892e7-356b-d429-feb6-c2cefb6a4196",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c58185a-a6bc-e876-e6fd-990aec3a55b0",
  "kind": "theorem",
  "lexical_name": "O1_bound_w",
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
  "slug": "o1-bound-w--99ff503b6d3fea72234ee51e",
  "source": {
    "blob": "53f44380c7a4ec8099d45d329c081f43824d4a9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 323,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2b7ccb6043ba7d4ab31115ac62d343cede63f5a9c69be878254f05f33b09da7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99ff503b6d3fea72234ee51e28285b3bc299258bbf2ff1af774542ef74827a92",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2b7ccb6043ba7d4ab31115ac62d343cede63f5a9c69be878254f05f33b09da7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c58185a-a6bc-e876-e6fd-990aec3a55b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem O1_bound_w {C : ℝ} (hMV : Zeta23.MVHilbert C) (hC : 0 ≤ C) (hT : 0 ≤ T)
    (hΦ : Continuous Φ) (hΦ2 : Integrable fun x => Φ x ^ 2) (X : ℝ) (w φ : ℕ → ℝ) :
    |∑ n ∈ primeRange X, ∑ m ∈ primeRange X,
        (if n = m then (0:ℝ) else w n * w m
          * AminusPh Φ T (Real.log n) (Real.log m) (φ n) (φ m))|
      ≤ 16 * C * (∫ x, Φ x ^ 2) * ∑ n ∈ primeRange X, w n ^ 2 * n := by
  set W : ℝ := ∫ x, Φ x ^ 2 with hW
  have hW0 : 0 ≤ W := MeasureTheory.integral_nonneg fun x => sq_nonneg _
  set S : ℝ := ∑ n ∈ primeRange X, w n ^ 2 * n with hSdef
  set S1 : ℝ := ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (if n = m then (0:ℝ) else
    w n * Cm Φ T (Real.log n) * w m
      * Real.sin ((2 * T) * (Real.log n - Real.log m) - (φ n - φ m)) / (Real.log n - Real.log m)) with hS1
  set S2 : ℝ := ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (if n = m then (0:ℝ) else
    w n * Sm Φ T (Real.log n) * w m
      * Real.cos ((2 * T) * (Real.log n - Real.log m) - (φ n - φ m)) / (Real.log n - Real.log m)) with hS2
  set S3 : ℝ := ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (if n = m then (0:ℝ) else
    w n * (w m * Cm Φ T (Real.log m))
      * Real.sin (T * (Real.log n - Real.log m) - (φ n - φ m)) / (Real.log n - Real.log m)) with hS3
  set S4 : ℝ := ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (if n = m then (0:ℝ) else
    w n * (w m * Sm Φ T (Real.log m))
      * Real.cos (T * (Real.log n - Real.log m) - (φ n - φ m)) / (Real.log n - Real.log m)) with hS4
  set S5 : ℝ := ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (if n = m then (0:ℝ) else
    w n * (w m * Cp Φ T (Real.log m))
      * Real.sin ((2 * T) * (Real.log n - Real.log m) - (φ n - φ m)) / (Real.log n - Real.log m)) with hS5
  set S6 : ℝ := ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (if n = m then (0:ℝ) else
    w n * (w m * Sp Φ T (Real.log m))
      * Real.cos ((2 * T) * (Real.log n - Real.log m) - (φ n - φ m)) / (Real.log n - Real.log m)) with hS6
  set S7 : ℝ := ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (if n = m then (0:ℝ) else
    w n * Cp Φ T (Real.log n) * w m
      * Real.sin (T * (Real.log n - Real.log m) - (φ n - φ m)) / (Real.log n - Real.log m)) with hS7
  set S8 : ℝ := ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (if n = m then (0:ℝ) else
    w n * Sp Φ T (Real.log n) * w m
      * Real.cos (T * (Real.log n - Real.log m) - (φ n - φ m)) / (Real.log n - Real.log m)) with hS8
  have hsplit : ∑ n ∈ primeRange X, ∑ m ∈ primeRange X,
      (if n = m then (0:ℝ) else w n * w m
        * AminusPh Φ T (Real.log n) (Real.log m) (φ n) (φ m))
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
      have hA := sub_mul_AminusPh_eq (Φ := Φ) hT hΦ hθ (φ n) (φ m)
      have hAm : AminusPh Φ T (Real.log n) (Real.log m) (φ n) (φ m)
          = ((Real.sin ((Real.log n - Real.log m) * (2 * T) - (φ n - φ m)) * Cm Φ T (Real.log n)
              + Real.cos ((Real.log n - Real.log m) * (2 * T) - (φ n - φ m)) * Sm Φ T (Real.log n)
              - (Real.sin ((Real.log n - Real.log m) * T - (φ n - φ m)) * Cm Φ T (Real.log m)
                + Real.cos ((Real.log n - Real.log m) * T - (φ n - φ m)) * Sm Φ T (Real.log m)))
            + (Real.sin ((Real.log n - Real.log m) * (2 * T) - (φ n - φ m)) * Cp Φ T (Real.log m)
              + Real.cos ((Real.log n - Real.log m) * (2 * T) - (φ n - φ m)) * Sp Φ T (Real.log m)
              - (Real.sin ((Real.log n - Real.log m) * T - (φ n - φ m)) * Cp Φ T (Real.log n)
                + Real.cos ((Real.log n - Real.log m) * T - (φ n - φ m)) * Sp Φ T (Real.log n))))
            / (Real.log n - Real.log m) := by
        rw [eq_div_iff hθ, mul_comm]
        exact hA
      rw [hAm, mul_comm ((2 : ℝ) * T) (Real.log n - Real.log m),
        mul_comm T (Real.log n - Real.log m)]
      field_simp
      ring
  have hw_Cm : ∀ n ∈ primeRange X, |Cm Φ T (Real.log n)| ≤ W := fun n _ => abs_Cm_le hT hΦ hΦ2 _
  have hw_Sm : ∀ n ∈ primeRange X, |Sm Φ T (Real.log n)| ≤ W := fun n _ => abs_Sm_le hT hΦ hΦ2 _
  have hw_Cp : ∀ n ∈ primeRange X, |Cp Φ T (Real.log n)| ≤ W := fun n _ => abs_Cp_le hT hΦ hΦ2 _
  have hw_Sp : ∀ n ∈ primeRange X, |Sp Φ T (Real.log n)| ≤ W := fun n _ => abs_Sp_le hT hΦ hΦ2 _
  have h2Cm := MV_four hMV hC X (2 * T) w φ hW0 hw_Cm
  have h2Sm := MV_four hMV hC X (2 * T) w φ hW0 hw_Sm
  have h2Cp := MV_four hMV hC X (2 * T) w φ hW0 hw_Cp
  have h2Sp := MV_four hMV hC X (2 * T) w φ hW0 hw_Sp
  have h1Cm := MV_four hMV hC X T w φ hW0 hw_Cm
  have h1Sm := MV_four hMV hC X T w φ hW0 hw_Sm
  have h1Cp := MV_four hMV hC X T w φ hW0 hw_Cp
  have h1Sp := MV_four hMV hC X T w φ hW0 hw_Sp
  have hb1 : |S1| ≤ 2 * C * W * S := h2Cm.1
  have hb2 : |S2| ≤ 2 * C * W * S := h2Sm.2.1
  have hb3 : |S3| ≤ 2 * C * W * S := h1Cm.2.2.1
  have hb4 : |S4| ≤ 2 * C * W * S := h1Sm.2.2.2
  have hb5 : |S5| ≤ 2 * C * W * S := h2Cp.2.2.1
  have hb6 : |S6| ≤ 2 * C * W * S := h2Sp.2.2.2
  have hb7 : |S7| ≤ 2 * C * W * S := h1Cp.1
  have hb8 : |S8| ≤ 2 * C * W * S := h1Sp.2.1
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
    _ ≤ 8 * (2 * C * W * S) := by linarith
    _ = 16 * C * W * S := by ring

end GeneralWeights

/-! ## Assembly: [prop:PP] for P_c -/

section Results
variable {C cϱ : ℝ} {p : Setting} {F : LocalFun}

/-- [eq:MPP] for P_c:  𝓜[P_c,P_c] = (1/2π²)·(𝒟-sum + 𝒪₁-sum + 𝒪₂-sum) with weights w_N = ‖c_N‖/√N and
phases arg c_N ((1/π)·(1/π) = 1/π², as (−1/π)² in the ζ case). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2b7ccb6043ba7d4ab31115ac62d343cede63f5a9c69be878254f05f33b09da7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2b7ccb6043ba7d4ab31115ac62d343cede63f5a9c69be878254f05f33b09da7d.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53f44380c7a4ec8099d45d329c081f43824d4a9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
