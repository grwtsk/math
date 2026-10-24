# eq_neg_one_at_prime_divisor_of_eq_neg_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c939ead91b3160e7e60b6fb4752998433068218",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 252,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6df7dbcfa68f0c1cf9856a9784045e37e188d3db356ca298c591ea33973e143e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f99ffe22-bf24-6064-72dd-18c49e211a9b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c9d8031-126d-1269-5c6d-60312a59dba4",
  "kind": "theorem",
  "lexical_name": "eq_neg_one_at_prime_divisor_of_eq_neg_one",
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
  "slug": "eq-neg-one-at-prime-divisor-of-eq-neg-one--ee63c728f5139796228e0ad4",
  "source": {
    "blob": "5c939ead91b3160e7e60b6fb4752998433068218",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 252,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variant6df7dbcfa68f0c1cf9856a9784045e37e188d3db356ca298c591ea33973e143e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee63c728f5139796228e0ad461f676a2d6c8d0331b43a88dddf1611e5fea0110",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variant6df7dbcfa68f0c1cf9856a9784045e37e188d3db356ca298c591ea33973e143e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c9d8031-126d-1269-5c6d-60312a59dba4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_neg_one_at_prime_divisor_of_eq_neg_one {a : ℤ} {n : ℕ} (h : J(a | n) = -1) :
    ∃ p : ℕ, p.Prime ∧ p ∣ n ∧ J(a | p) = -1 := by
  have hn₀ : n ≠ 0 := by
    rintro rfl
    rw [zero_right, CharZero.eq_neg_self_iff] at h
    exact one_ne_zero h
  have hf₀ (p) (hp : p ∈ n.primeFactorsList) : p ≠ 0 := (Nat.pos_of_mem_primeFactorsList hp).ne.symm
  rw [← Nat.prod_primeFactorsList hn₀, list_prod_right hf₀] at h
  obtain ⟨p, hmem, hj⟩ := List.mem_map.mp (List.neg_one_mem_of_prod_eq_neg_one h)
  exact ⟨p, Nat.prime_of_mem_primeFactorsList hmem, Nat.dvd_of_mem_primeFactorsList hmem, hj⟩

end jacobiSym

namespace ZMod

open jacobiSym

/-- If `J(a | b)` is `-1`, then `a` is not a square modulo `b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variant6df7dbcfa68f0c1cf9856a9784045e37e188d3db356ca298c591ea33973e143e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variant6df7dbcfa68f0c1cf9856a9784045e37e188d3db356ca298c591ea33973e143e.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c939ead91b3160e7e60b6fb4752998433068218` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
