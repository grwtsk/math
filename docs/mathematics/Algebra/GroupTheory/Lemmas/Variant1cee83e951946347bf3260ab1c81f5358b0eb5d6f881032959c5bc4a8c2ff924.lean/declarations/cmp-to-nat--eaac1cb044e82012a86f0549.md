# cmp_to_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d994018140cdf6730f774bce62e8beb65f43f11",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1cee83e951946347bf3260ab1c81f5358b0eb5d6f881032959c5bc4a8c2ff924.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c64a9c8-5aa3-51d7-d7a3-1a9717283970",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a1be56a-cf41-d6de-2877-86773c1548fb",
  "kind": "theorem",
  "lexical_name": "cmp_to_nat",
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
  "slug": "cmp-to-nat--eaac1cb044e82012a86f0549",
  "source": {
    "blob": "9d994018140cdf6730f774bce62e8beb65f43f11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 149,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant1cee83e951946347bf3260ab1c81f5358b0eb5d6f881032959c5bc4a8c2ff924.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaac1cb044e82012a86f0549daeb55d89fca2d6fbc6131b830ffe548c72f7cef",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variant1cee83e951946347bf3260ab1c81f5358b0eb5d6f881032959c5bc4a8c2ff924.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a1be56a-cf41-d6de-2877-86773c1548fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cmp_to_nat : ∀ m n, (Ordering.casesOn (cmp m n) ((m : ℕ) < n) (m = n) ((n : ℕ) < m) : Prop)
  | 1, 1 => rfl
  | bit0 a, 1 =>
    let h : (1 : ℕ) ≤ a := to_nat_pos a
    add_le_add h h
  | bit1 a, 1 => Nat.succ_lt_succ <| to_nat_pos <| bit0 a
  | 1, bit0 b =>
    let h : (1 : ℕ) ≤ b := to_nat_pos b
    add_le_add h h
  | 1, bit1 b => Nat.succ_lt_succ <| to_nat_pos <| bit0 b
  | bit0 a, bit0 b => by
    have := cmp_to_nat a b; revert this; cases cmp a b <;> dsimp <;> intro this
    · exact add_lt_add this this
    · rw [this]
    · exact add_lt_add this this
  | bit0 a, bit1 b => by
    dsimp [cmp]
    have := cmp_to_nat a b; revert this; cases cmp a b <;> dsimp <;> intro this
    · exact Nat.le_succ_of_le (add_lt_add this this)
    · rw [this]
      apply Nat.lt_succ_self
    · exact cmp_to_nat_lemma this
  | bit1 a, bit0 b => by
    dsimp [cmp]
    have := cmp_to_nat a b; revert this; cases cmp a b <;> dsimp <;> intro this
    · exact cmp_to_nat_lemma this
    · rw [this]
      apply Nat.lt_succ_self
    · exact Nat.le_succ_of_le (add_lt_add this this)
  | bit1 a, bit1 b => by
    have := cmp_to_nat a b; revert this; cases cmp a b <;> dsimp <;> intro this
    · exact Nat.succ_lt_succ (add_lt_add this this)
    · rw [this]
    · exact Nat.succ_lt_succ (add_lt_add this this)
#align pos_num.cmp_to_nat PosNum.cmp_to_nat

@[norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variant1cee83e951946347bf3260ab1c81f5358b0eb5d6f881032959c5bc4a8c2ff924.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant1cee83e951946347bf3260ab1c81f5358b0eb5d6f881032959c5bc4a8c2ff924.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d994018140cdf6730f774bce62e8beb65f43f11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
