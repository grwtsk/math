# determinant_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dff07bd2-e9c9-5577-fe3b-317e54414db9",
  "kind": "theorem",
  "lexical_name": "determinant_aux",
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
  "slug": "determinant-aux--23e109495e6812fa90c0837f",
  "source": {
    "blob": "440da51d0d5f9fc1eea1c493d0d371d30819f05a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 328,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23e109495e6812fa90c0837fb5fd61fdae56236ae64259b71e40cf46fe010514",
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

Occurrence: `result:dff07bd2-e9c9-5577-fe3b-317e54414db9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem determinant_aux (hyp : n = 0 ∨ ¬(of v).TerminatedAt (n - 1)) :
    ((of v).continuantsAux n).a * ((of v).continuantsAux (n + 1)).b -
      ((of v).continuantsAux n).b * ((of v).continuantsAux (n + 1)).a = (-1) ^ n := by
  induction' n with n IH
  case zero => simp [continuantsAux]
  case succ =>
    -- set up some shorthand notation
    let g := of v
    let conts := continuantsAux g (n + 2)
    set pred_conts := continuantsAux g (n + 1) with pred_conts_eq
    set ppred_conts := continuantsAux g n with ppred_conts_eq
    let pA := pred_conts.a
    let pB := pred_conts.b
    let ppA := ppred_conts.a
    let ppB := ppred_conts.b
    -- let's change the goal to something more readable
    change pA * conts.b - pB * conts.a = (-1) ^ (n + 1)
    have not_terminated_at_n : ¬TerminatedAt g n := Or.resolve_left hyp n.succ_ne_zero
    obtain ⟨gp, s_nth_eq⟩ : ∃ gp, g.s.get? n = some gp
    exact Option.ne_none_iff_exists'.1 not_terminated_at_n
    -- unfold the recurrence relation for `conts` once and simplify to derive the following
    suffices pA * (ppB + gp.b * pB) - pB * (ppA + gp.b * pA) = (-1) ^ (n + 1) by
      simp only [continuantsAux_recurrence s_nth_eq ppred_conts_eq pred_conts_eq]
      have gp_a_eq_one : gp.a = 1 := of_part_num_eq_one (part_num_eq_s_a s_nth_eq)
      rw [gp_a_eq_one, this.symm]
      ring
    suffices : pA * ppB - pB * ppA = (-1) ^ (n + 1);
    calc
      pA * (ppB + gp.b * pB) - pB * (ppA + gp.b * pA) =
          pA * ppB + pA * gp.b * pB - pB * ppA - pB * gp.b * pA := by ring
      _ = pA * ppB - pB * ppA := by ring
      _ = (-1) ^ (n + 1) := by assumption
    suffices ppA * pB - ppB * pA = (-1) ^ n by
      have pow_succ_n : (-1 : K) ^ (n + 1) = -1 * (-1) ^ n := pow_succ (-1) n
      rw [pow_succ_n, ← this]
      ring
    exact IH <| Or.inr <| mt (terminated_stable <| n.sub_le 1) not_terminated_at_n
#align generalized_continued_fraction.determinant_aux GeneralizedContinuedFraction.determinant_aux

/-- The determinant formula `Aₙ * Bₙ₊₁ - Bₙ * Aₙ₊₁ = (-1)^(n + 1)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `440da51d0d5f9fc1eea1c493d0d371d30819f05a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
