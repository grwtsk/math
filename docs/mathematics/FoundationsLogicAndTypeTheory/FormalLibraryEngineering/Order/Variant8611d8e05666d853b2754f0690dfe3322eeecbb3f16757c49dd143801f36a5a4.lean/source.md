# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Order.Variant8611d8e05666d853b2754f0690dfe3322eeecbb3f16757c49dd143801f36a5a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31a3914cf1833ba45731b2f7798fbcdff6246b1a` · SHA-256 `8083680f3b23ddc4cfd0b2b7b4d06a352bc57c34f5bd1f5b8f58942698678e7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkInstPiOfInstForall.Variant29c5a8cf645ff2cfba3bfe1398e1a428772929009c6caae2fa61a586087ac7ba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"29c5a8cf645ff2cfba3bfe1398e1a428772929009c6caae2fa61a586087ac7ba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkInstPiOfInstForall.Variant29c5a8cf645ff2cfba3bfe1398e1a428772929009c6caae2fa61a586087ac7ba","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"29c5a8cf645ff2cfba3bfe1398e1a428772929009c6caae2fa61a586087ac7ba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Order.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski, Joachim Breitner
-/

module

prelude
public import Lean.Meta.PProdN
public import Lean.Meta.AppBuilder
public import Init.Internal.Order.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkInstPiOfInstForall.Variant29c5a8cf645ff2cfba3bfe1398e1a428772929009c6caae2fa61a586087ac7ba

public section

/-!
This module has meta-functions for constructions expressions related to `Lean.Order`.
In particular some of these functions can handle the `CCPO` and `CompleteLattice`
structures conveniently uniformly, picking the right one based on the type of the arguments.
-/

namespace Lean.Meta
open Order

/--
Given `inst : CCPO (t[x])` for some FVar `x`, constructs an instance
of the type `CCPO (∀ x, t[x])`.
Can handle `CompleteLattice` as well.
--/
def mkInstPiOfInstForall (x : Expr) (inst : Expr) : MetaM Expr := do
  if (←inferType inst).isAppOf ``CCPO then
    mkAppOptM ``instCCPOPi #[(← inferType x), none, (← mkLambdaFVars #[x] inst)]
  else if (←inferType inst).isAppOf ``CompleteLattice then
    mkAppOptM ``instCompleteLatticePi #[(← inferType x), none, (← mkLambdaFVars #[x] inst)]
  else
    throwError "mkInstPiOfInstForall: unexpected type of {inst}"

/-- An n-ary version of `mkInstPiOfInstForall`. Takes an array of arguments instead.
--/
def mkInstPiOfInstsForall (xs : Array Expr) (inst : Expr) : MetaM Expr := do
  let mut inst := inst
  for x in xs.reverse do
    inst ← mkInstPiOfInstForall x inst
  pure inst

/--
Given a function `f : α → α`, an instance `inst : CCPO α`
and a monotonicity proof `hmono : monotone f`, constructs a least fixpoint of `f`
with respect to the instance `inst`. The `packedType` is assumed to contain the type `α`.
Can handle `CompleteLattice` as well.
-/
def mkFixOfMonFun (packedType : Expr) (packedInst : Expr) (hmono : Expr) : MetaM Expr := do
  if (←inferType packedInst).isAppOf ``CCPO then
    mkAppOptM ``fix #[packedType, packedInst, none, hmono]
  else if (←inferType packedInst).isAppOf ``CompleteLattice then
    mkAppOptM ``lfp_monotone #[packedType, packedInst, none, hmono]
  else
    throwError "mkFixOfMonFun: unexpected type of {packedInst}"

/--
Given `packedInst : CCPO α `, returns an underlying instance of the type
`PartialOrder α`. Can handle `CompleteLattice` as well.
Takes an optional argument with the type `α`. If the optional argument is `none`,
it is treated implicitly.
-/
def toPartialOrder (packedInst : Expr) (type : Option Expr := .none) := do
  if (←inferType packedInst).isAppOf ``CCPO then
    mkAppOptM ``CCPO.toPartialOrder #[type, packedInst]
  else if (←inferType packedInst).isAppOf ``CompleteLattice then
    mkAppOptM ``CompleteLattice.toPartialOrder #[type, packedInst]
  else
    throwError "getUnderlyingOrder: unexpected type of {packedInst}"

/--
Given CCPO instances `inst₁ : CCPO α₁` and `inst₂ : CCPO α₂`,
constructs an instance of the type `CCPO (α₁ × α₂)`.
-/
def mkInstCCPOPProd (inst₁ inst₂ : Expr) : MetaM Expr := do
  mkAppOptM ``instCCPOPProd #[none, none, inst₁, inst₂]

/--
Given CCPO instances `inst₁ : CompleteLattice α₁` and `inst₂ : CompleteLattice α₂`,
constructs an instance of the type `CompleteLattice (α₁ × α₂)`.
-/
def mkInstCompleteLatticePProd (inst₁ inst₂ : Expr) : MetaM Expr := do
  mkAppOptM ``instCompleteLatticePProd #[none, none, inst₁, inst₂]

/--
Given an array of CCPO instances `insts = #[CCPO α₁, ..., CCPO αₙ]`, constructs an instance
of the type `CCPO (α₁ × ... × αₙ)`.
Can handle `CompleteLattice` as well.
-/
def mkPackedPPRodInstance (insts : Array Expr) : MetaM Expr := do
  let types ← insts.mapM inferType
  if (types.all (fun t => t.isAppOf ``CCPO)) then
    PProdN.genMk mkInstCCPOPProd insts
  else if (types.all (fun t => t.isAppOf ``CompleteLattice)) then
    PProdN.genMk mkInstCompleteLatticePProd insts
  else
    throwError "mkPackedPPRoodInstance: unexpected types {types} of {insts}"
```
