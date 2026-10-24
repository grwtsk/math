# rem_sum_le_of_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df3e7f3aed3d3cd5bb529222c640f2701efef8a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 511,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a3dabf2-a3f4-23f4-8329-709adff2287e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ec9711a-87ed-0cf8-0d54-877d967c1ad6",
  "kind": "theorem",
  "lexical_name": "rem_sum_le_of_const",
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
  "slug": "rem-sum-le-of-const--123fbbb83618c3e47e64713d",
  "source": {
    "blob": "df3e7f3aed3d3cd5bb529222c640f2701efef8a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 511,
    "path": "GRWTSK/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:123fbbb83618c3e47e64713d19955fdefc8ad4929dfdebb9368e0ade3d024842",
  "verification": {
    "reference": "docs/verification/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ec9711a-87ed-0cf8-0d54-877d967c1ad6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 511–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rem_sum_le_of_const (s : SelbergSieve) (C : ℝ) (hrem : ∀ d > 0, |rem (s := s.toBoundingSieve) d| ≤ C) :
    ∑ d ∈ s.prodPrimes.divisors, (if (d : ℝ) ≤ s.level then (3:ℝ) ^ ω d * |rem (s := s.toBoundingSieve) d| else 0)
      ≤ C * s.level * (1+Real.log s.level)^3 := by
  rw [←Finset.sum_filter]
  trans (∑ d ∈  Finset.filter (fun d:ℕ => ↑d ≤ s.level) (s.prodPrimes.divisors),  3 ^ ω d * C )
  · gcongr with d hd
    rw [Finset.mem_filter, Nat.mem_divisors] at hd
    apply hrem d
    apply Nat.pos_of_ne_zero
    apply ne_zero_of_dvd_ne_zero hd.1.2 hd.1.1
  rw [←Finset.sum_mul, mul_comm, mul_assoc]
  gcongr
  · linarith [abs_nonneg <| rem (s := s.toBoundingSieve) 1, hrem 1 (by norm_num)]
  rw [Finset.sum_filter]
  apply Aux.sum_pow_cardDistinctFactors_le_self_mul_log_pow (hx := s.one_le_level)
  apply prodPrimes_squarefree

end Sieve
end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SelbergBounds/Variant1aa5cf1b3e4fc32aa6bf42f63b3ecd377166cebb017da7f3fe86fed8af895f97.lean#L511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df3e7f3aed3d3cd5bb529222c640f2701efef8a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
