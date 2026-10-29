-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NameMapAttributeImpl.Variant579dc6c8a5e9b0d55fd07e7407e80899ea9e89fa89a5c69000ab30d518635785","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"579dc6c8a5e9b0d55fd07e7407e80899ea9e89fa89a5c69000ab30d518635785","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.NameMapAttributeImpl.Variant579dc6c8a5e9b0d55fd07e7407e80899ea9e89fa89a5c69000ab30d518635785","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"579dc6c8a5e9b0d55fd07e7407e80899ea9e89fa89a5c69000ab30d518635785","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Lean/NameMapAttribute.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 E.W.Ayers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: E.W.Ayers
-/
module

public import Lean.Attributes


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NameMapAttributeImpl.Variant579dc6c8a5e9b0d55fd07e7407e80899ea9e89fa89a5c69000ab30d518635785

@[expose] public section

namespace Lean

/-- Environment extension that maps declaration names to `α`.
This uses a `Thunk` to avoid computing the name map when it isn't used. -/
def NameMapExtension (α : Type) := SimplePersistentEnvExtension (Name × α) (Thunk (NameMap α))

instance : Inhabited (NameMapExtension α) :=
  inferInstanceAs <| Inhabited (SimplePersistentEnvExtension ..)

/-- Look up a value in the given extension in the environment. -/
def NameMapExtension.find? (ext : NameMapExtension α) (env : Environment) : Name → Option α :=
  (SimplePersistentEnvExtension.getState ext env).get.find?

/-- Add the given k,v pair to the NameMapExtension. -/
def NameMapExtension.add [Monad M] [MonadEnv M] [MonadError M]
  (ext : NameMapExtension α) (k : Name) (v : α) :  M Unit := do
  if let some _ := ext.find? (← getEnv) k then
    throwError "Already exists entry for {ext.name} {k}"
  else
     ext.addEntry (← getEnv) (k, v) |> setEnv

/-- Registers a new extension with the given name and type. -/
def registerNameMapExtension (α) (name : Name := by exact decl_name%) :
    IO (NameMapExtension α) := do
  registerSimplePersistentEnvExtension {
    name
    addImportedFn arr := .mk fun _ => arr.foldl (·.insertMany ·) ∅
    addEntryFn s n := s.map (·.insert n.1 n.2)
  }

/-- The inputs to `registerNameMapAttribute`. -/
structure NameMapAttributeImpl (α : Type) where
  /-- The name of the attribute -/
  name : Name
  /-- The declaration which creates the attribute -/
  ref : Name := by exact decl_name%
  /-- The description of the attribute -/
  descr : String
  /-- This function is called when the attribute is applied.
  It should produce a value of type `α` from the given attribute syntax. -/
  add (src : Name) (stx : Syntax) : AttrM α
  deriving Inhabited

/-- Similar to `registerParametricAttribute` except that attributes do not
have to be assigned in the same file as the declaration. -/
def registerNameMapAttribute (impl : NameMapAttributeImpl α) : IO (NameMapExtension α) := do
  let ext ← registerNameMapExtension α impl.ref
  registerBuiltinAttribute {
    name := impl.name
    descr := impl.descr
    add := fun src stx _kind => do
      let a : α ← impl.add src stx
      ext.add src a
  }
  return ext
