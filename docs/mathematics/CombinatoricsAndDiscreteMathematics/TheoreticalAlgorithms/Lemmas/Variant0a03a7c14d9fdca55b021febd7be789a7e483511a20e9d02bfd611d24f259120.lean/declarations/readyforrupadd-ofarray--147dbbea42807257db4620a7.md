# readyForRupAdd_ofArray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0097d174-4972-0a67-8262-901c4c65cf74",
  "kind": "theorem",
  "lexical_name": "readyForRupAdd_ofArray",
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
  "slug": "readyforrupadd-ofarray--147dbbea42807257db4620a7",
  "source": {
    "blob": "70e58e5f969a920f53cfdf6fa2cc207c2a42f132",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 121,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:147dbbea42807257db4620a7aee6447115210f13613c9a5ed69d87db7ace946a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0097d174-4972-0a67-8262-901c4c65cf74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem readyForRupAdd_ofArray {n : Nat} (arr : Array (Option (DefaultClause n))) :
    ReadyForRupAdd (ofArray arr) := by
  constructor
  · grind
  · have hsize : (ofArray arr).assignments.size = n := by
      simp only [ofArray, ← Array.foldl_toList]
      have hb : (Array.replicate n unassigned).size = n := by simp only [Array.size_replicate]
      have hl (acc : Array Assignment) (ih : acc.size = n) (cOpt : Option (DefaultClause n)) (_cOpt_in_arr : cOpt ∈ arr.toList) :
        (ofArray_fold_fn acc cOpt).size = n := by rw [size_ofArray_fold_fn acc cOpt, ih]
      exact List.foldlRecOn arr.toList ofArray_fold_fn hb hl
    apply Exists.intro hsize
    let ModifiedAssignmentsInvariant (assignments : Array Assignment) : Prop :=
      ∃ hsize : assignments.size = n,
        ∀ i : PosFin n, ∀ b : Bool, hasAssignment b (assignments[i.1]'(by rw [hsize]; exact i.2.2)) →
        (unit (i, b)) ∈ toList (ofArray arr)
    have hb : ModifiedAssignmentsInvariant (.replicate n unassigned) := by
      have hsize : (Array.replicate n unassigned).size = n := by simp only [Array.size_replicate]
      apply Exists.intro hsize
      intro i b h
      by_cases hb : b <;> simp [hasAssignment, hb, hasPosAssignment, hasNegAssignment] at h
    have hl (acc : Array Assignment) (ih : ModifiedAssignmentsInvariant acc) (cOpt : Option (DefaultClause n))
      (cOpt_in_arr : cOpt ∈ arr.toList) : ModifiedAssignmentsInvariant (ofArray_fold_fn acc cOpt) := by
      have hsize : (ofArray_fold_fn acc cOpt).size = n := by rw [size_ofArray_fold_fn, ih.1]
      apply Exists.intro hsize
      intro i b h
      simp only [ofArray_fold_fn] at h
      split at h
      · exact ih.2 i b h
      next cOpt c =>
        match heq : isUnit c with
        | none =>
          simp only [heq] at h
          exact ih.2 i b h
        | some (l, true) =>
          simp only [heq] at h
          rcases ih with ⟨hsize, ih⟩
          by_cases i = l.1
          next i_eq_l =>
            simp only [i_eq_l, Array.getElem_modify_self] at h
            by_cases b
            next b_eq_true =>
              rw [isUnit_iff, DefaultClause.toList] at heq
              simp only [toList, ofArray, List.map, List.append_nil, List.mem_filterMap, id_eq, exists_eq_right]
              have i_eq_l : i = l := Subtype.ext i_eq_l
              simp only [unit, b_eq_true, i_eq_l]
              have c_def : c = ⟨c.clause, c.nodupkey, c.nodup⟩ := rfl
              simp only [heq] at c_def
              grind
            next b_eq_false =>
              simp only [Bool.not_eq_true] at b_eq_false
              simp only [hasAssignment, b_eq_false, ite_false, hasNeg_addPos, reduceCtorEq] at h
              specialize ih l false
              simp only [hasAssignment] at ih
              rw [b_eq_false, Subtype.ext i_eq_l]
              exact ih h
          next i_ne_l => grind
        | some (l, false) =>
          simp only [heq] at h
          rcases ih with ⟨hsize, ih⟩
          by_cases i = l.1
          next i_eq_l =>
            simp only [i_eq_l, Array.getElem_modify_self] at h
            by_cases b
            next b_eq_true =>
              simp only [hasAssignment, b_eq_true, ite_true, hasPos_addNeg] at h
              specialize ih l true
              simp only [hasAssignment] at ih
              rw [b_eq_true, Subtype.ext i_eq_l]
              grind
            next b_eq_false =>
              rw [isUnit_iff, DefaultClause.toList] at heq
              simp only [toList, ofArray, List.map, List.append_nil, List.mem_filterMap, id_eq, exists_eq_right]
              have i_eq_l : i = l := Subtype.ext i_eq_l
              simp only [unit, b_eq_false, i_eq_l]
              have c_def : c = ⟨c.clause, c.nodupkey, c.nodup⟩ := rfl
              simp only [heq] at c_def
              grind
          next i_ne_l => grind
    rcases List.foldlRecOn arr.toList ofArray_fold_fn hb hl with ⟨_h_size, h'⟩
    grind [ofArray]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70e58e5f969a920f53cfdf6fa2cc207c2a42f132` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
