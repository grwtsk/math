# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Elementwise.Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f1d40992cfacb7fddfbee6f3683798167d9d4e1d` · SHA-256 `1f38ce2d00b8867795b4eaab1ad1f4d4dec040f6dd11cacea0a36a4e8087f853`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ForallCongrForgetType.Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ForallCongrForgetType.Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/CategoryTheory/Elementwise.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison, Kyle Miller
-/

import Mathlib.CategoryTheory.ConcreteCategory.Basic
import Mathlib.Util.AddRelatedDecl
import Std.Tactic.Lint

/-!
# Tools to reformulate category-theoretic lemmas in concrete categories

## The `elementwise` attribute

The `elementwise` attribute generates lemmas for concrete categories from lemmas
that equate morphisms in a category.

A sort of inverse to this for the `Type*` category is the `@[higher_order]` attribute.

For more details, see the documentation attached to the `syntax` declaration.

## Main definitions

- The `@[elementwise]` attribute.

- The ``elementwise_of% h` term elaborator.

## Implementation

This closely follows the implementation of the `@[reassoc]` attribute, due to Simon Hudon and
reimplemented by Scott Morrison in Lean 4.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ForallCongrForgetType.Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e

set_option autoImplicit true

open Lean Meta Elab Tactic
open Mathlib.Tactic

namespace Tactic.Elementwise
open CategoryTheory

section theorems

theorem forall_congr_forget_Type (α : Type u) (p : α → Prop) :
  (∀ (x : (forget (Type u)).obj α), p x) ↔ ∀ (x : α), p x := Iff.rfl

attribute [local instance] ConcreteCategory.funLike ConcreteCategory.hasCoeToSort

theorem forget_hom_Type (α β : Type u) (f : α ⟶ β) : FunLike.coe f = f := rfl

theorem hom_elementwise [Category C] [ConcreteCategory C]
    {X Y : C} {f g : X ⟶ Y} (h : f = g) (x : X) : f x = g x := by rw [h]

end theorems

/-- List of simp lemmas to apply to the elementwise theorem. -/
def elementwiseThms : List Name :=
  [``CategoryTheory.coe_id, ``CategoryTheory.coe_comp, ``CategoryTheory.comp_apply,
    ``CategoryTheory.id_apply,
    -- further simplifications if the category is `Type`
    ``forget_hom_Type, ``forall_congr_forget_Type,
    -- simp can itself simplify trivial equalities into `true`. Adding this lemma makes it
    -- easier to detect when this has occurred.
    ``implies_true]

/--
Given an equation `f = g` between morphisms `X ⟶ Y` in a category `C`
(possibly after a `∀` binder), produce the equation `∀ (x : X), f x = g x` or
`∀ [ConcreteCategory C] (x : X), f x = g x` as needed (after the `∀` binder), but
with compositions fully right associated and identities removed.

Returns the proof of the new theorem along with (optionally) a new level metavariable
for the first universe parameter to `ConcreteCategory`.

The `simpSides` option controls whether to simplify both sides of the equality, for simpNF
purposes.
-/
def elementwiseExpr (src : Name) (type pf : Expr) (simpSides := true) :
    MetaM (Expr × Option Level) := do
  let type := (← instantiateMVars type).cleanupAnnotations
  forallTelescope type fun fvars type' => do
    mkHomElementwise type' (mkAppN pf fvars) fun eqPf instConcr? => do
      -- First simplify using elementwise-specific lemmas
      let mut eqPf' ← simpType (simpOnlyNames elementwiseThms (config := { decide := false })) eqPf
      if (← inferType eqPf') == .const ``True [] then
        throwError "elementwise lemma for {src} is trivial after applying ConcreteCategory {""
          }lemmas, which can be caused by how applications are unfolded. {""
          }Using elementwise is unnecessary."
      if simpSides then
        let ctx := { ← Simp.Context.mkDefault with config.decide := false }
        let (ty', eqPf'') ← simpEq (fun e => return (← simp e ctx).1) (← inferType eqPf') eqPf'
        -- check that it's not a simp-trivial equality:
        forallTelescope ty' fun _ ty' => do
          if let some (_, lhs, rhs) := ty'.eq? then
            if ← Std.Tactic.Lint.isSimpEq lhs rhs then
              throwError "applying simp to both sides reduces elementwise lemma for {src} {""
                }to the trivial equality {ty'}. {""
                }Either add `nosimp` or remove the `elementwise` attribute."
        eqPf' ← mkExpectedTypeHint eqPf'' ty'
      if let some (w, instConcr) := instConcr? then
        return (← Meta.mkLambdaFVars (fvars.push instConcr) eqPf', w)
      else
        return (← Meta.mkLambdaFVars fvars eqPf', none)
where
  /-- Given an equality, extract a `Category` instance from it or raise an error.
  Returns the name of the category and its instance. -/
  extractCatInstance (eqTy : Expr) : MetaM (Expr × Expr) := do
    let some (α, _, _) := eqTy.cleanupAnnotations.eq? | failure
    let (``Quiver.Hom, #[_, instQuiv, _, _]) := α.getAppFnArgs | failure
    let (``CategoryTheory.CategoryStruct.toQuiver, #[_, instCS]) := instQuiv.getAppFnArgs | failure
    let (``CategoryTheory.Category.toCategoryStruct, #[C, instC]) := instCS.getAppFnArgs | failure
    return (C, instC)
  mkHomElementwise {α} (eqTy eqPf : Expr) (k : Expr → Option (Level × Expr) → MetaM α) :
      MetaM α := do
    let (C, instC) ← try extractCatInstance eqTy catch _ =>
      throwError "elementwise expects equality of morphisms in a category"
    -- First try being optimistic that there is already a ConcreteCategory instance.
    if let some eqPf' ← observing? (mkAppM ``hom_elementwise #[eqPf]) then
      k eqPf' none
    else
      -- That failed, so we need to introduce the instance, which takes creating
      -- a fresh universe level for `ConcreteCategory`'s forgetful functor.
      let .app (.const ``Category [v, u]) _ ← inferType instC
        | throwError "internal error in elementwise"
      let w ← mkFreshLevelMVar
      let cty : Expr := mkApp2 (.const ``ConcreteCategory [w, v, u]) C instC
      withLocalDecl `inst .instImplicit cty fun cfvar => do
        let eqPf' ← mkAppM ``hom_elementwise #[eqPf]
        k eqPf' (some (w, cfvar))

