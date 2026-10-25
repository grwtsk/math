# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NotationClass.Variant3773410b4d0659390eef762ae9406bb0471e400d5711e75d814f535910fdbf8d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e479ce85bd5e017caacd6053441e7fd9b828425` · SHA-256 `f0d346ed64c71855732c12f8ea23e35cf0b46098fa277d4e86c05f4cfde5d132`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AutomaticProjectionData.Variant05f978b9fcd654ac39911db98af0ece41cfd1d0ac1807324a256472383659d76","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05f978b9fcd654ac39911db98af0ece41cfd1d0ac1807324a256472383659d76","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AutomaticProjectionData.Variant05f978b9fcd654ac39911db98af0ece41cfd1d0ac1807324a256472383659d76","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"05f978b9fcd654ac39911db98af0ece41cfd1d0ac1807324a256472383659d76","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Simps/NotationClass.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/

import Mathlib.Init
import Lean.Elab.Exception
import Batteries.Lean.NameMapAttribute
import Batteries.Tactic.Lint

/-!
# `@[notation_class]` attribute for `@[simps]`

This declares the `@[notation_class]` attribute, which is used to give smarter default projections
for `@[simps]`.

We put this in a separate file so that we can already tag some declarations with this attribute
in the file where we declare `@[simps]`. For further documentation, see `Tactic.Simps.Basic`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AutomaticProjectionData.Variant05f978b9fcd654ac39911db98af0ece41cfd1d0ac1807324a256472383659d76

/-- The `@[notation_class]` attribute specifies that this is a notation class,
and this notation should be used instead of projections by `@[simps]`.
  * This is only important if the projection is written differently using notation, e.g.
    `+` uses `HAdd.hAdd`, not `Add.add` and `0` uses `OfNat.ofNat` not `Zero.zero`.
    We also add it to non-heterogenous notation classes, like `Neg`, but it doesn't do much for any
    class that extends `Neg`.
  * `@[notation_class * <projName> Simps.findCoercionArgs]` is used to configure the
    `SetLike` and `DFunLike` coercions.
  * The first name argument is the projection name we use as the key to search for this class
    (default: name of first projection of the class).
  * The second argument is the name of a declaration that has type
    `findArgType` which is defined to be `Name → Name → Array Expr → MetaM (Array (Option Expr))`.
    This declaration specifies how to generate the arguments of the notation class from the
    arguments of classes that use the projection. -/
syntax (name := notation_class) "notation_class" "*"? (ppSpace ident)? (ppSpace ident)? : attr

open Lean Meta Elab Term

namespace Simps

/-- The type of methods to find arguments for automatic projections for `simps`.
We partly define this as a separate definition so that the unused arguments linter doesn't complain.
-/
def findArgType : Type := Name → Name → Array Expr → MetaM (Array (Option Expr))

/-- Find arguments for a notation class -/
def defaultfindArgs : findArgType := fun _ className args ↦ do
  let some classExpr := (← getEnv).find? className | throwError "no such class {className}"
  let arity := classExpr.type.getNumHeadForalls
  if arity == args.size then
    return args.map some
  else if h : args.size = 1 then
    return .replicate arity args[0]
  else
    throwError "initialize_simps_projections cannot automatically find arguments for class \
      {className}"

/-- Find arguments by duplicating the first argument. Used for `pow`. -/
def copyFirst : findArgType := fun _ _ args ↦ return (args.push <| args[0]?.getD default).map some

/-- Find arguments by duplicating the first argument. Used for `smul`. -/
def copySecond : findArgType := fun _ _ args ↦ return (args.push <| args[1]?.getD default).map some

/-- Find arguments by prepending `ℕ` and duplicating the first argument. Used for `nsmul`. -/
def nsmulArgs : findArgType := fun _ _ args ↦
  return #[Expr.const `Nat [], args[0]?.getD default] ++ args |>.map some

/-- Find arguments by prepending `ℤ` and duplicating the first argument. Used for `zsmul`. -/
def zsmulArgs : findArgType := fun _ _ args ↦
  return #[Expr.const `Int [], args[0]?.getD default] ++ args |>.map some

/-- Find arguments for the `Zero` class. -/
def findZeroArgs : findArgType := fun _ _ args ↦
  return #[some <| args[0]?.getD default, some <| mkRawNatLit 0]

/-- Find arguments for the `One` class. -/
def findOneArgs : findArgType := fun _ _ args ↦
  return #[some <| args[0]?.getD default, some <| mkRawNatLit 1]

/-- Find arguments of a coercion class (`DFunLike` or `SetLike`) -/
def findCoercionArgs : findArgType := fun str className args ↦ do
  let some classExpr := (← getEnv).find? className | throwError "no such class {className}"
  let arity := classExpr.type.getNumHeadForalls
  let eStr := mkAppN (← mkConstWithLevelParams str) args
  let classArgs := .replicate (arity - 1) none
  return #[some eStr] ++ classArgs

/-- Data needed to generate automatic projections. This data is associated to a name of a projection
in a structure that must be used to trigger the search. -/
structure AutomaticProjectionData where
  /-- `className` is the name of the class we are looking for. -/
  className : Name
  /-- `isNotation` is a boolean that specifies whether this is notation
    (false for the coercions `DFunLike` and `SetLike`). If this is set to true, we add the current
    class as hypothesis during type-class synthesis. -/
  isNotation := true
  /-- The method to find the arguments of the class. -/
  findArgs : Name := `Simps.defaultfindArgs
deriving Inhabited

/-- `@[notation_class]` attribute. Note: this is *not* a `NameMapAttribute` because we key on the
argument of the attribute, not the declaration name. -/
initialize notationClassAttr : NameMapExtension AutomaticProjectionData ← do
  let ext ← registerNameMapExtension AutomaticProjectionData
  registerBuiltinAttribute {
    name := `notation_class
    descr := "An attribute specifying that this is a notation class. Used by @[simps]."
    add := fun src stx _kind => do
      unless isStructure (← getEnv) src do
        throwError "@[notation_class] attribute can only be added to classes."
      match stx with
      | `(attr|notation_class $[*%$coercion]? $[$projName?]? $[$findArgs?]?) => do
        let projName ← match projName? with
          | none => pure (getStructureFields (← getEnv) src)[0]!
          | some projName => pure projName.getId
        let findArgs := if findArgs?.isSome then findArgs?.get!.getId else `Simps.defaultfindArgs
        match (← getEnv).find? findArgs with
        | none => throwError "no such declaration {findArgs}"
        | some declInfo =>
          unless ← MetaM.run' <| isDefEq declInfo.type (mkConst ``findArgType) do
            throwError "declaration {findArgs} has wrong type"
        ext.add projName ⟨src, coercion.isNone, findArgs⟩
      | _ => throwUnsupportedSyntax }
  return ext

end Simps
```
