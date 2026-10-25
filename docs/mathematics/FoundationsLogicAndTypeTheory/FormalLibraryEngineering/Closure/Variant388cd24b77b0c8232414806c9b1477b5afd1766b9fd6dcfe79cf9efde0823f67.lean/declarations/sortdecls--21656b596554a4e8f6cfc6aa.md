# sortDecls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f4b3fdebd02c2b8d6a913234e637ee8ad1c96f561c2dd0f33987e0c11228317c",
  "kind": "def",
  "lexical_name": "sortDecls",
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
  "slug": "sortdecls--21656b596554a4e8f6cfc6aa",
  "source": {
    "blob": "d5c6d4bf86de09eb83908509cbc19b387f8cdc38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 364,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variant388cd24b77b0c8232414806c9b1477b5afd1766b9fd6dcfe79cf9efde0823f67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21656b596554a4e8f6cfc6aa8f263ed023290da2294821ac4852889a39bdaa8c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variant388cd24b77b0c8232414806c9b1477b5afd1766b9fd6dcfe79cf9efde0823f67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f4b3fdebd02c2b8d6a913234e637ee8ad1c96f561c2dd0f33987e0c11228317c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def sortDecls (sortedDecls : Array LocalDecl) (sortedArgs : Array Expr)
  (toSortDecls : Array LocalDecl) (toSortArgs : Array Expr) : CoreM (Array LocalDecl × Array Expr):= do
  assert! sortedDecls.size = sortedArgs.size
  assert! toSortDecls.size = toSortArgs.size
  if toSortDecls.isEmpty then
    return (sortedDecls, sortedArgs)
  trace[Meta.Closure] "MVars to abstract, topologically sorting the abstracted variables"
  let mut m : Std.HashMap FVarId (LocalDecl × Expr) := {}
  for decl in sortedDecls, arg in sortedArgs do
    m := m.insert decl.fvarId (decl, arg)
  for decl in toSortDecls, arg in toSortArgs do
    m := m.insert decl.fvarId (decl, arg)

  let rec visit (fvarId : FVarId) : StateT TopoSort CoreM Unit := do
    let some (decl, arg) := m.get? fvarId | return
    if (← get).doneMark.contains decl.fvarId then
      return ()
    trace[Meta.Closure] "Sorting decl {mkFVar decl.fvarId} : {decl.type}"
    if (← get).tempMark.contains decl.fvarId then
      throwError "cycle detected in sorting abstracted variables"
    assert! !decl.isLet (allowNondep := true) -- should all be cdecls
    modify fun s => { s with tempMark := s.tempMark.insert decl.fvarId }
    let type := decl.type
    type.forEach' fun e => do
      if e.hasFVar then
        if e.isFVar then
          visit e.fvarId!
        return true
      else
        return false
    modify fun s => { s with
      newDecls := s.newDecls.push decl
      newArgs := s.newArgs.push arg
      doneMark := s.doneMark.insert decl.fvarId
    }

  let s₀ := { newDecls := .emptyWithCapacity m.size, newArgs := .emptyWithCapacity m.size }
  StateT.run' (s := s₀) do
    for decl in sortedDecls do
      visit decl.fvarId
    for decl in toSortDecls do
      visit decl.fvarId
    let {newDecls, newArgs, .. } ← get
    trace[Meta.Closure] "Sorted fvars: {newDecls.map (mkFVar ·.fvarId)}"
    return (newDecls, newArgs)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variant388cd24b77b0c8232414806c9b1477b5afd1766b9fd6dcfe79cf9efde0823f67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variant388cd24b77b0c8232414806c9b1477b5afd1766b9fd6dcfe79cf9efde0823f67.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5c6d4bf86de09eb83908509cbc19b387f8cdc38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
