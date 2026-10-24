# succ_nth_convergent_eq_squashGCF_nth_convergent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab64504f6d613732c16b49fd7d524195dda74f26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0899aa75-fdad-f708-7bbc-1ba47f4111b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc6d83b4-4ad7-3938-02f6-f2be004959e5",
  "kind": "theorem",
  "lexical_name": "succ_nth_convergent_eq_squashGCF_nth_convergent",
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
  "slug": "succ-nth-convergent-eq-squashgcf-nth-convergent--3b009356d54c508199863594",
  "source": {
    "blob": "ab64504f6d613732c16b49fd7d524195dda74f26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 265,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b009356d54c5081998635944f9da17faaf6981c23c077a23cc8d9bd966122ea",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc6d83b4-4ad7-3938-02f6-f2be004959e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem succ_nth_convergent_eq_squashGCF_nth_convergent [Field K]
    (nth_part_denom_ne_zero : ∀ {b : K}, g.partialDenominators.get? n = some b → b ≠ 0) :
    g.convergents (n + 1) = (squashGCF g n).convergents n := by
  cases' Decidable.em (g.TerminatedAt n) with terminated_at_n not_terminated_at_n
  · have : squashGCF g n = g := squashGCF_eq_self_of_terminated terminated_at_n
    simp only [this, convergents_stable_of_terminated n.le_succ terminated_at_n]
  · obtain ⟨⟨a, b⟩, s_nth_eq⟩ : ∃ gp_n, g.s.get? n = some gp_n
    exact Option.ne_none_iff_exists'.mp not_terminated_at_n
    have b_ne_zero : b ≠ 0 := nth_part_denom_ne_zero (part_denom_eq_s_b s_nth_eq)
    cases' n with n'
    case zero =>
      suffices (b * g.h + a) / b = g.h + a / b by
        simpa [squashGCF, s_nth_eq, convergent_eq_conts_a_div_conts_b,
          continuants_recurrenceAux s_nth_eq zeroth_continuant_aux_eq_one_zero
            first_continuant_aux_eq_h_one]
      calc
        (b * g.h + a) / b = b * g.h / b + a / b := by ring
        -- requires `Field`, not `DivisionRing`
        _ = g.h + a / b := by rw [mul_div_cancel_left _ b_ne_zero]
    case succ =>
      obtain ⟨⟨pa, pb⟩, s_n'th_eq⟩ : ∃ gp_n', g.s.get? n' = some gp_n' :=
        g.s.ge_stable n'.le_succ s_nth_eq
      -- Notations
      let g' := squashGCF g (n' + 1)
      set pred_conts := g.continuantsAux (n' + 1) with succ_n'th_conts_aux_eq
      set ppred_conts := g.continuantsAux n' with n'th_conts_aux_eq
      let pA := pred_conts.a
      let pB := pred_conts.b
      let ppA := ppred_conts.a
      let ppB := ppred_conts.b
      set pred_conts' := g'.continuantsAux (n' + 1) with succ_n'th_conts_aux_eq'
      set ppred_conts' := g'.continuantsAux n' with n'th_conts_aux_eq'
      let pA' := pred_conts'.a
      let pB' := pred_conts'.b
      let ppA' := ppred_conts'.a
      let ppB' := ppred_conts'.b
      -- first compute the convergent of the squashed gcf
      have : g'.convergents (n' + 1) =
          ((pb + a / b) * pA' + pa * ppA') / ((pb + a / b) * pB' + pa * ppB') := by
        have : g'.s.get? n' = some ⟨pa, pb + a / b⟩ :=
          squashSeq_nth_of_not_terminated s_n'th_eq s_nth_eq
        rw [convergent_eq_conts_a_div_conts_b,
          continuants_recurrenceAux this n'th_conts_aux_eq'.symm succ_n'th_conts_aux_eq'.symm]
      rw [this]
      -- then compute the convergent of the original gcf by recursively unfolding the continuants
      -- computation twice
      have : g.convergents (n' + 2) =
          (b * (pb * pA + pa * ppA) + a * pA) / (b * (pb * pB + pa * ppB) + a * pB) := by
        -- use the recurrence once
        have : g.continuantsAux (n' + 2) = ⟨pb * pA + pa * ppA, pb * pB + pa * ppB⟩ :=
          continuantsAux_recurrence s_n'th_eq n'th_conts_aux_eq.symm succ_n'th_conts_aux_eq.symm
        -- and a second time
        rw [convergent_eq_conts_a_div_conts_b,
          continuants_recurrenceAux s_nth_eq succ_n'th_conts_aux_eq.symm this]
      rw [this]
      suffices
        ((pb + a / b) * pA + pa * ppA) / ((pb + a / b) * pB + pa * ppB) =
          (b * (pb * pA + pa * ppA) + a * pA) / (b * (pb * pB + pa * ppB) + a * pB) by
        obtain ⟨eq1, eq2, eq3, eq4⟩ : pA' = pA ∧ pB' = pB ∧ ppA' = ppA ∧ ppB' = ppB := by
          simp [*, (continuantsAux_eq_continuantsAux_squashGCF_of_le <| le_refl <| n' + 1).symm,
            (continuantsAux_eq_continuantsAux_squashGCF_of_le n'.le_succ).symm]
        symm
        simpa only [eq1, eq2, eq3, eq4, mul_div_cancel _ b_ne_zero]
      field_simp
      congr 1 <;> ring
#align generalized_continued_fraction.succ_nth_convergent_eq_squash_gcf_nth_convergent GeneralizedContinuedFraction.succ_nth_convergent_eq_squashGCF_nth_convergent

end Squash

/-- Shows that the recurrence relation (`convergents`) and direct evaluation (`convergents'`) of the
gcf coincide at position `n` if the sequence of fractions contains strictly positive values only.
Requiring positivity of all values is just one possible condition to obtain this result.
For example, the dual - sequences with strictly negative values only - would also work.

In practice, one most commonly deals with (regular) continued fractions, which satisfy the
positivity criterion required here. The analogous result for them
(see `ContinuedFractions.convergents_eq_convergents`) hence follows directly from this theorem.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab64504f6d613732c16b49fd7d524195dda74f26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
