# reduce_postcondition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:748bc8a1-318a-6dde-3464-9059923aad7f",
  "kind": "theorem",
  "lexical_name": "reduce_postcondition",
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
  "slug": "reduce-postcondition--ed1f9a8c030b61199c436865",
  "source": {
    "blob": "66745d1bb2d437fb4d1dad9c4d52328a43dd4910",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 615,
    "line": 548,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed1f9a8c030b61199c436865bdd2b2b4a797f6a6833e3b00d53c016a7cf0a40c",
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

Occurrence: `result:748bc8a1-318a-6dde-3464-9059923aad7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 548–615.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduce_postcondition {n : Nat} (c : DefaultClause n) (assignment : Array Assignment) :
    (reduce c assignment = reducedToEmpty → Incompatible (PosFin n) c assignment) ∧
    (∀ l : Literal (PosFin n), reduce c assignment = reducedToUnit l → ∀ (p : (PosFin n) → Bool), p ⊨ assignment → p ⊨ c → p ⊨ l) := by
  let c_arr := c.clause.toArray
  have c_clause_rw : c.clause = c_arr.toList := by simp [c_arr]
  rw [reduce, c_clause_rw, Array.foldl_toList]
  let motive := ReducePostconditionInductionMotive c_arr assignment
  have h_base : motive 0 reducedToEmpty := by
    grind [ReducePostconditionInductionMotive]
  have h_inductive (idx : Fin c_arr.size) (res : ReduceResult (PosFin n)) (ih : motive idx.1 res) :
    motive (idx.1 + 1) (reduce_fold_fn assignment res c_arr[idx]) := reduce_fold_fn_preserves_induction_motive idx res ih
  rcases Array.foldl_induction motive h_base h_inductive with ⟨h1, h2⟩
  constructor
  · intro h p
    specialize h1 h p
    rcases h1 with h1 | h1
    · apply Or.inl
      intro pc
      simp only [(· ⊨ ·), Clause.eval, List.any_eq_true, Prod.exists, Bool.exists_bool] at pc
      rcases pc with ⟨i, ⟨pc1, pc2⟩ | ⟨pc1, pc2⟩⟩
      · simp only [Clause.toList, DefaultClause.toList] at pc1
        rw [c_clause_rw] at pc1
        have idx_exists : ∃ idx : Fin c_arr.size, c_arr[idx] = (i, false) := by
          rcases List.get_of_mem pc1 with ⟨idx, hidx⟩
          simp only [List.get_eq_getElem] at hidx
          exact Exists.intro idx hidx
        rcases idx_exists with ⟨idx, hidx⟩
        specialize h1 idx idx.2
        rw [hidx] at h1
        exact h1 <| of_decide_eq_true pc2
      · simp only [Clause.toList, DefaultClause.toList] at pc1
        rw [c_clause_rw] at pc1
        have idx_exists : ∃ idx : Fin c_arr.size, c_arr[idx] = (i, true) := by
          rcases List.get_of_mem pc1 with ⟨idx, hidx⟩
          simp only [List.get_eq_getElem] at hidx
          exact Exists.intro idx hidx
        rcases idx_exists with ⟨idx, hidx⟩
        specialize h1 idx idx.2
        rw [hidx] at h1
        exact h1 <| of_decide_eq_true pc2
    · exact Or.inr h1
  · intro l hl p hp pc
    apply h2 l hl p hp
    simp only [(· ⊨ ·), Clause.eval, List.any_eq_true, Prod.exists, Bool.exists_bool] at pc
    rcases pc with ⟨i, ⟨pc1, pc2⟩ | ⟨pc1, pc2⟩⟩
    · simp only [Clause.toList, DefaultClause.toList] at pc1
      rw [c_clause_rw] at pc1
      have idx_exists : ∃ idx : Fin c_arr.size, c_arr[idx] = (i, false) := by
        rcases List.get_of_mem pc1 with ⟨idx, hidx⟩
        simp only [List.get_eq_getElem] at hidx
        exact Exists.intro idx hidx
      rcases idx_exists with ⟨idx, hidx⟩
      apply Exists.intro idx ∘ And.intro idx.2
      rw [hidx]
      simp only [(· ⊨ ·)]
      exact of_decide_eq_true pc2
    · simp only [Clause.toList, DefaultClause.toList] at pc1
      rw [c_clause_rw] at pc1
      have idx_exists : ∃ idx : Fin c_arr.size, c_arr[idx] = (i, true) := by
        rcases List.get_of_mem pc1 with ⟨idx, hidx⟩
        simp only [List.get_eq_getElem] at hidx
        exact Exists.intro idx hidx
      rcases idx_exists with ⟨idx, hidx⟩
      apply Exists.intro idx ∘ And.intro idx.2
      rw [hidx]
      simp only [(· ⊨ ·)]
      exact of_decide_eq_true pc2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean#L548).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66745d1bb2d437fb4d1dad9c4d52328a43dd4910` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
