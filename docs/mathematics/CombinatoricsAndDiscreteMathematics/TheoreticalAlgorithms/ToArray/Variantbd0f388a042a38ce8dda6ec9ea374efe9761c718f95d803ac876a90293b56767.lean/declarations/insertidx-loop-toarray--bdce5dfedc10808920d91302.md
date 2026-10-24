# insertIdx_loop_toArray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9b86b84-11c4-30a6-923f-d0a731d7f7eb",
  "kind": "theorem",
  "lexical_name": "insertIdx_loop_toArray",
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
  "slug": "insertidx-loop-toarray--bdce5dfedc10808920d91302",
  "source": {
    "blob": "3318a8461302d173aa58aa433fca509db3f924aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 664,
    "line": 641,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variantbd0f388a042a38ce8dda6ec9ea374efe9761c718f95d803ac876a90293b56767.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdce5dfedc10808920d9130238cef00fe6d23fe1fdcbd6943eb89318f10c05d5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variantbd0f388a042a38ce8dda6ec9ea374efe9761c718f95d803ac876a90293b56767.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9b86b84-11c4-30a6-923f-d0a731d7f7eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 641–664.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem insertIdx_loop_toArray (i : Nat) (l : List α) (j : Nat) (hj : j < l.toArray.size) (h : i ≤ j) :
    insertIdx.loop i l.toArray ⟨j, hj⟩ = (l.take i ++ l[j] :: (l.take j).drop i ++ l.drop (j + 1)).toArray := by
  rw [insertIdx.loop]
  simp only [size_toArray] at hj
  split <;> rename_i h'
  · simp only at h'
    have w : j - 1 + 1 = j := by omega
    simp only [append_assoc, cons_append]
    rw [insertIdx_loop_toArray _ _ _ _ (by omega)]
    simp only [swap_toArray, w, append_assoc, cons_append, mk.injEq]
    rw [take_set_of_le (by omega), drop_eq_getElem_cons (i := j) (by simpa), getElem_set_self,
      drop_set_of_lt (by omega), drop_set_of_lt (by omega), getElem_set_ne (by omega),
      getElem_set_self, take_set_of_le (j := j - 1) (by omega),
      take_set_of_le (j := j - 1) (by omega), take_eq_append_getElem_of_pos (by omega) hj,
      drop_append_of_le_length (by simp; omega)]
    simp only [append_assoc, cons_append, nil_append]
    cases i with
    | zero => simp
    | succ i => rw [take_set_of_le (by omega)]
  · simp only [Nat.not_lt] at h'
    have : i = j := by omega
    subst this
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variantbd0f388a042a38ce8dda6ec9ea374efe9761c718f95d803ac876a90293b56767.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variantbd0f388a042a38ce8dda6ec9ea374efe9761c718f95d803ac876a90293b56767.lean#L641).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3318a8461302d173aa58aa433fca509db3f924aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
