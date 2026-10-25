# collectReferences

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f2f2092136dbae3ddd3163e22d604cc8d83e0f1ccd707f51b6eb6b37205e270",
  "kind": "def",
  "lexical_name": "collectReferences",
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
  "slug": "collectreferences--2b7e2d434f413cd46ec71fe3",
  "source": {
    "blob": "5fffdbe0d2d380a83e0aa43656b54af7c56c7b8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 389,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedVariables/Variantb583c77e3d5a593a2804b1f61a42503bb598a726203eaddd93c5fe293bb4eda1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b7e2d434f413cd46ec71fe33dae395bfc75742b2d22f16e25119ae5c5a0d233",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedVariables/Variantb583c77e3d5a593a2804b1f61a42503bb598a726203eaddd93c5fe293bb4eda1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f2f2092136dbae3ddd3163e22d604cc8d83e0f1ccd707f51b6eb6b37205e270`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def collectReferences (infoTrees : Array Elab.InfoTree) (cmdStxRange : Lean.Syntax.Range)
    (linterSets : LinterSets) :
    StateRefT References IO Unit := ReaderT.run (r := false) <| go infoTrees none
where
  go infoTrees ctx? := do
    for tree in infoTrees do
      tree.visitM' (ctx? := ctx?) (preNode := fun ci info children => do
        -- set if `analyzeTactics` is unset, tactic infos are present, and we're inside the body
        let ignored ← read
        match info with
        | .ofCustomInfo ti =>
          if !linter.unusedVariables.analyzeTactics.get ci.options then
            if let some bodyInfo := ti.value.get? Elab.Term.BodyInfo then
              if let some value := bodyInfo.value? then
                -- the body is the only `Expr` we will analyze in this case
                -- NOTE: we include it even if no tactics are present as at least for parameters we want
                -- to lint only truly unused binders
                let (e, _) := instantiateMVarsCore ci.mctx value
                modify fun s => { s with
                  assignments := s.assignments.push (.insert {} ⟨.anonymous⟩ e) }
                let tacticsPresent := children.any (·.findInfo? (· matches .ofTacticInfo ..) |>.isSome)
                withReader (· || tacticsPresent) do
                  go children.toArray ci
                return false
        | .ofTermInfo ti =>
          if ignored then return true
          match ti.expr with
          | .const .. =>
            if ti.isBinder then
              let some range := info.range? | return true
              let .original .. := info.stx.getHeadInfo | return true -- we are not interested in canonical syntax here
              modify fun s => { s with constDecls := s.constDecls.insert range }
          | .fvar id .. =>
            let some range := info.range? | return true
            let .original .. := info.stx.getHeadInfo | return true -- we are not interested in canonical syntax here
            if ti.isBinder then
              -- This is a local variable declaration.
              if ignored then return true
              let some ldecl := ti.lctx.find? id | return true
              -- Skip declarations which are outside the command syntax range, like `variable`s
              -- (it would be confusing to lint these), or those which are macro-generated
              if !cmdStxRange.contains range.start || ldecl.userName.hasMacroScopes then return true
              let opts : LinterOptions := { toOptions := ci.options, linterSets }
              -- we have to check for the option again here because it can be set locally
              if !getLinterUnusedVariables opts then return true
              let stx := skipDeclIdIfPresent info.stx
              if let .str _ s := stx.getId then
                -- If the variable name is `_foo` then it is intentionally (possibly) unused, so skip.
                -- This is the suggested way to silence the warning
                if s.startsWith "_" then return true
              -- Record this either as a new `fvarDefs`, or an alias of an existing one
              modify fun s =>
                if let some ref := s.fvarDefs[range]? then
                  { s with fvarDefs := s.fvarDefs.insert range { ref with aliases := ref.aliases.push id } }
                else
                  { s with fvarDefs := s.fvarDefs.insert range { userName := ldecl.userName, stx, opts := opts.toOptions, aliases := #[id] } }
            else
              -- Found a direct use, keep track of it
              modify fun s => { s with fvarUses := s.fvarUses.insert id }
          | _ => pure ()
        | .ofTacticInfo ti =>
          -- When ignoring new binders, no need to look at intermediate tactic states either as
          -- references to binders outside the body will be covered by the body `Expr`
          if ignored then return true
          -- Keep track of the `MetavarContext` after a tactic for later
          modify fun s => { s with assignments := s.assignments.push ti.mctxAfter.eAssignment }
        | .ofFVarAliasInfo i =>
          if ignored then return true
          -- record any aliases we find
          modify fun s =>
            let id := followAliases s.fvarAliases i.baseId
            { s with fvarAliases := s.fvarAliases.insert i.id id }
        | _ => pure ()
        return true)
  /-- Since declarations attach the declaration info to the `declId`,
  we skip that to get to the `.ident` if possible. -/
  skipDeclIdIfPresent (stx : Syntax) : Syntax :=
    if stx.isOfKind ``Lean.Parser.Command.declId then
      stx[0]
    else
      stx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedVariables/Variantb583c77e3d5a593a2804b1f61a42503bb598a726203eaddd93c5fe293bb4eda1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedVariables/Variantb583c77e3d5a593a2804b1f61a42503bb598a726203eaddd93c5fe293bb4eda1.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fffdbe0d2d380a83e0aa43656b54af7c56c7b8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
