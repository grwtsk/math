# makeGCongrString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:420113a48324a8c4859a65abd7a476a16b376416c8c877f4d881024bfa2732db",
  "kind": "def",
  "lexical_name": "makeGCongrString",
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
  "slug": "makegcongrstring--0c26bc0566c4c0b44109eaf8",
  "source": {
    "blob": "bd389f9f33d892af5178c06c1364697a114660bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCongr/Variant6b90b2e7a30523734fbd9c7195d3993ff3d0c2517e5448f7b99903fc0e90de62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c26bc0566c4c0b44109eaf816ebb3e7a862abbc4f46d1bc6d8ca52402ec96c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCongr/Variant6b90b2e7a30523734fbd9c7195d3993ff3d0c2517e5448f7b99903fc0e90de62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:420113a48324a8c4859a65abd7a476a16b376416c8c877f4d881024bfa2732db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def makeGCongrString (pos : Array Lean.SubExpr.GoalsLocation) (goalType : Expr)
    (_ : SelectInsertParams) : MetaM (String × String × Option (String.Pos × String.Pos)) := do
let subexprPos := getGoalLocations pos
unless goalType.isAppOf ``LE.le || goalType.isAppOf ``LT.lt || goalType.isAppOf `Int.ModEq do
  panic! "The goal must be a ≤ or < or ≡."
let mut goalTypeWithMetaVars := goalType
for pos in subexprPos do
  goalTypeWithMetaVars ← insertMetaVar goalTypeWithMetaVars pos

let side := if goalType.isAppOf `Int.ModEq then
              if subexprPos[0]!.toArray[0]! = 0 then 1 else 2
            else
              if subexprPos[0]!.toArray[0]! = 0 then 2 else 3
let sideExpr := goalTypeWithMetaVars.getAppArgs[side]!
let res := "gcongr " ++ (toString (← Meta.ppExpr sideExpr)).renameMetaVar
return (res, res, none)

/-- Rpc function for the gcongr widget. -/
@[server_rpc_method]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCongr/Variant6b90b2e7a30523734fbd9c7195d3993ff3d0c2517e5448f7b99903fc0e90de62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCongr/Variant6b90b2e7a30523734fbd9c7195d3993ff3d0c2517e5448f7b99903fc0e90de62.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd389f9f33d892af5178c06c1364697a114660bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
