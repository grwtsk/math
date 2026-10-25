# sub_convergents_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c57784793a3c2f2fef2db7353a5f21672cd2408e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 380,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98fcc6be-83b8-addb-083d-193ba3cb54dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35510b3c-ac9e-4f1c-e760-4586dd3ed939",
  "kind": "theorem",
  "lexical_name": "sub_convergents_eq",
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
  "slug": "sub-convergents-eq--708049b045d0693b38e0c510",
  "source": {
    "blob": "c57784793a3c2f2fef2db7353a5f21672cd2408e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 380,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variantbd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:708049b045d0693b38e0c510b3db8ce8730b45c76c8d6ad8f0c6c1d7189222e6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variantbd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35510b3c-ac9e-4f1c-e760-4586dd3ed939`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sub_convergents_eq {ifp : IntFractPair K}
    (stream_nth_eq : IntFractPair.stream v n = some ifp) :
    let g := of v
    let B := (g.continuantsAux (n + 1)).b
    let pB := (g.continuantsAux n).b
    v - g.convergents n = if ifp.fr = 0 then 0 else (-1) ^ n / (B * (ifp.fr⁻¹ * B + pB)) := by
  -- set up some shorthand notation
  let g := of v
  let conts := g.continuantsAux (n + 1)
  let pred_conts := g.continuantsAux n
  have g_finite_correctness :
    v = GeneralizedContinuedFraction.compExactValue pred_conts conts ifp.fr :=
    compExactValue_correctness_of_stream_eq_some stream_nth_eq
  cases' Decidable.em (ifp.fr = 0) with ifp_fr_eq_zero ifp_fr_ne_zero
  · suffices v - g.convergents n = 0 by simpa [ifp_fr_eq_zero]
    replace g_finite_correctness : v = g.convergents n;
    · simpa [GeneralizedContinuedFraction.compExactValue, ifp_fr_eq_zero] using g_finite_correctness
    exact sub_eq_zero.2 g_finite_correctness
  · -- more shorthand notation
    let A := conts.a
    let B := conts.b
    let pA := pred_conts.a
    let pB := pred_conts.b
    -- first, let's simplify the goal as `ifp.fr ≠ 0`
    suffices v - A / B = (-1) ^ n / (B * (ifp.fr⁻¹ * B + pB)) by simpa [ifp_fr_ne_zero]
    -- now we can unfold `g.compExactValue` to derive the following equality for `v`
    replace g_finite_correctness : v = (pA + ifp.fr⁻¹ * A) / (pB + ifp.fr⁻¹ * B)
    · simpa [GeneralizedContinuedFraction.compExactValue, ifp_fr_ne_zero, nextContinuants,
        nextNumerator, nextDenominator, add_comm] using g_finite_correctness
    -- let's rewrite this equality for `v` in our goal
    suffices
      (pA + ifp.fr⁻¹ * A) / (pB + ifp.fr⁻¹ * B) - A / B = (-1) ^ n / (B * (ifp.fr⁻¹ * B + pB)) by
      rwa [g_finite_correctness]
    -- To continue, we need use the determinant equality. So let's derive the needed hypothesis.
    have n_eq_zero_or_not_terminated_at_pred_n : n = 0 ∨ ¬g.TerminatedAt (n - 1) := by
      cases' n with n'
      · simp
      · have : IntFractPair.stream v (n' + 1) ≠ none := by simp [stream_nth_eq]
        have : ¬g.TerminatedAt n' :=
          (not_congr of_terminatedAt_n_iff_succ_nth_intFractPair_stream_eq_none).2 this
        exact Or.inr this
    have determinant_eq : pA * B - pB * A = (-1) ^ n :=
      determinant_aux n_eq_zero_or_not_terminated_at_pred_n
    -- now all we got to do is to rewrite this equality in our goal and re-arrange terms;
    -- however, for this, we first have to derive quite a few tedious inequalities.
    have pB_ineq : (fib n : K) ≤ pB :=
      haveI : n ≤ 1 ∨ ¬g.TerminatedAt (n - 2) := by
        cases' n_eq_zero_or_not_terminated_at_pred_n with n_eq_zero not_terminated_at_pred_n
        · simp [n_eq_zero]
        · exact Or.inr <| mt (terminated_stable (n - 1).pred_le) not_terminated_at_pred_n
      fib_le_of_continuantsAux_b this
    have B_ineq : (fib (n + 1) : K) ≤ B :=
      haveI : n + 1 ≤ 1 ∨ ¬g.TerminatedAt (n + 1 - 2) := by
        cases' n_eq_zero_or_not_terminated_at_pred_n with n_eq_zero not_terminated_at_pred_n
        · simp [n_eq_zero, le_refl]
        · exact Or.inr not_terminated_at_pred_n
      fib_le_of_continuantsAux_b this
    have zero_lt_B : 0 < B :=
      haveI : 1 ≤ B := le_trans
        (by exact_mod_cast fib_pos (lt_of_le_of_ne n.succ.zero_le n.succ_ne_zero.symm)) B_ineq
      lt_of_lt_of_le zero_lt_one this
    have zero_ne_B : 0 ≠ B := ne_of_lt zero_lt_B
    have : 0 ≠ pB + ifp.fr⁻¹ * B := by
      have : (0 : K) ≤ fib n := by exact_mod_cast (fib n).zero_le
      -- 0 ≤ fib n ≤ pB
      have zero_le_pB : 0 ≤ pB := le_trans this pB_ineq
      have : 0 < ifp.fr⁻¹ := by
        suffices 0 < ifp.fr by rwa [inv_pos]
        have : 0 ≤ ifp.fr := IntFractPair.nth_stream_fr_nonneg stream_nth_eq
        change ifp.fr ≠ 0 at ifp_fr_ne_zero
        exact lt_of_le_of_ne this ifp_fr_ne_zero.symm
      have : 0 < ifp.fr⁻¹ * B := mul_pos this zero_lt_B
      have : 0 < pB + ifp.fr⁻¹ * B := add_pos_of_nonneg_of_pos zero_le_pB this
      exact ne_of_lt this
    -- finally, let's do the rewriting
    calc
      (pA + ifp.fr⁻¹ * A) / (pB + ifp.fr⁻¹ * B) - A / B =
          ((pA + ifp.fr⁻¹ * A) * B - (pB + ifp.fr⁻¹ * B) * A) / ((pB + ifp.fr⁻¹ * B) * B) := by
        rw [div_sub_div _ _ this.symm zero_ne_B.symm]
      _ = (pA * B + ifp.fr⁻¹ * A * B - (pB * A + ifp.fr⁻¹ * B * A)) / _ := by repeat' rw [add_mul]
      _ = (pA * B - pB * A) / ((pB + ifp.fr⁻¹ * B) * B) := by ring
      _ = (-1) ^ n / ((pB + ifp.fr⁻¹ * B) * B) := by rw [determinant_eq]
      _ = (-1) ^ n / (B * (ifp.fr⁻¹ * B + pB)) := by ac_rfl
#align generalized_continued_fraction.sub_convergents_eq GeneralizedContinuedFraction.sub_convergents_eq

/-- Shows that `|v - Aₙ / Bₙ| ≤ 1 / (Bₙ * Bₙ₊₁)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variantbd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variantbd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c57784793a3c2f2fef2db7353a5f21672cd2408e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
