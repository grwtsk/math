# materialize_copy_atom_stream

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f09f8e2b04276711a4282428fff9bef09dac7c62",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/174ec649de2e84b4aae5129f5735e433f8580478085a3fe9e59433e328c09eb7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b1a31dc-d953-95b3-e0bb-67a401a92388",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:691980e9-e843-b5b0-afe6-cb9be4e707b1",
  "kind": "theorem",
  "lexical_name": "materialize_copy_atom_stream",
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
  "slug": "materialize-copy-atom-stream--d2fbd34e5c932996edd08b18",
  "source": {
    "blob": "f09f8e2b04276711a4282428fff9bef09dac7c62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 59,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variant174ec649de2e84b4aae5129f5735e433f8580478085a3fe9e59433e328c09eb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2fbd34e5c932996edd08b18f8787f78552d2f94e7bd39d6ea3b98d9dfc4244e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variant174ec649de2e84b4aae5129f5735e433f8580478085a3fe9e59433e328c09eb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:691980e9-e843-b5b0-afe6-cb9be4e707b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem materialize_copy_atom_stream
    (xs : List Carrier.BinaryMatrix) :
    materialize? (copyAtomStream xs) =
      some (binaryMatrixStreamOfList xs) := by
  apply congrArg some
  refine Carrier.BinaryMatrixStream.ext
    (S := {
      k := (copyAtomStream xs).length
      layer := fun i =>
        (realizeLayerRecipe? copyAction copyRuleEngine
            (copyAtomStream xs).dictionary
            ((copyAtomStream xs).recipe i)).getD
          (Carrier.BinaryMatrix.zero 0 0)
    })
    (T := binaryMatrixStreamOfList xs) ?_ ?_
  · simp [copyAtomStream, binaryMatrixStreamOfList]
  · intro i
    simp [copyAtomStream, binaryMatrixStreamOfList,
      realizeLayerRecipe?, realizeIndexSpin?, MatrixAtomDictionary.get?,
      copyAction, copyRuleEngine, copyRule]

end Archive
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variant174ec649de2e84b4aae5129f5735e433f8580478085a3fe9e59433e328c09eb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variant174ec649de2e84b4aae5129f5735e433f8580478085a3fe9e59433e328c09eb7.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f09f8e2b04276711a4282428fff9bef09dac7c62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
