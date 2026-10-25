# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.JsonObject.Variantc1f3f1372d6e3c873b3ad3b69e92b69e9584ae0094fd3c578b45c99223755b26

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7bffa875c135e50cc3eb8fc872c75e7e04d13533` · SHA-256 `d8aa573c3fbeaae94821713212f8b01da46990d63a045a7b007b7a77b6f96c74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.JsonObject.Variant0dce706c4b7333d1f60888d5440bc943279db4dd40ebc7c73bfae10c7c952edf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0dce706c4b7333d1f60888d5440bc943279db4dd40ebc7c73bfae10c7c952edf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.JsonObject.Variant0dce706c4b7333d1f60888d5440bc943279db4dd40ebc7c73bfae10c7c952edf","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"0dce706c4b7333d1f60888d5440bc943279db4dd40ebc7c73bfae10c7c952edf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Util/JsonObject.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lean.Data.Json


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.JsonObject.Variant0dce706c4b7333d1f60888d5440bc943279db4dd40ebc7c73bfae10c7c952edf

open Lean

/-! # JSON Object
Defines a convenient wrapper type for JSON object data that makes
indexing fields more convenient.
-/

namespace Lake

/-- A JSON object (`Json.obj` data). -/
public abbrev JsonObject :=
  Std.TreeMap.Raw String Json

namespace JsonObject

@[inline] public def mk (val : Std.TreeMap.Raw String Json) : JsonObject :=
  val

@[inline] public def empty : JsonObject :=
  Std.TreeMap.Raw.empty

@[inline] public protected def toJson (obj : JsonObject) : Json :=
  .obj obj

public instance : Coe JsonObject Json := ⟨Json.obj⟩
public instance : ToJson JsonObject := ⟨JsonObject.toJson⟩

@[inline] public protected def fromJson? (json : Json) : Except String JsonObject :=
  json.getObj?

public instance : FromJson JsonObject := ⟨JsonObject.fromJson?⟩

@[inline] public nonrec def contains (obj : JsonObject) (prop : String) : Bool :=
  obj.contains prop

public def insertJson (obj : JsonObject) (prop : String) (val : Json) : JsonObject :=
  obj.insert prop (toJson val) -- specializes `insert`

@[inline] public def insert [ToJson α] (obj : JsonObject) (prop : String) (val : α) : JsonObject :=
  obj.insertJson prop (toJson val)

@[inline] public def insertSome [ToJson α] (obj : JsonObject) (prop : String) (val? : Option α) : JsonObject :=
  if let some val := val? then obj.insert prop val else obj

public nonrec def erase (obj : JsonObject) (prop : String) : JsonObject :=
  obj.erase prop -- specializes `erase`

public def getJson? (obj : JsonObject) (prop : String) : Option Json :=
  obj.get? prop -- specializes `get?`

@[inline] public def get [FromJson α] (obj : JsonObject) (prop : String) : Except String α :=
  match obj.getJson? prop with
  | none => throw s!"property not found: {prop}"
  | some val => fromJson? val |>.mapError (s!"{prop}: {·}")

@[inline] public def getAs (α) [FromJson α] (obj : JsonObject) (prop : String) : Except String α :=
  obj.get prop

@[inline] public def get? [FromJson α] (obj : JsonObject) (prop : String) : Except String (Option α) :=
  match obj.getJson? prop with
  | none => pure none
  | some val => fromJson? val |>.mapError (s!"{prop}: {·}")

@[inline] public def getAs? (α) [FromJson α] (obj : JsonObject) (prop : String) : Except String (Option α) :=
  obj.get? prop

@[macro_inline, expose] public def getD [FromJson α] (obj : JsonObject) (prop : String) (default : α) : Except String α := do
  return (← obj.get? prop).getD default
```
