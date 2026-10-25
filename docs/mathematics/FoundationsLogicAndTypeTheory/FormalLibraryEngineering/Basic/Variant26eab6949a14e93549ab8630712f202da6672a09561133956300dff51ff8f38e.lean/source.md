# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant26eab6949a14e93549ab8630712f202da6672a09561133956300dff51ff8f38e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7d5e92cb82f81bad8be0b3fdf6a158c3b61ddfe` · SHA-256 `ba9ad6293f806cfb87fbea0b4dfc31ca8e1ef842cbe3a9db9a7e38620659b103`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Component.Variant42482530c22e018956881770c62122cb458bb2af08a8c961ce441a35dd1dc98c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"42482530c22e018956881770c62122cb458bb2af08a8c961ce441a35dd1dc98c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Component.Variant42482530c22e018956881770c62122cb458bb2af08a8c961ce441a35dd1dc98c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"42482530c22e018956881770c62122cb458bb2af08a8c961ce441a35dd1dc98c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/proofwidgets/ProofWidgets/Component/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Widget.InteractiveCode
import ProofWidgets.Compat


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Component.Variant42482530c22e018956881770c62122cb458bb2af08a8c961ce441a35dd1dc98c

namespace ProofWidgets

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
[React props](https://react.dev/learn/passing-props-to-a-component) that the component expects.
The export of the module specified in `«export»` should then have type
`(props: JsProps & { pos: DocumentPosition }): React.ReactNode` where `DocumentPosition` is
defined in `@leanprover/infoview`. `Props` is expected to have a `Lean.Server.RpcEncodable` instance
specifying how to encode props as JSON. -/
structure Component (Props : Type) extends Module where
  /-- Which export of the module to use as the component function. -/
  «export» : String := "default"

open Lean

structure InteractiveCodeProps where
  fmt : Widget.CodeWithInfos

#mkrpcenc InteractiveCodeProps

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

#mkrpcenc InteractiveExprProps

@[server_rpc_method]
def ppExprTagged : InteractiveExprProps → Server.RequestM (Server.RequestTask Widget.CodeWithInfos)
  | ⟨⟨expr⟩⟩ => Server.RequestM.asTask <| expr.runMetaM Widget.ppExprTagged

/-- Lazily pretty-print and present a `Lean.Expr` as interactive text.

This component is preferrable over `InteractiveCode` when the `Expr` will not necessarily be
displayed in the UI (e.g. it may be hidden by default), in which case laziness saves some work.
On the other hand if the `Expr` will likely be shown and you are in a `MetaM` context, it is
preferrable to use the eager `InteractiveCode` in order to avoid the extra client-server roundtrip
needed for the pretty-printing RPC call. -/
@[widget_module]
def InteractiveExpr : Component InteractiveExprProps where
  javascript := include_str ".." / ".." / "build" / "js" / "interactiveExpr.js"

end ProofWidgets
```
