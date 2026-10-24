# idxAuxOf_toArray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5265c19-b0c8-5b8a-491c-4e189de7b666",
  "kind": "theorem",
  "lexical_name": "idxAuxOf_toArray",
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
  "slug": "idxauxof-toarray--f5021810cd5ecbf080ce6529",
  "source": {
    "blob": "3318a8461302d173aa58aa433fca509db3f924aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 332,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variantbd0f388a042a38ce8dda6ec9ea374efe9761c718f95d803ac876a90293b56767.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5021810cd5ecbf080ce6529ef964b3fc04498f841d0a8120f40772c3c53ae52",
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

Occurrence: `result:f5265c19-b0c8-5b8a-491c-4e189de7b666`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem idxAuxOf_toArray [BEq α] (a : α) (l : List α) (j : Nat) (w : l' = l.drop j) (h) :
    l.toArray.idxOfAux a j = findFinIdx?.go (fun x => x == a) l l' j h := by
  unfold idxOfAux
  unfold findFinIdx?.go
  split <;> rename_i h'
  · cases l' with
    | nil =>
      simp at h h'
      omega
    | cons b l' =>
      simp at h'
      have : l[j] = b := by
        rw [drop_eq_getElem_cons h'] at w
        simp only [cons.injEq] at w
        exact w.1.symm
      simp only [getElem_toArray, this]
      split
      · rfl
      · simp only [length_cons] at h
        have : l.length - (j + 1) < l.length - j := by omega
        rw [idxAuxOf_toArray]
        rw [drop_add_one_eq_tail_drop, ← w, tail_cons]
  · have : l' = [] := by simp_all
    subst this
    simp
termination_by l.length - j

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variantbd0f388a042a38ce8dda6ec9ea374efe9761c718f95d803ac876a90293b56767.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variantbd0f388a042a38ce8dda6ec9ea374efe9761c718f95d803ac876a90293b56767.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3318a8461302d173aa58aa433fca509db3f924aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
