# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expr.Variant6f7d2ff6c3aa8da9e571f17e55deba98fabe46ccbc73d2ed5f4f49cc05128ce4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7e7ab2c10c13f36d9df126454a6ac55f17f0565a` · SHA-256 `ca2291a5e3d9eb8115089e025cc693573edf5bfe25f2bd2c3af2539c0c80fc30`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToSyntax.Variante36a0e6f2c0ff7f6e2055cc5a517f3332812abe17b7f2635c5a2bd435079efec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e36a0e6f2c0ff7f6e2055cc5a517f3332812abe17b7f2635c5a2bd435079efec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ToSyntax.Variante36a0e6f2c0ff7f6e2055cc5a517f3332812abe17b7f2635c5a2bd435079efec","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e36a0e6f2c0ff7f6e2055cc5a517f3332812abe17b7f2635c5a2bd435079efec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Lean/Expr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Lean.Elab.Term
public import Lean.Elab.Binders


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToSyntax.Variante36a0e6f2c0ff7f6e2055cc5a517f3332812abe17b7f2635c5a2bd435079efec

@[expose] public section

/-!
# Additional operations on Expr and related types

This file defines basic operations on the types expr, name, declaration, level, environment.

This file is mostly for non-tactics.
-/

namespace Lean.Expr

open Lean.Elab.Term in
/-- Converts an `Expr` into a `Syntax`, by creating a fresh metavariable
assigned to the expr and  returning a named metavariable syntax `?a`. -/
def toSyntax (e : Expr) : TermElabM Syntax.Term := withFreshMacroScope do
  let stx ← `(?a)
  let mvar ← elabTermEnsuringType stx (← Meta.inferType e)
  mvar.mvarId!.assign e
  pure stx

/-- Like `withApp` but ignores metadata. -/
@[inline]
def withApp' (e : Expr) (k : Expr → Array Expr → α) : α :=
  let dummy := mkSort .zero
  let nargs := e.getAppNumArgs'
  go e (.replicate nargs dummy) (nargs - 1)
where
  /-- Auxiliary definition for `withApp'`. -/
  @[specialize]
  go : Expr → Array Expr → Nat → α
    | mdata _ b, as, i => go b as i
    | app f a  , as, i => go f (as.set! i a) (i-1)
    | f        , as, _ => k f as

/-- Like `getAppArgs` but ignores metadata. -/
@[inline]
def getAppArgs' (e : Expr) : Array Expr :=
  e.withApp' λ _ as => as

/-- Like `traverseApp` but ignores metadata. -/
def traverseApp' {m} [Monad m]
  (f : Expr → m Expr) (e : Expr) : m Expr :=
  e.withApp' λ fn args => return mkAppN (← f fn) (← args.mapM f)

/-- Like `withAppRev` but ignores metadata. -/
@[inline]
def withAppRev' (e : Expr) (k : Expr → Array Expr → α) : α :=
  go e (Array.mkEmpty e.getAppNumArgs')
where
  /-- Auxiliary definition for `withAppRev'`. -/
  @[specialize]
  go : Expr → Array Expr → α
    | mdata _ b, as => go b as
    | app f a  , as => go f (as.push a)
    | f        , as => k f as

/-- Like `getAppRevArgs` but ignores metadata. -/
@[inline]
def getAppRevArgs' (e : Expr) : Array Expr :=
  e.withAppRev' λ _ as => as

/-- Like `getRevArgD` but ignores metadata. -/
def getRevArgD' : Expr → Nat → Expr → Expr
  | mdata _ b, n  , v => getRevArgD' b n v
  | app _ a  , 0  , _ => a
  | app f _  , i+1, v => getRevArgD' f i v
  | _        , _  , v => v

/-- Like `getArgD` but ignores metadata. -/
@[inline]
def getArgD' (e : Expr) (i : Nat) (v₀ : Expr) (n := e.getAppNumArgs') : Expr :=
  getRevArgD' e (n - i - 1) v₀

/-- Like `isAppOf` but ignores metadata. -/
def isAppOf' (e : Expr) (n : Name) : Bool :=
  match e.getAppFn' with
  | const c .. => c == n
  | _ => false

/-- Turns an expression that is a natural number literal into a natural number. -/
def natLit! : Expr → Nat
  | lit (Literal.natVal v) => v
  | _                      => panic! "nat literal expected"

/-- Turns an expression that is a constructor of `Int` applied to a natural number literal
into an integer. -/
def intLit! (e : Expr) : Int :=
  if e.isAppOfArity ``Int.ofNat 1 then
    e.appArg!.natLit!
  else if e.isAppOfArity ``Int.negOfNat 1 then
    .negOfNat e.appArg!.natLit!
  else
    panic! "not a raw integer literal"


open Lean Elab Term in
/-- Annotates a `binderIdent` with the binder information from an `fvar`. -/
def addLocalVarInfoForBinderIdent (fvar : Expr) (tk : TSyntax ``binderIdent) : MetaM Unit :=
  -- the only TermElabM thing we do in `addLocalVarInfo` is check inPattern,
  -- which we assume is always false for this function
  discard <| TermElabM.run do
    match tk with
    | `(binderIdent| $n:ident) => Elab.Term.addLocalVarInfo n fvar
    | tk => Elab.Term.addLocalVarInfo (Unhygienic.run `(_%$tk)) fvar
```
