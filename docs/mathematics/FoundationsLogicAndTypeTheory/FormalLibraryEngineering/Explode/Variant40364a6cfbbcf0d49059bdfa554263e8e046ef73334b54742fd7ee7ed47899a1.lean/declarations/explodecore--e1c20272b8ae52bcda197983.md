# explodeCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:191156cc3bf91845ec8b3a99a6e04e92b45a5f858804caba298c2f9f9fa31b44",
  "kind": "def",
  "lexical_name": "explodeCore",
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
  "slug": "explodecore--e1c20272b8ae52bcda197983",
  "source": {
    "blob": "7869334523c39aa8c20998fe3c396a994d73b6ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variant40364a6cfbbcf0d49059bdfa554263e8e046ef73334b54742fd7ee7ed47899a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1c20272b8ae52bcda1979839e98a715ba2af82f03f56298d68f1381e29e512c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variant40364a6cfbbcf0d49059bdfa554263e8e046ef73334b54742fd7ee7ed47899a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:191156cc3bf91845ec8b3a99a6e04e92b45a5f858804caba298c2f9f9fa31b44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def explodeCore (e : Expr) (depth : Nat) (entries : Entries) (start : Bool := false) :
    MetaM (Option Entry × Entries) := do
  trace[explode] "depth = {depth}, start = {start}, e = {e}"
  let e := e.cleanupAnnotations
  if let some entry := entries.find? e then
    trace[explode] "already seen"
    return (entry, entries)
  if !(← select e) then
    trace[explode] "filtered out"
    return (none, entries)
  match e with
  | .lam .. => do
    trace[explode] ".lam"
    Meta.lambdaTelescope e fun args body => do
      let mut entries' := entries
      let mut rdeps := []
      for arg in args, i in [0:args.size] do
        let (argEntry, entries'') := entries'.add arg
          { type    := ← addMessageContext <| ← Meta.inferType arg
            depth   := depth
            status  :=
              if start
              then Status.sintro
              else if i == 0 then Status.intro else Status.cintro
            thm     := ← addMessageContext <| arg
            deps    := []
            useAsDep  := ← select arg }
        entries' := entries''
        rdeps := some argEntry.line! :: rdeps
      let (bodyEntry?, entries) ←
        explodeCore body (if start then depth else depth + 1) entries'
      rdeps := consDep bodyEntry? rdeps
      let (entry, entries) := entries.add e
        { type     := ← addMessageContext <| ← Meta.inferType e
          depth    := depth
          status   := Status.lam
          thm      := "∀I" -- TODO use "→I" if it's purely implications?
          deps     := rdeps.reverse
          useAsDep := true }
      return (entry, entries)
  | .app .. => do
    trace[explode] ".app"

    -- We want to represent entire applications as a single line in the table
    let fn := e.getAppFn
    let args := e.getAppArgs

    -- If the function is a `const`, then it's not local so we do not need an
    -- entry in the table for it. We store the theorem name in the `thm` field
    -- below, giving access to the theorem's type on hover in the UI.
    -- Whether to include the entry could be controlled by a configuration option.
    let (fnEntry?, entries) ←
      if fn.isConst then
        pure (none, entries)
      else
        explodeCore fn depth entries
    let deps := if fn.isConst then [] else consDep fnEntry? []

    let mut entries' := entries
    let mut rdeps := []
    for arg in args do
      let (appEntry?, entries'') ← explodeCore arg depth entries'
      entries' := entries''
      rdeps := consDep appEntry? rdeps
    let deps := deps ++ rdeps.reverse

    let (entry, entries) := entries'.add e
      { type     := ← addMessageContext <| ← Meta.inferType e
        depth    := depth
        status   := Status.reg
        thm      := ← addMessageContext <| if fn.isConst then ppConst fn else "∀E"
        deps     := deps
        useAsDep := true }
    return (entry, entries)
  | .letE varName varType val body _ => do
    trace[explode] ".letE"
    let varType := varType.cleanupAnnotations
    Meta.withLocalDeclD varName varType fun var => do
      let (valEntry?, entries) ← explodeCore val depth entries
      -- Add a synonym so that the substituted fvars refer to `valEntry?`
      let entries := valEntry?.map (entries.addSynonym var) |>.getD entries
      explodeCore (body.instantiate1 var) depth entries
  | _ => do
    -- Right now all of these are caught by this case case:
    --   Expr.lit, Expr.forallE, Expr.const, Expr.sort, Expr.mvar, Expr.fvar, Expr.bvar
    --   (Note: Expr.mdata is stripped by cleanupAnnotations)
    -- Might be good to handle them individually.
    trace[explode] ".{e.ctorName} (default handler)"
    let (entry, entries) := entries.add e
      { type     := ← addMessageContext <| ← Meta.inferType e
        depth    := depth
        status   := Status.reg
        thm      := ← addMessageContext e
        deps     := []
        useAsDep := ← select e }
    return (entry, entries)
where
  /-- Prepend the `line` of the `Entry` to `deps` if it's not `none`, but if the entry isn't marked
  with `useAsDep` then it's not added to the list at all. -/
  consDep (entry? : Option Entry) (deps : List (Option Nat)) : List (Option Nat) :=
    if let some entry := entry? then
      if includeAllDeps || entry.useAsDep then entry.line! :: deps else deps
    else
      deps

/-- Main definition behind `#explode` command. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variant40364a6cfbbcf0d49059bdfa554263e8e046ef73334b54742fd7ee7ed47899a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variant40364a6cfbbcf0d49059bdfa554263e8e046ef73334b54742fd7ee7ed47899a1.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7869334523c39aa8c20998fe3c396a994d73b6ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
