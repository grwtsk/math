# chooseExitingVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ddf8e692bf9b10d4aed100a5671a01335008511d78baefc43dd1bf2263911e4",
  "kind": "def",
  "lexical_name": "chooseExitingVar",
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
  "slug": "chooseexitingvar--58b1f8d6e2bfd0d11ba5b20e",
  "source": {
    "blob": "f016c12af3c8a8fb05dda8f1ef4bec8105854128",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 95,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantb5a81c8434e5e367d4fad18d87e3476230cc653a30a9bf9a0d85fc7671dbccac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58b1f8d6e2bfd0d11ba5b20ef22848f48191c2392de0da18e1e7164513f643f4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantb5a81c8434e5e367d4fad18d87e3476230cc653a30a9bf9a0d85fc7671dbccac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ddf8e692bf9b10d4aed100a5671a01335008511d78baefc43dd1bf2263911e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def chooseExitingVar (enterIdx : Nat) : SimplexAlgorithmM matType Nat := do
  let mut exitIdxOpt : Option Nat := .none -- index of entering variable in the `basic` array
  let mut minCoef := 0
  let mut minIdx := 0
  for i in [1:(← get).basic.size] do
    if (← get).mat[(i, enterIdx)]! >= 0 then
      continue
    let lastIdx := (← get).free.size - 1
    let coef := -(← get).mat[(i, lastIdx)]! / (← get).mat[(i, enterIdx)]!
    if exitIdxOpt.isNone || coef < minCoef ||
        (coef == minCoef && (← get).basic[i]! < minIdx) then
      exitIdxOpt := i
      minCoef := coef
      minIdx := (← get).basic[i]!
  return exitIdxOpt.get! -- such variable always exists because our problem is bounded

/--
Chooses entering and exiting variables using
(Bland's rule)[(https://en.wikipedia.org/wiki/Bland%27s_rule)] that guarantees that the Simplex
Algorithm terminates.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantb5a81c8434e5e367d4fad18d87e3476230cc653a30a9bf9a0d85fc7671dbccac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantb5a81c8434e5e367d4fad18d87e3476230cc653a30a9bf9a0d85fc7671dbccac.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f016c12af3c8a8fb05dda8f1ef4bec8105854128` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
