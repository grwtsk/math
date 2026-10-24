# succ_nth_conv_eq_squashGCF_nth_conv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:336ae6ff-1cc3-41f1-dbf8-9df9b84c2715",
  "kind": "theorem",
  "lexical_name": "succ_nth_conv_eq_squashGCF_nth_conv",
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
  "slug": "succ-nth-conv-eq-squashgcf-nth-conv--d1f394c61c9850d2b009e465",
  "source": {
    "blob": "71bb0e6982734d471b0d8b2170fa29c4831a1de6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 255,
    "path": "GRWTSK/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1f394c61c9850d2b009e46562b72f37e936e0c697fa3c1b48d9399900457ab1",
  "verification": {
    "reference": "docs/verification/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:336ae6ff-1cc3-41f1-dbf8-9df9b84c2715`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem succ_nth_conv_eq_squashGCF_nth_conv [Field K]
    (nth_partDen_ne_zero : ∀ {b : K}, g.partDens.get? n = some b → b ≠ 0) :
    g.convs (n + 1) = (squashGCF g n).convs n := by
  rcases Decidable.em (g.TerminatedAt n) with terminatedAt_n | not_terminatedAt_n
  · have : squashGCF g n = g := squashGCF_eq_self_of_terminated terminatedAt_n
    simp only [this, convs_stable_of_terminated n.le_succ terminatedAt_n]
  · obtain ⟨⟨a, b⟩, s_nth_eq⟩ : ∃ gp_n, g.s.get? n = some gp_n :=
      Option.ne_none_iff_exists'.mp not_terminatedAt_n
    have b_ne_zero : b ≠ 0 := nth_partDen_ne_zero (partDen_eq_s_b s_nth_eq)
    cases n with
    | zero =>
      suffices (b * g.h + a) / b = g.h + a / b by
        simpa [squashGCF, s_nth_eq, conv_eq_conts_a_div_conts_b,
          conts_recurrenceAux s_nth_eq zeroth_contAux_eq_one_zero first_contAux_eq_h_one]
      calc
        (b * g.h + a) / b = b * g.h / b + a / b := by ring
        -- requires `Field`, not `DivisionRing`
        _ = g.h + a / b := by rw [mul_div_cancel_left₀ _ b_ne_zero]
    | succ n' =>
      obtain ⟨⟨pa, pb⟩, s_n'th_eq⟩ : ∃ gp_n', g.s.get? n' = some gp_n' :=
        g.s.ge_stable n'.le_succ s_nth_eq
      -- Notations
      let g' := squashGCF g (n' + 1)
      set pred_conts := g.contsAux (n' + 1) with succ_n'th_contsAux_eq
      set ppred_conts := g.contsAux n' with n'th_contsAux_eq
      let pA := pred_conts.a
      let pB := pred_conts.b
      let ppA := ppred_conts.a
      let ppB := ppred_conts.b
      set pred_conts' := g'.contsAux (n' + 1) with succ_n'th_contsAux_eq'
      set ppred_conts' := g'.contsAux n' with n'th_contsAux_eq'
      let pA' := pred_conts'.a
      let pB' := pred_conts'.b
      let ppA' := ppred_conts'.a
      let ppB' := ppred_conts'.b
      -- first compute the convergent of the squashed gcf
      have : g'.convs (n' + 1) =
          ((pb + a / b) * pA' + pa * ppA') / ((pb + a / b) * pB' + pa * ppB') := by
        have : g'.s.get? n' = some ⟨pa, pb + a / b⟩ :=
          squashSeq_nth_of_not_terminated s_n'th_eq s_nth_eq
        rw [conv_eq_conts_a_div_conts_b,
          conts_recurrenceAux this n'th_contsAux_eq'.symm succ_n'th_contsAux_eq'.symm]
      rw [this]
      -- then compute the convergent of the original gcf by recursively unfolding the continuants
      -- computation twice
      have : g.convs (n' + 2) =
          (b * (pb * pA + pa * ppA) + a * pA) / (b * (pb * pB + pa * ppB) + a * pB) := by
        -- use the recurrence once
        have : g.contsAux (n' + 2) = ⟨pb * pA + pa * ppA, pb * pB + pa * ppB⟩ :=
          contsAux_recurrence s_n'th_eq n'th_contsAux_eq.symm succ_n'th_contsAux_eq.symm
        -- and a second time
        rw [conv_eq_conts_a_div_conts_b,
          conts_recurrenceAux s_nth_eq succ_n'th_contsAux_eq.symm this]
      rw [this]
      suffices
        ((pb + a / b) * pA + pa * ppA) / ((pb + a / b) * pB + pa * ppB) =
          (b * (pb * pA + pa * ppA) + a * pA) / (b * (pb * pB + pa * ppB) + a * pB) by
        obtain ⟨eq1, eq2, eq3, eq4⟩ : pA' = pA ∧ pB' = pB ∧ ppA' = ppA ∧ ppB' = ppB := by
          simp [*, g', pA, pB, ppA, ppB, pA', pB', ppA', ppB',
            (contsAux_eq_contsAux_squashGCF_of_le <| le_refl <| n' + 1).symm,
            (contsAux_eq_contsAux_squashGCF_of_le n'.le_succ).symm]
        symm
        simpa only [eq1, eq2, eq3, eq4, mul_div_cancel_right₀ _ b_ne_zero]
      field_simp
      congr 1 <;> ring

end Squash

/-- Shows that the recurrence relation (`convs`) and direct evaluation (`convs'`) of the
generalized continued fraction coincide at position `n` if the sequence of fractions contains
strictly positive values only.
Requiring positivity of all values is just one possible condition to obtain this result.
For example, the dual - sequences with strictly negative values only - would also work.

In practice, one most commonly deals with regular continued fractions, which satisfy the
positivity criterion required here. The analogous result for them
(see `ContFract.convs_eq_convs`) hence follows directly from this theorem.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71bb0e6982734d471b0d8b2170fa29c4831a1de6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
