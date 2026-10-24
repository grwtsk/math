# reverse_data

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f8b01cc-420e-e245-96f0-4e218dda2cb0",
  "kind": "theorem",
  "lexical_name": "reverse_data",
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
  "slug": "reverse-data--005bfdeb0cac6f9a866ee1da",
  "source": {
    "blob": "ad885e4c60c333e962457725569d35690ab44f39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 264,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Varianteece39cb0d35e846904e6fe9bfd14df7df4ac5d2fe2faff021d2c6ecf61c1691.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:005bfdeb0cac6f9a866ee1daf787fd0cc791985cc87e103a5a3fd913e512ddd0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Varianteece39cb0d35e846904e6fe9bfd14df7df4ac5d2fe2faff021d2c6ecf61c1691.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f8b01cc-420e-e245-96f0-4e218dda2cb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem reverse_data (a : Array α) : a.reverse.data = a.data.reverse := by
  let rec go (as : Array α) (i j hj)
      (h : i + j + 1 = a.size) (h₂ : as.size = a.size)
      (H : ∀ k, as.data.get? k = if i ≤ k ∧ k ≤ j then a.data.get? k else a.data.reverse.get? k)
      (k) : (reverse.loop as i ⟨j, hj⟩).data.get? k = a.data.reverse.get? k := by
    rw [reverse.loop]; dsimp; split <;> rename_i h₁
    · have := reverse.termination h₁
      match j with | j+1 => ?_
      simp at *
      rw [(go · (i+1) j)]
      · rwa [Nat.add_right_comm i]
      · simp [size_swap, h₂]
      · intro k
        rw [← getElem?_eq_data_get?, get?_swap]
        simp [getElem?_eq_data_get?, getElem_eq_data_get, ← List.get?_eq_get, H, Nat.le_of_lt h₁]
        split <;> rename_i h₂
        · simp [← h₂, Nat.not_le.2 (Nat.lt_succ_self _)]
          exact (List.get?_reverse' _ _ (Eq.trans (by simp_arith) h)).symm
        split <;> rename_i h₃
        · simp [← h₃, Nat.not_le.2 (Nat.lt_succ_self _)]
          exact (List.get?_reverse' _ _ (Eq.trans (by simp_arith) h)).symm
        simp only [Nat.succ_le, Nat.lt_iff_le_and_ne.trans (and_iff_left h₃),
          Nat.lt_succ.symm.trans (Nat.lt_iff_le_and_ne.trans (and_iff_left (Ne.symm h₂)))]
    · rw [H]; split <;> rename_i h₂
      · cases Nat.le_antisymm (Nat.not_lt.1 h₁) (Nat.le_trans h₂.1 h₂.2)
        cases Nat.le_antisymm h₂.1 h₂.2
        exact (List.get?_reverse' _ _ h).symm
      · rfl
  simp only [reverse]; split
  · match a with | ⟨[]⟩ | ⟨[_]⟩ => rfl
  · have := Nat.sub_add_cancel (Nat.le_of_not_le ‹_›)
    refine List.ext <| go _ _ _ _ (by simp [this]) rfl fun k => ?_
    split; {rfl}; rename_i h
    simp [← show k < _ + 1 ↔ _ from Nat.lt_succ (n := a.size - 1), this] at h
    rw [List.get?_eq_none.2 ‹_›, List.get?_eq_none.2 (a.data.length_reverse ▸ ‹_›)]
termination_by _ => j - i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Varianteece39cb0d35e846904e6fe9bfd14df7df4ac5d2fe2faff021d2c6ecf61c1691.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Varianteece39cb0d35e846904e6fe9bfd14df7df4ac5d2fe2faff021d2c6ecf61c1691.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad885e4c60c333e962457725569d35690ab44f39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
