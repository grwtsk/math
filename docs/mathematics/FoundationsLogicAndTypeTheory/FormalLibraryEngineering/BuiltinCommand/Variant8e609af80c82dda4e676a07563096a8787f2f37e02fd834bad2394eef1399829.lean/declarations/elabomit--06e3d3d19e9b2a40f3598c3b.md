# elabOmit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:575eefa9167f3635f36ab5013b243e67d31796b38489a9479850e839a1b2a74f",
  "kind": "def",
  "lexical_name": "elabOmit",
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
  "slug": "elabomit--06e3d3d19e9b2a40f3598c3b",
  "source": {
    "blob": "e8f915fe84238814beb0a76b8a80135c6f6cceeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 608,
    "line": 566,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8e609af80c82dda4e676a07563096a8787f2f37e02fd834bad2394eef1399829.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06e3d3d19e9b2a40f3598c3bd3366c308d5f439b3e59f67533ca6161433bcb01",
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

Occurrence: `declaration:575eefa9167f3635f36ab5013b243e67d31796b38489a9479850e839a1b2a74f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–608.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_command_elab Lean.Parser.Command.omit] def elabOmit : CommandElab
  | `(Lean.Parser.Command.omit| omit $omits*) => do
    -- TODO: this really shouldn't have to re-elaborate section vars... they should come
    -- pre-elaborated
    let omittedVars ← runTermElabM fun vars => do
      Term.synthesizeSyntheticMVarsNoPostponing
      -- We don't want to store messages produced when elaborating `(getVarDecls s)` because they have already been saved when we elaborated the `variable`(s) command.
      -- So, we use `Core.resetMessageLog`.
      Core.resetMessageLog
      -- resolve each omit to variable user name or type pattern
      let elaboratedOmits : Array (Sum Name Expr) ← omits.mapM fun
        | `(ident| $id:ident) => pure <| Sum.inl id.getId
        | `(Lean.Parser.Term.instBinder| [$id : $_]) => pure <| Sum.inl id.getId
        | `(Lean.Parser.Term.instBinder| [$ty]) =>
          Sum.inr <$> Term.withoutErrToSorry (Term.elabTermAndSynthesize ty none)
        | _ => throwUnsupportedSyntax
      -- check that each omit is actually used in the end
      let mut omitsUsed := omits.map fun _ => false
      let mut omittedVars := #[]
      let mut revSectionFVars : Std.HashMap FVarId Name := {}
      for (uid, var) in (← read).sectionFVars do
        revSectionFVars := revSectionFVars.insert var.fvarId! uid
      for var in vars do
        let ldecl ← var.fvarId!.getDecl
        if let some idx := (← elaboratedOmits.findIdxM? fun
            | .inl id => return ldecl.userName == id
            | .inr ty => do
              let mctx ← getMCtx
              isDefEq ty ldecl.type <* setMCtx mctx) then
          if let some uid := revSectionFVars[var.fvarId!]? then
            omittedVars := omittedVars.push uid
            omitsUsed := omitsUsed.set! idx true
          else
            throwError "invalid 'omit', `{ldecl.userName}` has not been declared in the current scope"
      for o in omits, used in omitsUsed do
        unless used do
          throwError "`{o}` did not match any variables in the current scope"
      return omittedVars
    modifyScope fun sc => { sc with
      omittedVars := sc.omittedVars ++ omittedVars.toList
      includedVars := sc.includedVars.filter (!omittedVars.contains ·) }
  | _ => throwUnsupportedSyntax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8e609af80c82dda4e676a07563096a8787f2f37e02fd834bad2394eef1399829.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8e609af80c82dda4e676a07563096a8787f2f37e02fd834bad2394eef1399829.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8f915fe84238814beb0a76b8a80135c6f6cceeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
