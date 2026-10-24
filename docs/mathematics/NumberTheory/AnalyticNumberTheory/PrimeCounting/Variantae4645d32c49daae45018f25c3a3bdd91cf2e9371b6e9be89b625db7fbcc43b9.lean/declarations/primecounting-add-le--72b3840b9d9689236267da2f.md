# primeCounting'_add_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20c8927a39601a688ec7eda6b60dede58e0d7d91",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae4645d32c49daae45018f25c3a3bdd91cf2e9371b6e9be89b625db7fbcc43b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48c24adc-57ad-d5c7-1b76-6ff96622ce5f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:298ff1b8-b6dc-044f-994d-d1bf10e99fbe",
  "kind": "theorem",
  "lexical_name": "primeCounting'_add_le",
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
  "slug": "primecounting-add-le--72b3840b9d9689236267da2f",
  "source": {
    "blob": "20c8927a39601a688ec7eda6b60dede58e0d7d91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 79,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantae4645d32c49daae45018f25c3a3bdd91cf2e9371b6e9be89b625db7fbcc43b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72b3840b9d9689236267da2fd789cd985ce98f0d20dd96dad43f5b96c789caab",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantae4645d32c49daae45018f25c3a3bdd91cf2e9371b6e9be89b625db7fbcc43b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:298ff1b8-b6dc-044f-994d-d1bf10e99fbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeCounting'_add_le {a k : ℕ} (h0 : 0 < a) (h1 : a < k) (n : ℕ) :
    π' (k + n) ≤ π' k + Nat.totient a * (n / a + 1) :=
  calc
    π' (k + n) ≤ ((range k).filter Prime).card + ((Ico k (k + n)).filter Prime).card := by
      rw [primeCounting', count_eq_card_filter_range, range_eq_Ico, ←
        Ico_union_Ico_eq_Ico (zero_le k) le_self_add, filter_union]
      apply card_union_le
    _ ≤ π' k + ((Ico k (k + n)).filter Prime).card := by
      rw [primeCounting', count_eq_card_filter_range]
    _ ≤ π' k + ((Ico k (k + n)).filter (coprime a)).card := by
      refine' add_le_add_left (card_le_of_subset _) k.primeCounting'
      simp only [subset_iff, and_imp, mem_filter, mem_Ico]
      intro p succ_k_le_p p_lt_n p_prime
      constructor
      · exact ⟨succ_k_le_p, p_lt_n⟩
      · rw [coprime_comm]
        exact coprime_of_lt_prime h0 (gt_of_ge_of_gt succ_k_le_p h1) p_prime
    _ ≤ π' k + totient a * (n / a + 1) := by
      rw [add_le_add_iff_left]
      exact Ico_filter_coprime_le k n h0
#align nat.prime_counting'_add_le Nat.primeCounting'_add_le

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantae4645d32c49daae45018f25c3a3bdd91cf2e9371b6e9be89b625db7fbcc43b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantae4645d32c49daae45018f25c3a3bdd91cf2e9371b6e9be89b625db7fbcc43b9.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20c8927a39601a688ec7eda6b60dede58e0d7d91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
