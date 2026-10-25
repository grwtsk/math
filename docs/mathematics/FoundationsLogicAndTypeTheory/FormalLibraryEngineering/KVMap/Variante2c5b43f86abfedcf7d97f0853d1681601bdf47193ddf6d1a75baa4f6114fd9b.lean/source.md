# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KVMap.Variante2c5b43f86abfedcf7d97f0853d1681601bdf47193ddf6d1a75baa4f6114fd9b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `985f497846395faa26aaf978e54239cacf25cf11` · SHA-256 `b62fd5e7ea50e8d4297e1d18774a1b9804ff1a028700531a99349c320dcba313`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DataValue.Variant41b05306978e2acf64a482d7521958ee73bbee345e8af45530e23cab7867730e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"41b05306978e2acf64a482d7521958ee73bbee345e8af45530e23cab7867730e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DataValue.Variant41b05306978e2acf64a482d7521958ee73bbee345e8af45530e23cab7867730e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"41b05306978e2acf64a482d7521958ee73bbee345e8af45530e23cab7867730e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/KVMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Data.Format.Syntax
public import Init.Data.ToString.Name
public import Init.Data.ToString.Extra


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DataValue.Variant41b05306978e2acf64a482d7521958ee73bbee345e8af45530e23cab7867730e

public section

namespace Lean

/-- Value stored in a key-value map. -/
inductive DataValue where
  | ofString (v : String)
  | ofBool   (v : Bool)
  | ofName   (v : Name)
  | ofNat    (v : Nat)
  | ofInt    (v : Int)
  | ofSyntax (v : Syntax)
  deriving Inhabited, BEq, Repr

@[export lean_data_value_beq]
def DataValue.beqExp (a b : DataValue) : Bool :=
  a == b

@[export lean_mk_bool_data_value] def mkBoolDataValueEx (b : Bool) : DataValue := DataValue.ofBool b
@[export lean_data_value_bool] def DataValue.getBoolEx : DataValue → Bool
  | DataValue.ofBool b => b
  | _                  => false

def DataValue.sameCtor : DataValue → DataValue → Bool
  | .ofString _, .ofString _ => true
  | .ofBool _,   .ofBool _   => true
  | .ofName _,   .ofName _   => true
  | .ofNat _,    .ofNat _    => true
  | .ofInt _,    .ofInt _    => true
  | .ofSyntax _, .ofSyntax _ => true
  | _,           _           => false

@[export lean_data_value_to_string]
def DataValue.str : DataValue → String
  | .ofString v => v
  | .ofBool v   => toString v
  | .ofName v   => toString v
  | .ofNat v    => toString v
  | .ofInt v    => toString v
  | .ofSyntax v => toString v

instance : ToString DataValue := ⟨DataValue.str⟩

instance : Coe String DataValue := ⟨.ofString⟩
instance : Coe Bool DataValue   := ⟨.ofBool⟩
instance : Coe Name DataValue   := ⟨.ofName⟩
instance : Coe Nat DataValue    := ⟨.ofNat⟩
instance : Coe Int DataValue    := ⟨.ofInt⟩
instance : Coe Syntax DataValue := ⟨.ofSyntax⟩


/--
A key-value map. We use it to represent user-selected options and `Expr.mdata`.

Remark: we do not use a Lean `Std.TreeMap` here because we need to manipulate `KVMap` objects in
C++ and `Std.TreeMap` is implemented in Lean. So, we use just a `List` until we can
generate C++ code from Lean code.
-/
structure KVMap where
  entries : List (Name × DataValue) := []
  deriving Inhabited, Repr

namespace KVMap
instance : ToString KVMap := ⟨fun m => toString m.entries⟩

def empty : KVMap :=
  {}

def isEmpty : KVMap → Bool
  | ⟨m⟩ => m.isEmpty

def size (m : KVMap) : Nat :=
  m.entries.length

def findCore : List (Name × DataValue) → Name → Option DataValue
  | [],       _  => none
  | (k,v)::m, k' => if k == k' then some v else findCore m k'

def find : KVMap → Name → Option DataValue
  | ⟨m⟩, k => findCore m k

def findD (m : KVMap) (k : Name) (d₀ : DataValue) : DataValue :=
  (m.find k).getD d₀

def insertCore : List (Name × DataValue) → Name → DataValue → List (Name × DataValue)
  | [],       k', v' => [(k',v')]
  | (k,v)::m, k', v' => if k == k' then (k, v') :: m else (k, v) :: insertCore m k' v'

def insert : KVMap → Name → DataValue → KVMap
  | ⟨m⟩, k, v => ⟨insertCore m k v⟩

def contains (m : KVMap) (n : Name) : Bool :=
  (m.find n).isSome

/-- Erase an entry from the map -/
def erase : KVMap → Name → KVMap
  | ⟨m⟩, k => ⟨m.filter fun a => a.1 ≠ k⟩

def getString (m : KVMap) (k : Name) (defVal := "") : String :=
  match m.find k with
  | some (DataValue.ofString v) => v
  | _                           => defVal

def getNat (m : KVMap) (k : Name) (defVal := 0) : Nat :=
  match m.find k with
  | some (DataValue.ofNat v) => v
  | _                        => defVal

def getInt (m : KVMap) (k : Name) (defVal : Int := 0) : Int :=
  match m.find k with
  | some (DataValue.ofInt v) => v
  | _                        => defVal

def getBool (m : KVMap) (k : Name) (defVal := false) : Bool :=
  match m.find k with
  | some (DataValue.ofBool v) => v
  | _                         => defVal

