# chooseEnteringVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e24ea54e8f3ae5855138619a9ec3334c4d0119551b2f8ed33d148b53dbdaab5b",
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
  "slug": "chooseenteringvar--5c54798ae052f5fc7b835f2b",
  "source": {
    "blob": "4ecfb36c3cab1580f9efa49bf7818f7f3ea60653",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant3a55e9b031b71e641704b93a30715d3f6dc8149610213b982c013430ef8733f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c54798ae052f5fc7b835f2b7e82efedd18f43c7e4e4384e8efb7ccd95a9ac8a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant3a55e9b031b71e641704b93a30715d3f6dc8149610213b982c013430ef8733f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e24ea54e8f3ae5855138619a9ec3334c4d0119551b2f8ed33d148b53dbdaab5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–86.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant3a55e9b031b71e641704b93a30715d3f6dc8149610213b982c013430ef8733f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variant3a55e9b031b71e641704b93a30715d3f6dc8149610213b982c013430ef8733f3.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ecfb36c3cab1580f9efa49bf7818f7f3ea60653` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
