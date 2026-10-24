# primeCounting'_add_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:551a4442-4d8e-eb35-0021-a21ea0688709",
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
  "slug": "primecounting-add-le--083cae4a31bb47ea19740daf",
  "source": {
    "blob": "badd2e022e6cd741968dcd0296bf87ebab5807bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 131,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:083cae4a31bb47ea19740daf74752c80272d16d844eca22891d1919d534fccb2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:551a4442-4d8e-eb35-0021-a21ea0688709`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeCounting'_add_le {a k : ℕ} (h0 : 0 < a) (h1 : a < k) (n : ℕ) :
    π' (k + n) ≤ π' k + Nat.totient a * (n / a + 1) :=
  calc
    π' (k + n) ≤ #{p ∈ range k | p.Prime} + #{p ∈ Ico k (k + n) | p.Prime} := by
      rw [primeCounting', count_eq_card_filter_range, range_eq_Ico, ←
        Ico_union_Ico_eq_Ico (zero_le k) le_self_add, filter_union]
      apply card_union_le
    _ ≤ π' k + #{p ∈ Ico k (k + n) | p.Prime} := by
      rw [primeCounting', count_eq_card_filter_range]
    _ ≤ π' k + #{b ∈ Ico k (k + n) | a.Coprime b} := by
      refine add_le_add_left (card_le_card ?_) k.primeCounting'
      simp only [subset_iff, and_imp, mem_filter, mem_Ico]
      intro p succ_k_le_p p_lt_n p_prime
      constructor
      · exact ⟨succ_k_le_p, p_lt_n⟩
      · rw [coprime_comm]
        exact coprime_of_lt_prime h0 (gt_of_ge_of_gt succ_k_le_p h1) p_prime
    _ ≤ π' k + totient a * (n / a + 1) := by
      rw [add_le_add_iff_left]
      exact Ico_filter_coprime_le k n h0

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeCounting/Variantafd58362e698a300aa95785c313702a6891551b7d1cc185d46c976e116a0f71f.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `badd2e022e6cd741968dcd0296bf87ebab5807bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
