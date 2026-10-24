# map_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1bf6334adeac0f26465d393215a7bb5416626b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf6e784b-fbc7-5ed8-e0a0-2de3fe812161",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7306d49-595d-5fc4-8e0f-1a08acb2bb3d",
  "kind": "lemma",
  "lexical_name": "map_comp",
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
  "slug": "map-comp--e91e0bb61fbc81056b0db4de",
  "source": {
    "blob": "e1bf6334adeac0f26465d393215a7bb5416626b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e91e0bb61fbc81056b0db4deb90ba87c198c612ff4925a64d306d4b30e379b04",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7306d49-595d-5fc4-8e0f-1a08acb2bb3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_comp (i j k : ℕ) (hij : i ≤ j) (hjk : j ≤ k) :
    map f i k (hij.trans hjk) = map f i j hij ≫ map f j k hjk := by
  revert X f j k
  induction i with
  | zero =>
      intros X f j
      revert X f
      induction j with
      | zero =>
          intros X f k hij hjk
          rw [map_id, id_comp]
      | succ j hj =>
          rintro X f (_|_|k) hij hjk
          · omega
          · obtain rfl : j = 0 := by omega
            rw [map_id, comp_id]
          · simp only [map, Nat.reduceAdd]
            rw [hj (fun n ↦ f (n + 1)) (k + 1) (by omega) (by omega)]
            obtain _|j := j
            all_goals simp [map]
  | succ i hi =>
      rintro X f (_|j) (_|k)
      · omega
      · omega
      · omega
      · intros
        exact hi _ j k (by omega) (by omega)

-- `map` has good definitional properties when applied to explicit natural numbers
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant3585519cf4a4e92a1b3f9ef7104e19a90d8830add3fd5834d6dcca0d3d1497ee.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1bf6334adeac0f26465d393215a7bb5416626b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
