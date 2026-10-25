# balance!_eq_balanceₘ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f665717ed3a8e214cf833d75b0a36c85283e6226",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 537,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/801cc5eeb4461d5fde1302cf89badac3360da9f449fdff80f031fe12c2c021bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3120e8bc-a0d2-2a91-e916-22152bc87486",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8243c2e4-2cd7-7cc5-ac7d-34dc771cbe11",
  "kind": "theorem",
  "lexical_name": "balance!_eq_balanceₘ",
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
  "slug": "balance-eq-balance--d2faeea4478da9daea04030b",
  "source": {
    "blob": "f665717ed3a8e214cf833d75b0a36c85283e6226",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 623,
    "line": 537,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant801cc5eeb4461d5fde1302cf89badac3360da9f449fdff80f031fe12c2c021bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2faeea4478da9daea04030b9a1514fbdc94ddfc68dbae8d73c6dd649ef9ab66",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant801cc5eeb4461d5fde1302cf89badac3360da9f449fdff80f031fe12c2c021bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8243c2e4-2cd7-7cc5-ac7d-34dc771cbe11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 537–623.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balance!_eq_balanceₘ {k v} {l r : Impl α β} (hlb : l.Balanced) (hrb : r.Balanced)
    (hlr : BalanceLErasePrecond l.size r.size ∨ BalanceLErasePrecond r.size l.size) :
    balance! k v l r = balanceₘ k v l r := by
  fun_cases balance!
  all_goals dsimp only [balanceₘ]
  · rfl
  · split <;> simp_all [Std.Internal.tree_tac]
  · split <;> simp_all only [Std.Internal.tree_tac]
    · omega
    · rw [dif_pos (by omega)]
      simp only [rotateL, Std.Internal.tree_tac, ite_self]
      omega
  next l r =>
    simp only  [Std.Internal.tree_tac, rotateL] at *
    suffices h : l.size = 0 ∧ r.size = 0 by
      simp only [h.1, h.2, reduceDIte, Nat.not_lt_zero]
      cases l <;> cases r <;> simp_all [Std.Internal.tree_tac]
    omega
  · simp only [size_leaf, size_inner]
    simp_all [Std.Internal.tree_tac]
    rw [if_neg (by omega)]
    rw [if_pos (by omega), rotateL, if_pos]
    all_goals
      simp only [Std.Internal.tree_tac] at *
      omega
  · simp_all [Std.Internal.tree_tac]
  next l r =>
    simp_all only [Std.Internal.tree_tac]
    rw [if_neg (by omega)]
    rw [dif_neg (by omega), dif_pos (by omega), rotateR]
    suffices h : l.size = 0 ∧ r.size = 0 by
      simp only [h.1, h.2]
      cases l <;> cases r <;> simp_all [Std.Internal.tree_tac]
    omega
  · simp_all only [rotateR, Std.Internal.tree_tac]
    rw [if_neg (by omega), dif_neg (by omega), dif_pos (by omega), if_pos (by omega)]
    simp only [inner.injEq, heq_eq_eq, and_true]
    omega
  · simp_all only [Std.Internal.tree_tac]
    rw [if_neg (by omega)]
    simp only [Std.Internal.tree_tac, rotateR]
    rw [if_pos (by omega), dif_neg (by omega), dif_pos (by omega)]
    simp only [inner.injEq, heq_eq_eq, and_self, and_true, true_and]
    omega
  · simp_all only [Std.Internal.tree_tac]
    rw [if_neg]
    · repeat simp_all only [rotateL, dite_true, Std.Internal.tree_tac, if_true]
      omega
    · simp only [Nat.not_le] at *
      omega
  · rw [rotateL]
    repeat simp_all only [Std.Internal.tree_tac, dite_true, Nat.not_lt]
    rw [if_neg (by omega), if_neg (by omega)]
    simp only [Std.Internal.tree_tac, Nat.add_right_cancel_iff] at *
    omega
  · exfalso
    simp only [balanced_inner_iff, size_inner, size_leaf, balancedAtRoot_zero_iff'] at hrb
    simp only [delta] at ‹delta * _ < _›
    have := hlb.one_le
    omega
  · exfalso
    simp only [balanced_inner_iff, size_leaf, balancedAtRoot_zero_iff] at hrb
    simp only [delta] at ‹delta * _ < _›
    have := hlb.one_le
    omega
  · repeat simp_all only [Std.Internal.tree_tac, rotateR, dite_true, ite_true, dite_false]
    rw [if_neg (by omega)]
    simp only [inner.injEq, heq_eq_eq, and_true, true_and]
    omega
  · repeat simp_all only [balanced_inner_iff, ratio, size_inner, dite_true, dite_false]
    rw [if_neg (by omega), rotateR, ratio, size_inner, size_inner, if_neg (by omega)]
    simp only [Std.Internal.tree_tac, Nat.reduceMul] at *
    omega
  · exfalso
    simp only [balanced_inner_iff, size_inner, size_leaf, balancedAtRoot_zero_iff'] at hlb
    simp only [delta] at ‹delta * _ < _›
    have := hrb.one_le
    omega
  · exfalso
    simp only [balanced_inner_iff, size_leaf, balancedAtRoot_zero_iff] at hlb
    simp only [delta] at ‹delta * _ < _›
    have := hrb.one_le
    omega
  · repeat simp only [Std.Internal.tree_tac, dite_false, *] at *
    rw [if_neg (by omega)]
    ac_rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant801cc5eeb4461d5fde1302cf89badac3360da9f449fdff80f031fe12c2c021bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant801cc5eeb4461d5fde1302cf89badac3360da9f449fdff80f031fe12c2c021bf.lean#L537).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f665717ed3a8e214cf833d75b0a36c85283e6226` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
