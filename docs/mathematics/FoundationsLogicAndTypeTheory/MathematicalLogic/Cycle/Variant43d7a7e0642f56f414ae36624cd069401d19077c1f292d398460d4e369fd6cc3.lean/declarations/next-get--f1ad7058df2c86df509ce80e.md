# next_get

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4a3557f-19f7-f918-279a-8897049caf2b",
  "kind": "theorem",
  "lexical_name": "next_get",
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
  "slug": "next-get--f1ad7058df2c86df509ce80e",
  "source": {
    "blob": "ff1407b42ba1c0ae1bbe9ee2c4c076236142c712",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 272,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant43d7a7e0642f56f414ae36624cd069401d19077c1f292d398460d4e369fd6cc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1ad7058df2c86df509ce80e8ad5122c48e9819febaaffe7359e11197ea82dba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant43d7a7e0642f56f414ae36624cd069401d19077c1f292d398460d4e369fd6cc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4a3557f-19f7-f918-279a-8897049caf2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem next_get : ∀ (l : List α) (_h : Nodup l) (i : Fin l.length),
    next l (l.get i) (get_mem _ _ _) = l.get ⟨(i + 1) % l.length,
      Nat.mod_lt _ (i.1.zero_le.trans_lt i.2)⟩
  | [], _, i => by simpa using i.2
  | [_], _, _ => by simp
  | x::y::l, _h, ⟨0, h0⟩ => by
    have h₁ : get (x :: y :: l) { val := 0, isLt := h0 } = x := by simp
    rw [next_cons_cons_eq' _ _ _ _ _ h₁]
    simp
  | x::y::l, hn, ⟨i+1, hi⟩ => by
    have hx' : (x :: y :: l).get ⟨i+1, hi⟩ ≠ x := by
      intro H
      suffices (i + 1 : ℕ) = 0 by simpa
      rw [nodup_iff_injective_get] at hn
      refine' Fin.veq_of_eq (@hn ⟨i + 1, hi⟩ ⟨0, by simp⟩ _)
      simpa using H
    have hi' : i ≤ l.length := Nat.le_of_lt_succ (Nat.succ_lt_succ_iff.1 hi)
    rcases hi'.eq_or_lt with (hi' | hi')
    · subst hi'
      rw [next_getLast_cons]
      · simp [hi', get]
      · rw [get_cons_succ]; exact get_mem _ _ _
      · exact hx'
      · simp [getLast_eq_get]
      · exact hn.of_cons
    · rw [next_ne_head_ne_getLast _ _ _ _ _ hx']
      simp only [get_cons_succ]
      rw [next_get (y::l), ← get_cons_succ (a := x)]
      congr
      dsimp
      rw [Nat.mod_eq_of_lt (Nat.succ_lt_succ_iff.2 hi'),
        Nat.mod_eq_of_lt (Nat.succ_lt_succ_iff.2 (Nat.succ_lt_succ_iff.2 hi'))]
      · simp [Nat.mod_eq_of_lt (Nat.succ_lt_succ_iff.2 hi'), Nat.succ_eq_add_one, hi']
      · exact hn.of_cons
      · rw [getLast_eq_get]
        intro h
        have := nodup_iff_injective_get.1 hn h
        simp at this; simp [this] at hi'
      · rw [get_cons_succ]; exact get_mem _ _ _

set_option linter.deprecated false in
@[deprecated next_get]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant43d7a7e0642f56f414ae36624cd069401d19077c1f292d398460d4e369fd6cc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant43d7a7e0642f56f414ae36624cd069401d19077c1f292d398460d4e369fd6cc3.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff1407b42ba1c0ae1bbe9ee2c4c076236142c712` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
