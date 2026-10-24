# constructDirectories_lookup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "684e8c0936705c83918d1dc59e13dfb153b48034",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1049,
      "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CollisionCheckedMapConstruction.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4eda04f4-ea24-6c82-8bd2-63fe11ac066b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa18a4b0-c783-a367-d6bb-4fb52bdd094b",
  "kind": "theorem",
  "lexical_name": "constructDirectories_lookup",
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
  "slug": "constructdirectories-lookup--7e2de361d8639b9b299daf36",
  "source": {
    "blob": "684e8c0936705c83918d1dc59e13dfb153b48034",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1062,
    "line": 1049,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CollisionCheckedMapConstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e2de361d8639b9b299daf36a16701decd6766ff0076dd23f2b7bde68a437c94",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CollisionCheckedMapConstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa18a4b0-c783-a367-d6bb-4fb52bdd094b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1049–1062.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem constructDirectories_lookup (parents : String → List String) (taxonomy archive : List String)
    (files : Files Record) (area : Area) (query : String) :
    lookup query (constructDirectories parents taxonomy archive files area) =
      if (∃ file ∈ files, query ∈ parents file.1) ∨
          (if area = .taxonomy then query ∈ taxonomy ∧ query ≠ "" else query ∈ archive)
      then some 0 else none := by
  simp only [constructDirectories, parentDirectoryFold_lookup]
  by_cases inherited : ∃ file ∈ files, query ∈ parents file.1
  · simp [inherited]
  · simp only [inherited, ↓reduceIte, false_or]
    by_cases areaSelected : area = .taxonomy
    · simp [areaSelected, seedDirectories_lookup]
    · simp [areaSelected, seedDirectories_lookup]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CollisionCheckedMapConstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CollisionCheckedMapConstruction.lean#L1049).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `684e8c0936705c83918d1dc59e13dfb153b48034` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
