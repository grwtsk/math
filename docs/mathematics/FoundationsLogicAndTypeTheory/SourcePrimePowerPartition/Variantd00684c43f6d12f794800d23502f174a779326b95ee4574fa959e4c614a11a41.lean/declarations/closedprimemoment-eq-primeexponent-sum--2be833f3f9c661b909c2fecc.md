# closedPrimeMoment_eq_primeExponent_sum

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
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:66bf6c8f-40ad-3507-69f6-c5ffcbcfdf7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a10d7e3-c24d-6cb7-2ae0-d807f016e8ec",
  "kind": "theorem",
  "lexical_name": "closedPrimeMoment_eq_primeExponent_sum",
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
  "slug": "closedprimemoment-eq-primeexponent-sum--2be833f3f9c661b909c2fecc",
  "source": {
    "blob": "009f91561f501843cc723e41e90f35a9a23cdaa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantd00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2be833f3f9c661b909c2feccc8278cc029d2e00951a0b781d6488435d96049b2",
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

Occurrence: `result:1a10d7e3-c24d-6cb7-2ae0-d807f016e8ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedPrimeMoment_eq_primeExponent_sum (A : ℝ) :
    closedPrimeMoment A = ∑ pk ∈ primeExponentInventory A,
      vonMangoldt (pk.1 ^ pk.2) * closedPrimeWeight A (pk.1 ^ pk.2) := by
  let S := (primePowerInventory (2 * A)).filter IsPrimePow
  have hzero : closedPrimeMoment A = ∑ n ∈ S, vonMangoldt n * closedPrimeWeight A n := by
    unfold closedPrimeMoment closedPrimeWeight
    symm
    apply Finset.sum_subset (Finset.filter_subset _ _)
    intro n hn hnot
    have hn' : ¬IsPrimePow n := by simpa [S, Finset.mem_filter, hn] using hnot
    rw [vonMangoldt_eq_zero_iff.mpr hn', zero_mul]
  rw [hzero]
  symm
  apply Finset.sum_bij (fun pk _ => pk.1 ^ pk.2)
  · intro pk hpk
    obtain ⟨hprod, hupper⟩ := Finset.mem_filter.mp hpk
    obtain ⟨hpI, hkI⟩ := Finset.mem_product.mp hprod
    have hp := (Finset.mem_filter.mp hpI).2
    have hk : pk.2 ≠ 0 := by have := (Finset.mem_Icc.mp hkI).1; omega
    have hpow : IsPrimePow (pk.1 ^ pk.2) := hp.isPrimePow.pow hk
    exact Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨hpow.two_le, hupper⟩, hpow⟩
  · intro x hx y hy heq
    exact primeExponentInventory_pow_injective A hx hy heq
  · intro n hn
    obtain ⟨hnI, hnPow⟩ := Finset.mem_filter.mp hn
    obtain ⟨p, hpn, k, hkn, hp, hk, heq⟩ := (isPrimePow_nat_iff_bounded n).mp hnPow
    have hnN := (Finset.mem_Icc.mp hnI).2
    refine ⟨(p, k), ?_, heq⟩
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_product.mpr ⟨?_, ?_⟩, by simpa [heq] using hnN⟩
    · exact Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr ⟨hp.pos, hpn.trans hnN⟩, hp⟩
    · exact Finset.mem_Icc.mpr ⟨hk, hkn.trans hnN⟩
  · intro pk hpk
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantd00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SourcePrimePowerPartition/Variantd00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `009f91561f501843cc723e41e90f35a9a23cdaa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
