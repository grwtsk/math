# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanOptions.Variantf01a44e61d26ae2ffa4cd8d0795663649016da2f108841241a934ddf45b03e74

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad970e9758cad34078ac93efbd4802ec85d782bc` · SHA-256 `95cc93d57038c3800138e6e7a1ccfcb0420f815a5087740bc297b451c3412cab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanOptionValue.Variant801fdd22788045c918d75bb4a2af201b3f0d50ce31a35749081491d8819001eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"801fdd22788045c918d75bb4a2af201b3f0d50ce31a35749081491d8819001eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LeanOptionValue.Variant801fdd22788045c918d75bb4a2af201b3f0d50ce31a35749081491d8819001eb","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"801fdd22788045c918d75bb4a2af201b3f0d50ce31a35749081491d8819001eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/LeanOptions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Marc Huisinga
-/
module

prelude
public import Lean.Data.Json.FromToJson.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanOptionValue.Variant801fdd22788045c918d75bb4a2af201b3f0d50ce31a35749081491d8819001eb

public section

namespace Lean

/-- Restriction of `DataValue` that covers exactly those cases that Lean is able to handle when passed via the `-D` flag. -/
inductive LeanOptionValue where
  | ofString (s : String)
  | ofBool   (b : Bool)
  | ofNat    (n : Nat)
  deriving Inhabited, Repr

def LeanOptionValue.ofDataValue? : DataValue → Option LeanOptionValue
  | .ofString s => some (.ofString s)
  | .ofBool b   => some (.ofBool b)
  | .ofNat n    => some (.ofNat n)
  | _           => none

def LeanOptionValue.toDataValue : LeanOptionValue → DataValue
  | .ofString s => .ofString s
  | .ofBool b   => .ofBool b
  | .ofNat n    => .ofNat n

instance : KVMap.Value LeanOptionValue where
  toDataValue  := LeanOptionValue.toDataValue
  ofDataValue? := LeanOptionValue.ofDataValue?

instance : Coe String LeanOptionValue where
  coe := LeanOptionValue.ofString

instance : Coe Bool LeanOptionValue where
  coe := LeanOptionValue.ofBool

instance : Coe Nat LeanOptionValue where
  coe := LeanOptionValue.ofNat

instance {n : Nat} : OfNat LeanOptionValue n where
  ofNat := .ofNat n

instance : FromJson LeanOptionValue where
  fromJson?
    | (s : String) => Except.ok s
    | (b : Bool)   => Except.ok b
    | (n : Nat)    => Except.ok n
    | _ => Except.error "invalid LeanOptionValue type"

instance : ToJson LeanOptionValue where
  toJson
    | (s : String) => s
    | (b : Bool)   => b
    | (n : Nat)    => n

/-- Formats the lean option value as a CLI flag argument. -/
def LeanOptionValue.asCliFlagValue : (v : LeanOptionValue) → String
  | (s : String) => s!"\"{s}\""
  | (b : Bool)   => toString b
  | (n : Nat)    => toString n

/-- An option that is used by Lean as if it was passed using `-D`. -/
structure LeanOption where
  /-- The option's name. -/
  name  : Lean.Name
  /-- The option's value. -/
  value : Lean.LeanOptionValue
  deriving Inhabited, Repr

/-- Formats the lean option as a CLI argument using the `-D` flag. -/
def LeanOption.asCliArg (o : LeanOption) : String :=
  s!"-D{o.name}={o.value.asCliFlagValue}"

/-- Options that are used by Lean as if they were passed using `-D`. -/
structure LeanOptions where
  values : NameMap LeanOptionValue
  deriving Inhabited, Repr

instance : EmptyCollection LeanOptions := ⟨⟨∅⟩⟩

def LeanOptions.ofArray (opts : Array LeanOption) : LeanOptions :=
  ⟨opts.foldl (fun m {name, value} => m.insert name value) {}⟩

/-- Add the options from `new`, overriding those in `self`. -/
protected def LeanOptions.append (self new : LeanOptions) : LeanOptions :=
  ⟨self.values.mergeWith (fun _ _ b => b) new.values⟩

instance : Append LeanOptions := ⟨LeanOptions.append⟩

/-- Add the options from `new`, overriding those in `self`. -/
def LeanOptions.appendArray (self : LeanOptions) (new : Array LeanOption) : LeanOptions :=
  ⟨new.foldl (fun m {name, value} => m.insert name value) self.values⟩

instance : HAppend LeanOptions (Array LeanOption) LeanOptions := ⟨LeanOptions.appendArray⟩

def LeanOptions.toOptions (leanOptions : LeanOptions) : Options := Id.run do
  let mut options := Options.empty
  for ⟨name, optionValue⟩ in leanOptions.values do
    options := options.set name optionValue.toDataValue
  return options

def LeanOptions.fromOptions? (options : Options) : Option LeanOptions := do
  let mut values := Std.TreeMap.empty
  for ⟨name, dataValue⟩ in options do
    let optionValue ← LeanOptionValue.ofDataValue? dataValue
    values := values.insert name optionValue
  return ⟨values⟩

instance : FromJson LeanOptions where
  fromJson? j := LeanOptions.mk <$> fromJson? j

instance : ToJson LeanOptions where
  toJson options := toJson options.values

end Lean
```
