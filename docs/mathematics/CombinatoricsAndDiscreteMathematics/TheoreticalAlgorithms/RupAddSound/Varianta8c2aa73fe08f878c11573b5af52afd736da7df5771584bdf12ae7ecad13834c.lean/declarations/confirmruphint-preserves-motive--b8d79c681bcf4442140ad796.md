# confirmRupHint_preserves_motive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14975c69-480e-049a-938e-ff20ffb598a7",
  "kind": "theorem",
  "lexical_name": "confirmRupHint_preserves_motive",
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
  "slug": "confirmruphint-preserves-motive--b8d79c681bcf4442140ad796",
  "source": {
    "blob": "66745d1bb2d437fb4d1dad9c4d52328a43dd4910",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 693,
    "line": 626,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8d79c681bcf4442140ad7960fac0cd00d29842d6848f34abde495b0170def66",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14975c69-480e-049a-938e-ff20ffb598a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 626–693.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem confirmRupHint_preserves_motive {n : Nat} (f : DefaultFormula n) (rupHints : Array Nat)
    (idx : Fin rupHints.size) (acc : Array Assignment × CNF.Clause (PosFin n) × Bool × Bool)
    (ih : ConfirmRupHintFoldEntailsMotive f idx.1 acc) :
    ConfirmRupHintFoldEntailsMotive f (idx.1 + 1) ((confirmRupHint f.clauses) acc rupHints[idx]) := by
  rcases ih with ⟨hsize, h1, h2⟩
  simp only [confirmRupHint, Bool.or_eq_true, Fin.getElem_fin]
  split
  · exact ⟨hsize, h1, h2⟩
  next acc2_eq_false =>
    simp only [not_or, Bool.not_eq_true] at acc2_eq_false
    split
    next c hc =>
      have c_in_f : c ∈ toList f := by
        simp only [toList, List.mem_append, List.mem_filterMap, id_eq, exists_eq_right]
        grind
      split
      next heq =>
        simp only [ConfirmRupHintFoldEntailsMotive, h1, imp_self, and_self, hsize,
          incompatible_of_unsat (PosFin n) acc.1 f (unsat_of_encounteredBoth c acc.1 heq)]
      next heq =>
        simp only [ConfirmRupHintFoldEntailsMotive, h1, hsize, forall_const, true_and]
        intro p
        rcases incompatible_of_reducedToEmpty c acc.1 heq p with pc | pacc
        · simp only [(· ⊨ ·)] at pc ⊢
          grind
        · exact Or.inl pacc
      next l b heq =>
        simp only [ConfirmRupHintFoldEntailsMotive]
        split
        · simp [h1, hsize]
        · simp only [Array.size_modify, hsize, Bool.false_eq_true, false_implies, and_true, true_and]
          intro p pf
          have pacc := h1 p pf
          have pc : p ⊨ c := by
            simp only [(· ⊨ ·), List.all_eq_true] at pf
            exact of_decide_eq_true <| pf c c_in_f
          have plb := limplies_of_reducedToUnit c acc.1 ⟨l, b⟩ heq p pacc pc
          simp only [(· ⊨ ·), Bool.not_eq_true]
          intro i
          specialize pacc i
          simp only [Bool.not_eq_true] at pacc
          have i_in_bounds : i.1 < acc.1.size := by rw [hsize]; exact i.2.2
          by_cases l.1 = i.1
          next l_eq_i =>
            simp only [l_eq_i, getElem!_def, Array.size_modify, i_in_bounds,
              Array.getElem?_eq_getElem, Array.getElem_modify_self (addAssignment b)]
            simp only [getElem!_def, i_in_bounds, Array.getElem?_eq_getElem] at pacc
            by_cases pi : p i
            · simp only [pi]
              simp only [hasAssignment, pi] at pacc
              by_cases hb : b
              · grind [hasAssignment, addAssignment, hasNeg_addPos]
              · simp only [Bool.not_eq_true] at hb
                simp [(· ⊨ ·), hb, Subtype.ext l_eq_i, pi] at plb
            · simp only [Bool.not_eq_true] at pi
              simp only [pi, decide_true]
              simp only [pi, decide_true] at pacc
              by_cases hb : b
              · simp [(· ⊨ ·), hb, Subtype.ext l_eq_i, pi] at plb
              · grind [hasAssignment, addAssignment, hasPos_addNeg]
          next l_ne_i => grind
      · apply And.intro hsize ∘ And.intro h1
        simp
    · apply And.intro hsize ∘ And.intro h1
      simp
    · apply And.intro hsize ∘ And.intro h1
      simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean#L626).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66745d1bb2d437fb4d1dad9c4d52328a43dd4910` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
