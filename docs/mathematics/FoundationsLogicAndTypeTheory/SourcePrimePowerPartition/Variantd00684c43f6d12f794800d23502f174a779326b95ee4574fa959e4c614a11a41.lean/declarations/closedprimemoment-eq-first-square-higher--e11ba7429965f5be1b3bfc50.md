# closedPrimeMoment_eq_first_square_higher

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
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99c0e5ee-d05a-e418-b202-9794a11db60a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2bd0ac8d-8a0b-1941-00ee-e1b6d192cf61",
  "kind": "theorem",
  "lexical_name": "closedPrimeMoment_eq_first_square_higher",
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
  "slug": "closedprimemoment-eq-first-square-higher--e11ba7429965f5be1b3bfc50",
  "source": {
    "blob": "009f91561f501843cc723e41e90f35a9a23cdaa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 133,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantd00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e11ba7429965f5be1b3bfc50782d247943838915ca9de9d51bd938179238f70b",
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

Occurrence: `result:2bd0ac8d-8a0b-1941-00ee-e1b6d192cf61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedPrimeMoment_eq_first_square_higher (A : ℝ) :
    closedPrimeMoment A = firstPrimeMoment A + primeSquareMoment A +
      higherPrimePowerMoment A := by
  rw [closedPrimeMoment_eq_primeExponent_sum]
  simp only [primeExponentInventory, Finset.sum_filter, Finset.product_eq_sprod]
  rw [Finset.sum_product]
  have hs : (∑ p ∈ primeLogInventory (2 * A),
      ∑ k ∈ Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊,
        if p ^ k ≤ ⌊Real.exp (2 * A)⌋₊ then
          vonMangoldt (p ^ k) * closedPrimeWeight A (p ^ k) else 0) =
      firstPrimeMoment A +
        (∑ p ∈ primeLogInventory (2 * A), if p ^ 2 ≤ ⌊Real.exp (2 * A)⌋₊ then
          vonMangoldt (p ^ 2) * closedPrimeWeight A (p ^ 2) else 0) +
        higherPrimePowerMoment A := by
    unfold firstPrimeMoment higherPrimePowerMoment higherPrimePowerInventory
    simp only [Finset.sum_filter, Finset.product_eq_sprod]
    rw [Finset.sum_product]
    simp only [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro p hp
    obtain ⟨hpI, hprime⟩ := Finset.mem_filter.mp hp
    have hple := (Finset.mem_Ioc.mp hpI).2
    have hN : 2 ≤ ⌊Real.exp (2 * A)⌋₊ := hprime.two_le.trans hple
    rw [exponent_sum_first_two _ hN]
    simp only [pow_one, if_pos hple]
  rw [hs, ← Finset.sum_filter, square_prime_filter]
  rfl

/-- The actual prime-power coefficient retains the original normalized correlation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantd00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantd00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `009f91561f501843cc723e41e90f35a9a23cdaa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
