# abs_sub_convergents_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc89ed4f-8341-8c93-a3ea-d89d39cc1201",
  "kind": "theorem",
  "lexical_name": "abs_sub_convergents_le",
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
  "slug": "abs-sub-convergents-le--2cf68212e01679edf25268cd",
  "source": {
    "blob": "440da51d0d5f9fc1eea1c493d0d371d30819f05a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 560,
    "line": 474,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cf68212e01679edf25268cd2c3a68c5a8a2c90cbcfb503980241266b4e40920",
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

Occurrence: `result:dc89ed4f-8341-8c93-a3ea-d89d39cc1201`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–560.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_sub_convergents_le (not_terminated_at_n : ¬(of v).TerminatedAt n) :
    |v - (of v).convergents n| ≤ 1 / ((of v).denominators n * ((of v).denominators <| n + 1)) := by
  -- shorthand notation
  let g := of v
  let nextConts := g.continuantsAux (n + 2)
  set conts := continuantsAux g (n + 1) with conts_eq
  set pred_conts := continuantsAux g n with pred_conts_eq
  -- change the goal to something more readable
  change |v - convergents g n| ≤ 1 / (conts.b * nextConts.b)
  obtain ⟨gp, s_nth_eq⟩ : ∃ gp, g.s.get? n = some gp
  exact Option.ne_none_iff_exists'.1 not_terminated_at_n
  have gp_a_eq_one : gp.a = 1 := of_part_num_eq_one (part_num_eq_s_a s_nth_eq)
  -- unfold the recurrence relation for `nextConts.b`
  have nextConts_b_eq : nextConts.b = pred_conts.b + gp.b * conts.b := by
    simp [continuantsAux_recurrence s_nth_eq pred_conts_eq conts_eq, gp_a_eq_one,
      pred_conts_eq.symm, conts_eq.symm, add_comm]
  let denom := conts.b * (pred_conts.b + gp.b * conts.b)
  suffices |v - g.convergents n| ≤ 1 / denom by rw [nextConts_b_eq]; congr 1
  obtain ⟨ifp_succ_n, succ_nth_stream_eq, ifp_succ_n_b_eq_gp_b⟩ :
    ∃ ifp_succ_n, IntFractPair.stream v (n + 1) = some ifp_succ_n ∧ (ifp_succ_n.b : K) = gp.b
  exact IntFractPair.exists_succ_get?_stream_of_gcf_of_get?_eq_some s_nth_eq
  obtain ⟨ifp_n, stream_nth_eq, stream_nth_fr_ne_zero, if_of_eq_ifp_succ_n⟩ :
    ∃ ifp_n,
      IntFractPair.stream v n = some ifp_n ∧ ifp_n.fr ≠ 0 ∧ IntFractPair.of ifp_n.fr⁻¹ = ifp_succ_n
  exact IntFractPair.succ_nth_stream_eq_some_iff.1 succ_nth_stream_eq
  let denom' := conts.b * (pred_conts.b + ifp_n.fr⁻¹ * conts.b)
  -- now we can use `sub_convergents_eq` to simplify our goal
  suffices |(-1) ^ n / denom'| ≤ 1 / denom by
    have : v - g.convergents n = (-1) ^ n / denom' := by
      -- apply `sub_convergents_eq` and simplify the result
      have tmp := sub_convergents_eq stream_nth_eq
      simp only [stream_nth_fr_ne_zero, conts_eq.symm, pred_conts_eq.symm, if_false] at tmp
      rw [tmp]
      ring
    rwa [this]
  -- derive some tedious inequalities that we need to rewrite our goal
  have nextConts_b_ineq : (fib (n + 2) : K) ≤ pred_conts.b + gp.b * conts.b := by
    have : (fib (n + 2) : K) ≤ nextConts.b :=
      fib_le_of_continuantsAux_b (Or.inr not_terminated_at_n)
    rwa [nextConts_b_eq] at this
  have conts_b_ineq : (fib (n + 1) : K) ≤ conts.b :=
    haveI : ¬g.TerminatedAt (n - 1) := mt (terminated_stable n.pred_le) not_terminated_at_n
    fib_le_of_continuantsAux_b <| Or.inr this
  have zero_lt_conts_b : 0 < conts.b :=
    haveI : (0 : K) < fib (n + 1) := by
      exact_mod_cast fib_pos (lt_of_le_of_ne n.succ.zero_le n.succ_ne_zero.symm)
    lt_of_lt_of_le this conts_b_ineq
  -- `denom'` is positive, so we can remove `|⬝|` from our goal
  suffices 1 / denom' ≤ 1 / denom by
    have : |(-1) ^ n / denom'| = 1 / denom' := by
      suffices 1 / |denom'| = 1 / denom' by rwa [abs_div, abs_neg_one_pow n]
      have : 0 < denom' := by
        have : 0 ≤ pred_conts.b :=
          haveI : (fib n : K) ≤ pred_conts.b :=
            haveI : ¬g.TerminatedAt (n - 2) :=
              mt (terminated_stable (n.sub_le 2)) not_terminated_at_n
            fib_le_of_continuantsAux_b <| Or.inr this
          le_trans (by exact_mod_cast (fib n).zero_le) this
        have : 0 < ifp_n.fr⁻¹ :=
          haveI zero_le_ifp_n_fract : 0 ≤ ifp_n.fr :=
            IntFractPair.nth_stream_fr_nonneg stream_nth_eq
          inv_pos.2 (lt_of_le_of_ne zero_le_ifp_n_fract stream_nth_fr_ne_zero.symm)
        -- Porting note: replaced complicated positivity proof with tactic.
        positivity
      rw [abs_of_pos this]
    rwa [this]
  suffices 0 < denom ∧ denom ≤ denom' from div_le_div_of_le_left zero_le_one this.left this.right
  constructor
  · have : 0 < pred_conts.b + gp.b * conts.b :=
      lt_of_lt_of_le
        (by exact_mod_cast fib_pos (lt_of_le_of_ne n.succ.succ.zero_le n.succ.succ_ne_zero.symm))
        nextConts_b_ineq
    solve_by_elim [mul_pos]
  · -- we can cancel multiplication by `conts.b` and addition with `pred_conts.b`
    suffices : gp.b * conts.b ≤ ifp_n.fr⁻¹ * conts.b
    exact (mul_le_mul_left zero_lt_conts_b).2 <| (add_le_add_iff_left pred_conts.b).2 this
    suffices (ifp_succ_n.b : K) * conts.b ≤ ifp_n.fr⁻¹ * conts.b by rwa [← ifp_succ_n_b_eq_gp_b]
    have : (ifp_succ_n.b : K) ≤ ifp_n.fr⁻¹ :=
      IntFractPair.succ_nth_stream_b_le_nth_stream_fr_inv stream_nth_eq succ_nth_stream_eq
    have : 0 ≤ conts.b := le_of_lt zero_lt_conts_b
    -- porting note: was `mono`
    refine' mul_le_mul_of_nonneg_right _ _ <;> assumption
#align generalized_continued_fraction.abs_sub_convergents_le GeneralizedContinuedFraction.abs_sub_convergents_le

/-- Shows that `|v - Aₙ / Bₙ| ≤ 1 / (bₙ * Bₙ * Bₙ)`. This bound is worse than the one shown in
`GCF.abs_sub_convergents_le`, but sometimes it is easier to apply and sufficient for one's use case.
 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `440da51d0d5f9fc1eea1c493d0d371d30819f05a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
