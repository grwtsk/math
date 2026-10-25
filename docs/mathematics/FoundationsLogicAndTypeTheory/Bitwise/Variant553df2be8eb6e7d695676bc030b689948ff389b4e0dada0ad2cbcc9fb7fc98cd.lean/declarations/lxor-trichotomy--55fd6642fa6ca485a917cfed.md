# lxor'_trichotomy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4883bdbf3c6ad75ad0bc3373a00b481e3ecdac3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 277,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ccc1f11e-4ea1-d99c-dc5e-cbd691d852bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5fc91406-05e4-da49-3457-a9981a870e5a",
  "kind": "theorem",
  "lexical_name": "lxor'_trichotomy",
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
  "slug": "lxor-trichotomy--55fd6642fa6ca485a917cfed",
  "source": {
    "blob": "4883bdbf3c6ad75ad0bc3373a00b481e3ecdac3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 277,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55fd6642fa6ca485a917cfed4133a6fdf74d61a927121ab37ec723330fe727e3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fc91406-05e4-da49-3457-a9981a870e5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lxor'_trichotomy {a b c : ℕ} (h : a ≠ lxor' b c) :
    lxor' b c < a ∨ lxor' a c < b ∨ lxor' a b < c := by
  set v := lxor' a (lxor' b c) with hv
  -- The xor of any two of `a`, `b`, `c` is the xor of `v` and the third.
  have hab : lxor' a b = lxor' c v := by
    rw [hv]
    conv_rhs =>
      rw [lxor'_comm]
      simp [lxor'_assoc]
  have hac : lxor' a c = lxor' b v := by
    rw [hv]
    conv_rhs =>
      right
      rw [← lxor'_comm]
    rw [← lxor'_assoc, ← lxor'_assoc, lxor'_self, zero_lxor', lxor'_comm]
  have hbc : lxor' b c = lxor' a v := by simp [hv, ← lxor'_assoc]
  -- If `i` is the position of the most significant bit of `v`, then at least one of `a`, `b`, `c`
  -- has a one bit at position `i`.
  obtain ⟨i, ⟨hi, hi'⟩⟩ := exists_most_significant_bit (lxor'_ne_zero.2 h)
  have : testBit a i = true ∨ testBit b i = true ∨ testBit c i = true := by
    contrapose! hi
    simp only [Bool.eq_false_eq_not_eq_true, Ne, testBit_lxor'] at hi ⊢
    rw [hi.1, hi.2.1, hi.2.2, Bool.xor_false, Bool.xor_false]
  -- If, say, `a` has a one bit at position `i`, then `a xor v` has a zero bit at position `i`, but
  -- the same bits as `a` in positions greater than `j`, so `a xor v < a`.
  rcases this with (h | h | h)
  on_goal 1 => left; rw [hbc]
  on_goal 2 => right; left; rw [hac]
  on_goal 3 => right; right; rw [hab]
  all_goals
    exact lt_of_testBit i (by
      -- Porting note: this was originally `simp [h, hi]`
      rw [Nat.testBit_lxor', h, Bool.true_xor,hi]
      rfl
    ) h fun j hj => by
      -- Porting note: this was originally `simp [hi' _ hj]`
      rw [Nat.testBit_lxor', hi' _ hj, Bool.xor_false_right, eq_self_iff_true]
      trivial
#align nat.lxor_trichotomy Nat.lxor'_trichotomy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4883bdbf3c6ad75ad0bc3373a00b481e3ecdac3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
