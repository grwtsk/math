# xor_trichotomy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0ffaf087eb538b152576013f30684bab36efc1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c455654f657ce0100fe2f3ec152fd07ed58058790ef80a9f592a7c3b901172da.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ba2d5a0-52cd-da18-f509-bf798656403c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f834245-c5f0-c939-7ca4-e7d99401e995",
  "kind": "theorem",
  "lexical_name": "xor_trichotomy",
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
  "slug": "xor-trichotomy--a9e1ec6d223e6efe7ca119b0",
  "source": {
    "blob": "c0ffaf087eb538b152576013f30684bab36efc1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 266,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantc455654f657ce0100fe2f3ec152fd07ed58058790ef80a9f592a7c3b901172da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9e1ec6d223e6efe7ca119b005f5ee61e94d122fcd427bb38944e789cf4379e1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantc455654f657ce0100fe2f3ec152fd07ed58058790ef80a9f592a7c3b901172da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f834245-c5f0-c939-7ca4-e7d99401e995`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xor_trichotomy {a b c : ℕ} (h : a ^^^ b ^^^ c ≠ 0) :
    b ^^^ c < a ∨ c ^^^ a < b ∨ a ^^^ b < c := by
  set v := a ^^^ b ^^^ c with hv
  -- The xor of any two of `a`, `b`, `c` is the xor of `v` and the third.
  have hab : a ^^^ b = c ^^^ v := by
    rw [Nat.xor_comm c, Nat.xor_xor_cancel_right]
  have hbc : b ^^^ c = a ^^^ v := by
    rw [← Nat.xor_assoc, Nat.xor_xor_cancel_left]
  have hca : c ^^^ a = b ^^^ v := by
    rw [hv, Nat.xor_assoc, Nat.xor_comm a, ← Nat.xor_assoc, Nat.xor_xor_cancel_left]
  -- If `i` is the position of the most significant bit of `v`, then at least one of `a`, `b`, `c`
  -- has a one bit at position `i`.
  obtain ⟨i, ⟨hi, hi'⟩⟩ := exists_most_significant_bit h
  have : testBit a i ∨ testBit b i ∨ testBit c i := by
    contrapose! hi
    simp_rw [Bool.eq_false_eq_not_eq_true] at hi ⊢
    rw [testBit_xor, testBit_xor, hi.1, hi.2.1, hi.2.2]
    rfl
  -- If, say, `a` has a one bit at position `i`, then `a xor v` has a zero bit at position `i`, but
  -- the same bits as `a` in positions greater than `j`, so `a xor v < a`.
  obtain h | h | h := this
  on_goal 1 => left; rw [hbc]
  on_goal 2 => right; left; rw [hca]
  on_goal 3 => right; right; rw [hab]
  all_goals
    refine lt_of_testBit i ?_ h fun j hj => ?_
    · rw [testBit_xor, h, hi]
      rfl
    · simp only [testBit_xor, hi' _ hj, Bool.bne_false]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantc455654f657ce0100fe2f3ec152fd07ed58058790ef80a9f592a7c3b901172da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantc455654f657ce0100fe2f3ec152fd07ed58058790ef80a9f592a7c3b901172da.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0ffaf087eb538b152576013f30684bab36efc1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
