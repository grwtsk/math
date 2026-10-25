# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Class.Variantd3f8653c5a04a71814ccba0d02f9c4def8cafde04e7886251611b628f9021b32

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea80920437cfbe3e9eaa02267c39b63f998dee24` · SHA-256 `103ccdbe44aa9fec276d49b0812b07ca95c3270bc8c9f1344b7c30ead58c3b54`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClassEntry.Variantfe9fffe09eaf5bebd914e0b41c116cf77dd2df1448c629c49aa0ea14ac98115e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe9fffe09eaf5bebd914e0b41c116cf77dd2df1448c629c49aa0ea14ac98115e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ClassEntry.Variantfe9fffe09eaf5bebd914e0b41c116cf77dd2df1448c629c49aa0ea14ac98115e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fe9fffe09eaf5bebd914e0b41c116cf77dd2df1448c629c49aa0ea14ac98115e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Class.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Attributes
import Lean.Util.CollectLevelParams

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClassEntry.Variantfe9fffe09eaf5bebd914e0b41c116cf77dd2df1448c629c49aa0ea14ac98115e

public section
namespace Lean

/-- An entry for the persistent environment extension for declared type classes -/
structure ClassEntry where
  /-- Class name. -/
  name      : Name
  /--
  Position of the class `outParams`.
  For example, for class
  ```
  class GetElem (cont : Type u) (idx : Type v) (elem : outParam (Type w)) (dom : outParam (cont → idx → Prop)) where
  ```
  `outParams := #[2, 3]`
  -/
  outParams : Array Nat
  /--
  Positions of universe level parameters that only appear in output parameter types.
  For example, for `HAdd (α : Type u) (β : Type v) (γ : outParam (Type w))`,
  `outLevelParams := #[2]` since universe `w` only appears in the output parameter `γ`.
  This is used to normalize TC resolution cache keys.
  -/
  outLevelParams : Array Nat

namespace ClassEntry

def lt (a b : ClassEntry) : Bool :=
  Name.quickLt a.name b.name

end ClassEntry

/-- State of the type class environment extension. -/
structure ClassState where
  outParamMap : SMap Name (Array Nat) := SMap.empty
  outLevelParamMap : SMap Name (Array Nat) := SMap.empty
  deriving Inhabited

namespace ClassState

def addEntry (s : ClassState) (entry : ClassEntry) : ClassState :=
  { s with
    outParamMap := s.outParamMap.insert entry.name entry.outParams
    outLevelParamMap := s.outLevelParamMap.insert entry.name entry.outLevelParams }

/--
Switch the state into persistent mode. We switch to this mode after
we read all imported .olean files.
Recall that we use a `SMap` for implementing the state of the type class environment extension.
-/
def switch (s : ClassState) : ClassState :=
  { s with
    outParamMap := s.outParamMap.switch
    outLevelParamMap := s.outLevelParamMap.switch }

end ClassState

/--
Type class environment extension
-/
-- TODO: add support for scoped instances
builtin_initialize classExtension : SimplePersistentEnvExtension ClassEntry ClassState ←
  registerSimplePersistentEnvExtension {
    addEntryFn    := ClassState.addEntry
    addImportedFn := fun es => (mkStateFromImportedEntries ClassState.addEntry {} es).switch
  }

/-- Return `true` if `n` is the name of type class in the given environment. -/
def isClass (env : Environment) (n : Name) : Bool :=
  (classExtension.getState env).outParamMap.contains n

/-- If `declName` is a class, return the position of its `outParams`. -/
def getOutParamPositions? (env : Environment) (declName : Name) : Option (Array Nat) :=
  (classExtension.getState env).outParamMap.find? declName

/-- Return `true` if the given `declName` is a type class with output parameters. -/
def hasOutParams (env : Environment) (declName : Name) : Bool :=
  match getOutParamPositions? env declName with
  | some outParams => !outParams.isEmpty
  | none => false

/-- If `declName` is a class, return the positions of universe level parameters that only appear in output parameter types. -/
def getOutLevelParamPositions? (env : Environment) (declName : Name) : Option (Array Nat) :=
  (classExtension.getState env).outLevelParamMap.find? declName

/--
  Auxiliary function for collection the position class `outParams`, and
  checking whether they are being correctly used.
  A regular (i.e., non `outParam`) must not depend on an `outParam`.
  Reason for this restriction:
  When performing type class resolution, we replace arguments that
  are `outParam`s with fresh metavariables. If regular parameters could
  depend on `outParam`s, then we would also have to replace them with
  fresh metavariables. Otherwise, the resulting expression could be type
  incorrect. This transformation would be counterintuitive to users since
  we would implicitly treat these regular parameters as `outParam`s.