def getName (m : KVMap) (k : Name) (defVal := Name.anonymous) : Name :=
  match m.find k with
  | some (DataValue.ofName v) => v
  | _                         => defVal

def getSyntax (m : KVMap) (k : Name) (defVal := Syntax.missing) : Syntax :=
  match m.find k with
  | some (DataValue.ofSyntax v) => v
  | _                           => defVal

def setString (m : KVMap) (k : Name) (v : String) : KVMap :=
  m.insert k (DataValue.ofString v)

def setNat (m : KVMap) (k : Name) (v : Nat) : KVMap :=
  m.insert k (DataValue.ofNat v)

def setInt (m : KVMap) (k : Name) (v : Int) : KVMap :=
  m.insert k (DataValue.ofInt v)

def setBool (m : KVMap) (k : Name) (v : Bool) : KVMap :=
  m.insert k (DataValue.ofBool v)

def setName (m : KVMap) (k : Name) (v : Name) : KVMap :=
  m.insert k (DataValue.ofName v)

def setSyntax (m : KVMap) (k : Name) (v : Syntax) : KVMap :=
  m.insert k (DataValue.ofSyntax v)

/-- Update a `String` entry based on its current value. -/
def updateString (m : KVMap) (k : Name) (f : String → String) : KVMap :=
  m.insert k <| DataValue.ofString <| f <| m.getString k

/-- Update a `Nat` entry based on its current value. -/
def updateNat (m : KVMap) (k : Name) (f : Nat → Nat) : KVMap :=
  m.insert k <| DataValue.ofNat <| f <| m.getNat k

/-- Update an `Int` entry based on its current value. -/
def updateInt (m : KVMap) (k : Name) (f : Int → Int) : KVMap :=
  m.insert k <| DataValue.ofInt <| f <| m.getInt k

/-- Update a `Bool` entry based on its current value. -/
def updateBool (m : KVMap) (k : Name) (f : Bool → Bool) : KVMap :=
  m.insert k <| DataValue.ofBool <| f <| m.getBool k

/-- Update a `Name` entry based on its current value. -/
def updateName (m : KVMap) (k : Name) (f : Name → Name) : KVMap :=
  m.insert k <| DataValue.ofName <| f <| m.getName k

/-- Update a `Syntax` entry based on its current value. -/
def updateSyntax (m : KVMap) (k : Name) (f : Syntax → Syntax) : KVMap :=
  m.insert k <| DataValue.ofSyntax <| f <| m.getSyntax k

@[inline] protected def forIn.{w, w'} {δ : Type w} {m : Type w → Type w'} [Monad m]
  (kv : KVMap) (init : δ) (f : Name × DataValue → δ → m (ForInStep δ)) : m δ :=
  forIn kv.entries init f

instance [Monad m] : ForIn m KVMap (Name × DataValue) where
  forIn := KVMap.forIn

def subsetAux : List (Name × DataValue) → KVMap → Bool
  | [],          _  => true
  | (k, v₁)::m₁, m₂ =>
    match m₂.find k with
    | some v₂ => v₁ == v₂ && subsetAux m₁ m₂
    | none    => false

def subset : KVMap → KVMap → Bool
  | ⟨m₁⟩, m₂ => subsetAux m₁ m₂

def mergeBy (mergeFn : Name → DataValue → DataValue → DataValue) (l r : KVMap)
    : KVMap := Id.run do
  let mut result := l
  for ⟨k, vᵣ⟩ in r do
    if let some vₗ := result.find k then
      result := result.insert k (mergeFn k vₗ vᵣ)
    else
      result := result.insert k vᵣ
  return result

def eqv (m₁ m₂ : KVMap) : Bool :=
  subset m₁ m₂ && subset m₂ m₁

instance : BEq KVMap where
  beq := eqv

class Value (α : Type) where
  toDataValue  : α → DataValue
  ofDataValue? : DataValue → Option α

@[inline] def get? {α : Type} [Value α] (m : KVMap) (k : Name) : Option α :=
  m.find k |>.bind Value.ofDataValue?

@[inline] def get {α : Type} [Value α] (m : KVMap) (k : Name) (defVal : α) : α :=
  m.get? k |>.getD defVal

@[inline] def set {α : Type} [Value α] (m : KVMap) (k : Name) (v : α) : KVMap :=
  m.insert k (Value.toDataValue v)

@[inline] def update {α : Type} [Value α] (m : KVMap) (k : Name) (f : Option α → Option α) : KVMap :=
  match f (m.get? k) with
  | some a => m.set k a
  | none => m.erase k

instance : Value DataValue where
  toDataValue  := id
  ofDataValue? := some

instance : Value Bool where
  toDataValue  := DataValue.ofBool
  ofDataValue?
    | DataValue.ofBool b => some b
    | _                  => none

instance : Value Nat where
  toDataValue  := DataValue.ofNat
  ofDataValue?
    | DataValue.ofNat n => some n
    | _                 => none

instance : Value Int where
  toDataValue  := DataValue.ofInt
  ofDataValue?
    | DataValue.ofInt i => some i
    | _                 => none

instance : Value Name where
  toDataValue  := DataValue.ofName
  ofDataValue?
    | DataValue.ofName n => some n
    | _                  => none

instance : Value String where
  toDataValue  := DataValue.ofString
  ofDataValue?
    | DataValue.ofString n => some n
    | _                    => none

instance : Value Syntax where
  toDataValue  := DataValue.ofSyntax
  ofDataValue?
    | DataValue.ofSyntax n => some n
    | _                    => none

end Lean.KVMap
```
