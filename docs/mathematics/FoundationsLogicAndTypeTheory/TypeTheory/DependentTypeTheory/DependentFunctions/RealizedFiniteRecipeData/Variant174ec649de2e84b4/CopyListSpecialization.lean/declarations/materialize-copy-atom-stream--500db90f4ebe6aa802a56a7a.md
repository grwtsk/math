# materialize_copy_atom_stream

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49966c0c-2808-8e85-dfea-857ef39f53a3",
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
  "slug": "materialize-copy-atom-stream--500db90f4ebe6aa802a56a7a",
  "source": {
    "blob": "27307f7887b89fa71cd1653f394b619c606c646d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/RealizedFiniteRecipeData/Variant174ec649de2e84b4/CopyListSpecialization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:500db90f4ebe6aa802a56a7a36d7679f46228133b4337b858cbeed2cc4a7cb60",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/RealizedFiniteRecipeData/Variant174ec649de2e84b4/CopyListSpecialization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49966c0c-2808-8e85-dfea-857ef39f53a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–78.

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


end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.RealizedFiniteRecipeData.Variant174ec649de2e84b4
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/RealizedFiniteRecipeData/Variant174ec649de2e84b4/CopyListSpecialization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/RealizedFiniteRecipeData/Variant174ec649de2e84b4/CopyListSpecialization.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27307f7887b89fa71cd1653f394b619c606c646d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
