# getSPredGoalHypsAndTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f58f5e9b6c944fa61c1eca9fb5c4e5a7cce685313b8a67d28c3334afad28dcdf",
  "kind": "def",
  "lexical_name": "getSPredGoalHypsAndTarget",
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
  "slug": "getspredgoalhypsandtarget--8e5ee053df46fb4ebb9939a2",
  "source": {
    "blob": "61262511d113b689159480e4d4e106eef227e231",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e5ee053df46fb4ebb9939a2ac5c9c4d18c19b07db05a56e7946c3a2afb0c0cc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f58f5e9b6c944fa61c1eca9fb5c4e5a7cce685313b8a67d28c3334afad28dcdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getSPredGoalHypsAndTarget (type : Expr) : MetaM (Option (Level × Expr × Expr)) := do
  let args := type.getAppArgs
  if (type.isAppOf ``Std.Tactic.Do.MGoalEntails || type.isAppOf ``SPred.entails) && args.size > 2 then
    return (type.getAppFn.constLevels![0]!, (type.getArg! 1).beta args[3:], (type.getArg! 2).beta args[3:])
  let some decl := (← getLCtx).lastDecl | return none
  let hyps := decl.type.consumeMData
  let lvl := (getULiftDownLevel type <|> getULiftDownLevel hyps).getD .zero
  -- logWarning m!"getSPredGoalHypsAndTarget: {hyps} ⊢ₛ {type}"
  return (lvl, toAssertion lvl hyps, toAssertion lvl type)
where
  getULiftDownLevel (expr : Expr) : Option Level :=
    if expr.isAppOfArity ``ULift.down 2 then some expr.getAppFn.constLevels![0]! else none
  toAssertion (lvl : Level) (prop : Expr) : Expr :=
    if prop.isAppOfArity ``ULift.down 2 then
      prop.getArg! 1
    else
      SPred.mkPure lvl (TypeList.mkNil lvl) prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61262511d113b689159480e4d4e106eef227e231` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
