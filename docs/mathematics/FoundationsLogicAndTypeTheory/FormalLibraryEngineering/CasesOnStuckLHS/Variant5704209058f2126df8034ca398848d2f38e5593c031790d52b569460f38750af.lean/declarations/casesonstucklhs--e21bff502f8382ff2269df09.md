# casesOnStuckLHS

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de4a11156f954c0118455e185798d37dd916f90acad00380037a781354e97bd8",
  "kind": "def",
  "lexical_name": "casesOnStuckLHS",
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
  "slug": "casesonstucklhs--e21bff502f8382ff2269df09",
  "source": {
    "blob": "bf39769c858bcd6df2fe93ba2d76cc626c3030c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesOnStuckLHS/Variant5704209058f2126df8034ca398848d2f38e5593c031790d52b569460f38750af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e21bff502f8382ff2269df0904e2b55d4853da06926617513460907f1595b152",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesOnStuckLHS/Variant5704209058f2126df8034ca398848d2f38e5593c031790d52b569460f38750af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de4a11156f954c0118455e185798d37dd916f90acad00380037a781354e97bd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public partial def casesOnStuckLHS (mvarId : MVarId) : MetaM (Array MVarId) := do
  let target ← mvarId.getType
  if let some (_, lhs) ← matchEqHEqLHS? target then
    if let some fvarId ← findFVar? lhs then
      return (←  mvarId.cases fvarId).map fun s => s.mvarId
  throwError "'casesOnStuckLHS' failed"
where
  findFVar? (e : Expr) : MetaM (Option FVarId) := do
    match e.getAppFn with
    | Expr.proj _ _ e => findFVar? e
    | f =>
      if !f.isConst then
        return none
      else
        let declName := f.constName!
        let args := e.getAppArgs
        match (← getProjectionFnInfo? declName) with
        | some projInfo =>
          if projInfo.numParams < args.size then
            findFVar? args[projInfo.numParams]!
          else
            return none
        | none =>
          matchConstRec f (fun _ => return none) fun recVal _ => do
            if recVal.getMajorIdx >= args.size then
              return none
            let major := args[recVal.getMajorIdx]!.consumeMData
            if major.isFVar then
              return some major.fvarId!
            else
              return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesOnStuckLHS/Variant5704209058f2126df8034ca398848d2f38e5593c031790d52b569460f38750af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesOnStuckLHS/Variant5704209058f2126df8034ca398848d2f38e5593c031790d52b569460f38750af.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf39769c858bcd6df2fe93ba2d76cc626c3030c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
