# findDiscrRefinementPath

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2d8f38d7271aa935ba657770d8ecfd5d60889e2d68455dae52a8dbe9991f130",
  "kind": "def",
  "lexical_name": "findDiscrRefinementPath",
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
  "slug": "finddiscrrefinementpath--e51cd8b11f40c4011692d606",
  "source": {
    "blob": "ab2b4b57363560ab4a981fdcc553128bf077e7d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 285,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant960a0ebf9a66c247496fc1fc12083a77e9e0a931646458a78d55f058c133db22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e51cd8b11f40c4011692d606280c8ba8de49dfe6a251a7c6c9b7d631c4e96922",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant960a0ebf9a66c247496fc1fc12083a77e9e0a931646458a78d55f058c133db22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2d8f38d7271aa935ba657770d8ecfd5d60889e2d68455dae52a8dbe9991f130`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def findDiscrRefinementPath (pattern : Expr) (expected : Expr) : OptionT MetaM (List Nat) := do
  goType (← instantiateMVars (← inferType pattern)) expected
where
  checkCompatibleApps (t d : Expr) : OptionT MetaM Unit := do
    guard d.isApp
    guard <| t.getAppNumArgs == d.getAppNumArgs
    let tFn := t.getAppFn
    let dFn := d.getAppFn
    guard <| tFn.isConst && dFn.isConst
    guard (← isDefEq tFn dFn)

  -- Visitor for inductive types
  goType (t d : Expr) : OptionT MetaM (List Nat) := do
    let t ← whnf t
    let d ← whnf d
    checkCompatibleApps t d
    matchConstInduct t.getAppFn (fun _ => failure) fun info _ => do
      let tArgs := t.getAppArgs
      let dArgs := d.getAppArgs
      for i in *...info.numParams do
        let tArg := tArgs[i]!
        let dArg := dArgs[i]!
        unless (← isDefEq tArg dArg) do
          return i :: (← goType tArg dArg)
      for h : i in info.numParams...tArgs.size do
        let tArg := tArgs[i]
        let dArg := dArgs[i]!
        unless (← isDefEq tArg dArg) do
          return i :: (← goIndex tArg dArg)
      failure

  -- Visitor for indexed families
  goIndex (t d : Expr) : OptionT MetaM (List Nat) := do
    let t ← whnfD t
    let d ← whnfD d
    if t.isFVar || d.isFVar then
      return [] -- Found refinement path
    else
      checkCompatibleApps t d
      matchConstCtor t.getAppFn (fun _ => failure) fun info _ => do
        let tArgs := t.getAppArgs
        let dArgs := d.getAppArgs
        for i in *...info.numParams do
          let tArg := tArgs[i]!
          let dArg := dArgs[i]!
          unless (← isDefEq tArg dArg) do
            failure
        for i in info.numParams...tArgs.size do
          let tArg := tArgs[i]!
          let dArg := dArgs[i]!
          unless (← isDefEq tArg dArg) do
            return i :: (← goIndex tArg dArg)
        failure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant960a0ebf9a66c247496fc1fc12083a77e9e0a931646458a78d55f058c133db22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant960a0ebf9a66c247496fc1fc12083a77e9e0a931646458a78d55f058c133db22.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab2b4b57363560ab4a981fdcc553128bf077e7d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
