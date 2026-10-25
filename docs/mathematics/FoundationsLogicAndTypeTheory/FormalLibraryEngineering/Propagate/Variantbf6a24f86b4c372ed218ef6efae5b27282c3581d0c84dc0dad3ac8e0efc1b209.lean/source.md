# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Propagate.Variantbf6a24f86b4c372ed218ef6efae5b27282c3581d0c84dc0dad3ac8e0efc1b209

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fdee1361c3427e6b51ab21fc5834b0b8f0d70fc9` · SHA-256 `d0d2c566e9d178c8b3ce30731293f0a0060c75a86f9fd7fd71da81d1db9b7579`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PropagateNatBinOp.Variant1e77f58d4e1772bb59cd8e1808d79ec77f3cb64712e8316369cd4b94034852a8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1e77f58d4e1772bb59cd8e1808d79ec77f3cb64712e8316369cd4b94034852a8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PropagateNatBinOp.Variant1e77f58d4e1772bb59cd8e1808d79ec77f3cb64712e8316369cd4b94034852a8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1e77f58d4e1772bb59cd8e1808d79ec77f3cb64712e8316369cd4b94034852a8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/Propagate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
import Init.Grind
import Lean.Meta.Tactic.Grind.Arith.CommRing.RingId
import Lean.Meta.Tactic.Grind.Arith.CommRing.NonCommRingM
import Lean.Meta.Tactic.Grind.Arith.CommRing.NonCommSemiringM
public import Lean.Meta.Tactic.Grind.PropagatorAttr

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PropagateNatBinOp.Variant1e77f58d4e1772bb59cd8e1808d79ec77f3cb64712e8316369cd4b94034852a8

public section
namespace Lean.Meta.Grind.Arith

/-!
This file defines propagators for `Nat` operators that have simprocs associated with them, but do not
have support in satellite solvers. The goal is to workaround a nasty interaction between
E-matching and normalization. Consider the following example:
```
@[grind] def mask := 15

@[grind =] theorem foo (x : Nat) : x &&& 15 = x % 16 := by sorry

example (x : Nat) : 3 &&& mask = 3 := by
  grind only [foo, mask]
