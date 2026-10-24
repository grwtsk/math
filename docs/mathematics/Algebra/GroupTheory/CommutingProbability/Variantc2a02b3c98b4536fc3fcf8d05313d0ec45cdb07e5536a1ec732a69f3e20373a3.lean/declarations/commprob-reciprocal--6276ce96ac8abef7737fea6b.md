# commProb_reciprocal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "641d23aba3e3706ac5edd1fc490bf601621fc246",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 187,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d826df20-a608-c16f-b7e6-a71ba99ff428",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bec903a2-ccde-320f-14bb-90dac8157a0d",
  "kind": "theorem",
  "lexical_name": "commProb_reciprocal",
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
  "slug": "commprob-reciprocal--6276ce96ac8abef7737fea6b",
  "source": {
    "blob": "641d23aba3e3706ac5edd1fc490bf601621fc246",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 187,
    "path": "GRWTSK/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6276ce96ac8abef7737fea6b0caa67ab1ec8d02ef9d1a60e5ebc3531b8865485",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bec903a2-ccde-320f-14bb-90dac8157a0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem commProb_reciprocal (n : ℕ) :
    commProb (Product (reciprocalFactors n)) = 1 / n := by
  by_cases h0 : n = 0
  · rw [h0, reciprocalFactors_zero, commProb_cons, commProb_nil, mul_one, Nat.cast_zero, div_zero]
    apply commProb_eq_zero_of_infinite
  by_cases h1 : n = 1
  · rw [h1, reciprocalFactors_one, commProb_nil, Nat.cast_one, div_one]
  rcases Nat.even_or_odd n with h2 | h2
  · have := div_two_lt h0
    rw [reciprocalFactors_even h0 h2, commProb_cons, commProb_reciprocal (n / 2),
        commProb_odd (by decide)]
    field_simp [h0, h2.two_dvd]
    norm_num
  · have := div_four_lt h0 h1
    rw [reciprocalFactors_odd h1 h2, commProb_cons, commProb_reciprocal (n / 4 + 1)]
    have key : n % 4 = 1 ∨ n % 4 = 3 := Nat.odd_mod_four_iff.mp (Nat.odd_iff.mp h2)
    have hn : Odd (n % 4) := by rcases key with h | h <;> rw [h] <;> decide
    rw [commProb_odd (hn.mul h2), div_mul_div_comm, mul_one, div_eq_div_iff, one_mul] <;> norm_cast
    · have h0 : (n % 4) ^ 2 + 3 = n % 4 * 4 := by rcases key with h | h <;> rw [h] <;> norm_num
      have h1 := (Nat.div_add_mod n 4).symm
      zify at h0 h1 ⊢
      linear_combination (h0 + h1 * (n % 4)) * n
    · have := hn.pos.ne'
      positivity

end DihedralGroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CommutingProbability/Variantc2a02b3c98b4536fc3fcf8d05313d0ec45cdb07e5536a1ec732a69f3e20373a3.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `641d23aba3e3706ac5edd1fc490bf601621fc246` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
