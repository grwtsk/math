# prev_nthLe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a27405cf-192c-8762-cf51-fcb9b1bbc00b",
  "kind": "theorem",
  "lexical_name": "prev_nthLe",
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
  "slug": "prev-nthle--909f1f05710d24ea4e1d3fb5",
  "source": {
    "blob": "ff1407b42ba1c0ae1bbe9ee2c4c076236142c712",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 321,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant43d7a7e0642f56f414ae36624cd069401d19077c1f292d398460d4e369fd6cc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:909f1f05710d24ea4e1d3fb552505a6312b7ce7b2d98b08b4df6c64d23b6d982",
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

Occurrence: `result:a27405cf-192c-8762-cf51-fcb9b1bbc00b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prev_nthLe (l : List α) (h : Nodup l) (n : ℕ) (hn : n < l.length) :
    prev l (l.nthLe n hn) (nthLe_mem _ _ _) =
      l.nthLe ((n + (l.length - 1)) % l.length) (Nat.mod_lt _ (n.zero_le.trans_lt hn)) := by
  cases' l with x l
  · simp at hn
  induction' l with y l hl generalizing n x
  · simp
  · rcases n with (_ | _ | n)
    · simp [Nat.add_succ_sub_one, add_zero, List.prev_cons_cons_eq, Nat.zero_eq, List.length,
        List.nthLe, Nat.succ_add_sub_one, zero_add, getLast_eq_get,
        Nat.mod_eq_of_lt (Nat.succ_lt_succ l.length.lt_succ_self)]
    · simp only [mem_cons, nodup_cons] at h
      push_neg at h
      simp only [List.prev_cons_cons_of_ne _ _ _ _ h.left.left.symm, Nat.zero_eq, List.length,
        List.nthLe, add_comm, eq_self_iff_true, Nat.succ_add_sub_one, Nat.mod_self, zero_add,
        List.get]
    · rw [prev_ne_cons_cons]
      · convert hl n.succ y h.of_cons (Nat.le_of_succ_le_succ hn) using 1
        have : ∀ k hk, (y :: l).nthLe k hk = (x :: y :: l).nthLe (k + 1) (Nat.succ_lt_succ hk) := by
          intros
          simp [List.nthLe]
        rw [this]
        congr
        simp only [Nat.add_succ_sub_one, add_zero, length]
        simp only [length, Nat.succ_lt_succ_iff] at hn
        set k := l.length
        rw [Nat.succ_add, ← Nat.add_succ, Nat.add_mod_right, Nat.succ_add, ← Nat.add_succ _ k,
          Nat.add_mod_right, Nat.mod_eq_of_lt, Nat.mod_eq_of_lt]
        · exact Nat.lt_succ_of_lt hn
        · exact Nat.succ_lt_succ (Nat.lt_succ_of_lt hn)
      · intro H
        suffices n.succ.succ = 0 by simpa
        rw [nodup_iff_nthLe_inj] at h
        refine' h _ _ hn Nat.succ_pos' _
        simpa using H
      · intro H
        suffices n.succ.succ = 1 by simpa
        rw [nodup_iff_nthLe_inj] at h
        refine' h _ _ hn (Nat.succ_lt_succ Nat.succ_pos') _
        simpa using H
#align list.prev_nth_le List.prev_nthLe

set_option linter.deprecated false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant43d7a7e0642f56f414ae36624cd069401d19077c1f292d398460d4e369fd6cc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant43d7a7e0642f56f414ae36624cd069401d19077c1f292d398460d4e369fd6cc3.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff1407b42ba1c0ae1bbe9ee2c4c076236142c712` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