```
This is a very simple version of issue #11498.
The e-graph contains `3 &&& mask`. E-matching finds that `3 &&& mask` matches pattern `x &&& 15`
modulo the equality `mask = 15`, binding `x := 3`.
Thus is produces the theorem instance `3 &&& 15 = 3 % 16`, which simplifies to `True` using the
builtin simprocs for `&&&` and `%`. So, nothing is learned.
**Tension**: The invariant "all terms in e-graph are normalized" conflicts with congruence needing
the intermediate term `3 &&& 15` to make the connection.
This is yet another example that shows how tricky is to combine e-matching with a normalizer.
It is yet another reason for not letting users to extend the normalizer.
If we do, we should be able to mark which ones should be used not normalize theorem instances.
The following propagator ensure that `3 &&& mask` is merged with the equivalence class `3` if
`mask = 15`.
-/

def propagateNatBinOp (declName : Name) (congrThmName : Name) (op : Nat → Nat → Nat) (e : Expr) : GoalM Unit := do
  let arity := 6
  unless e.isAppOfArity declName arity do return ()
  unless e.getArg! 0 |>.isConstOf ``Nat do return ()
  unless e.getArg! 1 |>.isConstOf ``Nat do return ()
  let a := e.getArg! (arity - 2) arity
  let aRoot ← getRoot a
  let some k₁ ← getNatValue? aRoot | return ()
  let b := e.getArg! (arity - 1) arity
  let bRoot ← getRoot b
  let some k₂ ← getNatValue? bRoot | return ()
  let k := op k₁ k₂
  let r ← shareCommon (mkNatLit k)
  internalize r 0
  let h := mkApp8 (mkConst congrThmName) a b aRoot bRoot r (← mkEqProof a aRoot) (← mkEqProof b bRoot) eagerReflBoolTrue
  pushEq e r h

builtin_grind_propagator propagateNatAnd ↑HAnd.hAnd := propagateNatBinOp ``HAnd.hAnd ``Grind.Nat.and_congr (· &&& ·)
builtin_grind_propagator propagateNatOr ↑HOr.hOr := propagateNatBinOp ``HOr.hOr ``Grind.Nat.or_congr (· ||| ·)
builtin_grind_propagator propagateNatXOr ↑HXor.hXor := propagateNatBinOp ``HXor.hXor ``Grind.Nat.xor_congr (· ^^^ ·)
builtin_grind_propagator propagateNatShiftLeft ↑HShiftLeft.hShiftLeft :=
  propagateNatBinOp ``HShiftLeft.hShiftLeft ``Grind.Nat.shiftLeft_congr (· <<< ·)
builtin_grind_propagator propagateNatShiftRight ↑HShiftRight.hShiftRight :=
  propagateNatBinOp ``HShiftRight.hShiftRight ``Grind.Nat.shiftRight_congr (· >>> ·)

private def supportedSemiring : Std.HashSet Name :=
  [``Nat, ``Int, ``Rat, ``BitVec, ``UInt8, ``UInt16, ``UInt32, ``Int64, ``Int8, ``Int16, ``Int32, ``Int64].foldl (init := {}) (·.insert ·)

private def isSupportedSemiringQuick (type : Expr) : Bool := Id.run do
  let .const declName _ := type.getAppFn | return false
  return supportedSemiring.contains declName

open CommRing in
/--
Return `some inst` where `inst : Semiring type` if `type` is a semiring
that does not have good support in `grind ring`. That is, `grind ring`
supports only normalization, but not equational reasoning.
See comment at `propagateMul`.
-/
private def isUnsupportedSemiring? (type : Expr) : GoalM (Option Expr) := do
  if isSupportedSemiringQuick type then return none
  if (← getCommRingId? type).isSome then return none
  if let some id ← getCommSemiringId? type then
    -- CommSemiring also needs `propagateMul` because the ring envelope approach
    -- does not propagate `0 * a = 0` back to original terms.
    -- In the future, we want to add support for propagating equalities when the
    -- `CommSemiring` implements `AddRightCancel`.
    return some (← SemiringM.run id (return (← getSemiring).semiringInst))
  if let some id ← getNonCommRingId? type then
    let inst ← NonCommRingM.run id do return (← getRing).semiringInst
    return some inst
  if let some id ← getNonCommSemiringId? type then
    let inst ← NonCommSemiringM.run id do return (← getSemiring).semiringInst
    return some inst
  return none

private def isOfNat? (a : Expr) : MetaM (Option Nat) := do
  let_expr OfNat.ofNat _ n _ := a | return none
  getNatValue? n

/--
Propagator for the `0*a`, `1*a`, `a*0`, `a*1` for semirings that do not have good support in
`grind ring`. We need this propagator because have normalization rules for them, and users
were surprised when using `grind [zero_mul]` did not have any effect. In this scenario,
`grind` was correctly instantiating `zero_mul : 0*a = 0`, but the normalizer reduces the
instance to `True`.

Alternative approach: We improve the support for equality reasoning for non-commutative rings
and semirings in `grind ring`. For example, we could just replace equalities and keep renormalizing.
If we implement this feature, this propagator can be deleted.
-/
builtin_grind_propagator propagateMul ↑HMul.hMul := fun e => do
  let_expr f@HMul.hMul α₁ α₂ α₃ _ a b := e | return ()
  let some semiringInst ← isUnsupportedSemiring? α₁ | return ()
  unless isSameExpr α₁ α₂ && isSameExpr α₁ α₃ do return ()
  let u :: _ := f.constLevels! | return ()
  let aRoot ← getRoot a
  let bRoot ← getRoot b
  if let some n ← isOfNat? aRoot then
    if n == 0 then
      pushEq e aRoot <| mkApp5 (mkConst ``Grind.Semiring.zero_mul_congr [u]) α₁ semiringInst a b (← mkEqProof a aRoot)
    else if n == 1 then
      pushEq e b <| mkApp5 (mkConst ``Grind.Semiring.one_mul_congr [u]) α₁ semiringInst a b (← mkEqProof a aRoot)
  else if let some n ← isOfNat? bRoot then
    if n == 0 then
      pushEq e bRoot <| mkApp5 (mkConst ``Grind.Semiring.mul_zero_congr [u]) α₁ semiringInst a b (← mkEqProof b bRoot)
    else if n == 1 then
      pushEq e a <| mkApp5 (mkConst ``Grind.Semiring.mul_one_congr [u]) α₁ semiringInst a b (← mkEqProof b bRoot)

end Lean.Meta.Grind.Arith
````
