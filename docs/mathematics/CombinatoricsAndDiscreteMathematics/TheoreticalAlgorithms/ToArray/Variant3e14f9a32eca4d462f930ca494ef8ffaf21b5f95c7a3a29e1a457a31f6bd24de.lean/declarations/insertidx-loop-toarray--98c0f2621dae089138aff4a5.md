# insertIdx_loop_toArray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41a92b463e9b6261a8399f5cf69406f8471853c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 633,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e14f9a32eca4d462f930ca494ef8ffaf21b5f95c7a3a29e1a457a31f6bd24de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6078ba66-f0a7-98c7-daea-f40471a852e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36800afd-e9fa-8055-aa4c-2d9978f8f993",
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
  "slug": "insertidx-loop-toarray--98c0f2621dae089138aff4a5",
  "source": {
    "blob": "41a92b463e9b6261a8399f5cf69406f8471853c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 656,
    "line": 633,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variant3e14f9a32eca4d462f930ca494ef8ffaf21b5f95c7a3a29e1a457a31f6bd24de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98c0f2621dae089138aff4a5a4b510505eace9b63db6d04c4b6c4fd0bd426b2a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variant3e14f9a32eca4d462f930ca494ef8ffaf21b5f95c7a3a29e1a457a31f6bd24de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36800afd-e9fa-8055-aa4c-2d9978f8f993`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 633–656.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variant3e14f9a32eca4d462f930ca494ef8ffaf21b5f95c7a3a29e1a457a31f6bd24de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variant3e14f9a32eca4d462f930ca494ef8ffaf21b5f95c7a3a29e1a457a31f6bd24de.lean#L633).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41a92b463e9b6261a8399f5cf69406f8471853c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
