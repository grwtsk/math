# of_convergence_epsilon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:778a6f6d-fe47-c2b9-0425-c2c0961e820a",
  "kind": "theorem",
  "lexical_name": "of_convergence_epsilon",
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
  "slug": "of-convergence-epsilon--42de5d786312f004a4518b70",
  "source": {
    "blob": "e81ffcf31e24f1558804cfccec857ec0a72802bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 106,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant6a458e96b27b7650a585bd31d6173e101f0664e00580de92bf4b50e1e2c25c12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42de5d786312f004a4518b70a9f3c74f37f10fba10d1a261416d5d7d5ab93d17",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant6a458e96b27b7650a585bd31d6173e101f0664e00580de92bf4b50e1e2c25c12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:778a6f6d-fe47-c2b9-0425-c2c0961e820a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_convergence_epsilon :
    ∀ ε > (0 : K), ∃ N : ℕ, ∀ n ≥ N, |v - (of v).convergents n| < ε := by
  intro ε ε_pos
  -- use the archimedean property to obtian a suitable N
  rcases(exists_nat_gt (1 / ε) : ∃ N' : ℕ, 1 / ε < N') with ⟨N', one_div_ε_lt_N'⟩
  let N := max N' 5
  -- set minimum to 5 to have N ≤ fib N work
  exists N
  intro n n_ge_N
  let g := of v
  cases' Decidable.em (g.TerminatedAt n) with terminated_at_n not_terminated_at_n
  · have : v = g.convergents n := of_correctness_of_terminatedAt terminated_at_n
    have : v - g.convergents n = 0 := sub_eq_zero.mpr this
    rw [this]
    exact_mod_cast ε_pos
  · let B := g.denominators n
    let nB := g.denominators (n + 1)
    have abs_v_sub_conv_le : |v - g.convergents n| ≤ 1 / (B * nB) :=
      abs_sub_convergents_le not_terminated_at_n
    suffices : 1 / (B * nB) < ε; exact lt_of_le_of_lt abs_v_sub_conv_le this
    -- show that `0 < (B * nB)` and then multiply by `B * nB` to get rid of the division
    have nB_ineq : (fib (n + 2) : K) ≤ nB :=
      haveI : ¬g.TerminatedAt (n + 1 - 1) := not_terminated_at_n
      succ_nth_fib_le_of_nth_denom (Or.inr this)
    have B_ineq : (fib (n + 1) : K) ≤ B :=
      haveI : ¬g.TerminatedAt (n - 1) := mt (terminated_stable n.pred_le) not_terminated_at_n
      succ_nth_fib_le_of_nth_denom (Or.inr this)
    have zero_lt_B : 0 < B :=
      haveI : (0 : K) < fib (n + 1) := by exact_mod_cast fib_pos n.zero_lt_succ
      lt_of_lt_of_le this B_ineq
    have zero_lt_mul_conts : 0 < B * nB := by
      have : 0 < nB :=
        haveI : (0 : K) < fib (n + 2) := by exact_mod_cast fib_pos (n + 1).zero_lt_succ
        lt_of_lt_of_le this nB_ineq
      solve_by_elim [mul_pos]
    suffices : 1 < ε * (B * nB); exact (div_lt_iff zero_lt_mul_conts).mpr this
    -- use that `N ≥ n` was obtained from the archimedean property to show the following
    have one_lt_ε_mul_N : 1 < ε * n := by
      have one_lt_ε_mul_N' : 1 < ε * (N' : K) := (div_lt_iff' ε_pos).mp one_div_ε_lt_N'
      have : (N' : K) ≤ N := by exact_mod_cast le_max_left _ _
      have : ε * N' ≤ ε * n :=
        (mul_le_mul_left ε_pos).mpr (le_trans this (by exact_mod_cast n_ge_N))
      exact lt_of_lt_of_le one_lt_ε_mul_N' this
    suffices : ε * n ≤ ε * (B * nB); exact lt_of_lt_of_le one_lt_ε_mul_N this
    -- cancel `ε`
    suffices : (n : K) ≤ B * nB;
    exact (mul_le_mul_left ε_pos).mpr this
    show (n : K) ≤ B * nB
    calc
      (n : K) ≤ fib n := by exact_mod_cast le_fib_self <| le_trans (le_max_right N' 5) n_ge_N
      _ ≤ fib (n + 1) := by exact_mod_cast fib_le_fib_succ
      _ ≤ fib (n + 1) * fib (n + 1) := by exact_mod_cast (fib (n + 1)).le_mul_self
      _ ≤ fib (n + 1) * fib (n + 2) :=
        (mul_le_mul_of_nonneg_left (by exact_mod_cast fib_le_fib_succ)
          (by exact_mod_cast (fib (n + 1)).zero_le))
      _ ≤ B * nB :=
        mul_le_mul B_ineq nB_ineq (by exact_mod_cast (fib (n + 2)).zero_le) (le_of_lt zero_lt_B)
#align generalized_continued_fraction.of_convergence_epsilon GeneralizedContinuedFraction.of_convergence_epsilon

attribute [local instance] Preorder.topology

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant6a458e96b27b7650a585bd31d6173e101f0664e00580de92bf4b50e1e2c25c12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant6a458e96b27b7650a585bd31d6173e101f0664e00580de92bf4b50e1e2c25c12.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e81ffcf31e24f1558804cfccec857ec0a72802bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