-/
private partial def checkOutParam (i : Nat) (outParamFVarIds : Array FVarId) (outParams : Array Nat) (type : Expr) : Except MessageData (Array Nat) :=
  match type with
  | .forallE _ d b bi =>
    let addOutParam (_ : Unit) :=
      let fvarId := { name := Name.mkNum `_fvar outParamFVarIds.size }
      let fvar      := mkFVar fvarId
      let b         := b.instantiate1 fvar
      checkOutParam (i+1) (outParamFVarIds.push fvarId) (outParams.push i) b
    if d.isOutParam then
      addOutParam ()
    else if d.hasAnyFVar fun fvarId => outParamFVarIds.contains fvarId then
      if bi.isInstImplicit then
        /- See issue #1852 for a motivation for `bi.isInstImplicit` -/
        addOutParam ()
      else
        Except.error m!"invalid class, parameter #{i+1} depends on `outParam`, but it is not an `outParam`"
    else
      checkOutParam (i+1) outParamFVarIds outParams b
  | _ => return outParams

/--
Compute positions of universe level parameters that only appear in output parameter types.

During type class resolution, the cache key for a query like
`HAppend.{0, 0, ?u} (BitVec 8) (BitVec 8) ?m` should be independent of the specific
metavariable IDs in output parameter positions. To achieve this, output parameter arguments
are erased from the cache key. However, universe levels that only appear in output parameter
types (e.g., `?u` corresponding to the result type's universe) must also be erased to avoid
cache misses when the same query is issued with different universe metavariable IDs.

This function identifies which universe level parameter positions are "output-only" by
collecting all level param names that appear in non-output parameter domains, then returning
the positions of any level params not in that set.
-/
private partial def computeOutLevelParams (type : Expr) (outParams : Array Nat) (levelParams : List Name) : Array Nat := Id.run do
  let nonOutLevels := go type 0 {} |>.params
  let mut result := #[]
  let mut i := 0
  for name in levelParams do
    unless nonOutLevels.contains name do
      result := result.push i
    i := i + 1
  result
where
  go (type : Expr) (i : Nat) (s : CollectLevelParams.State) : CollectLevelParams.State :=
    match type with
    | .forallE _ d b _ =>
      if outParams.contains i then
        go b (i + 1) s
      else
        go b (i + 1) (collectLevelParams s d)
    | _ => s

/--
Add a new type class with the given name to the environment.
`declName` must not be the name of an existing type class,
and it must be the name of constant in `env`.
`declName` must be a inductive datatype or axiom.
Recall that all structures are inductive datatypes.
-/
def addClass (env : Environment) (clsName : Name) : Except MessageData Environment := do
  if isClass env clsName then
    throw m!"class has already been declared '{.ofConstName clsName true}'"
  let some decl := env.find? clsName
    | throw m!"unknown declaration '{clsName}'"
  unless decl matches .inductInfo .. | .axiomInfo .. do
    throw m!"invalid 'class', declaration '{.ofConstName clsName}' must be inductive datatype, structure, or constant"
  let outParams ← checkOutParam 0 #[] #[] decl.type
  let outLevelParams := computeOutLevelParams decl.type outParams decl.levelParams
  return classExtension.addEntry env { name := clsName, outParams, outLevelParams }

/--
Registers an inductive type or structure as a type class. Using `class` or `class inductive` is
generally preferred over using `@[class] structure` or `@[class] inductive` directly.
-/
@[builtin_init, builtin_doc]
private def init :=
  registerBuiltinAttribute {
    name  := `class
    descr := "type class"
    add   := fun decl stx kind => do
      let env ← getEnv
      Attribute.Builtin.ensureNoArgs stx
      unless kind == AttributeKind.global do throwAttrMustBeGlobal `class kind
      let env ← ofExcept (addClass env decl)
      setEnv env
  }

builtin_initialize
  registerBuiltinAttribute {
    name  := `univ_out_params
    descr := "universe output parameters for a type class"
    add   := fun decl stx kind => do
      unless kind == AttributeKind.global do throwAttrMustBeGlobal `univ_out_params kind
      let env ← getEnv
      unless isClass env decl do
        throwError "invalid `univ_out_params`, `{decl}` is not a class"
      let info ← getConstInfo decl
      let us := info.levelParams
      let args := stx[1].getArgs
      args.forM fun arg => do
        unless us.contains arg.getId do
          throwErrorAt arg "`{arg}` is not a universe parameter of `{decl}`"
      let args := args.map (·.getId)
      let mut outLevelParams : Array Nat := #[]
      let mut i := 0
      for u in us do
        if args.contains u then
          outLevelParams := outLevelParams.push i
        i := i + 1
      let outParams := getOutParamPositions? env decl |>.getD #[]
      modifyEnv fun env => classExtension.addEntry env { name := decl, outParams, outLevelParams }
  }

end Lean
````
