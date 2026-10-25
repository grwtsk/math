# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DupNamespace.Variant65d1ed988d9c49d3fb8e05ca83826732eaae37f6959ecc4dfe6e300ad04bd844

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8ad97b7f46963d75ba6c8e6e20ff4b74c4a2875` · SHA-256 `129cfe233e3ac1b29a9dc59dcdcd9d1ce17830bd7076ddb0ef5a90523621c489`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetNamesFrom.Variant90fef4e54b1d0bb20aa0a4bdf47f9efed446775de54aca1e88a6694846a945d4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"90fef4e54b1d0bb20aa0a4bdf47f9efed446775de54aca1e88a6694846a945d4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetNamesFrom.Variant90fef4e54b1d0bb20aa0a4bdf47f9efed446775de54aca1e88a6694846a945d4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"90fef4e54b1d0bb20aa0a4bdf47f9efed446775de54aca1e88a6694846a945d4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Linter/Extra/DupNamespace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski

Copyright (c) 2023 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
module

prelude
public import Lean.Elab.Command
public import Lean.Linter.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetNamesFrom.Variant90fef4e54b1d0bb20aa0a4bdf47f9efed446775de54aca1e88a6694846a945d4

public section

namespace Lean.Linter.Extra
open Lean Parser Elab Command Meta Linter

/--
The `dupNamespace` linter is set off by default.  Lean emits a warning on any declaration that
contains the same namespace more than once.

By default, only consecutive duplication is reported: `Nat.Nat.foo` and `One.two.two` trigger a
warning, while `Nat.One.Nat` does not. Setting `linter.extra.dupNamespace.consecutiveOnly` to
`false` also reports non-consecutive duplication, so that `Nat.One.Nat` triggers a warning as well.
-/

register_builtin_option linter.extra.dupNamespace : Bool := {
  defValue := false
  descr := "enable the duplicated namespace linter"
}

register_builtin_option linter.extra.dupNamespace.consecutiveOnly : Bool := {
  defValue := true
  descr := "only warn on consecutive duplicated namespaces"
}

namespace DupNamespaceLinter

open Lean Parser Elab Command Meta Linter

/--
If `pos` is a `String.Pos`, then `getNamesFrom pos` returns the array of identifiers
for the names of the declarations whose syntax begins in position at least `pos`.
-/
def getNamesFrom {m} [Monad m] [MonadEnv m] [MonadFileMap m] (pos : String.Pos.Raw) :
    m (Array Syntax) := do
  -- declarations from parallelism branches should not be interesting here, so use `local`
  let drs := declRangeExt.toPersistentEnvExtension.getState (asyncMode := .local) (← getEnv)
  let fm ← getFileMap
  let mut nms := #[]
  for (nm, rgs) in drs do
    if pos ≤ fm.ofPosition rgs.range.pos then
      let ofPos1 := fm.ofPosition rgs.selectionRange.pos
      let ofPos2 := fm.ofPosition rgs.selectionRange.endPos
      nms := nms.push (mkIdentFrom (.ofRange ⟨ofPos1, ofPos2⟩) nm)
  return nms

/--
If `stx` is a syntax node for an `export` statement, then `getAliasSyntax stx` returns the array of
identifiers with the "exported" names.
-/
def getAliasSyntax {m} [Monad m] [MonadResolveName m] (stx : Syntax) : m (Array Syntax) := do
  let mut aliases := #[]
  if let `(export $_ ($ids*)) := stx then
    let currNamespace ← getCurrNamespace
    for idStx in ids do
      let id := idStx.getId
      aliases := aliases.push
        (mkIdentFrom (.ofRange (idStx.raw.getRange?.getD default)) (currNamespace ++ id))
  return aliases

@[inherit_doc linter.extra.dupNamespace]
def dupNamespace : Linter where run := withSetOptionIn fun stx ↦ do
  if getLinterValue linter.extra.dupNamespace (← getLinterOptions) then
    let mut aliases := #[]
    if let some exp := stx.find? (·.isOfKind `Lean.Parser.Command.export) then
      aliases ← getAliasSyntax exp
    for id in (← getNamesFrom (stx.getPos?.getD default)) ++ aliases do
      let declName := id.getId
      if declName.hasMacroScopes || isPrivateName declName then continue
      let nm := declName.components
      let duplicated :=
        if (← getBoolOption `linter.extra.dupNamespace.consecutiveOnly (defValue := true)) then
          -- Only check consecutive components
          nm.zip (nm.tailD []) |>.filterMap fun (x, y) ↦ if x == y then some x else none
        else
          -- Collect distinct components which appear more than once.
          List.eraseDups <| nm.filter (fun comp ↦ nm.count comp > 1)
      match duplicated with
      | [] => continue
      | [ns] =>
        Linter.logLint linter.extra.dupNamespace id
          m!"The namespace `{ns}` is duplicated in the declaration \
          `{.ofConstName (fullNames := true) declName}`."
      | _ =>
        let ns := MessageData.andList (duplicated.map (m!"`{·}`"))
        Linter.logLint linter.extra.dupNamespace id
          m!"The namespaces {ns} are duplicated in the declaration \
          `{.ofConstName (fullNames := true) declName}`."

end DupNamespaceLinter

builtin_initialize addLinter DupNamespaceLinter.dupNamespace

end Lean.Linter.Extra
```
