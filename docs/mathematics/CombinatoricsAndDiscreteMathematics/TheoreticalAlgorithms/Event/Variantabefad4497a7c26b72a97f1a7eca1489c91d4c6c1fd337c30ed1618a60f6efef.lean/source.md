# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Event.Variantabefad4497a7c26b72a97f1a7eca1489c91d4c6c1fd337c30ed1618a60f6efef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dccf4a7e0405a9d9c9109a2273ff55df896766a0` · SHA-256 `2747e3567cbaeb04840618c76eae7c4b1eda714aa4959c40e1b3812476672769`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EventEmitter.Variant4b865406f5240b7a4bc6d5b095f68c72edda353ef1d824e320755ecd398e5808","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4b865406f5240b7a4bc6d5b095f68c72edda353ef1d824e320755ecd398e5808","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.EventEmitter.Variant4b865406f5240b7a4bc6d5b095f68c72edda353ef1d824e320755ecd398e5808","mathematical_subject":"Computation.DataStructures","original_sha256":"4b865406f5240b7a4bc6d5b095f68c72edda353ef1d824e320755ecd398e5808","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/tools/LeanEnvironmentExtractElements/Event.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean

/-!
# Bounded compiled-environment events

The compiled Lean environment is emitted as a stream of small events.  Local
handles exist only for the lifetime of one stream; the Rust router replaces
them with content-addressed element keys before anything is persisted.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EventEmitter.Variant4b865406f5240b7a4bc6d5b095f68c72edda353ef1d824e320755ecd398e5808

open Lean

namespace MathematicsLeanEnvironmentExtractElements

def inlineScalarBytes : Nat := 4096

structure EventEmitter where
  nextHandle : IO.Ref Nat

def EventEmitter.create : IO EventEmitter := do
  return { nextHandle := ← IO.mkRef 0 }

def EventEmitter.fresh (emitter : EventEmitter) : IO Nat := do
  let handle ← emitter.nextHandle.get
  emitter.nextHandle.set (handle + 1)
  return handle

def EventEmitter.emit (_emitter : EventEmitter) (event : Json) : IO Unit :=
  IO.println event.compress

private partial def charChunks : List Char → List String
  | [] => []
  | characters =>
      let (head, tail) := characters.splitAt 1024
      String.ofList head :: charChunks tail

def EventEmitter.scalarField (emitter : EventEmitter) (value : String) : IO Json := do
  let bytes := value.toUTF8.size
  if bytes ≤ inlineScalarBytes then
    return Json.mkObj [
      ("kind", toJson "scalar"),
      ("value", toJson value)
    ]
  let mut handles := #[]
  for chunk in charChunks value.toList do
    let handle ← emitter.fresh
    emitter.emit <| Json.mkObj [
      ("event", toJson "scalar-chunk"),
      ("handle", toJson handle),
      ("utf8", toJson chunk)
    ]
    handles := handles.push handle
  return Json.mkObj [
    ("chunkHandles", toJson handles),
    ("kind", toJson "chunked-scalar"),
    ("utf8Bytes", toJson bytes)
  ]

def childField (handle : Nat) : Json :=
  Json.mkObj [
    ("handle", toJson handle),
    ("kind", toJson "child")
  ]

def EventEmitter.node
    (emitter : EventEmitter) (tag : String) (fields : Array Json := #[]) : IO Nat := do
  let handle ← emitter.fresh
  emitter.emit <| Json.mkObj [
    ("event", toJson "node"),
    ("fields", toJson fields),
    ("handle", toJson handle),
    ("tag", toJson tag)
  ]
  return handle

end MathematicsLeanEnvironmentExtractElements
```
