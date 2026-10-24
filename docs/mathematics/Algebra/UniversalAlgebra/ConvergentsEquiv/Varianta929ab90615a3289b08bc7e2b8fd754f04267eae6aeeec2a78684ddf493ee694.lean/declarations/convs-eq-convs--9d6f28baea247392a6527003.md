# convs_eq_convs'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81a0c4f5-ad21-48d0-9dba-a38187537ba7",
  "kind": "theorem",
  "lexical_name": "convs_eq_convs'",
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
  "slug": "convs-eq-convs--9d6f28baea247392a6527003",
  "source": {
    "blob": "65efd2b6f17c9df8f8ba9581164e67f546edeffc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 330,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Varianta929ab90615a3289b08bc7e2b8fd754f04267eae6aeeec2a78684ddf493ee694.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d6f28baea247392a6527003fb51e30bcf6fa1654dadbaefdbb637f3f9115302",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ConvergentsEquiv/Varianta929ab90615a3289b08bc7e2b8fd754f04267eae6aeeec2a78684ddf493ee694.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81a0c4f5-ad21-48d0-9dba-a38187537ba7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convs_eq_convs' [Field K] [LinearOrder K] [IsStrictOrderedRing K]
    (s_pos : ∀ {gp : Pair K} {m : ℕ}, m < n → g.s.get? m = some gp → 0 < gp.a ∧ 0 < gp.b) :
    g.convs n = g.convs' n := by
  induction n generalizing g with
  | zero => simp
  | succ n IH =>
    let g' := squashGCF g n
    -- first replace the rhs with the squashed computation
    suffices g.convs (n + 1) = g'.convs' n by
      rwa [succ_nth_conv'_eq_squashGCF_nth_conv']
    rcases Decidable.em (TerminatedAt g n) with terminatedAt_n | not_terminatedAt_n
    · have g'_eq_g : g' = g := squashGCF_eq_self_of_terminated terminatedAt_n
      rw [convs_stable_of_terminated n.le_succ terminatedAt_n, g'_eq_g, IH _]
      intro _ _ m_lt_n s_mth_eq
      exact s_pos (Nat.lt_succ_of_lt m_lt_n) s_mth_eq
    · suffices g.convs (n + 1) = g'.convs n by
        -- invoke the IH for the squashed gcf
        rwa [← IH]
        intro gp' m m_lt_n s_mth_eq'
        -- case distinction on m + 1 = n or m + 1 < n
        rcases m_lt_n with n | succ_m_lt_n
        · -- the difficult case at the squashed position: we first obtain the values from
          -- the sequence
          obtain ⟨gp_succ_m, s_succ_mth_eq⟩ : ∃ gp_succ_m, g.s.get? (m + 1) = some gp_succ_m :=
            Option.ne_none_iff_exists'.mp not_terminatedAt_n
          obtain ⟨gp_m, mth_s_eq⟩ : ∃ gp_m, g.s.get? m = some gp_m :=
            g.s.ge_stable m.le_succ s_succ_mth_eq
          -- we then plug them into the recurrence
          suffices 0 < gp_m.a ∧ 0 < gp_m.b + gp_succ_m.a / gp_succ_m.b by
            have ot : g'.s.get? m = some ⟨gp_m.a, gp_m.b + gp_succ_m.a / gp_succ_m.b⟩ :=
              squashSeq_nth_of_not_terminated mth_s_eq s_succ_mth_eq
            grind
          have m_lt_n : m < m.succ := Nat.lt_succ_self m
          refine ⟨(s_pos (Nat.lt_succ_of_lt m_lt_n) mth_s_eq).left, ?_⟩
          refine add_pos (s_pos (Nat.lt_succ_of_lt m_lt_n) mth_s_eq).right ?_
          have : 0 < gp_succ_m.a ∧ 0 < gp_succ_m.b := s_pos (lt_add_one <| m + 1) s_succ_mth_eq
          exact div_pos this.left this.right
        · -- the easy case: before the squashed position, nothing changes
          refine s_pos (Nat.lt_succ_of_lt <| Nat.lt_succ_of_lt succ_m_lt_n) ?_
          exact Eq.trans (squashGCF_nth_of_lt succ_m_lt_n).symm s_mth_eq'
      -- now the result follows from the fact that the convergents coincide at the squashed position
      -- as established in `succ_nth_conv_eq_squashGCF_nth_conv`.
      have : ∀ ⦃b⦄, g.partDens.get? n = some b → b ≠ 0 := by
        intro _ nth_partDen_eq
        grind [exists_s_b_of_partDen nth_partDen_eq]
      exact succ_nth_conv_eq_squashGCF_nth_conv @this

end GenContFract

open GenContFract

namespace ContFract

/-- Shows that the recurrence relation (`convs`) and direct evaluation (`convs'`) of a
(regular) continued fraction coincide. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ConvergentsEquiv/Varianta929ab90615a3289b08bc7e2b8fd754f04267eae6aeeec2a78684ddf493ee694.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Varianta929ab90615a3289b08bc7e2b8fd754f04267eae6aeeec2a78684ddf493ee694.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65efd2b6f17c9df8f8ba9581164e67f546edeffc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
