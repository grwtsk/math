# findAutomaticProjectionsAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6304b82919bb8e56f01be80c9803baf95352b1e300c36386d57c57e4eebc61e",
  "kind": "def",
  "lexical_name": "findAutomaticProjectionsAux",
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
  "slug": "findautomaticprojectionsaux--8dee522bf486fa09dff8507b",
  "source": {
    "blob": "373c37e1ed79c058cc173787d3c0450d7deb1f15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 750,
    "line": 712,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8dee522bf486fa09dff8507b05c6feb92c68cad37861a1292d3881e17f27120d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6304b82919bb8e56f01be80c9803baf95352b1e300c36386d57c57e4eebc61e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 712–750.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findAutomaticProjectionsAux (str : Name) (proj : ParsedProjectionData) (args : Array Expr) :
    TermElabM <| Option (Expr × Name) := do
  if let some ⟨className, isNotation, findArgs⟩ :=
    notationClassAttr.find? (← getEnv) proj.strName then
    let findArgs ← unsafe evalConst findArgType findArgs
    let classArgs ← try findArgs str className args
    catch ex =>
      trace[simps.debug] "Projection {proj.strName} is likely unrelated to the projection of \
        {className}:\n{ex.toMessageData}"
      return none
    let classArgs ← classArgs.mapM fun e => match e with
      | none => mkFreshExprMVar none
      | some e => pure e
    let classArgs := classArgs.map Arg.expr
    let projName := (getStructureFields (← getEnv) className)[0]!
    let projName := className ++ projName
    let eStr := mkAppN (← mkConstWithLevelParams str) args
    let eInstType ←
      try withoutErrToSorry (elabAppArgs (← Term.mkConst className) #[] classArgs none true false)
      catch ex =>
        trace[simps.debug] "Projection doesn't have the right type for the automatic projection:\n\
          {ex.toMessageData}"
        return none
    return ← withLocalDeclD `self eStr fun instStr ↦ do
      trace[simps.debug] "found projection {proj.strName}. Trying to synthesize {eInstType}."
      let eInst ← try synthInstance eInstType
      catch ex =>
        trace[simps.debug] "Didn't find instance:\n{ex.toMessageData}"
        return none
      let projExpr ← elabAppArgs (← Term.mkConst projName) #[] (classArgs.push <| .expr eInst)
        none true false
      let projExpr ← mkLambdaFVars (if isNotation then args.push instStr else args) projExpr
      let projExpr ← instantiateMVars projExpr
      return (projExpr, projName)
  return none

/-- Auxiliary function for `getRawProjections`.
Find custom projections, automatically found by simps.
These come from `DFunLike` and `SetLike` instances. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean#L712).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `373c37e1ed79c058cc173787d3c0450d7deb1f15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
