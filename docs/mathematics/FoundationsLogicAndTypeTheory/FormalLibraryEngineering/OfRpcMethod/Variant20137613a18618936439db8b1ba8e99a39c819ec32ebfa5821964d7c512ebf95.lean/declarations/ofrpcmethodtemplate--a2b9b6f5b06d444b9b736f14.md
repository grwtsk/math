# ofRpcMethodTemplate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56d31ac3d3505097c0adfddf955df90a3dc193cde4395dcda1ac0728f504ac3a",
  "kind": "def",
  "lexical_name": "ofRpcMethodTemplate",
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
  "slug": "ofrpcmethodtemplate--a2b9b6f5b06d444b9b736f14",
  "source": {
    "blob": "c89227a7a9fedd19613811d3feed357fdbf94b19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfRpcMethod/Variant20137613a18618936439db8b1ba8e99a39c819ec32ebfa5821964d7c512ebf95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2b9b6f5b06d444b9b736f14217fceb364a220481c708d2e980934df1802fb2c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfRpcMethod/Variant20137613a18618936439db8b1ba8e99a39c819ec32ebfa5821964d7c512ebf95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56d31ac3d3505097c0adfddf955df90a3dc193cde4395dcda1ac0728f504ac3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def ofRpcMethodTemplate := include_str ".." / ".." / "widget" / "js" / "ofRpcMethod.js"

/-- The elaborator `mk_rpc_widget%` allows writing certain widgets in Lean instead of JavaScript.
Specifically, it translates an RPC method of type `MyProps → RequestM (RequestTask Html)`
into a widget component of type `Component MyProps`.

Even more specifically, we can write:
```lean
open Lean Server

structure MyProps where
  ...
  deriving RpcEncodable

@[server_rpc_method]
def MyComponent.rpc (ps : MyProps) : RequestM (RequestTask Html) :=
  ...

@[widget_module]
def MyComponent : Component MyProps :=
  mk_rpc_widget% MyComponent.rpc
```

This is convenient because we can program the logic that computes an output HTML tree
given input props in Lean directly.

⚠️ However, note that there are several limitations on what such component can do
compared to ones written natively in TypeScript or JavaScript:
- It must be pure, i.e. cannot directly store any React state.
  Child components may store state as usual.
- It cannot pass closures as props to the child components that it returns.
  For example, it is not currently possible to write click event handlers in Lean
  and pass them to a `<button onClick={..}>` child.
- Every time the input props change, the infoview has to send a message to the Lean server
  in order to invoke the RPC method.
  Thus there can be a noticeable visual delay between the input props changing
  and the display updating.
  Consequently, components whose props change at a high frequency
  (e.g. depending on the mouse position)
  should not be implemented using this method.

💡 Note that an inverse transformation is already possible.
Given `MyComponent : Component MyProps`, we can write:
```lean
open Lean Server

@[server_rpc_method]
def MyComponent.rpc (ps : MyProps) : RequestM (RequestTask Html) :=
  RequestM.asTask do
    return Html.ofComponent MyComponent ps #[]
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfRpcMethod/Variant20137613a18618936439db8b1ba8e99a39c819ec32ebfa5821964d7c512ebf95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfRpcMethod/Variant20137613a18618936439db8b1ba8e99a39c819ec32ebfa5821964d7c512ebf95.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c89227a7a9fedd19613811d3feed357fdbf94b19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
