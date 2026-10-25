# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindHome.Variant3c13b8e1e4f65553e0bf660100a28b545254e8ea01f4e6f13b70c01ac48ee3f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d71116961a2440fd90a1d0dc4543d7b1eeb5997` · SHA-256 `fe6040de973e5ff6486cb453f55a89f36bf9898694005a1af212badbcd1dc3fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoToModuleLinkProps.Variant134f8e8c77b5618486edf4527684560970f6410c6613641394611778ddd6b3a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"134f8e8c77b5618486edf4527684560970f6410c6613641394611778ddd6b3a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GoToModuleLinkProps.Variant134f8e8c77b5618486edf4527684560970f6410c6613641394611778ddd6b3a4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"134f8e8c77b5618486edf4527684560970f6410c6613641394611778ddd6b3a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/importGraph/ImportGraph/Tools/FindHome.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Paul Lezeau
-/
module

public meta import Lean.Elab.Command
public meta import Lean.Widget.UserWidget
public meta import ImportGraph.Imports.RequiredModules
public meta import ImportGraph.Imports.ImportGraph
public meta import ImportGraph.Graph.TransitiveClosure


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoToModuleLinkProps.Variant134f8e8c77b5618486edf4527684560970f6410c6613641394611778ddd6b3a4

public meta section

open Lean

/--
Find locations as high as possible in the import hierarchy
where the named declaration could live.
-/
def Lean.Name.findHome (n : Name) (env : Option Environment) : CoreM NameSet := do
  let current? := match env with | some env => env.header.mainModule | _ => default
  let required := (← n.requiredModules).toArray.erase current?
  let imports := (← getEnv).importGraph.transitiveClosure
  let mut candidates : NameSet := {}
  for (n, i) in imports do
    if required.all fun r => n == r || i.contains r then
      candidates := candidates.insert n
  for c in candidates do
    for i in candidates do
      if imports.find? i |>.getD {} |>.contains c then
        candidates := candidates.erase i
  return candidates

open Server in
/-- Tries to resolve the module `modName` to a source file URI.
This has to be done in the Lean server
since the `Environment` does not keep track of source URIs. -/
@[server_rpc_method]
def getModuleUri (modName : Name) : RequestM (RequestTask Lsp.DocumentUri) :=
  RequestM.asTask do
    let some uri ← documentUriFromModule? modName
      | throw $ RequestError.invalidParams s!"couldn't find URI for module '{modName}'"
    return uri

structure GoToModuleLinkProps where
  modName : Name
  deriving Server.RpcEncodable

/-- When clicked, this widget component jumps to the source of the module `modName`,
assuming a source URI can be found for the module. -/
@[widget_module]
def GoToModuleLink : Widget.Module where
  javascript := "
    import * as React from 'react'
    import { EditorContext, useRpcSession } from '@leanprover/infoview'

    export default function(props) {
      const ec = React.useContext(EditorContext)
      const rs = useRpcSession()
      return React.createElement('a',
        {
          className: 'link pointer dim',
          onClick: async () => {
            try {
              const uri = await rs.call('getModuleUri', props.modName)
              ec.revealPosition({ uri, line: 0, character: 0 })
            } catch {}
          }
        },
        props.modName)
    }
  "

open Elab Command in
/--
Find locations as high as possible in the import hierarchy
where the named declaration could live.
Using `#find_home!` will forcefully remove the current file.
Note that this works best if used in a file with `import Mathlib`.

The current file could still be the only suggestion, even using `#find_home! lemma`.
The reason is that `#find_home!` scans the import graph below the current file,
selects all the files containing declarations appearing in `lemma`, excluding
the current file itself and looks for all least upper bounds of such files.

For a simple example, if `lemma` is in a file importing only `A.lean` and `B.lean` and
uses one lemma from each, then `#find_home! lemma` returns the current file.
-/
elab "#find_home" bang:"!"? n:ident : command => do
  let stx ← getRef
  let mut homes : Array MessageData := #[]
  let n ← liftCoreM <| realizeGlobalConstNoOverloadWithInfo n
  let env? ← bang.mapM fun _ => getEnv
  for modName in (← Elab.Command.liftCoreM do n.findHome env?) do
    let p : GoToModuleLinkProps := { modName }
    homes := homes.push $ .ofWidget
      (← liftCoreM $ Widget.WidgetInstance.ofHash
        GoToModuleLink.javascriptHash $
        Server.RpcEncodable.rpcEncode p)
      (toString modName)
  logInfoAt stx[0] m!"{homes}"
```
