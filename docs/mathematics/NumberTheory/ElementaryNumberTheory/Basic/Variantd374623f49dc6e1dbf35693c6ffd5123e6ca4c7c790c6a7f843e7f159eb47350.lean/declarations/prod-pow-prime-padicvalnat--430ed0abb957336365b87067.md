# prod_pow_prime_padicValNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27f661a0f628913e0e536f153412aafac6bf9355",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 555,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d374623f49dc6e1dbf35693c6ffd5123e6ca4c7c790c6a7f843e7f159eb47350.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f8495009-c083-2c19-da47-d91d0b134335",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:107fbeff-a5c5-fe0c-632b-412095981a25",
  "kind": "theorem",
  "lexical_name": "prod_pow_prime_padicValNat",
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
  "slug": "prod-pow-prime-padicvalnat--430ed0abb957336365b87067",
  "source": {
    "blob": "27f661a0f628913e0e536f153412aafac6bf9355",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 574,
    "line": 555,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantd374623f49dc6e1dbf35693c6ffd5123e6ca4c7c790c6a7f843e7f159eb47350.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:430ed0abb957336365b87067baebefc3fa4d00c3a2ea4f12f2f9225e4087eb19",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variantd374623f49dc6e1dbf35693c6ffd5123e6ca4c7c790c6a7f843e7f159eb47350.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:107fbeff-a5c5-fe0c-632b-412095981a25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 555–574.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_pow_prime_padicValNat (n : Nat) (hn : n ≠ 0) (m : Nat) (pr : n < m) :
    ∏ p ∈ range m with p.Prime, p ^ padicValNat p n = n := by
  nth_rw 2 [← factorization_prod_pow_eq_self hn]
  rw [eq_comm]
  apply Finset.prod_subset_one_on_sdiff
  · exact fun p hp => Finset.mem_filter.mpr ⟨Finset.mem_range.2 <| pr.trans_le' <|
      le_of_mem_primeFactors hp, prime_of_mem_primeFactors hp⟩
  · intro p hp
    obtain ⟨hp1, hp2⟩ := Finset.mem_sdiff.mp hp
    rw [← factorization_def n (Finset.mem_filter.mp hp1).2]
    simp [Finsupp.notMem_support_iff.mp hp2]
  · intro p hp
    simp [factorization_def n (prime_of_mem_primeFactors hp)]

/-! ### Lemmas about factorizations of particular functions -/


-- TODO: Port lemmas from `Data/Nat/Multiplicity` to here, re-written in terms of `factorization`
/-- Exactly `n / p` naturals in `[1, n]` are multiples of `p`.
See `Nat.card_multiples'` for an alternative spelling of the statement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variantd374623f49dc6e1dbf35693c6ffd5123e6ca4c7c790c6a7f843e7f159eb47350.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantd374623f49dc6e1dbf35693c6ffd5123e6ca4c7c790c6a7f843e7f159eb47350.lean#L555).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27f661a0f628913e0e536f153412aafac6bf9355` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
