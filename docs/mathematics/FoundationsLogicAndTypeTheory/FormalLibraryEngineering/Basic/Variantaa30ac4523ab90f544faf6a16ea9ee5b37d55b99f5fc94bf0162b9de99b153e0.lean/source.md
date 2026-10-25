# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantaa30ac4523ab90f544faf6a16ea9ee5b37d55b99f5fc94bf0162b9de99b153e0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `863c47e599aab2b7e2c67c6faf3bf62c1c9f0f15` · SHA-256 `2d2614fb6790b34eecbc205ff04bec3bb98b13fdb0737e41472e45c0c442a90f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Component.Variantff2cdb0d9eeae2dec6650ccdfbe9ec74c5e020c40c90913c6d09ba0e337f08cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ff2cdb0d9eeae2dec6650ccdfbe9ec74c5e020c40c90913c6d09ba0e337f08cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Component.Variantff2cdb0d9eeae2dec6650ccdfbe9ec74c5e020c40c90913c6d09ba0e337f08cd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ff2cdb0d9eeae2dec6650ccdfbe9ec74c5e020c40c90913c6d09ba0e337f08cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/ProofWidgets/Component/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Lean.Widget.UserWidget
public import ProofWidgets.Compat


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Component.Variantff2cdb0d9eeae2dec6650ccdfbe9ec74c5e020c40c90913c6d09ba0e337f08cd

public meta section

namespace ProofWidgets
open Lean

/-- A component is a widget module with a `default` or named export which is a
[React component](https://react.dev/learn/your-first-component). Every component definition must
be annotated with `@[widget_module]`. This makes it possible for the infoview to load the component.

## Execution environment

The JS environment in which components execute provides a fixed set of libraries accessible via
direct `import`, notably
[`@leanprover/infoview`](https://www.npmjs.com/package/@leanprover/infoview).
All [React contexts](https://react.dev/learn/passing-data-deeply-with-context) exported from
`@leanprover/infoview` are usable from components.

## Lean encoding of props

`Props` is the Lean representation of the type `JsProps` of
[React props](https://react.dev/learn/passing-props-to-a-component)
that the component expects.
The export of the module specified in `«export»` should then have type
`(props: JsProps & { pos: DocumentPosition, children: React.ReactNode }) => React.ReactNode`
where `DocumentPosition` is defined in `@leanprover/infoview`.
`Props` is expected to have a `Lean.Server.RpcEncodable` instance
specifying how to encode props as JSON.

Note that by defining a `Component Props` with a specific JS implementation,
you are *asserting* that `Props` is a correct representation of `JsProps`. -/
structure Component (Props : Type) extends Widget.Module where
  /-- Which export of the module to use as the component function. -/
  «export» : String := "default"

instance : Widget.ToModule (Component Props) := ⟨Component.toModule⟩

structure InteractiveCodeProps where
  fmt : Widget.CodeWithInfos
  deriving Server.RpcEncodable

/-- Present pretty-printed code as interactive text.

The most common use case is to instantiate this component from a `Lean.Expr`. To do so, you must
eagerly pretty-print the `Expr` using `Widget.ppExprTagged`. See also `InteractiveExpr`. -/
@[widget_module]
def InteractiveCode : Component InteractiveCodeProps where
  javascript := "
    import { InteractiveCode } from '@leanprover/infoview'
    import * as React from 'react'
    export default function(props) {
      return React.createElement(InteractiveCode, props)
    }"

structure InteractiveExprProps where
  expr : Server.WithRpcRef ExprWithCtx
  deriving Server.RpcEncodable

@[server_rpc_method]
def ppExprTagged : InteractiveExprProps → Server.RequestM (Server.RequestTask Widget.CodeWithInfos)
  | ⟨ref⟩ => Server.RequestM.asTask <| ref.val.runMetaM Widget.ppExprTagged

/-- Lazily pretty-print and present a `Lean.Expr` as interactive text.

This component is preferrable over `InteractiveCode` when the `Expr` will not necessarily be
displayed in the UI (e.g. it may be hidden by default), in which case laziness saves some work.
On the other hand if the `Expr` will likely be shown and you are in a `MetaM` context, it is
preferrable to use the eager `InteractiveCode` in order to avoid the extra client-server roundtrip
needed for the pretty-printing RPC call. -/
@[widget_module]
def InteractiveExpr : Component InteractiveExprProps where
  javascript := include_str ".." / ".." / "widget" / "js" / "interactiveExpr.js"

structure InteractiveMessageProps where
  msg : Server.WithRpcRef MessageData
  deriving Server.RpcEncodable

/-- Present a structured Lean message. -/
@[widget_module]
def InteractiveMessage : Component InteractiveMessageProps where
  javascript := "
    import { InteractiveMessageData } from '@leanprover/infoview'
    import * as React from 'react'
    export default function(props) {
      return React.createElement(InteractiveMessageData, props)
    }
  "

structure MarkdownDisplay.Props where
  contents : String
  deriving ToJson, FromJson

/-- Render a given string as Markdown.
LaTeX is supported with MathJax:
use `$...$` for inline math,
and `$$...$$` for displayed math.

Example usage:
```lean
<MarkdownDisplay contents={"$a + b = c$"} />
``` -/
@[widget_module]
def MarkdownDisplay : Component MarkdownDisplay.Props where
  javascript := "
    import { Markdown } from '@leanprover/infoview'
    import * as React from 'react'
    export default (props) => React.createElement(Markdown, props)
  "

end ProofWidgets

/-- Construct a structured message from a ProofWidgets component.

For the meaning of `alt`, see `MessageData.ofWidget`. -/
def Lean.MessageData.ofComponent [Server.RpcEncodable Props]
    (c : ProofWidgets.Component Props) (p : Props) (alt : String) : CoreM MessageData := do
  let wi ← Widget.WidgetInstance.ofHash c.javascriptHash
    (Server.RpcEncodable.rpcEncode p)
  return .ofWidget wi alt
````
