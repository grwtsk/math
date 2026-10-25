# Info.fmtHover?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d32f34713a470f93c5b52ef3fba3fa10216a77a5b21506c1aa2a368a80f6bc2e",
  "kind": "def",
  "lexical_name": "Info.fmtHover?",
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
  "slug": "info-fmthover--6e4dea949f6affb66f63afaf",
  "source": {
    "blob": "fb0304c8f9114f65df16c25b2ae77ec110b6afe7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 347,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variantb9e08d036f54005ada9428128449240eb299c6a1da653f2345abd02f592756f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e4dea949f6affb66f63afafc63d52b3bc88a7fcec2d76efeaa501bc893cfe39",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variantb9e08d036f54005ada9428128449240eb299c6a1da653f2345abd02f592756f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d32f34713a470f93c5b52ef3fba3fa10216a77a5b21506c1aa2a368a80f6bc2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def Info.fmtHover? (ci : ContextInfo) (i : Info) : IO (Option FormatWithInfos) := do
  ci.runMetaM i.lctx do
    let mut fmts := #[]
    let mut infos := ∅
    let modFmt ← try
      let (termFmt, modFmt) ← fmtTermAndModule?
      if let some f := termFmt then
        fmts := fmts.push f.fmt
        infos := f.infos
      pure modFmt
    catch _ => pure none
    if let some m ← i.docString? then
      fmts := fmts.push m
    if let some f := modFmt then
      fmts := fmts.push f
    if fmts.isEmpty then
      return none
    else
      return some ⟨f!"\n***\n".joinSep fmts.toList, infos⟩

where
  fmtModule? (decl : Name) : MetaM (Option Format) := do
    let some mod ← findModuleOf? decl | return none
    return some f!"*import {mod}*"

  fmtTermAndModule? : MetaM (Option FormatWithInfos × Option Format) := do
    match i with
    | Info.ofTermInfo ti =>
      let e ← instantiateMVars ti.expr
      if e.isSort then
        -- Types of sorts are funny to look at in widgets, but ultimately not very helpful
        return (none, none)
      let tp ← instantiateMVars (← Meta.inferType e)
      let tpFmt ← Meta.ppExpr tp
      if let .const c _ := e then
        let eFmt ← PrettyPrinter.ppSignature c
        return (some { eFmt with fmt := f!"```lean\n{eFmt.fmt}\n```" }, ← fmtModule? c)
      let eFmt ← Meta.ppExpr e
      let lctx ← getLCtx
      -- Try not to show too scary internals
      let showTerm :=
        if ti.isDisplayableTerm then
          true
        else
          if let .fvar _ := e then
            if let some ldecl := lctx.findFVar? e then
              !ldecl.userName.hasMacroScopes
            else
              false
          else
            isAtomicFormat eFmt
      let fmt := if showTerm then f!"{eFmt} : {tpFmt}" else tpFmt
      return (some f!"```lean\n{fmt}\n```", none)
    | Info.ofFieldInfo fi =>
      let tp ← Meta.inferType fi.val
      let tpFmt ← Meta.ppExpr tp
      return (some f!"```lean\n{fi.fieldName} : {tpFmt}\n```", none)
    | _ => return (none, none)

  isAtomicFormat : Format → Bool
    | Std.Format.text _    => true
    | Std.Format.group f _ => isAtomicFormat f
    | Std.Format.nest _ f  => isAtomicFormat f
    | Std.Format.tag _ f   => isAtomicFormat f
    | _                    => false

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variantb9e08d036f54005ada9428128449240eb299c6a1da653f2345abd02f592756f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variantb9e08d036f54005ada9428128449240eb299c6a1da653f2345abd02f592756f3.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb0304c8f9114f65df16c25b2ae77ec110b6afe7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
