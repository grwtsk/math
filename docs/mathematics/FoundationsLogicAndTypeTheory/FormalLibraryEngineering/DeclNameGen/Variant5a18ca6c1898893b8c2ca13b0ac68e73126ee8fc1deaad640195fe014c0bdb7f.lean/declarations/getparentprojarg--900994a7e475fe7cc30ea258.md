# getParentProjArg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c2f9fc00df6b151a1cc9ff3412a5a243d96b42ed897df79e3c73f76e2920b2c",
  "kind": "def",
  "lexical_name": "getParentProjArg",
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
  "slug": "getparentprojarg--900994a7e475fe7cc30ea258",
  "source": {
    "blob": "b066885af07612d0abc58f0d8e139677ac422f41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variant5a18ca6c1898893b8c2ca13b0ac68e73126ee8fc1deaad640195fe014c0bdb7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:900994a7e475fe7cc30ea2587ef1ccbf275e0e6d6858c0472e1e276c4930a6fe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variant5a18ca6c1898893b8c2ca13b0ac68e73126ee8fc1deaad640195fe014c0bdb7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c2f9fc00df6b151a1cc9ff3412a5a243d96b42ed897df79e3c73f76e2920b2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def getParentProjArg (e : Expr) : MetaM (Option Expr) := do
  let .const c@(.str _ field) _ := e.getAppFn | return none
  let env ← getEnv
  let some info := env.getProjectionFnInfo? c | return none
  unless e.getAppNumArgs == info.numParams + 1 do return none
  let some (.ctorInfo cVal) := env.find? info.ctorName | return none
  if isSubobjectField? env cVal.induct (Name.mkSimple field) |>.isNone then return none
  return e.appArg!

/--
Strips out universes and arguments we decide are unnecessary for naming.
The resulting expression can have loose fvars and be mangled in other ways.
Expressions can also be replaced by `.bvar 0` if they shouldn't be mentioned.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variant5a18ca6c1898893b8c2ca13b0ac68e73126ee8fc1deaad640195fe014c0bdb7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variant5a18ca6c1898893b8c2ca13b0ac68e73126ee8fc1deaad640195fe014c0bdb7f.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b066885af07612d0abc58f0d8e139677ac422f41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
