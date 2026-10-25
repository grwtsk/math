# getElimNameInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ae08523eb68aade5214c9083dbf3f5b6bf74b7206b9433b3273adec92f6e00f",
  "kind": "def",
  "lexical_name": "getElimNameInfo",
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
  "slug": "getelimnameinfo--7ee9a401e78176a18ff7ec78",
  "source": {
    "blob": "96201dae32b53e8b351c7f6a2177e432e71a990e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 857,
    "line": 818,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ee9a401e78176a18ff7ec78ec3df9027fd981ca958ca71b6f54b2c7b03d4529",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ae08523eb68aade5214c9083dbf3f5b6bf74b7206b9433b3273adec92f6e00f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 818–857.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getElimNameInfo (optElimId : Syntax) (targets : Array Expr) (induction : Bool) : TacticM ElimInfo := do
  let getBaseName? (elimName : Name) : MetaM (Option Name) := do
    -- not a precise check, but covers the common cases of T.recOn / T.casesOn
    -- as well as user defined T.myInductionOn to locate the constructors of T
    let t := elimName.getPrefix
    if ← isInductive t then
      return some t
    else
      return none
  if optElimId.isNone then
    if tactic.customEliminators.get (← getOptions) then
      if let some elimName ← getCustomEliminator? targets induction then
        return ← getElimInfo elimName (← getBaseName? elimName)
    unless targets.size == 1 do
      throwMissingEliminator
    let indVal ← getInductiveValFromMajor induction targets[0]!
    if induction && indVal.all.length != 1 then
      throwUnsupportedInductionType indVal.name "mutually inductive"
    if induction && indVal.isNested then
      throwUnsupportedInductionType indVal.name "a nested inductive type"
    let elimName := if induction then mkRecName indVal.name else mkCasesOnName indVal.name
    getElimInfo elimName indVal.name
  else
    let elimTerm := optElimId[1]
    let elimExpr ← withRef elimTerm do elabTermForElim elimTerm
    let baseName? ← do
      let some elimName := elimExpr.getAppFn.constName? | pure none
      getBaseName? elimName
    withRef elimTerm <| getElimExprInfo elimExpr baseName?
where
  throwMissingEliminator :=
    let tacName := if induction then "induction" else "cases"
    throwError m!"Missing eliminator: An eliminator must be provided when multiple induction \
          targets are specified and no default eliminator has been registered"
          ++ .hint' m!"Write `using <eliminator-name>` to specify an eliminator, or register a default \
                        eliminator with the attribute `[{tacName}_eliminator]`"
  throwUnsupportedInductionType (name : Name) (kind : String) :=
    throwError m!"The `induction` tactic does not support the type `{name}` because it is {kind}"
        ++ .hint' "Consider using the `cases` tactic instead"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean#L818).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96201dae32b53e8b351c7f6a2177e432e71a990e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
