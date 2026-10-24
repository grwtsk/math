# Pattern.Model.split_bool_eq_internal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85148465f9227d78bd17bdf3ae55866bfc40e669",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c05cfcf6c8f95abd92502fe8ea3c71dfcfba7163ebdfa19571f42c08fed1ffe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5cbe0253-d77a-9d2c-a383-bb33156fdb62",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a5acf8d-afa5-a45b-3db3-b59d90cb338f",
  "kind": "theorem",
  "lexical_name": "Pattern.Model.split_bool_eq_internal",
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
  "slug": "pattern-model-split-bool-eq-internal--823bcb899ee1cae53c27fe17",
  "source": {
    "blob": "85148465f9227d78bd17bdf3ae55866bfc40e669",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant7c05cfcf6c8f95abd92502fe8ea3c71dfcfba7163ebdfa19571f42c08fed1ffe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:823bcb899ee1cae53c27fe17405ad588037fb6116aa7373d23ed8f99a4efd6d9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant7c05cfcf6c8f95abd92502fe8ea3c71dfcfba7163ebdfa19571f42c08fed1ffe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a5acf8d-afa5-a45b-3db3-b59d90cb338f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pattern.Model.split_bool_eq_internal {p : Char → Bool} {s : Slice} (f curr : s.Pos) (hle : f ≤ curr) :
    Model.split p f curr hle =
      if h : curr = s.endPos then [s.subslice _ _ hle]
      else if p (curr.get h) then
        s.subslice _ _ hle :: Model.split p (curr.next h) (curr.next h) (by simp [Std.le_refl])
      else Model.split p f (curr.next h) (by simp [Std.le_trans hle _]) := by
  by_cases h : curr = s.endPos
  · simp only [h, split_endPos, subslice_endPos, ↓reduceDIte]
  · simp only [h, ↓reduceDIte]
    by_cases hp : p (curr.get h)
    · simp only [hp, ↓reduceIte]
      exact split_eq_of_isLongestMatchAt (isLongestMatchAt_of_get hp)
    · rw [Bool.not_eq_true] at hp
      simp only [hp, Bool.false_eq_true, ↓reduceIte]
      exact split_eq_next_of_not_matchesAt h (not_matchesAt_of_get hp)

end

section

open Pattern.Model Pattern.Model.CharPred.Decidable

@[cbv_eval]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant7c05cfcf6c8f95abd92502fe8ea3c71dfcfba7163ebdfa19571f42c08fed1ffe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant7c05cfcf6c8f95abd92502fe8ea3c71dfcfba7163ebdfa19571f42c08fed1ffe.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85148465f9227d78bd17bdf3ae55866bfc40e669` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
