# pow_two_pow_sub_pow_two_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e157f1c4438e8eff6c30d5108cb9103ebecd4db2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 255,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c212cc759bff3f794c499d30afa9c93738dbdeb65aa14d7f3c13c947704e3c9b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0a47038-c324-1dd1-b509-b66e3e3adcd7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30dd2205-a3f8-9c74-de17-b230c4cebaf2",
  "kind": "theorem",
  "lexical_name": "pow_two_pow_sub_pow_two_pow",
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
  "slug": "pow-two-pow-sub-pow-two-pow--ccade03fb1f7f15d7ec82660",
  "source": {
    "blob": "e157f1c4438e8eff6c30d5108cb9103ebecd4db2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 255,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variantc212cc759bff3f794c499d30afa9c93738dbdeb65aa14d7f3c13c947704e3c9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccade03fb1f7f15d7ec82660a2fd86514ef063fe29a1928eac3b1aed835c9f3f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variantc212cc759bff3f794c499d30afa9c93738dbdeb65aa14d7f3c13c947704e3c9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30dd2205-a3f8-9c74-de17-b230c4cebaf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_two_pow_sub_pow_two_pow [CommRing R] {x y : R} (n : ℕ) :
    x ^ 2 ^ n - y ^ 2 ^ n = (∏ i in Finset.range n, (x ^ 2 ^ i + y ^ 2 ^ i)) * (x - y) := by
  induction' n with d hd
  · simp only [pow_zero, pow_one, range_zero, prod_empty, one_mul, Nat.zero_eq]
  · suffices x ^ 2 ^ d.succ - y ^ 2 ^ d.succ = (x ^ 2 ^ d + y ^ 2 ^ d) * (x ^ 2 ^ d - y ^ 2 ^ d) by
      rw [this, hd, Finset.prod_range_succ, ← mul_assoc, mul_comm (x ^ 2 ^ d + y ^ 2 ^ d)]
    · rw [Nat.succ_eq_add_one]
      ring
#align pow_two_pow_sub_pow_two_pow pow_two_pow_sub_pow_two_pow

-- porting note: simplified proof because `fin_cases` was not available in that case
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variantc212cc759bff3f794c499d30afa9c93738dbdeb65aa14d7f3c13c947704e3c9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variantc212cc759bff3f794c499d30afa9c93738dbdeb65aa14d7f3c13c947704e3c9b.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e157f1c4438e8eff6c30d5108cb9103ebecd4db2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
