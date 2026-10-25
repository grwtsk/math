# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NameMapAttribute.Variantbfcff86915f27776f384fb57e2b092f5671b975761d9322124fbaa9d18fb0ff2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c712fee309ef19842a6ce4116af11f4ef7860957` · SHA-256 `25504c5e0c6907a408d37c37119be9336b157e12c9e583a0f1b86291e5756fe7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NameMapAttributeImpl.Variant96528da8c2d72c1ed733e3b1b19cf5cf84fb89bac24383e0aa3c59ef12b80f5f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"96528da8c2d72c1ed733e3b1b19cf5cf84fb89bac24383e0aa3c59ef12b80f5f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.NameMapAttributeImpl.Variant96528da8c2d72c1ed733e3b1b19cf5cf84fb89bac24383e0aa3c59ef12b80f5f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"96528da8c2d72c1ed733e3b1b19cf5cf84fb89bac24383e0aa3c59ef12b80f5f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/NameMapAttribute.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 E.W.Ayers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: E.W.Ayers
-/
import Lean.Attributes


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NameMapAttributeImpl.Variant96528da8c2d72c1ed733e3b1b19cf5cf84fb89bac24383e0aa3c59ef12b80f5f

namespace Lean

/-- Maps declaration names to `α`. -/
def NameMapExtension (α : Type) := SimplePersistentEnvExtension (Name × α) (NameMap α)

instance : Inhabited (NameMapExtension α) :=
  inferInstanceAs <| Inhabited (SimplePersistentEnvExtension ..)

/-- Look up a value in the given extension in the environment. -/
def NameMapExtension.find? (ext : NameMapExtension α) (env : Environment) : Name → Option α :=
  (SimplePersistentEnvExtension.getState ext env).find?

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
    addImportedFn := fun ass =>
      ass.foldl (init := ∅) fun names as =>
        as.foldl (init := names) fun names (a, b) => names.insert a b
    addEntryFn    := fun s n => s.insert n.1 n.2
    toArrayFn     := fun es => es.toArray
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
```
