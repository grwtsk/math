# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OpenPrivate.Variant1e9d714467ae0195da3cade82410e03ea08b4393762901ccda7377488be8b0c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1f60f97969faf599c8ad9ac14a04e91caf25387` · SHA-256 `9acc4598473a9ca667816e02ee95d1a5e1ff95c65e4fd7a472c464ff208b1acf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MetaCollectPrivateIn.Varianta7258d60e4d27e4599bb1247dd742b01de5fd933e328a19d118e68af7e5ff4dc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a7258d60e4d27e4599bb1247dd742b01de5fd933e328a19d118e68af7e5ff4dc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MetaCollectPrivateIn.Varianta7258d60e4d27e4599bb1247dd742b01de5fd933e328a19d118e68af7e5ff4dc","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a7258d60e4d27e4599bb1247dd742b01de5fd933e328a19d118e68af7e5ff4dc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Tactic/OpenPrivate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public meta import Lean.Elab.Command
public meta import Lean.Util.FoldConsts
public meta import Lean.Parser.Module


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MetaCollectPrivateIn.Varianta7258d60e4d27e4599bb1247dd742b01de5fd933e328a19d118e68af7e5ff4dc

public meta section

open Lean Parser.Tactic Elab Command

namespace Lean

/-- Collects the names of private declarations referenced in definition `n`. -/
def Meta.collectPrivateIn [Monad m] [MonadEnv m] [MonadError m]
  (n : Name) (set := NameSet.empty) : m NameSet := do
  let c ← getConstInfo n
  let traverse value := Expr.foldConsts value set fun c a =>
    if isPrivateName c then a.insert c else a
  if let some value := c.value? then return traverse value
  if let some c := (← getEnv).find? (n ++ `_cstage1) then
    if let some value := c.value? then return traverse value
  return traverse c.type

/-- Get the module index given a module name. -/
def Environment.moduleIdxForModule? (env : Environment) (mod : Name) : Option ModuleIdx :=
  (env.allImportedModuleNames.idxOf? mod).map fun idx => idx

instance : DecidableEq ModuleIdx := instDecidableEqNat

/-- Get the list of declarations in a module (referenced by index). -/
def Environment.declsInModuleIdx (env : Environment) (idx : ModuleIdx) : List Name :=
  env.const2ModIdx.fold (fun acc n i => if i = idx then n :: acc else acc) []

/-- Add info to the info tree corresponding to a module name. -/
def Elab.addModuleInfo [Monad m] [MonadInfoTree m] (stx : Ident) : m Unit := do
  -- HACK: The server looks specifically for ofCommandInfo nodes on `import` syntax
  -- to do go-to-def for modules, so we have to add something that looks like an import
  -- to the info tree. (Ideally this would be an `.ofModuleInfo` node instead.)
  pushInfoLeaf <| .ofCommandInfo {
    elaborator := `import
    stx := Unhygienic.run `(Parser.Module.import| import $stx) |>.raw.copyHeadTailInfoFrom stx
  }

namespace Elab.Command

/-- Core elaborator for `open private` and `export private`. -/
def elabOpenPrivateLike (ids : Array Ident) (tgts mods : Option (Array Ident))
  (f : (priv full user : Name) → CommandElabM Name) : CommandElabM Unit := do
  let mut names := NameSet.empty
  for tgt in tgts.getD #[] do
    let n ← liftCoreM <| realizeGlobalConstNoOverloadWithInfo tgt
    names ← Meta.collectPrivateIn n names
  let env ← getEnv
  for mod in mods.getD #[] do
    let some modIdx := env.moduleIdxForModule? mod.getId
      | throwError "unknown module {mod}"
    addModuleInfo mod
    for declName in env.declsInModuleIdx modIdx do
      if isPrivateName declName then
        names := names.insert declName
  let appendNames (msg : MessageData) : MessageData := Id.run do
    let mut msg := msg
    for c in names do
      if let some info := env.findConstVal? c then
        msg := msg ++ m!"{mkConst c (info.levelParams.map mkLevelParam)}\n"
      else if let some name := privateToUserName? c then
        msg := msg ++ s!"{name}\n"
    msg
  if ids.isEmpty && !names.isEmpty then
    logInfo (appendNames "found private declarations:\n")
  let mut decls := #[]
  for id in ids do
    let n := id.getId
    let rec
      /-- finds private declarations `n ++ suff` where `n` resolves and `n ++ suff` realizes -/
      findAll n suff := do
        let mut found := []
        for c in names do
          if n.isSuffixOf c then
            let (c', ok) ← if suff.isAnonymous then
              pure (c, true)
            else
              let c' := c ++ suff
              if (← getEnv).contains c' then pure (c', true)
              else try
                liftCoreM (executeReservedNameAction c')
                pure (c', (← getEnv).containsOnBranch c')
              catch _ => pure (c', false)
            if ok then
              addConstInfo id c'
              found := c'::found
        unless found = [] do return found
        match n with
        | .str p s => findAll p (Name.mkSimple s ++ suff)
        | _ => pure []
    match ← findAll n .anonymous with
    | [] => throwError appendNames m!"'{n}' not found in the provided declarations:\n"
    | [c] =>
      if let some name := privateToUserName? c then
        let new ← f c name n
        decls := decls.push (.explicit n new)
      else unreachable!
    | found => throwError s!"provided name is ambiguous: found {found.map privateToUserName?}"
  modifyScope fun scope => Id.run do
    let mut openDecls := scope.openDecls
    for decl in decls do
      openDecls := decl::openDecls
    { scope with openDecls := openDecls }

/--
The command `open private a b c in foo bar` will look for private definitions named `a`, `b`, `c`
in declarations `foo` and `bar` and open them in the current scope. This does not make the
definitions public, but rather makes them accessible in the current section by the short name `a`
instead of the (unnameable) internal name for the private declaration, something like
`_private.Other.Module.0.Other.Namespace.foo.a`, which cannot be typed directly because of the `0`
name component.

It is also possible to specify the module instead with
`open private a b c from Other.Module`.
-/
syntax (name := openPrivate) "open" ppSpace "private" (ppSpace ident)*
  (" in" (ppSpace ident)*)? (" from" (ppSpace ident)*)? : command

/-- Elaborator for `open private`. -/
@[command_elab openPrivate] def elabOpenPrivate : CommandElab
| `(open private $ids* $[in $tgts*]? $[from $mods*]?) =>
  elabOpenPrivateLike ids tgts mods fun c _ _ => pure c
| _ => throwUnsupportedSyntax

/--
The command `export private a b c in foo bar` is similar to `open private`, but instead of opening
them in the current scope it will create public aliases to the private definition. The definition
will exist at exactly the original location and name, as if the `private` keyword was not used
originally.

It will also open the newly created alias definition under the provided short name, like
`open private`.
It is also possible to specify the module instead with
`export private a b c from Other.Module`.
-/
syntax (name := exportPrivate) "export" ppSpace "private" (ppSpace ident)*
  (" in" (ppSpace ident)*)? (" from" (ppSpace ident)*)? : command

/-- Elaborator for `export private`. -/
@[command_elab exportPrivate] def elabExportPrivate : CommandElab
| `(export private $ids* $[in $tgts*]? $[from $mods*]?) =>
  elabOpenPrivateLike ids tgts mods fun c name _ => liftCoreM do
    let cinfo ← getConstInfo c
    if (← getEnv).contains name then
      throwError s!"'{name}' has already been declared"
    let decl := Declaration.defnDecl {
      name := name,
      levelParams := cinfo.levelParams,
      type := cinfo.type,
      value := mkConst c (cinfo.levelParams.map mkLevelParam),
      hints := ReducibilityHints.abbrev,
      safety := if cinfo.isUnsafe then DefinitionSafety.unsafe else DefinitionSafety.safe
    }
    addDecl decl
    compileDecl decl
    pure name
| _ => throwUnsupportedSyntax
```
