# elabWhere

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:779535503db051fb8a42e7d0e74457407d3effb090540206cd770f6918692bf7",
  "kind": "def",
  "lexical_name": "elabWhere",
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
  "slug": "elabwhere--8d5cd0443753c7d7c124c1b8",
  "source": {
    "blob": "e8f915fe84238814beb0a76b8a80135c6f6cceeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 721,
    "line": 628,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8e609af80c82dda4e676a07563096a8787f2f37e02fd834bad2394eef1399829.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d5cd0443753c7d7c124c1b84999f70ea98a225a92567b1f1450cb83e8362948",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8e609af80c82dda4e676a07563096a8787f2f37e02fd834bad2394eef1399829.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:779535503db051fb8a42e7d0e74457407d3effb090540206cd770f6918692bf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 628–721.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_command_elab Parser.Command.where] def elabWhere : CommandElab := fun _ => do
  let scope ← getScope
  let mut msg : Array MessageData := #[]
  let isExpose := scope.attrs.any (· matches `(attrInstance| expose))
  -- Section header
  if isExpose || scope.isPublic || scope.isNoncomputable || scope.isMeta then
    let expTk? := if isExpose then some Syntax.missing else none
    let publicTk? := if scope.isPublic then some Syntax.missing else none
    let ncTk? := if scope.isNoncomputable then some Syntax.missing else none
    let metaTk? := if scope.isMeta then some Syntax.missing else none
    msg := msg.push <| ← `(Parser.Command.section| $[@[expose%$expTk?]]? $[public%$publicTk?]? $[noncomputable%$ncTk?]? $[meta%$metaTk?]? section)
  -- Namespace
  if !scope.currNamespace.isAnonymous then
    msg := msg.push <| ← `(command| namespace $(mkIdent scope.currNamespace))
  -- Open namespaces
  if let some openMsg ← describeOpenDecls scope.openDecls.reverse then
    msg := msg.push openMsg
  -- Universe levels
  if !scope.levelNames.isEmpty then
    let levels := scope.levelNames.reverse.map mkIdent
    msg := msg.push <| ← `(command| universe $levels.toArray*)
  -- Variables
  if !scope.varDecls.isEmpty then
    let varDecls : Array (TSyntax `Lean.Parser.Term.bracketedBinder) := scope.varDecls.map (⟨·.raw.unsetTrailing⟩)
    msg := msg.push <| ← `(command| variable $varDecls*)
  -- Included variables
  if !scope.includedVars.isEmpty then
    msg := msg.push <| ← `(command| include $(scope.includedVars.toArray.map (mkIdent ·.eraseMacroScopes))*)
  -- Omitted variables
  if !scope.omittedVars.isEmpty then
    msg := msg.push <| ← `(command| omit $(scope.omittedVars.toArray.map (mkIdent ·.eraseMacroScopes))*)
  -- Options
  if let some optionsMsg ← describeOptions scope.opts then
    msg := msg.push optionsMsg
  if msg.isEmpty then
    logInfo m!"-- In root namespace with initial scope"
  else
    logInfo <| MessageData.joinSep msg.toList "\n\n"
where
  /--
  'Delaborate' open declarations.
  Current limitations:
  - does not check whether or not successive namespaces need `_root_`
  - does not combine commands with `renaming` clauses into a single command
  -/
  describeOpenDecls (ds : List OpenDecl) : CommandElabM (Option MessageData) := do
    let mut lines : Array MessageData := #[]
    let mut simple : Array Name := #[]
    let flush (lines : Array MessageData) (simple : Array Name) : CommandElabM (Array MessageData × Array Name) := do
      if simple.isEmpty then
        return (lines, simple)
      else
        return (lines.push <| ← `(command| open $(simple.map mkIdent)*), #[])
    for d in ds do
      match d with
      | .explicit id decl =>
        (lines, simple) ← flush lines simple
        let ns := decl.getPrefix
        let «from» := Name.mkSimple decl.getString!
        lines := lines.push <| ← `(command| open $(mkIdent ns) renaming $(mkIdent «from») → $(mkIdent id))
      | .simple ns ex =>
        if ex == [] then
          simple := simple.push ns
        else
          (lines, simple) ← flush lines simple
          lines := lines.push <| ← `(command| open $(mkIdent ns) hiding $[$(ex.toArray.map mkIdent)]*)
    (lines, _) ← flush lines simple
    return if lines.isEmpty then none else MessageData.joinSep lines.toList "\n"

  describeOptions (opts : Options) : CommandElabM (Option MessageData) := do
    let mut lines : Array MessageData := #[]
    let decls ← getOptionDecls
    for (name, val) in opts do
      -- `#guard_msgs` sets this option internally, we don't want it to end up in its output
      if name == `Elab.async then
        continue
      let (isSet, isUnknown) :=
        match decls.find? name with
        | some decl => (decl.defValue != val, false)
        | none      => (true, true)
      if isSet then
        let cmd : TSyntax `command ←
          match val with
          | .ofBool true  => `(set_option $(mkIdent name) true)
          | .ofBool false => `(set_option $(mkIdent name) false)
          | .ofString str => `(set_option $(mkIdent name) $(Syntax.mkStrLit str))
          | .ofNat n      => `(set_option $(mkIdent name) $(Syntax.mkNatLit n))
          | _             => `(set_option $(mkIdent name) 0 /- unrepresentable value -/)
        if isUnknown then
          lines := lines.push m!"-- {cmd} -- unknown option"
        else
          lines := lines.push cmd
    return if lines.isEmpty then none else MessageData.joinSep lines.toList "\n"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8e609af80c82dda4e676a07563096a8787f2f37e02fd834bad2394eef1399829.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8e609af80c82dda4e676a07563096a8787f2f37e02fd834bad2394eef1399829.lean#L628).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8f915fe84238814beb0a76b8a80135c6f6cceeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
