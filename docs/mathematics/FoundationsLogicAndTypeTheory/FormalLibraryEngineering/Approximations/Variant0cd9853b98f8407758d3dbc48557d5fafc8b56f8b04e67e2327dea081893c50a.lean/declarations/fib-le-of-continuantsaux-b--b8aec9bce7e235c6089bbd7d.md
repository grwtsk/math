# fib_le_of_continuantsAux_b

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f85a7bed-065c-38db-109c-b790d04671b6",
  "kind": "theorem",
  "lexical_name": "fib_le_of_continuantsAux_b",
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
  "slug": "fib-le-of-continuantsaux-b--b8aec9bce7e235c6089bbd7d",
  "source": {
    "blob": "440da51d0d5f9fc1eea1c493d0d371d30819f05a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 201,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8aec9bce7e235c6089bbd7dc5915a66f9e32d9d49f1fd270316cf9c12d9e147",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f85a7bed-065c-38db-109c-b790d04671b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fib_le_of_continuantsAux_b :
    n ≤ 1 ∨ ¬(of v).TerminatedAt (n - 2) → (fib n : K) ≤ ((of v).continuantsAux n).b :=
  Nat.strong_induction_on n
    (by
      intro n IH hyp
      rcases n with (_ | _ | n)
      · simp [fib_add_two, continuantsAux] -- case n = 0
      · simp [fib_add_two, continuantsAux] -- case n = 1
      · let g := of v -- case 2 ≤ n
        have : ¬n + 2 ≤ 1 := by linarith
        have not_terminated_at_n : ¬g.TerminatedAt n := Or.resolve_left hyp this
        obtain ⟨gp, s_ppred_nth_eq⟩ : ∃ gp, g.s.get? n = some gp
        exact Option.ne_none_iff_exists'.mp not_terminated_at_n
        set pconts := g.continuantsAux (n + 1) with pconts_eq
        set ppconts := g.continuantsAux n with ppconts_eq
        -- use the recurrence of `continuantsAux`
        suffices (fib n : K) + fib (n + 1) ≤ gp.a * ppconts.b + gp.b * pconts.b by
          simpa [fib_add_two, add_comm,
            continuantsAux_recurrence s_ppred_nth_eq ppconts_eq pconts_eq]
        -- make use of the fact that `gp.a = 1`
        suffices (fib n : K) + fib (n + 1) ≤ ppconts.b + gp.b * pconts.b by
          simpa [of_part_num_eq_one <| part_num_eq_s_a s_ppred_nth_eq]
        have not_terminated_at_pred_n : ¬g.TerminatedAt (n - 1) :=
          mt (terminated_stable <| Nat.sub_le n 1) not_terminated_at_n
        have not_terminated_at_ppred_n : ¬TerminatedAt g (n - 2) :=
          mt (terminated_stable (n - 1).pred_le) not_terminated_at_pred_n
        -- use the IH to get the inequalities for `pconts` and `ppconts`
        have ppred_nth_fib_le_ppconts_B : (fib n : K) ≤ ppconts.b :=
          IH n (lt_trans (Nat.lt.base n) <| Nat.lt.base <| n + 1) (Or.inr not_terminated_at_ppred_n)
        suffices : (fib (n + 1) : K) ≤ gp.b * pconts.b
        solve_by_elim [_root_.add_le_add ppred_nth_fib_le_ppconts_B]
        -- finally use the fact that `1 ≤ gp.b` to solve the goal
        suffices 1 * (fib (n + 1) : K) ≤ gp.b * pconts.b by rwa [one_mul] at this
        have one_le_gp_b : (1 : K) ≤ gp.b :=
          of_one_le_get?_part_denom (part_denom_eq_s_b s_ppred_nth_eq)
        have : (0 : K) ≤ fib (n + 1) := by exact_mod_cast (fib (n + 1)).zero_le
        have : (0 : K) ≤ gp.b := le_trans zero_le_one one_le_gp_b
        mono
        · norm_num
        · tauto)
#align generalized_continued_fraction.fib_le_of_continuants_aux_b GeneralizedContinuedFraction.fib_le_of_continuantsAux_b

/-- Shows that the `n`th denominator is greater than or equal to the `n + 1`th fibonacci number,
that is `Nat.fib (n + 1) ≤ Bₙ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `440da51d0d5f9fc1eea1c493d0d371d30819f05a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
