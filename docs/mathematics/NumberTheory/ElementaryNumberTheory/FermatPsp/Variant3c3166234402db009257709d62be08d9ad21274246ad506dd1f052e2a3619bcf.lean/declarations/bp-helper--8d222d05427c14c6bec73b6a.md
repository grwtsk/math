# bp_helper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b305dcf0031420054d1f12549d3185763795d202",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37b59cd2-2446-8e47-a600-e88214c8b410",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b542a10-be19-e845-3b6a-9714df95a4d6",
  "kind": "theorem",
  "lexical_name": "bp_helper",
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
  "slug": "bp-helper--8d222d05427c14c6bec73b6a",
  "source": {
    "blob": "b305dcf0031420054d1f12549d3185763795d202",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 150,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d222d05427c14c6bec73b6abf5116fe0d7908d045ace208e03e875696f9158f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b542a10-be19-e845-3b6a-9714df95a4d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem bp_helper {b p : ℕ} (hb : 0 < b) (hp : 1 ≤ p) :
    b ^ (2 * p) - 1 - (b ^ 2 - 1) = b * (b ^ (p - 1) - 1) * (b ^ p + b) :=
  have hi_bsquared : 1 ≤ b ^ 2 := Nat.one_le_pow _ _ hb
  calc
    b ^ (2 * p) - 1 - (b ^ 2 - 1) = b ^ (2 * p) - (1 + (b ^ 2 - 1)) := by rw [Nat.sub_sub]
    _ = b ^ (2 * p) - (1 + b ^ 2 - 1) := by rw [Nat.add_sub_assoc hi_bsquared]
    _ = b ^ (2 * p) - b ^ 2 := by rw [Nat.add_sub_cancel_left]
    _ = b ^ (p * 2) - b ^ 2 := by rw [mul_comm]
    _ = (b ^ p) ^ 2 - b ^ 2 := by rw [pow_mul]
    _ = (b ^ p + b) * (b ^ p - b) := by rw [Nat.sq_sub_sq]
    _ = (b ^ p - b) * (b ^ p + b) := by rw [mul_comm]
    _ = (b ^ (p - 1 + 1) - b) * (b ^ p + b) := by rw [Nat.sub_add_cancel hp]
    _ = (b * b ^ (p - 1) - b) * (b ^ p + b) := by rw [pow_succ']
    _ = (b * b ^ (p - 1) - b * 1) * (b ^ p + b) := by rw [mul_one]
    _ = b * (b ^ (p - 1) - 1) * (b ^ p + b) := by rw [Nat.mul_sub_left_distrib]

end HelperLemmas

/-- Given a prime `p` which does not divide `b * (b ^ 2 - 1)`, we can produce a number `n` which is
larger than `p` and pseudoprime to base `b`. We do this by defining
`n = ((b ^ p - 1) / (b - 1)) * ((b ^ p + 1) / (b + 1))`

The primary purpose of this definition is to help prove `exists_infinite_pseudoprimes`. For a proof
that `n` is actually pseudoprime to base `b`, see `psp_from_prime_psp`, and for a proof that `n` is
greater than `p`, see `psp_from_prime_gt_p`.

This lemma is intended to be used when `2 ≤ b`, `2 < p`, `p` is prime, and `¬p ∣ b * (b ^ 2 - 1)`,
because those are the hypotheses for `psp_from_prime_psp`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant3c3166234402db009257709d62be08d9ad21274246ad506dd1f052e2a3619bcf.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b305dcf0031420054d1f12549d3185763795d202` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
