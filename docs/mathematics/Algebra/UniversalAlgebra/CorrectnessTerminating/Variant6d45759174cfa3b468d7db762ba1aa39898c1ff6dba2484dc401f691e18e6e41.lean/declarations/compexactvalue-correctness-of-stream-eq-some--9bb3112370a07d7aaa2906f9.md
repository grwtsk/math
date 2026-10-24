# compExactValue_correctness_of_stream_eq_some

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b136d0c4ca3f6086d201133b7a868ac962f0c0f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d45759174cfa3b468d7db762ba1aa39898c1ff6dba2484dc401f691e18e6e41.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:763b495d-b2b4-04b2-b6e1-64943b6c1667",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07f00e77-c56e-bd15-1ca0-76fed3b4db07",
  "kind": "theorem",
  "lexical_name": "compExactValue_correctness_of_stream_eq_some",
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
  "slug": "compexactvalue-correctness-of-stream-eq-some--9bb3112370a07d7aaa2906f9",
  "source": {
    "blob": "b136d0c4ca3f6086d201133b7a868ac962f0c0f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 103,
    "path": "GRWTSK/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant6d45759174cfa3b468d7db762ba1aa39898c1ff6dba2484dc401f691e18e6e41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bb3112370a07d7aaa2906f9bca31f7642cc3a7a2536f9de0a8f2b8832f68a0d",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant6d45759174cfa3b468d7db762ba1aa39898c1ff6dba2484dc401f691e18e6e41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07f00e77-c56e-bd15-1ca0-76fed3b4db07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compExactValue_correctness_of_stream_eq_some :
    ∀ {ifp_n : IntFractPair K}, IntFractPair.stream v n = some ifp_n →
      v = compExactValue ((of v).continuantsAux n) ((of v).continuantsAux <| n + 1) ifp_n.fr := by
  let g := of v
  induction' n with n IH
  · intro ifp_zero stream_zero_eq
    -- Nat.zero
    have : IntFractPair.of v = ifp_zero := by
      have : IntFractPair.stream v 0 = some (IntFractPair.of v) := rfl
      simpa only [Nat.zero_eq, this, Option.some.injEq] using stream_zero_eq
    cases this
    cases' Decidable.em (Int.fract v = 0) with fract_eq_zero fract_ne_zero
    -- Int.fract v = 0; we must then have `v = ⌊v⌋`
    · suffices v = ⌊v⌋ by
        -- Porting note: was `simpa [continuantsAux, fract_eq_zero, compExactValue]`
        field_simp [nextContinuants, nextNumerator, nextDenominator, compExactValue]
        have : (IntFractPair.of v).fr = Int.fract v := rfl
        rwa [this, if_pos fract_eq_zero]
      calc
        v = Int.fract v + ⌊v⌋ := by rw [Int.fract_add_floor]
        _ = ⌊v⌋ := by simp [fract_eq_zero]
    -- Int.fract v ≠ 0; the claim then easily follows by unfolding a single computation step
    · field_simp [continuantsAux, nextContinuants, nextNumerator, nextDenominator,
        of_h_eq_floor, compExactValue]
      -- Porting note: this and the if_neg rewrite are needed
      have : (IntFractPair.of v).fr = Int.fract v := rfl
      rw [this, if_neg fract_ne_zero, Int.floor_add_fract]
  · intro ifp_succ_n succ_nth_stream_eq
    -- Nat.succ
    obtain ⟨ifp_n, nth_stream_eq, nth_fract_ne_zero, -⟩ :
      ∃ ifp_n, IntFractPair.stream v n = some ifp_n ∧
        ifp_n.fr ≠ 0 ∧ IntFractPair.of ifp_n.fr⁻¹ = ifp_succ_n
    exact IntFractPair.succ_nth_stream_eq_some_iff.1 succ_nth_stream_eq
    -- introduce some notation
    let conts := g.continuantsAux (n + 2)
    set pconts := g.continuantsAux (n + 1) with pconts_eq
    set ppconts := g.continuantsAux n with ppconts_eq
    cases' Decidable.em (ifp_succ_n.fr = 0) with ifp_succ_n_fr_eq_zero ifp_succ_n_fr_ne_zero
    -- ifp_succ_n.fr = 0
    · suffices v = conts.a / conts.b by simpa [compExactValue, ifp_succ_n_fr_eq_zero]
      -- use the IH and the fact that ifp_n.fr⁻¹ = ⌊ifp_n.fr⁻¹⌋ to prove this case
      obtain ⟨ifp_n', nth_stream_eq', ifp_n_fract_inv_eq_floor⟩ :
        ∃ ifp_n, IntFractPair.stream v n = some ifp_n ∧ ifp_n.fr⁻¹ = ⌊ifp_n.fr⁻¹⌋
      exact IntFractPair.exists_succ_nth_stream_of_fr_zero succ_nth_stream_eq ifp_succ_n_fr_eq_zero
      have : ifp_n' = ifp_n := by injection Eq.trans nth_stream_eq'.symm nth_stream_eq
      cases this
      have s_nth_eq : g.s.get? n = some ⟨1, ⌊ifp_n.fr⁻¹⌋⟩ :=
        get?_of_eq_some_of_get?_intFractPair_stream_fr_ne_zero nth_stream_eq nth_fract_ne_zero
      rw [← ifp_n_fract_inv_eq_floor] at s_nth_eq
      suffices v = compExactValue ppconts pconts ifp_n.fr by
        simpa [continuantsAux, s_nth_eq, compExactValue, nth_fract_ne_zero] using this
      exact IH nth_stream_eq
    -- ifp_succ_n.fr ≠ 0
    · -- use the IH to show that the following equality suffices
      suffices
        compExactValue ppconts pconts ifp_n.fr = compExactValue pconts conts ifp_succ_n.fr by
        have : v = compExactValue ppconts pconts ifp_n.fr := IH nth_stream_eq
        conv_lhs => rw [this]
        assumption
      -- get the correspondence between ifp_n and ifp_succ_n
      obtain ⟨ifp_n', nth_stream_eq', ifp_n_fract_ne_zero, ⟨refl⟩⟩ :
        ∃ ifp_n, IntFractPair.stream v n = some ifp_n ∧
          ifp_n.fr ≠ 0 ∧ IntFractPair.of ifp_n.fr⁻¹ = ifp_succ_n
      exact IntFractPair.succ_nth_stream_eq_some_iff.1 succ_nth_stream_eq
      have : ifp_n' = ifp_n := by injection Eq.trans nth_stream_eq'.symm nth_stream_eq
      cases this
      -- get the correspondence between ifp_n and g.s.nth n
      have s_nth_eq : g.s.get? n = some ⟨1, (⌊ifp_n.fr⁻¹⌋ : K)⟩ :=
        get?_of_eq_some_of_get?_intFractPair_stream_fr_ne_zero nth_stream_eq ifp_n_fract_ne_zero
      -- the claim now follows by unfolding the definitions and tedious calculations
      -- some shorthand notation
      let ppA := ppconts.a
      let ppB := ppconts.b
      let pA := pconts.a
      let pB := pconts.b
      have : compExactValue ppconts pconts ifp_n.fr =
          (ppA + ifp_n.fr⁻¹ * pA) / (ppB + ifp_n.fr⁻¹ * pB) := by
        -- unfold compExactValue and the convergent computation once
        field_simp [ifp_n_fract_ne_zero, compExactValue, nextContinuants, nextNumerator,
          nextDenominator]
        ac_rfl
      rw [this]
      -- two calculations needed to show the claim
      have tmp_calc :=
        compExactValue_correctness_of_stream_eq_some_aux_comp pA ppA ifp_succ_n_fr_ne_zero
      have tmp_calc' :=
        compExactValue_correctness_of_stream_eq_some_aux_comp pB ppB ifp_succ_n_fr_ne_zero
      let f := Int.fract (1 / ifp_n.fr)
      have f_ne_zero : f ≠ 0 := by simpa using ifp_succ_n_fr_ne_zero
      rw [inv_eq_one_div] at tmp_calc tmp_calc'
      -- Porting note: the `tmp_calc`s need to be massaged, and some processing after `ac_rfl` done,
      -- because `field_simp` is not as powerful
      have hA : (↑⌊1 / ifp_n.fr⌋ * pA + ppA) + pA * f = pA * (1 / ifp_n.fr) + ppA := by
        have := congrFun (congrArg HMul.hMul tmp_calc) f
        rwa [right_distrib, div_mul_cancel (h := f_ne_zero),
          div_mul_cancel (h := f_ne_zero)] at this
      have hB : (↑⌊1 / ifp_n.fr⌋ * pB + ppB) + pB * f = pB * (1 / ifp_n.fr) + ppB := by
        have := congrFun (congrArg HMul.hMul tmp_calc') f
        rwa [right_distrib, div_mul_cancel (h := f_ne_zero),
          div_mul_cancel (h := f_ne_zero)] at this
      -- now unfold the recurrence one step and simplify both sides to arrive at the conclusion
      field_simp [compExactValue, continuantsAux_recurrence s_nth_eq ppconts_eq pconts_eq,
        nextContinuants, nextNumerator, nextDenominator]
      have hfr : (IntFractPair.of (1 / ifp_n.fr)).fr = f := rfl
      rw [one_div, if_neg _, ← one_div, hfr]
      field_simp [hA, hB]
      ac_rfl
      rwa [inv_eq_one_div, hfr]
#align generalized_continued_fraction.comp_exact_value_correctness_of_stream_eq_some GeneralizedContinuedFraction.compExactValue_correctness_of_stream_eq_some

open GeneralizedContinuedFraction (of_terminatedAt_n_iff_succ_nth_intFractPair_stream_eq_none)

/-- The convergent of `GeneralizedContinuedFraction.of v` at step `n - 1` is exactly `v` if the
`IntFractPair.stream` of the corresponding continued fraction terminated at step `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant6d45759174cfa3b468d7db762ba1aa39898c1ff6dba2484dc401f691e18e6e41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant6d45759174cfa3b468d7db762ba1aa39898c1ff6dba2484dc401f691e18e6e41.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b136d0c4ca3f6086d201133b7a868ac962f0c0f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
