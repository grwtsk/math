# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckUnivs.Variantbe727a35ab8d2a04a50edf98a551112f43df40e3638066b52000da836316f58b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb902ef20452fd94785519bcf67ea33194ed309a` · SHA-256 `446b2bb2557a2a29ad62e1ffb84cd35b101cf556c4b6af28a2d9cc6f086b260f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnivParamsGrouped.Variantcdc2099de938615786e650635e356bb2dca8aced06e1570aa6083d5e4ad1679a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cdc2099de938615786e650635e356bb2dca8aced06e1570aa6083d5e4ad1679a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.UnivParamsGrouped.Variantcdc2099de938615786e650635e356bb2dca8aced06e1570aa6083d5e4ad1679a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"cdc2099de938615786e650635e356bb2dca8aced06e1570aa6083d5e4ad1679a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Linter/CheckUnivs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski

Copyright (c) 2020 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Robert Y. Lewis, Gabriel Ebner
-/
module

prelude
public import Lean.Linter.Basic
public import Lean.Linter.Util
public import Lean.Util.CollectLevelParams
public import Lean.Util.ForEachExpr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnivParamsGrouped.Variantcdc2099de938615786e650635e356bb2dca8aced06e1570aa6083d5e4ad1679a

public section

namespace Lean.Linter
open Elab Command Meta

/--
Enables the `checkUnivs` linter, which warns when a declaration has a universe parameter
that only ever occurs in a `max u v` together with another parameter, never on its own.
This usually means that the type contains a `max u v` where neither `u` nor `v` occur by
themselves; the fix is to provide the universe level explicitly.
-/
register_builtin_option linter.checkUnivs : Bool := {
  defValue := true
  descr := "enable the `checkUnivs` linter, which warns when a declaration has a universe \
    parameter that only ever occurs in a `max u v` together with another parameter, never \
    on its own."
}

namespace CheckUnivs

/--
`univParamsGrouped e nm₀` computes for each `Level` occurring in `e` the set of level parameters
that appear in it, returning the collection of such parameter sets.
In pseudo-mathematical form, this returns `{{p : parameter | p ∈ u} | (u : level) ∈ e}`.
Ignores `nm₀.proof_*` sub-constants.
-/
private def univParamsGrouped (e : Expr) (nm₀ : Name) : Std.HashSet (Array Name) :=
  runST fun _ =>
    let go : StateRefT (Std.HashSet (Array Name)) (ST _) Unit := e.forEach fun
      | .sort u =>
        modify (·.insert (CollectLevelParams.visitLevel u {}).params)
      | .const n us => do
        if let .str n s := n then
          if n == nm₀ && s.startsWith "proof_" then return
        modify (us.foldl (·.insert <| CollectLevelParams.visitLevel · {} |>.params))
      | _ => pure ()
    Prod.snd <$> go.run {}

/--
The good parameters are the parameters that occur somewhere in the set as a singleton or
(recursively) with only other good parameters.
All other parameters in the set are bad.
-/
private partial def badParams (l : Array (Array Name)) : Array Name :=
  let goodLevels := l.filterMap fun
    | #[u] => some u
    | _ => none
  if goodLevels.isEmpty then
    l.flatten.foldl (init := #[]) fun acc x => if acc.contains x then acc else acc.push x
  else
    badParams <| l.map (·.filter (!goodLevels.contains ·))

@[inherit_doc linter.checkUnivs]
def checkUnivsLinter : Linter where run := withSetOptionIn fun _ => do
  unless getLinterValue linter.checkUnivs (← getLinterOptions) do return
  if (← get).messages.hasErrors then return
  let env ← getEnv
  let mut seen : NameSet := {}
  for t in ← getInfoTrees do
    for declName in getNewDecls t do
      if seen.contains declName then continue
      seen := seen.insert declName
      let some info := env.find? declName | continue
      let bad := badParams (univParamsGrouped info.type declName).toArray
      unless bad.isEmpty do
        let univs := MessageData.joinSep (bad.toList.map fun u => m!"`{u}`") ", "
        logLintIf linter.checkUnivs (← getRef)
          m!"`{.ofConstName declName}`: universes {univs} only occur together. \
            This usually means there is a `max` expression in the type where none of these \
            universes appear on their own."

builtin_initialize addLinter checkUnivsLinter

end CheckUnivs
end Lean.Linter
```
