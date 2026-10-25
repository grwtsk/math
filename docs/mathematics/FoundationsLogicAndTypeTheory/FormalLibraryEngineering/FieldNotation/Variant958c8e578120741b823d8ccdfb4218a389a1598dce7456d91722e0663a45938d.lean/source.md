# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FieldNotation.Variant958c8e578120741b823d8ccdfb4218a389a1598dce7456d91722e0663a45938d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `432745b9e6f1b8c5bf6f0bd34f0af9fd30fa65fa` · SHA-256 `0aa3162a4d9e5a50f8a33c4538f19a3dadc956f2c4fcd9833e5111decd09e13e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjInfo.Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ProjInfo.Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/PrettyPrinter/Delaborator/FieldNotation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
module

prelude
public import Lean.Meta.WHNF
public import Lean.PrettyPrinter.Delaborator.Attributes
public import Lean.PrettyPrinter.Delaborator.Options
import Init.Data.Range.Polymorphic.Iterators


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjInfo.Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c

public section

/-!
# Functions for analyzing projections for pretty printing
-/

namespace Lean.PrettyPrinter.Delaborator
open Meta

/--
If this constant is a structure projection that could delaborate using dot notation, returns
- the field name,
- the number of parameters before the structure argument,
- whether this is a "true" projection (or else a non-subobject parent projection),
- whether this is a parent projection, and
- whether this is a class projection.
Otherwise it returns `none`.
-/
private def projInfo (c : Name) : MetaM (Option (Name × Nat × Bool × Bool × Bool)) := do
  let env ← getEnv
  let .str s field := c | return none
  let field := Name.mkSimple field
  let some structInfo := getStructureInfo? env s | return none
  let isFromClass := isClass env s
  let info ← getConstInfoInduct s
  if let some fieldInfo := getFieldInfo? env s field then
    return (field, info.numParams, true, fieldInfo.subobject?.isSome, isFromClass)
  else if structInfo.parentInfo.any (·.projFn == c) then
    return (field, info.numParams, false, true, isFromClass)
  else
    return none

/--
Checks that `e` is an application of a constant that equals `baseName`, taking into consideration private name mangling.
-/
private def isAppOfBaseName (e : Expr) (baseName : Name) : MetaM Bool := do
  if let some c := e.cleanupAnnotations.getAppFn.constName? then
    return privateToUserName c == baseName && !(← isInaccessiblePrivateName c)
  else
    return false

/--
Like `Lean.Elab.Term.typeMatchesBaseName` but does not use `Function` for pi types.
-/
private partial def typeMatchesBaseName (type : Expr) (baseName : Name) : MetaM Bool := do
  withReducibleAndInstances do
    if (← isAppOfBaseName type baseName) then
      return true
    else
      let type ← whnfCore type
      if (← isAppOfBaseName type baseName) then
        return true
      else
        match ← unfoldDefinition? type with
        | some type' => typeMatchesBaseName type' baseName
        | none => return false

/--
If this constant application could delaborate using generalized field notation with little confusion,
returns the field name and the index for the argument to be used as the object of the field notation.
Otherwise it fails.
-/
private def generalizedFieldInfo (c : Name) (args : Array Expr) : MetaM (Name × Nat) := do
  let .str baseName field := c | failure
  let baseName := privateToUserName baseName
  guard <| !baseName.isAnonymous
  let field := Name.mkSimple field
  -- Disallow `Function` since it is used for pi types.
  guard <| baseName != `Function
  let info ← getConstInfo c
  -- Search for the first argument that could be used for field notation
  -- and make sure it is the first explicit argument.
  forallBoundedTelescope info.type args.size fun params _ => do
    for h : i in *...params.size do
      let fvarId := params[i].fvarId!
      -- If there is a motive, we will treat this as a sort of control flow structure and so we won't use field notation.
      -- Plus, recursors tend to be riskier when using dot notation.
      if (← fvarId.getUserName) == `motive then
        failure
      if (← typeMatchesBaseName (← fvarId.getType) baseName) then
        guard (← fvarId.getBinderInfo).isExplicit
        -- We require an exact match for the base name.
        -- While `Lean.Elab.Term.resolveLValLoop` is able to unfold the type and iterate, we do not attempt to exploit this feature.
        -- (To get it right, we would need to check that each relevant namespace does not contain a declaration named `field`.)
        guard (← isAppOfBaseName (← instantiateMVars <| ← inferType args[i]!) baseName)
        return (field, i)
      else
        -- We only use the first explicit argument for field notation.
        guard !(← fvarId.getBinderInfo).isExplicit
    failure

private def testAppOf (e : Expr) (c : Name) : MetaM Bool := do
  if e.isAppOf c then
    return true
  else
    return (← whnfD e).isAppOf c

/--
If `f` is a function that can be used for field notation,
returns the field name to use and the argument index for the object of the field notation.
-/
def fieldNotationCandidate? (f : Expr) (args : Array Expr) (useGeneralizedFieldNotation : Bool) : MetaM (Option (Name × Nat)) := do
  let env ← getEnv
  let .const c .. := f.consumeMData | return none
  if (← isInaccessiblePrivateName c) then
    return none
  if c.getPrefix.isAnonymous then return none
  -- If there is `pp_nodot` on this function, then don't use field notation for it.
  if hasPPNoDotAttribute env c then
    return none
  -- Handle structure projections
  if let some (field, numParams, _isTrueProj, isParentProj, isFromClass) ← projInfo c then
    -- Don't use field notation for classes, unless it is a parent projection.
    unless !isFromClass || isParentProj do return none
    unless numParams < args.size do return none
    unless ← testAppOf (← inferType args[numParams]!) c.getPrefix do return none
    return (field, numParams)
  -- Handle generalized field notation
  if useGeneralizedFieldNotation then
    try
      -- Avoid field notation for theorems
      guard !(← isProof f)
      return ← generalizedFieldInfo c args
    catch _ => pure ()
  -- It's not handled by any of the above.
  return none

/--
Returns the field name of the projection if `e` is an application that is a projection to a parent structure.
If `explicit` is `true`, then requires that the structure have no parameters.
-/
def parentProj? (explicit : Bool) (e : Expr) : MetaM (Option Name) := do
  unless e.isApp do return none
  let .const c .. := e.getAppFn | return none
  let some (field, numParams, isTrueProj, isParentProj, _isFromClass) ← projInfo c | return none
  if isTrueProj && isParentProj && (!explicit || numParams == 0) && e.getAppNumArgs == numParams + 1 then
    return some field
  else
    return none

/--
Returns `true` if `e` is an application that is a projection to a parent structure.
If `explicit` is `true`, then requires that the structure have no parameters.
-/
def isParentProj (explicit : Bool) (e : Expr) : MetaM Bool := do
  return (← parentProj? explicit e).isSome
```
