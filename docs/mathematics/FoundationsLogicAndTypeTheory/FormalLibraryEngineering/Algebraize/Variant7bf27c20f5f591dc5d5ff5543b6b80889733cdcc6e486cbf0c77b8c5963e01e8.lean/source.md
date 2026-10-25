# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Algebraize.Variant7bf27c20f5f591dc5d5ff5543b6b80889733cdcc6e486cbf0c77b8c5963e01e8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee9d51f62616b632e2344b938a216e8265b1a0b4` · SHA-256 `aa33f4d6fb2b735cccc95acad4800e1460086d01ff26a15d8755be85a4fb7361`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variantb74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Config.Variantb74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Algebraize.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Calle Sönne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Nick Kuhn, Arend Mellendijk, Christian Merten, Calle Sönne, Adam Topaz
-/

import Mathlib.Algebra.Algebra.Tower

/-!

## Algebraize tactic

This file defines the `algebraize` tactic. The basic functionality of this tactic is to
automatically add `Algebra` instances given `RingHom`s. For example, `algebraize [f, g]` where
`f : A →+* B` and `g : B →+* C` are `RingHom`s, will add the instances `Algebra A B` and
`Algebra B C` corresponding to these `RingHom`s.

## Further functionality

When given a composition of `RingHom`s, e.g. `algebraize [g.comp f]`, the tactic will also try to
add the instance `IsScalarTower A B C` if possible.

After having added suitable `Algebra` and `IsScalarTower` instances, the tactic will search through
the local context for `RingHom` properties that can be converted to properties of the corresponding
`Algebra`. For example, given `f : A →+* B` and `hf : f.FiniteType`, then `algebraize [f]` will add
the instance `Algebra A B` and the corresponding property `Algebra.FiniteType A B`. The tactic knows
which `RingHom` properties have a corresponding `Algebra` property through the `algebraize`
attribute.

## Algebraize attribute

The `algebraize` attribute is used to tag `RingHom` properties that can be converted to `Algebra`
properties. It assumes that the tagged declaration has a name of the form `RingHom.Property` and
that the corresponding `Algebra` property has the name `Algebra.Property`.

If not, the `Name` of the corresponding algebra property can be provided as optional argument. The
specified declaration should be one of the following:

1. An inductive type (i.e. the `Algebra` property itself), in this case it is assumed that the
`RingHom` and the `Algebra` property are definitionally the same, and the tactic will construct the
`Algebra` property by giving the `RingHom` property as a term. Due to how this is performed, we also
need to assume that the `Algebra` property can be constructed only from the homomorphism, so it can
not have any other explicit arguments.
2. A lemma (or constructor) proving the `Algebra` property from the `RingHom` property. In this case
it is assumed that the `RingHom` property is the final argument, and that no other explicit argument
is needed. The tactic then constructs the `Algebra` property by applying the lemma or constructor.

Here are three examples of properties tagged with the `algebraize` attribute:
```
@[algebraize]
def RingHom.FiniteType (f : A →+* B) : Prop :=
  @Algebra.FiniteType A B _ _ f.toAlgebra
```
An example when the `Name` is provided (as the `Algebra` does not have the expected name):
```
@[algebraize Module.Finite]
def RingHom.Finite (f : A →+* B) : Prop :=
  letI : Algebra A B := f.toAlgebra
  Module.Finite A B
```
An example with a constructor as parameter (as the two properties are not definitonally the same):
```
@[algebraize Algebra.Flat.out]
class RingHom.Flat {R : Type u} {S : Type v} [CommRing R] [CommRing S] (f : R →+* S) : Prop where
  out : f.toAlgebra.Flat := by infer_instance
```

## algebraize_only

To avoid searching through the local context and adding corresponding `Algebra` properties, use
`algebraize_only` which only adds `Algebra` and `IsScalarTower` instances.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variantb74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69

open Lean Elab Tactic Term Meta

namespace Lean.Attr

/-- Function that extracts the name of the corresponding `Algebra` property from a `RingHom`
property that has been tagged with the `algebraize` attribute. This is done by either returning the
parameter of the attribute, or by assuming that the tagged declaration has name `RingHom.Property`
and then returning `Algebra.Property`. -/
def algebraizeGetParam (thm : Name) (stx : Syntax) : AttrM Name := do
  match stx with
  | `(attr| algebraize $name:ident) => return name.getId
  /- If no argument is provided, assume `thm` is of the form `RingHom.Property`,
  and return `Algebra.Property` -/
  | `(attr| algebraize) =>
    match thm with
    | .str `RingHom t => return .str `Algebra t
    | _ =>
      throwError "theorem name must be of the form `RingHom.Property` if no argument is provided"
  | _ => throwError "unexpected algebraize argument"

