# contradiction_of_insertUnit_success

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66b23785-1140-3c48-ff0a-e136018328ad",
  "kind": "theorem",
  "lexical_name": "contradiction_of_insertUnit_success",
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
  "slug": "contradiction-of-insertunit-success--c2c2f7486c5afe26bbc4cb1d",
  "source": {
    "blob": "66745d1bb2d437fb4d1dad9c4d52328a43dd4910",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 40,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2c2f7486c5afe26bbc4cb1dfade002d5fd8173121db65e04bd544910d39bd22",
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

Occurrence: `result:66b23785-1140-3c48-ff0a-e136018328ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contradiction_of_insertUnit_success {n : Nat} (assignments : Array Assignment)
    (assignments_size : assignments.size = n)
    (units : Array (Literal (PosFin n))) (foundContradiction : Bool) (l : Literal (PosFin n)) :
    let insertUnit_res := insertUnit (units, assignments, foundContradiction) l
    (foundContradiction → ∃ i : PosFin n, assignments[i.1]'(by rw [assignments_size]; exact i.2.2) = both) → insertUnit_res.2.2 →
    ∃ j : PosFin n, insertUnit_res.2.1[j.1]'(by rw [size_insertUnit, assignments_size]; exact j.2.2) = both := by
  intro insertUnit_res h insertUnit_success
  simp only [insertUnit_res] at *
  simp only [insertUnit] at insertUnit_success
  have l_in_bounds : l.1.1 < assignments.size := by rw [assignments_size]; exact l.1.2.2
  split at insertUnit_success
  next hl =>
    simp only [insertUnit, hl, ite_true]
    exact h insertUnit_success
  next hl =>
    simp only [Bool.or_eq_true] at insertUnit_success
    rcases insertUnit_success with foundContradiction_eq_true | assignments_l_ne_unassigned
    · simp only [insertUnit, hl]
      rcases h foundContradiction_eq_true with ⟨i, h⟩
      apply Exists.intro i
      by_cases l.1.1 = i.1
      next l_eq_i =>
        simp only [Bool.false_eq_true, ↓reduceIte, l_eq_i, Array.getElem_modify_self, h,
          ]
        exact add_both_eq_both l.2
      next l_ne_i =>
        simpa [Array.getElem_modify_of_ne l_ne_i] using h
    · apply Exists.intro l.1
      simp only [insertUnit, hl, ite_false, Array.getElem_modify_self, reduceCtorEq]
      simp only [getElem!_def, l_in_bounds, Array.getElem?_eq_getElem,
        ] at assignments_l_ne_unassigned
      by_cases l.2
      next l_eq_true =>
        simp only [l_eq_true]
        simp only [hasAssignment, l_eq_true, getElem!_def, l_in_bounds, Array.getElem?_eq_getElem,
          ite_true, hasPosAssignment, Bool.not_eq_true] at hl
        split at hl <;> simp_all +decide
      next l_eq_false =>
        simp only [Bool.not_eq_true] at l_eq_false
        simp only [l_eq_false]
        simp only [hasAssignment, l_eq_false, Bool.false_eq_true, ↓reduceIte, hasNegAssignment,
          getElem!_def, l_in_bounds, Array.getElem?_eq_getElem, Bool.not_eq_true,
          ] at hl
        split at hl <;> simp_all +decide

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66745d1bb2d437fb4d1dad9c4d52328a43dd4910` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
