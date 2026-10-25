# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DefProp.Variant824404941608c792b3ee511696f424a77236839d03193364714ae28983db1727

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47f588e9a28199316f720bccdcaca980014cde35` · SHA-256 `3cff2aaf78f0e9b0b32edcb8d4796139b35912c57159ca90d4a42dbf7f08209d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DefPropLinter.Variant9830a6d8b3e4ae9765e3b449ef84a39c7d4689a2adaeb1c027438674ed5a33bc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9830a6d8b3e4ae9765e3b449ef84a39c7d4689a2adaeb1c027438674ed5a33bc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DefPropLinter.Variant9830a6d8b3e4ae9765e3b449ef84a39c7d4689a2adaeb1c027438674ed5a33bc","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9830a6d8b3e4ae9765e3b449ef84a39c7d4689a2adaeb1c027438674ed5a33bc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Linter/DefProp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DefPropLinter.Variant9830a6d8b3e4ae9765e3b449ef84a39c7d4689a2adaeb1c027438674ed5a33bc

public section

namespace Lean.Linter
open Elab Command Meta Term

/--
Enables the `defProp` linter, which warns when a `def` is used to introduce a
declaration whose type is a `Prop`. Such a declaration should be written using
`theorem` instead.
-/
register_builtin_option linter.defProp : Bool := {
  defValue := true
  descr := "enable the `defProp` linter, which warns when a `def` is used to introduce \
    a declaration whose type is a `Prop`; such a declaration should be written using \
    `theorem` instead."
}

namespace DefProp

@[inherit_doc linter.defProp]
def defPropLinter : Linter where run := withSetOptionIn fun _ => do
  unless getLinterValue linter.defProp (← getLinterOptions) do
    return
  if (← get).messages.hasErrors then
    return
  let env ← getEnv
  for t in ← getInfoTrees do
    for declName in getDeclsByBody t do
      let some info := env.find? declName | continue
      unless info.isDefinition do continue
      if info.hints.isAbbrev then continue
      let isPropType ← liftTermElabM <| isProp info.type
      if isPropType then
        logLintIf linter.defProp (← getRef) m!"\
          Definition `{.ofConstName declName}` is a proposition; use `theorem` instead of `def`"

builtin_initialize addLinter defPropLinter

end DefProp
end Lean.Linter
```
