# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SameCtorUtils.Variantc556aedfdc270b52497d1d0897fb147eac6eb570ee77d92c7c7a660db5849198

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42fb120f5df04564c4588abbf02aa465acc29beb` · SHA-256 `e73db0d8dccd84a669cb2fd7cafc32914cc6b4a155bfc546a8bc93b514b95d4a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OccursOrInType.Variant230ce191a9ca21d185c5ab1d8fbaf97b4dc8dcb46d70553f183fde7e50e6fc46","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"230ce191a9ca21d185c5ab1d8fbaf97b4dc8dcb46d70553f183fde7e50e6fc46","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.OccursOrInType.Variant230ce191a9ca21d185c5ab1d8fbaf97b4dc8dcb46d70553f183fde7e50e6fc46","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"230ce191a9ca21d185c5ab1d8fbaf97b4dc8dcb46d70553f183fde7e50e6fc46","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/SameCtorUtils.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module
prelude
public import Lean.Meta.Basic
import Lean.Meta.Transform

/-!
This module contains utilities for dealing with equalities between constructor applications,
in particular about which fields must be the same a-priori for the equality to type check.

Users include (or will include) the injectivity theorems, the per-constructor no-confusion
construction and deriving type classes like `BEq`, `DecidableEq` or `Ord`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OccursOrInType.Variant230ce191a9ca21d185c5ab1d8fbaf97b4dc8dcb46d70553f183fde7e50e6fc46

namespace Lean.Meta

/--
Returns true if `e` occurs either in `t`, or in the type of a sub-expression of `t`.

Consider the following example:
```lean
inductive Tyₛ : Type (u+1)
| SPi : (T : Type u) -> (T -> Tyₛ) -> Tyₛ

inductive Tmₛ.{u} :  Tyₛ.{u} -> Type (u+1)
| app : Tmₛ (.SPi T A) -> (arg : T) -> Tmₛ (A arg)```
```
When looking for fixed arguments in `Tmₛ.app`, if we only consider occurrences in the term `Tmₛ (A arg)`,
`T` is considered non-fixed despite the fact that `A : T -> Tyₛ`.
This leads to an ill-typed injectivity theorem signature:
```lean
theorem Tmₛ.app.inj {T : Type u} {A : T → Tyₛ} {a : Tmₛ (Tyₛ.SPi T A)} {arg : T} {T_1 : Type u} {a_1 : Tmₛ (Tyₛ.SPi T_1 A)} :
Tmₛ.app a arg = Tmₛ.app a_1 arg →
  T = T_1 ∧ a ≍ a_1 := fun x => Tmₛ.noConfusion x fun T_eq A_eq a_eq arg_eq => eq_of_heq a_eq
```
Instead of checking the type of every subterm, we only need to check the type of free variables, since free variables introduced in
the constructor may only appear in the type of other free variables introduced after them.
-/
public def occursOrInType (lctx : LocalContext) (e : Expr) (t : Expr) : Bool :=
  t.find? go |>.isSome
where
  go s := Id.run do
    let .fvar fvarId := s | s == e
    let some decl := lctx.find? fvarId | s == e
    return s == e || e.occurs decl.type

/--
Given a constructor, returns a mask of its fields, where `true` means that this field
occurs in the result type of the constructor.
-/
public def occursInCtorTypeMask (ctorName : Name) : MetaM (Array Bool) := do
  let ctorInfo ← getConstInfoCtor ctorName
  forallBoundedTelescope ctorInfo.type (some ctorInfo.numParams) fun _ ctorRet => do
    forallBoundedTelescope ctorRet (some ctorInfo.numFields) fun ys ctorRet => do
      let ctorRet ← whnf ctorRet
      let ctorRet ← Core.betaReduce ctorRet -- we 'beta-reduce' to eliminate "artificial" dependencies
      let lctx ← getLCtx
      return ys.map (occursOrInType lctx · ctorRet)

/--
Given a constructor (applied to the parameters already), brings its fields into scope twice,
but uses the same variable for fields that appear in the result type, so that the resulting
constructor applications have the same type.

Passes to `k`
* the new variables
* the indices to the type class
* the fields of the first constructor application
* the fields of the second constructor application
-/
public def withSharedCtorIndices (ctor : Expr)
    (k : Array Expr → Array Expr → Array Expr → Array Expr → MetaM α) : MetaM α := do
  let ctorType ← inferType ctor
  forallTelescopeReducing ctorType fun zs ctorRet => do
    let ctorRet ← whnf ctorRet
    let ctorRet ← Core.betaReduce ctorRet -- we 'beta-reduce' to eliminate "artificial" dependencies
    let indInfo ← getConstInfoInduct ctorRet.getAppFn.constName!
    let indices := ctorRet.getAppArgsN indInfo.numIndices

    let rec go zs2 mask todo acc := do
      match mask, todo with
      | true::mask', z::todo' =>
        go (zs2.push z) mask' todo' acc
      | false::mask', _::todo' =>
        let t ← whnfForall (← inferType (mkAppN ctor zs2))
        assert! t.isForall
        withLocalDeclD (t.bindingName!.appendAfter "'") t.bindingDomain! fun z' => do
          go (zs2.push z') mask' todo' (acc.push z')
      | _, _ =>
        k acc indices zs zs2

    let mask ← occursInCtorTypeMask ctor.getAppFn.constName!
    go #[] mask.toList zs.toList zs
````
