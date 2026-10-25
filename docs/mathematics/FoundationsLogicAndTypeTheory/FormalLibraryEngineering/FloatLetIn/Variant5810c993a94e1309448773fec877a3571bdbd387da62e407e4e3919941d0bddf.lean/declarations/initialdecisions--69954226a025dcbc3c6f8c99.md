# initialDecisions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f149c05c9c429c1a55dc85ffae83b6765a5038366e9bb25bff162204ba389e7a",
  "kind": "def",
  "lexical_name": "initialDecisions",
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
  "slug": "initialdecisions--69954226a025dcbc3c6f8c99",
  "source": {
    "blob": "013948b5a8cb5b416d5313dfed644a12fd718598",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 120,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69954226a025dcbc3c6f8c994dc56f6bafa4b4aa8479b4d61ef157993c964aee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f149c05c9c429c1a55dc85ffae83b6765a5038366e9bb25bff162204ba389e7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def initialDecisions (cs : Cases .pure) : BaseFloatM (Std.HashMap FVarId Decision) := do
  let mut map := Std.HashMap.emptyWithCapacity (← read).decls.length
  let owned : Std.HashSet FVarId := ∅
  (map, _) ← (← read).decls.foldlM (init := (map, owned)) fun (acc, owned) val => do
    if let .let decl := val then
      if (← ignore? decl) then
        return (acc.insert decl.fvarId .dont, owned)
    let (dont, owned) ← (visitDecl (← getEnv) val).run owned
    if dont then
      return (acc.insert val.fvarId .dont, owned)
    else
      return (acc.insert val.fvarId .unknown, owned)

  if map.contains cs.discr then
    map := map.insert cs.discr .dont
  (_, map) ← goCases cs |>.run map
  return map
where
  visitDecl (env : Environment) (value : CodeDecl .pure) : StateRefT (Std.HashSet FVarId) CompilerM Bool := do
    match value with
    | .let decl => visitLetValue env decl.value
    | _ => return false -- will need to investigate whether that can be a problem

  visitLetValue (env : Environment) (value : LetValue .pure) : StateRefT (Std.HashSet FVarId) CompilerM Bool := do
    match value with
    | .proj _ _ x => visitArg (.fvar x) true
    | .const nm _ args =>
      match ← getImpureSignature? nm with
      | none => args.foldlM (fun b arg => visitArg arg false <||> pure b) false
      | some sig =>
        let mut res := false
        for h : i in *...args.size do
          if ← visitArg args[i] (sig.params[i]?.any (·.borrow)) then
            res := true
        return res
    | .fvar x args =>
      args.foldlM (fun b arg => visitArg arg false <||> pure b)
        (← visitArg (.fvar x) false)
    | .erased | .lit _ => return false

  visitArg (var : Arg .pure) (borrowed : Bool) : StateRefT (Std.HashSet FVarId) CompilerM Bool := do
    let .fvar v := var | return false
    let res := (← get).contains v
    unless borrowed do
      modify (·.insert v)
    return res

  goFVar (plannedDecision : Decision) (var : FVarId) : StateRefT (Std.HashMap FVarId Decision) BaseFloatM Unit := do
    if let some decision := (← get)[var]? then
      if decision matches .unknown then
        modify fun s => s.insert var plannedDecision
      else if decision != plannedDecision then
        modify fun s => s.insert var .dont
      -- otherwise we already have the proper decision

  goAlt (alt : Alt .pure) : StateRefT (Std.HashMap FVarId Decision) BaseFloatM Unit :=
    forFVarM (goFVar (.ofAlt alt)) alt

  goCases (cs : Cases .pure) : StateRefT (Std.HashMap FVarId Decision) BaseFloatM Unit :=
    cs.alts.forM goAlt

/--
Compute the initial new arms. This will just set up a map from all arms of
`cs` to empty `Array`s, plus one additional entry for `dont`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `013948b5a8cb5b416d5313dfed644a12fd718598` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
