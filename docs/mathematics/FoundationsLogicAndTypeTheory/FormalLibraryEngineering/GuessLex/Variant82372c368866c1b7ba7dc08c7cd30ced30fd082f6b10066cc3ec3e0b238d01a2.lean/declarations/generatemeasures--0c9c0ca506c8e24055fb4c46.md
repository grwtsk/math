# generateMeasures

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:55d0835a06152cc6b1d6fa889f7192e2af3346f4aca8df35f2a484e3bae80698",
  "kind": "def",
  "lexical_name": "generateMeasures",
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
  "slug": "generatemeasures--0c9c0ca506c8e24055fb4c46",
  "source": {
    "blob": "8655cf0708eda72c2b5d9dd51524ab5abee9098b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 608,
    "line": 588,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c9c0ca506c8e24055fb4c466bdfa60afaae67b9526454d9b7049767ffa63b9e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:55d0835a06152cc6b1d6fa889f7192e2af3346f4aca8df35f2a484e3bae80698`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 588–608.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def generateMeasures (numMeasures : Array Nat) : MetaM (Array MutualMeasure) := do
  let some arg_measures := generateCombinations? numMeasures
      | throwError "Too many combinations"

  let func_measures :=
    if numMeasures.size > 1 then
      (List.range numMeasures.size).toArray
    else
      #[]

  return arg_measures.map .args ++ func_measures.map .func

/--
The core logic of guessing the lexicographic order
Given a matrix that for each call and measure indicates whether that measure is
decreasing, equal, less-or-equal or unknown, It finds a sequence of measures
that is lexicographically decreasing.

The matrix is implemented here as an array of monadic query methods only so that
we can fill is lazily. Morally, this is a pure function
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean#L588).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8655cf0708eda72c2b5d9dd51524ab5abee9098b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