/-- A user attribute that is used to tag `RingHom` properties that can be converted to `Algebra`
properties. Using an (optional) parameter, it will also generate a `Name` of a declaration which
will help the `algebraize` tactic access the corresponding `Algebra` property.

There are two cases for what declaration corresponding to this `Name` can be.

1. An inductive type (i.e. the `Algebra` property itself), in this case it is assumed that the
`RingHom` and the `Algebra` property are definitionally the same, and the tactic will construct the
`Algebra` property by giving the `RingHom` property as a term.
2. A lemma (or constructor) proving the `Algebra` property from the `RingHom` property. In this case
it is assumed that the `RingHom` property is the final argument, and that no other explicit argument
is needed. The tactic then constructs the `Algebra` property by applying the lemma or constructor.

Finally, if no argument is provided to the `algebraize` attribute, it is assumed that the tagged
declaration has name `RingHom.Property` and that the corresponding `Algebra` property has name
`Algebra.Property`. The attribute then returns `Algebra.Property` (so assume case 1 above). -/
initialize algebraizeAttr : ParametricAttribute Name ←
  registerParametricAttribute {
    name := `algebraize,
    descr :=
"Tag that lets the `algebraize` tactic know which `Algebra` property corresponds to this `RingHom`
property.",
    getParam := algebraizeGetParam }

end Lean.Attr

namespace Mathlib.Tactic

namespace Algebraize

/-- Given an expression `f` of type `RingHom A B` where `A` and `B` are commutative semirings,
this function adds the instance `Algebra A B` to the context (if it does not already exist).

This function also requires the type of `f`, given by the parameter `ft`. The reason this is done
(even though `ft` can be inferred from `f`) is to avoid recomputing `ft` in the `algebraize` tactic,
as when `algebraize` calls `addAlgebraInstanceFromRingHom` it has already computed `ft`. -/
def addAlgebraInstanceFromRingHom (f ft : Expr) : TacticM Unit := withMainContext do
  let (_, l) := ft.getAppFnArgs
  -- The type of the corresponding algebra instance
  let alg ← mkAppOptM ``Algebra #[l[0]!, l[1]!, none, none]
  -- If the instance already exists, we do not do anything
  unless (← synthInstance? alg).isSome do
  liftMetaTactic fun mvarid => do
    let nm ← mkFreshBinderNameForTactic `algInst
    let mvar ← mvarid.define nm alg (← mkAppM ``RingHom.toAlgebra #[f])
    let (_, mvar) ← mvar.intro1P
    return [mvar]

/-- Given an expression `g.comp f` which is the composition of two `RingHom`s, this function adds
the instance `IsScalarTower A B C` to the context (if it does not already exist). -/
def addIsScalarTowerInstanceFromRingHomComp (fn : Expr) : TacticM Unit := withMainContext do
  let (_, l) := fn.getAppFnArgs
  let tower ← mkAppOptM ``IsScalarTower #[l[0]!, l[1]!, l[2]!, none, none, none]
  -- If the instance already exists, we do not do anything
  unless (← synthInstance? tower).isSome do
  liftMetaTactic fun mvarid => do
    let nm ← mkFreshBinderNameForTactic `scalarTowerInst
    let h ← mkFreshExprMVar (← mkAppM ``Eq #[
      ← mkAppOptM ``algebraMap #[l[0]!, l[2]!, none, none, none],
      ← mkAppM ``RingHom.comp #[
        ← mkAppOptM ``algebraMap #[l[1]!, l[2]!, none, none, none],
        ← mkAppOptM ``algebraMap #[l[0]!, l[1]!, none, none, none]]])
    -- Note: this could fail, but then `algebraize` will just continue, and won't add this instance
    h.mvarId!.refl
    let val ← mkAppOptM ``IsScalarTower.of_algebraMap_eq'
      #[l[0]!, l[1]!, l[2]!, none, none, none, none, none, none, h]
    let mvar ← mvarid.define nm tower val
    let (_, mvar) ← mvar.intro1P
    return [mvar]

/-- This function takes an array of expressions `t`, all of which are assumed to be `RingHom`s,
and searches through the local context to find any additional properties of these `RingHoms`, after
which it tries to add the corresponding `Algebra` properties to the context. It only looks for
properties that have been tagged with the `algebraize` attribute, and uses this tag to find the
corresponding `Algebra` property. -/
def addProperties (t : Array Expr) : TacticM Unit := withMainContext do
  let ctx ← getLCtx
  ctx.forM fun decl => do
    if decl.isImplementationDetail then return
    let (nm, args) := decl.type.getAppFnArgs
    -- Check if the type of the current hypothesis has been tagged with the `algebraize` attribute
    match Attr.algebraizeAttr.getParam? (← getEnv) nm with
    -- If it has, `p` will either be the name of the corresponding `Algebra` property, or a
    -- lemma/constructor.
    | some p =>
      -- The last argument of the `RingHom` property is assumed to be `f`
      let f := args[args.size - 1]!
      -- Check that `f` appears in the list of functions given to `algebraize`
      if ¬ (← t.anyM (Meta.isDefEq · f)) then return

      let cinfo ← getConstInfo p
      let n ← getExpectedNumArgs cinfo.type
      let pargs := Array.replicate n (none : Option Expr)
      /- If the attribute points to the corresponding `Algebra` property itself, we assume that it
      is definitionally the same as the `RingHom` property. Then, we just need to construct its type
      and the local declaration will already give a valid term. -/
      if cinfo.isInductive then
        let pargs := pargs.set! 0 args[0]!
        let pargs := pargs.set! 1 args[1]!
        let tp ← mkAppOptM p pargs -- This should be the type `Algebra.Property A B`
        unless (← synthInstance? tp).isSome do
        liftMetaTactic fun mvarid => do
          let nm ← mkFreshBinderNameForTactic `algebraizeInst
          let (_, mvar) ← mvarid.note nm decl.toExpr tp
          return [mvar]
      /- Otherwise, the attribute points to a lemma or a constructor for the `Algebra` property.
      In this case, we assume that the `RingHom` property is the last argument of the lemma or
      constructor (and that this is all we need to supply explicitly). -/
      else
        let pargs := pargs.set! (n - 1) decl.toExpr
        let val ← mkAppOptM p pargs
        let tp ← inferType val
        unless (← synthInstance? tp).isSome do
        liftMetaTactic fun mvarid => do
          let nm ← mkFreshBinderNameForTactic `algebraizeInst
          let (_, mvar) ← mvarid.note nm val
          return [mvar]
    | none => return

/-- Configuration for `algebraize`. -/
structure Config where
  /-- If true (default), the tactic will search the local context for `RingHom` properties
    that can be converted to `Algebra` properties. -/
  properties : Bool := true
deriving Inhabited

/-- Function elaborating `Algebraize.Config`. -/
declare_config_elab elabAlgebraizeConfig Algebraize.Config

end Algebraize

open Algebraize Lean.Parser.Tactic

/-- A list of terms passed to `algebraize` as argument. -/
syntax algebraizeTermSeq := " [" withoutPosition(term,*,?) "]"

/-- Tactic that, given `RingHom`s, adds the corresponding `Algebra` and (if possible)
`IsScalarTower` instances, as well as `Algebra` corresponding to `RingHom` properties available
as hypotheses.

Example: given `f : A →+* B` and `g : B →+* C`, and `hf : f.FiniteType`, `algebraize [f, g]` will
add the instances `Algebra A B`, `Algebra B C`, and `Algebra.FiniteType A B`.

See the `algebraize` tag for instructions on what properties can be added.

The tactic also comes with a configuration option `properties`. If set to `true` (default), the
tactic searches through the local context for `RingHom` properties that can be converted to
`Algebra` properties. The macro `algebraize_only` calls
`algebraize -properties`,
so in other words it only adds `Algebra` and `IsScalarTower` instances. -/
syntax "algebraize " optConfig (algebraizeTermSeq)? : tactic

elab_rules : tactic
  | `(tactic| algebraize $cfg:optConfig $args) => withMainContext do
    let cfg ← elabAlgebraizeConfig cfg
    let t ← match args with
    | `(algebraizeTermSeq| [$rs,*]) => rs.getElems.mapM fun i => Term.elabTerm i none
    | _ =>
      throwError ""
    if t.size == 0 then
      logWarningAt args "`algebraize []` without arguments has no effect!"
    -- We loop through the given terms and add algebra instances
    for f in t do
      let ft ← inferType f
      match ft.getAppFn with
      | Expr.const ``RingHom _ => addAlgebraInstanceFromRingHom f ft
      | _ => throwError m!"{f} is not of type `RingHom`"
    -- After having added the algebra instances we try to add scalar tower instances
    for f in t do
      match f.getAppFn with
      | Expr.const ``RingHom.comp _ =>
        try addIsScalarTowerInstanceFromRingHomComp f
        catch _ => continue
      | _ => continue

    -- Search through the local context to find other instances of algebraize
    if cfg.properties then
      addProperties t
  | `(tactic| algebraize $[$config]?) => do
    throwError "`algebraize` expects a list of arguments: `algebraize [f]`"

/-- Version of `algebraize`, which only adds `Algebra` instances and `IsScalarTower` instances,
but does not try to add any instances about any properties tagged with
`@[algebraize]`, like for example `Finite` or `IsIntegral`. -/
syntax "algebraize_only" (ppSpace algebraizeTermSeq)? : tactic

macro_rules
  | `(tactic| algebraize_only $[$args]?) =>
    `(tactic| algebraize -properties $[$args]?)

end Mathlib.Tactic
````
