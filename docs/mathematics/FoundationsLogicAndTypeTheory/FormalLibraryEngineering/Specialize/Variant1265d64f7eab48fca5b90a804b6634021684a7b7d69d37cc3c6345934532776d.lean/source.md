# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Specialize.Variant1265d64f7eab48fca5b90a804b6634021684a7b7d69d37cc3c6345934532776d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19e35bcb874f4ea9fe920025996365fb022274b4` · SHA-256 `572ea609a6ee92465c0e68a76962603db4a58da18a4fdc6600d4ac8480a4df1b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SpecializeAttributeKind.Variant2c83cb2dba9fdd43fa971c78c1a9ced29265eba6bc8e6b6953eada13cffad3f9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2c83cb2dba9fdd43fa971c78c1a9ced29265eba6bc8e6b6953eada13cffad3f9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SpecializeAttributeKind.Variant2c83cb2dba9fdd43fa971c78c1a9ced29265eba6bc8e6b6953eada13cffad3f9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2c83cb2dba9fdd43fa971c78c1a9ced29265eba6bc8e6b6953eada13cffad3f9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/Specialize.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Basic
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SpecializeAttributeKind.Variant2c83cb2dba9fdd43fa971c78c1a9ced29265eba6bc8e6b6953eada13cffad3f9

public section

namespace Lean.Compiler

inductive SpecializeAttributeKind where
  | specialize | nospecialize
  deriving Inhabited, BEq

/--
Marks a definition to never be specialized during code generation.
-/
@[builtin_doc]
builtin_initialize nospecializeAttr : TagAttribute ←
  registerTagAttribute `nospecialize "mark definition to never be specialized"

/--
Marks a type for weak specialization: Parameters of this type are only specialized when
another argument already triggers specialization. Unlike `@[nospecialize]`, if specialization
happens for other reasons, parameters of this type will participate in the specialization
rather than being ignored.
-/
@[builtin_doc]
builtin_initialize weakSpecializeAttr : TagAttribute ←
  registerTagAttribute `weak_specialize
    "mark type for weak specialization: instances are only specialized when another argument already triggers specialization"

private def elabSpecArgs (declName : Name) (args : Array Syntax) : MetaM (Array Nat) := do
  if args.isEmpty then return #[]
  let info ← getConstInfo declName
  Meta.forallTelescopeReducing info.type fun xs _ => do
    let argNames ← xs.mapM fun x => x.fvarId!.getUserName
    let mut result := #[]
    for arg in args do
      if let some idx := arg.isNatLit? then
        if idx == 0 then throwErrorAt arg "Invalid specialization argument index `0`: Index must be greater than 0"
        let idx := idx - 1
        if h : idx >= argNames.size then
          throwErrorAt arg "Invalid argument index `{idx}`: `{.ofConstName declName}` has only {argNames.size} arguments"
        else
          if result.contains idx then throwErrorAt arg "Invalid specialization argument index `{idx + 1}`: \
            The argument at this index (`{argNames[idx]}`) has already been specified as a specialization candidate"
          result := result.push idx
      else
        let argName := arg.getId
        if let some idx := argNames.idxOf? argName then
          if result.contains idx then throwErrorAt arg "Invalid specialization argument name `{argName}`: \
            It has already been specified as a specialization candidate"
          result := result.push idx
        else
          throwErrorAt arg "Invalid specialization argument name `{argName}`: `{.ofConstName declName}` does not have an argument with this name"
    return result.qsort (·<·)

/--
Marks a definition to always be specialized during code generation.

Specialization is an optimization in the code generator for generating variants of a function that
are specialized to specific parameter values. This is in particular useful for functions that take
other functions as parameters: Usually when passing functions as parameters, a closure needs to be
allocated that will then be called. Using `@[specialize]` prevents both of these operations by
using the provided function directly in the specialization of the inner function.

`@[specialize]` can take additional arguments for the parameter names or indices (starting at 1) of
the parameters that should be specialized. By default, instance and function parameters are
specialized.
-/
@[builtin_doc]
builtin_initialize specializeAttr : ParametricAttribute (Array Nat) ←
  registerParametricAttribute {
    name := `specialize
    descr := "mark definition to always be specialized"
    getParam := fun declName stx => do
      let args := stx[1].getArgs
      elabSpecArgs declName args |>.run'
  }

def getSpecializationArgs? (env : Environment) (declName : Name) : Option (Array Nat) :=
  specializeAttr.getParam? env declName

def hasSpecializeAttribute (env : Environment) (declName : Name) : Bool :=
  getSpecializationArgs? env declName |>.isSome

def hasNospecializeAttribute (env : Environment) (declName : Name) : Bool :=
  nospecializeAttr.hasTag env declName

def hasWeakSpecializeAttribute (env : Environment) (declName : Name) : Bool :=
  weakSpecializeAttr.hasTag env declName

end Lean.Compiler
```
