# contradiction_of_insertUnit_fold_success

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee2d64e2-e5f7-06c1-acbe-ef37e30e6990",
  "kind": "theorem",
  "lexical_name": "contradiction_of_insertUnit_fold_success",
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
  "slug": "contradiction-of-insertunit-fold-success--5d140178c0ff685b6e9a180f",
  "source": {
    "blob": "66745d1bb2d437fb4d1dad9c4d52328a43dd4910",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d140178c0ff685b6e9a180f31fab1caca441610d8c9a8a54b15208e59f0c207",
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

Occurrence: `result:ee2d64e2-e5f7-06c1-acbe-ef37e30e6990`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contradiction_of_insertUnit_fold_success {n : Nat} (assignments : Array Assignment) (assignments_size : assignments.size = n)
    (units : Array (Literal (PosFin n))) (foundContradiction : Bool) (l : CNF.Clause (PosFin n)) :
    let insertUnit_fold_res := List.foldl insertUnit (units, assignments, foundContradiction) l
    (foundContradiction → ∃ i : PosFin n, assignments[i.1]'(by rw [assignments_size]; exact i.2.2) = both) → insertUnit_fold_res.2.2 →
    ∃ j : PosFin n, insertUnit_fold_res.2.1[j.1]'(by rw [size_insertUnit_fold, assignments_size]; exact j.2.2) = both := by
  intro insertUnit_fold_res h0 insertUnit_fold_success
  let acc0 := (units, assignments, foundContradiction)
  have hb : ∃ _hsize : acc0.2.1.size = n, acc0.2.2 → ∃ j : PosFin n, acc0.2.1[j.1]'(by rw [assignments_size]; exact j.2.2) = both := by
    apply Exists.intro assignments_size
    intro foundContradiction_eq_true
    exact h0 foundContradiction_eq_true
  have hl (acc : Array (Literal (PosFin n)) × Array Assignment × Bool)
    (h : ∃ hsize : acc.2.1.size = n, acc.2.2 → ∃ j : PosFin n, acc.2.1[j.1]'(by rw [hsize]; exact j.2.2) = both)
    (l' : Literal (PosFin n)) (_ : l' ∈ l) :
    let insertUnit_res := insertUnit acc l'
    ∃ hsize : insertUnit_res.2.1.size = n,
      insertUnit_res.2.2 → ∃ j : PosFin n, insertUnit_res.2.1[j.1]'(by rw [hsize]; exact j.2.2) = both := by
    intro insertUnit_res
    have hsize : insertUnit_res.2.1.size = n := by rw [size_insertUnit, h.1]
    apply Exists.intro hsize
    intro insertUnit_res_success
    rcases h with ⟨acc_size, h⟩
    exact contradiction_of_insertUnit_success acc.2.1 acc_size acc.1 acc.2.2 l' h insertUnit_res_success
  rcases List.foldlRecOn l insertUnit hb hl with ⟨_, h⟩
  exact h insertUnit_fold_success

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66745d1bb2d437fb4d1dad9c4d52328a43dd4910` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