/-- Gives a name based on `baseName` that's not already in the list. -/
private partial def mkUnusedName (names : List Name) (baseName : Name) : Name :=
  if not (names.contains baseName) then
    baseName
  else
    let rec loop (i : Nat := 0) : Name :=
      let w := Name.appendIndexAfter baseName i
      if names.contains w then
        loop (i + 1)
      else
        w
    loop 1

/-- The `elementwise` attribute can be added to a lemma proving an equation of morphisms, and it
creates a new lemma for a `ConcreteCategory` giving an equation with those morphisms applied
to some value.

Syntax examples:
- `@[elementwise]`
- `@[elementwise nosimp]` to not use `simp` on both sides of the generated lemma
- `@[elementwise (attr := simp)]` to apply the `simp` attribute to both the generated lemma and
  the original lemma.

Example application of `elementwise`:

```lean
@[elementwise]
lemma some_lemma {C : Type*} [Category C]
    {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) (h : X ⟶ Z) (w : ...) : f ≫ g = h := ...
```

produces

```lean
lemma some_lemma_apply {C : Type*} [Category C]
    {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) (h : X ⟶ Z) (w : ...)
    [ConcreteCategory C] (x : X) : g (f x) = h x := ...
```

Here `X` is being coerced to a type via `CategoryTheory.ConcreteCategory.hasCoeToSort` and
`f`, `g`, and `h` are being coerced to functions via `CategoryTheory.ConcreteCategory.hasCoeToFun`.
Further, we simplify the type using `CategoryTheory.coe_id : ((𝟙 X) : X → X) x = x` and
`CategoryTheory.coe_comp : (f ≫ g) x = g (f x)`,
replacing morphism composition with function composition.

The `[ConcreteCategory C]` argument will be omitted if it is possible to synthesize an instance.

The name of the produced lemma can be specified with `@[elementwise other_lemma_name]`.
If `simp` is added first, the generated lemma will also have the `simp` attribute.
 -/
syntax (name := elementwise) "elementwise"
  " nosimp"? (" (" &"attr" ":=" Parser.Term.attrInstance,* ")")? : attr

initialize registerBuiltinAttribute {
  name := `elementwise
  descr := ""
  applicationTime := .afterCompilation
  add := fun src ref kind => match ref with
  | `(attr| elementwise $[nosimp%$nosimp?]? $[(attr := $stx?,*)]?) => MetaM.run' do
    if (kind != AttributeKind.global) then
      throwError "`elementwise` can only be used as a global attribute"
    addRelatedDecl src "_apply" ref stx? fun type value levels => do
      let (newValue, level?) ← elementwiseExpr src type value (simpSides := nosimp?.isNone)
      let newLevels ← if let some level := level? then do
        let w := mkUnusedName levels `w
        unless ← isLevelDefEq level (mkLevelParam w) do
          throwError "Could not create level parameter for ConcreteCategory instance"
        pure <| w :: levels
      else
        pure levels
      pure (newValue, newLevels)
  | _ => throwUnsupportedSyntax }

/--
`elementwise_of% h`, where `h` is a proof of an equation `f = g` between
morphisms `X ⟶ Y` in a concrete category (possibly after a `∀` binder),
produces a proof of equation `∀ (x : X), f x = g x`, but with compositions fully
right associated and identities removed.

A typical example is using `elementwise_of%` to dynamically generate rewrite lemmas:
```lean
example (M N K : MonCat) (f : M ⟶ N) (g : N ⟶ K) (h : M ⟶ K) (w : f ≫ g = h) (m : M) :
    g (f m) = h m := by rw [elementwise_of% w]
```
In this case, `elementwise_of% w` generates the lemma `∀ (x : M), f (g x) = h x`.

Like the `@[elementwise]` attribute, `elementwise_of%` inserts a `ConcreteCategory`
instance argument if it can't synthesize a relevant `ConcreteCategory` instance.
(Technical note: The forgetful functor's universe variable is instantiated with a
fresh level metavariable in this case.)

One difference between `elementwise_of%` and `@[elementwise]` is that `@[elementwise]` by
default applies `simp` to both sides of the generated lemma to get something that is in simp
normal form. `elementwise_of%` does not do this.
-/
elab "elementwise_of% " t:term : term => do
  let e ← Term.elabTerm t none
  let (pf, _) ← elementwiseExpr .anonymous (← inferType e) e (simpSides := false)
  return pf

-- TODO: elementwise tactic
syntax "elementwise" (ppSpace colGt ident)* : tactic
syntax "elementwise!" (ppSpace colGt ident)* : tactic

end Tactic.Elementwise
````
