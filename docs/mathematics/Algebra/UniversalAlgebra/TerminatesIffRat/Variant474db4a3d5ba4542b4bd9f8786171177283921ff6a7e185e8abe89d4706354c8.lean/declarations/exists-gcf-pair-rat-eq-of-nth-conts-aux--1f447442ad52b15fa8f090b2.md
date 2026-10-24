# exists_gcf_pair_rat_eq_of_nth_conts_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b725dd0-a4fa-0826-aaeb-8fa036a2c1b3",
  "kind": "theorem",
  "lexical_name": "exists_gcf_pair_rat_eq_of_nth_conts_aux",
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
  "slug": "exists-gcf-pair-rat-eq-of-nth-conts-aux--1f447442ad52b15fa8f090b2",
  "source": {
    "blob": "eb5a3e3e8744b0ccc132946edfddaa0f628a0761",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 71,
    "path": "GRWTSK/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f447442ad52b15fa8f090b202d2034a73e4f90fa6f144f7f0ca83e23c45a90c",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b725dd0-a4fa-0826-aaeb-8fa036a2c1b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem exists_gcf_pair_rat_eq_of_nth_conts_aux :
    ∃ conts : Pair ℚ, (of v).continuantsAux n = (conts.map (↑) : Pair K) :=
  Nat.strong_induction_on n
    (by
      clear n
      let g := of v
      intro n IH
      rcases n with (_ | _ | n)
      -- n = 0
      · suffices ∃ gp : Pair ℚ, Pair.mk (1 : K) 0 = gp.map (↑) by simpa [continuantsAux]
        use Pair.mk 1 0
        simp
      -- n = 1
      · suffices ∃ conts : Pair ℚ, Pair.mk g.h 1 = conts.map (↑) by simpa [continuantsAux]
        use Pair.mk ⌊v⌋ 1
        simp
      -- 2 ≤ n
      · cases' IH (n + 1) <| lt_add_one (n + 1) with pred_conts pred_conts_eq
        -- invoke the IH
        cases' s_ppred_nth_eq : g.s.get? n with gp_n
        -- option.none
        · use pred_conts
          have : g.continuantsAux (n + 2) = g.continuantsAux (n + 1) :=
            continuantsAux_stable_of_terminated (n + 1).le_succ s_ppred_nth_eq
          simp only [this, pred_conts_eq]
        -- option.some
        · -- invoke the IH a second time
          cases' IH n <| lt_of_le_of_lt n.le_succ <| lt_add_one <| n + 1 with ppred_conts
            ppred_conts_eq
          obtain ⟨a_eq_one, z, b_eq_z⟩ : gp_n.a = 1 ∧ ∃ z : ℤ, gp_n.b = (z : K);
          exact of_part_num_eq_one_and_exists_int_part_denom_eq s_ppred_nth_eq
          -- finally, unfold the recurrence to obtain the required rational value.
          simp only [a_eq_one, b_eq_z,
            continuantsAux_recurrence s_ppred_nth_eq ppred_conts_eq pred_conts_eq]
          use nextContinuants 1 (z : ℚ) ppred_conts pred_conts
          cases ppred_conts; cases pred_conts
          simp [nextContinuants, nextNumerator, nextDenominator])
#align generalized_continued_fraction.exists_gcf_pair_rat_eq_of_nth_conts_aux GeneralizedContinuedFraction.exists_gcf_pair_rat_eq_of_nth_conts_aux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb5a3e3e8744b0ccc132946edfddaa0f628a0761` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
