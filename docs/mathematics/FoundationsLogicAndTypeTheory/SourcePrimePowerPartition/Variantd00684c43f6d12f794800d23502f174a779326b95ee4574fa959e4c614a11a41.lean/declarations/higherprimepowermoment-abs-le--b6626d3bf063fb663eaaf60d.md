# higherPrimePowerMoment_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "009f91561f501843cc723e41e90f35a9a23cdaa6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 299,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2534921-f41c-7873-9d44-8d7b5dd65625",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8edcbfb-c247-2efe-9d13-fa735e414104",
  "kind": "theorem",
  "lexical_name": "higherPrimePowerMoment_abs_le",
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
  "slug": "higherprimepowermoment-abs-le--b6626d3bf063fb663eaaf60d",
  "source": {
    "blob": "009f91561f501843cc723e41e90f35a9a23cdaa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 299,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantd00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6626d3bf063fb663eaaf60de204c8e1d5cd01f8715aa174bfa6795038466a52",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantd00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8edcbfb-c247-2efe-9d13-fa735e414104`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higherPrimePowerMoment_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |higherPrimePowerMoment A| ≤ higherPrimePowerBudget := by
  let P := primeLogInventory (2 * A)
  let K := Finset.Icc 3 ⌊Real.exp (2 * A)⌋₊
  let f : ℕ × ℕ → ℝ := fun pk =>
    Real.log (pk.1 : ℝ) * ((pk.1 : ℝ) ^ (-(1 : ℝ) / 2)) ^ pk.2
  have hf : ∀ pk ∈ P.product K, 0 ≤ f pk := by
    intro pk hpk
    have hp := (Finset.mem_filter.mp (Finset.mem_product.mp hpk).1).2
    have hp1 : (1 : ℝ) ≤ pk.1 := by exact_mod_cast hp.one_le
    exact mul_nonneg (Real.log_nonneg hp1)
      (pow_nonneg (Real.rpow_nonneg (Nat.cast_nonneg _) _) _)
  have hsubset : higherPrimePowerInventory A ⊆ P.product K := Finset.filter_subset _ _
  calc
    |higherPrimePowerMoment A| ≤ ∑ pk ∈ higherPrimePowerInventory A,
        |vonMangoldt (pk.1 ^ pk.2) * closedPrimeWeight A (pk.1 ^ pk.2)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ pk ∈ higherPrimePowerInventory A, f pk := by
      apply Finset.sum_le_sum
      intro pk hpk
      obtain ⟨hprod, _⟩ := Finset.mem_filter.mp hpk
      obtain ⟨hpI, hkI⟩ := Finset.mem_product.mp hprod
      have hk : pk.2 ≠ 0 := by have := (Finset.mem_Icc.mp hkI).1; omega
      exact prime_power_source_coefficient_abs_le A hA (Finset.mem_filter.mp hpI).2 hk
    _ ≤ ∑ pk ∈ P.product K, f pk :=
      Finset.sum_le_sum_of_subset_of_nonneg hsubset (fun pk hpk _ => hf pk hpk)
    _ = ∑ p ∈ P, Real.log (p : ℝ) * ∑ k ∈ K, ((p : ℝ) ^ (-(1 : ℝ) / 2)) ^ k := by
      rw [Finset.product_eq_sprod, Finset.sum_product]
      apply Finset.sum_congr rfl
      intro p hp
      change (∑ k ∈ K, Real.log (p : ℝ) * ((p : ℝ) ^ (-(1 : ℝ) / 2)) ^ k) = _
      rw [Finset.mul_sum]
    _ ≤ ∑ p ∈ P, 16 * (p : ℝ) ^ (-(5 : ℝ) / 4) := by
      apply Finset.sum_le_sum
      intro p hp
      exact prime_geometric_tail_le (Finset.mem_filter.mp hp).2 _
    _ ≤ higherPrimePowerBudget := by
      unfold higherPrimePowerBudget
      rw [← Finset.mul_sum]
      apply mul_le_mul_of_nonneg_left _ (by norm_num)
      exact higherPrimePowerBudget_summability.sum_le_tsum P
        (fun n _ => Real.rpow_nonneg (Nat.cast_nonneg n) _)

/-- The exact residual differs from first primes plus the explicit square main term
by a bounded error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantd00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantd00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `009f91561f501843cc723e41e90f35a9a23cdaa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
