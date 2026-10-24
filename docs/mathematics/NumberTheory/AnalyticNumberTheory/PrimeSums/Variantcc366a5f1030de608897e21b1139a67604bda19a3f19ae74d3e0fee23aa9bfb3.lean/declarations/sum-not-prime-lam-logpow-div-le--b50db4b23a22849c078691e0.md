# sum_not_prime_lam_logpow_div_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:693fbe4c-22d7-e7c4-0f77-43844cd3d0c9",
  "kind": "lemma",
  "lexical_name": "sum_not_prime_lam_logpow_div_le",
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
  "slug": "sum-not-prime-lam-logpow-div-le--b50db4b23a22849c078691e0",
  "source": {
    "blob": "86b70c2c71a619fceb4266c9d678bde7fc968e92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 72,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeSums/Variantcc366a5f1030de608897e21b1139a67604bda19a3f19ae74d3e0fee23aa9bfb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b50db4b23a22849c078691e0ee02e5d180b9de9ddff762c2e1e3ed8ea389242e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/PrimeSums/Variantcc366a5f1030de608897e21b1139a67604bda19a3f19ae74d3e0fee23aa9bfb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:693fbe4c-22d7-e7c4-0f77-43844cd3d0c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_not_prime_lam_logpow_div_le (b : ℕ) (hb : 2 ≤ b) {u : ℝ} (hu : 0 ≤ u) :
    ∑ n ∈ (Ioc 0 ⌊Real.exp u⌋₊).filter (fun n => ¬ n.Prime), Λ n / n * Real.log n ^ (b - 1)
      ≤ u ^ (b - 2) * (2 * Cdef) := by
  have hX := fun n (hn : n ∈ Ioc 0 ⌊Real.exp u⌋₊) => log_le_of_mem_Ioc_floor_exp hn
  calc ∑ n ∈ (Ioc 0 ⌊Real.exp u⌋₊).filter (fun n => ¬ n.Prime), Λ n / n * Real.log n ^ (b - 1)
      ≤ ∑ n ∈ (Ioc 0 ⌊Real.exp u⌋₊).filter (fun n => ¬ n.Prime), u ^ (b - 2) * (2 * (Λ n * (Real.log n - Λ n) / n)) := by
        refine sum_le_sum fun n hn => ?_
        obtain ⟨hn', hnp⟩ := mem_filter.mp hn
        have hlog : Real.log n ≤ u := hX n hn'
        have hlog0 : 0 ≤ Real.log n := Real.log_natCast_nonneg n
        rcases eq_or_ne (Λ n) 0 with h0 | h0
        · simp [h0]
        · have h1 := (vonMangoldt_le_log_sub_of_not_prime h0 hnp).1
          have hΛ0 : 0 ≤ Λ n := ArithmeticFunction.vonMangoldt_nonneg
          have hN0 : (0:ℝ) ≤ (n:ℝ)⁻¹ := inv_nonneg.mpr (Nat.cast_nonneg n)
          -- log^{b-1} n = log^{b-2} n · log n ≤ u^{b-2} · 2(log n − Λ n)
          have hsplit : Real.log n ^ (b - 1) = Real.log n ^ (b - 2) * Real.log n := by
            rw [← pow_succ]; congr 1; omega
          have hlog2 : Real.log n ≤ 2 * (Real.log n - Λ n) := by linarith
          calc Λ n / n * Real.log n ^ (b - 1)
              = (Λ n * (n:ℝ)⁻¹) * (Real.log n ^ (b - 2) * Real.log n) := by rw [hsplit, div_eq_mul_inv]
            _ ≤ (Λ n * (n:ℝ)⁻¹) * (u ^ (b - 2) * (2 * (Real.log n - Λ n))) := by
                refine mul_le_mul_of_nonneg_left ?_ (mul_nonneg hΛ0 hN0)
                exact mul_le_mul (pow_le_pow_left₀ hlog0 hlog _) hlog2 hlog0 (pow_nonneg hu _)
            _ = u ^ (b - 2) * (2 * (Λ n * (Real.log n - Λ n) / n)) := by ring
    _ = u ^ (b - 2) * (2 * ∑ n ∈ (Ioc 0 ⌊Real.exp u⌋₊).filter (fun n => ¬ n.Prime),
          Λ n * (Real.log n - Λ n) / n) := by rw [mul_sum, mul_sum]
    _ ≤ u ^ (b - 2) * (2 * Cdef) := by
        refine mul_le_mul_of_nonneg_left ?_ (pow_nonneg hu _)
        refine mul_le_mul_of_nonneg_left ?_ zero_le_two
        calc ∑ n ∈ (Ioc 0 ⌊Real.exp u⌋₊).filter (fun n => ¬ n.Prime), Λ n * (Real.log n - Λ n) / n
            ≤ ∑ n ∈ Ioc 0 ⌊Real.exp u⌋₊, Λ n * (Real.log n - Λ n) / n :=
              sum_le_sum_of_subset_of_nonneg (filter_subset _ _) fun n _ _ => defect_term_nonneg n
          _ ≤ Cdef := by simpa using defect_le (⌊Real.exp u⌋₊ : ℝ)

/-- the prime sum as "all n" minus "non-primes":  Σ_p log^b p/p = Σ_n Λ n log^{b−1} n/n − Σ_{n not prime} Λ n log^{b−1} n/n. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeSums/Variantcc366a5f1030de608897e21b1139a67604bda19a3f19ae74d3e0fee23aa9bfb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeSums/Variantcc366a5f1030de608897e21b1139a67604bda19a3f19ae74d3e0fee23aa9bfb3.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86b70c2c71a619fceb4266c9d678bde7fc968e92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
