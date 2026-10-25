# chooseEnteringVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46b2f863476071e35de24830dc069c968f78f0c8f110be122a935fd71fddd01f",
  "kind": "def",
  "lexical_name": "chooseEnteringVar",
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
  "slug": "chooseenteringvar--4fa9dba5c387ec47f8e276f7",
  "source": {
    "blob": "f016c12af3c8a8fb05dda8f1ef4bec8105854128",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantb5a81c8434e5e367d4fad18d87e3476230cc653a30a9bf9a0d85fc7671dbccac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4fa9dba5c387ec47f8e276f7897f52817689833f7f3dcfe2ccc43e668cf7886d",
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

Occurrence: `declaration:46b2f863476071e35de24830dc069c968f78f0c8f110be122a935fd71fddd01f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def chooseEnteringVar : SimplexAlgorithmM matType Nat := do
  let mut enterIdxOpt : Option Nat := .none -- index of entering variable in the `free` array
  let mut minIdx := 0
  for i in [:(← get).free.size - 1] do
    if (← get).mat[(0, i)]! > 0 &&
        (enterIdxOpt.isNone || (← get).free[i]! < minIdx) then
      enterIdxOpt := i
      minIdx := (← get).free[i]!

  /- If there is no such variable the solution does not exist for sure. -/
  match enterIdxOpt with
  | .none => throwThe SimplexAlgorithmException SimplexAlgorithmException.infeasible
  | .some enterIdx => return enterIdx

/--
Chooses an exiting variable: the variable imposing the strictest limit on the increase of the
entering variable, breaking ties by choosing the variable with smallest index.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantb5a81c8434e5e367d4fad18d87e3476230cc653a30a9bf9a0d85fc7671dbccac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantb5a81c8434e5e367d4fad18d87e3476230cc653a30a9bf9a0d85fc7671dbccac.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f016c12af3c8a8fb05dda8f1ef4bec8105854128` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
