# sum_log_mul_vonMangoldt_div_bound

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
      "line": 675,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/daa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b89ffa19-b528-4fcf-e3e0-337288dd8d44",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3dc254ae-ee1d-a151-0407-484a079aee1e",
  "kind": "lemma",
  "lexical_name": "sum_log_mul_vonMangoldt_div_bound",
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
  "slug": "sum-log-mul-vonmangoldt-div-bound--6cd1c5bfb9411850cf308f47",
  "source": {
    "blob": "5f527e07a44c44619e45eb142a7aa0d20a239b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 746,
    "line": 675,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cd1c5bfb9411850cf308f47b8930996fc8ad476befa72a3b04c4333d81103eb",
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

Occurrence: `result:3dc254ae-ee1d-a151-0407-484a079aee1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 675–746.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma sum_log_mul_vonMangoldt_div_bound {x : ℝ} (hx : 1 ≤ x) :
    |(∑ n ∈ Ioc 0 ⌊x⌋₊, Real.log n * (Λ n / n)) - Real.log x ^ 2 / 2|
      ≤ 2 * (Real.log 4 + 4) * Real.log x := by
  set K : ℝ := Real.log 4 + 4 with hK
  have hKpos : (0 : ℝ) < K := by rw [hK]; positivity
  have hlx : (0 : ℝ) ≤ Real.log x := Real.log_nonneg hx
  have hMert : ∀ t : ℝ, 1 ≤ t → |Msum t - Real.log t| ≤ K := fun t ht => by
    rw [Msum_eq_Ioc]
    exact mertensFirst ht
  have habel := abel_log_Msum hx
  have hint_log : IntegrableOn (fun t : ℝ => t⁻¹ * Real.log t) (Set.Ioc 1 x) := by
    refine (ContinuousOn.integrableOn_Icc ?_).mono_set Set.Ioc_subset_Icc_self
    refine ContinuousOn.mul ?_ ?_
    · exact continuousOn_inv₀.mono fun t ht => by
        simp only [Set.mem_compl_iff, Set.mem_singleton_iff]
        nlinarith [ht.1]
    · exact fun t ht => (Real.continuousAt_log (by nlinarith [ht.1])).continuousWithinAt
  have hint_M : IntegrableOn (fun t : ℝ => t⁻¹ * Msum t) (Set.Ioc 1 x) :=
    integrableOn_inv_mul_mono Msum_mono Msum_nonneg hx
  have hint_inv : IntegrableOn (fun t : ℝ => t⁻¹) (Set.Ioc 1 x) := by
    refine (ContinuousOn.integrableOn_Icc ?_).mono_set Set.Ioc_subset_Icc_self
    exact continuousOn_inv₀.mono fun t ht => by
      simp only [Set.mem_compl_iff, Set.mem_singleton_iff]
      nlinarith [ht.1]
  have hint_diff : IntegrableOn (fun t : ℝ => t⁻¹ * (Msum t - Real.log t)) (Set.Ioc 1 x) :=
    ((hint_M.sub hint_log).congr_fun
      (fun t _ => by simp only [Pi.sub_apply]; ring) measurableSet_Ioc)
  have hsplit : ∫ t in Set.Ioc 1 x, t⁻¹ * Msum t
      = (∫ t in Set.Ioc 1 x, t⁻¹ * Real.log t)
        + ∫ t in Set.Ioc 1 x, t⁻¹ * (Msum t - Real.log t) := by
    rw [← MeasureTheory.integral_add hint_log hint_diff]
    exact setIntegral_congr_fun measurableSet_Ioc fun t _ => by ring
  have hE : |∫ t in Set.Ioc 1 x, t⁻¹ * (Msum t - Real.log t)| ≤ K * Real.log x := by
    have hb : ∀ᵐ t ∂(volume.restrict (Set.Ioc 1 x)),
        ‖t⁻¹ * (Msum t - Real.log t)‖ ≤ K * t⁻¹ := by
      filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
      have ht1 : (1 : ℝ) ≤ t := ht.1.le
      have ht0 : (0 : ℝ) < t := lt_of_lt_of_le one_pos ht1
      rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (by positivity : (0 : ℝ) ≤ t⁻¹),
        mul_comm K t⁻¹]
      exact mul_le_mul_of_nonneg_left (hMert t ht1) (by positivity)
    calc |∫ t in Set.Ioc 1 x, t⁻¹ * (Msum t - Real.log t)|
        ≤ ∫ t in Set.Ioc 1 x, K * t⁻¹ := by
          rw [← Real.norm_eq_abs]
          exact norm_integral_le_of_norm_le (hint_inv.const_mul K) hb
      _ = K * ∫ t in Set.Ioc 1 x, t⁻¹ := MeasureTheory.integral_const_mul K _
      _ = K * Real.log x := by rw [integral_inv_Ioc hx]
  have hMx : |(∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n / n) - Real.log x| ≤ K := mertensFirst hx
  rw [habel, hsplit, integral_inv_mul_log hx]
  have harr : Real.log x * (∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n / n)
        - (Real.log x ^ 2 / 2 + ∫ t in Set.Ioc 1 x, t⁻¹ * (Msum t - Real.log t))
        - Real.log x ^ 2 / 2
      = Real.log x * ((∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n / n) - Real.log x)
        - ∫ t in Set.Ioc 1 x, t⁻¹ * (Msum t - Real.log t) := by ring
  rw [harr]
  have h1 : |Real.log x * ((∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n / n) - Real.log x)| ≤ Real.log x * K := by
    rw [abs_mul, abs_of_nonneg hlx]
    exact mul_le_mul_of_nonneg_left hMx hlx
  calc |Real.log x * ((∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n / n) - Real.log x)
        - ∫ t in Set.Ioc 1 x, t⁻¹ * (Msum t - Real.log t)|
      ≤ |Real.log x * ((∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n / n) - Real.log x)|
        + |∫ t in Set.Ioc 1 x, t⁻¹ * (Msum t - Real.log t)| := abs_sub _ _
    _ ≤ Real.log x * K + K * Real.log x := add_le_add h1 hE
    _ = 2 * K * Real.log x := by ring

/-! ### The proper-prime-power defect

[lem:cheb] proof: "Σ_{n≤x} Λ(n)²/n = Σ_{n≤x} Λ(n) log n/n + O(1) (the two differ
only at proper prime powers)".  The defect Σ_{n≤x} Λ(n)(log n − Λ(n))/n is
supported on prime powers pᵏ with k ≥ 2, where its value is (k−1)log²p/pᵏ;
summing over all p, k bounds it by an absolute constant. -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean#L675).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f527e07a44c44619e45eb142a7aa0d20a239b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
