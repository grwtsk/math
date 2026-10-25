# getLCtxWithExposedNames

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbe033a5c10f052c7bab3d1b0885b97f01b4ceb5514a6c5f8951271a54f4a68a",
  "kind": "def",
  "lexical_name": "getLCtxWithExposedNames",
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
  "slug": "getlctxwithexposednames--9723dc4197e51ccce0a3e5bd",
  "source": {
    "blob": "3486689acbba8aa3b5f0cd9bef3bf148a5c47a24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExposeNames/Variant3f0c9ca17756dfafc8fa182c3514e37d570e28cf18a6631d36fbb8dae6eb51cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9723dc4197e51ccce0a3e5bd75b9d634feb1d60f2aa8746e3d6cdaec7cf426b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExposeNames/Variant3f0c9ca17756dfafc8fa182c3514e37d570e28cf18a6631d36fbb8dae6eb51cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbe033a5c10f052c7bab3d1b0885b97f01b4ceb5514a6c5f8951271a54f4a68a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def getLCtxWithExposedNames : MetaM LocalContext := do
  let mut map : Std.HashMap Name FVarId := {}
  let mut toRename := #[]
  let mut lctx ← getLCtx
  for localDecl in lctx do
    let userName := localDecl.userName
    if userName.hasMacroScopes then
      toRename := toRename.push localDecl.fvarId
    else
      if let some fvarId := map[userName]? then
        -- Variable has been shadowed
        toRename := toRename.push fvarId
      map := map.insert userName localDecl.fvarId
  if toRename.isEmpty then
    return lctx
  let mut next : Std.HashMap Name Nat := {}
  -- Remark: Shadowed variables may be inserted later.
  toRename := toRename.qsort fun fvarId₁ fvarId₂ =>
    (lctx.get! fvarId₁).index < (lctx.get! fvarId₂).index
  for fvarId in toRename do
    let localDecl := lctx.get! fvarId
    let mut baseName := localDecl.userName
    if baseName.hasMacroScopes then
      baseName := baseName.eraseMacroScopes
      if baseName == `x || baseName == `a then
        if (← isProp localDecl.type) then
          baseName := `h
    let mut userName := baseName
    let mut i := next[baseName]?.getD 0
    repeat
      if !map.contains userName then
        break
      i := i + 1
      userName := baseName.appendIndexAfter i
    next := next.insert baseName i
    map := map.insert userName fvarId
    lctx := lctx.modifyLocalDecl fvarId (·.setUserName userName)
  return lctx

/--
Creates a new goal whose local context has been "exposed" so that every local declaration has a clear, accessible name.
If no local declarations require renaming, the original goal is returned unchanged.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExposeNames/Variant3f0c9ca17756dfafc8fa182c3514e37d570e28cf18a6631d36fbb8dae6eb51cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExposeNames/Variant3f0c9ca17756dfafc8fa182c3514e37d570e28cf18a6631d36fbb8dae6eb51cf.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3486689acbba8aa3b5f0cd9bef3bf148a5c47a24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
