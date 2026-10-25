# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variant038169060c3c66cdd9607b6220e680b61632e43c6003d958c09285db8957ec2b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46b2bd31a9b2c888b731b607a633c74e0634750e` · SHA-256 `78803a3232b540366ff7399cf7eb11c1ef71bfb852c2b514bd9306244838ac50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsNatValue.Variantf9d078aaefd15d35ac97f8d171bf5a6aea62f97e23fc6de92ca29a898828d46b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f9d078aaefd15d35ac97f8d171bf5a6aea62f97e23fc6de92ca29a898828d46b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsNatValue.Variantf9d078aaefd15d35ac97f8d171bf5a6aea62f97e23fc6de92ca29a898828d46b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f9d078aaefd15d35ac97f8d171bf5a6aea62f97e23fc6de92ca29a898828d46b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Cbv/Util.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/

module

prelude
public import Lean.Meta.Sym.Simp.SimpM
import Lean.Meta.Sym.InferType
import Lean.Meta.Sym.AlphaShareBuilder
import Lean.Meta.Sym.LitValues

/-!
# Cbv Utility Functions

Predicates for recognizing ground literal values (`isVal`, `isBuiltinValue`) and
proof terms (`isProofTerm`) in the `SymM` monad. Both are used by `cbvPre` to
short-circuit before structural dispatch.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsNatValue.Variantf9d078aaefd15d35ac97f8d171bf5a6aea62f97e23fc6de92ca29a898828d46b

namespace Lean.Meta.Tactic.Cbv

open Lean.Meta.Sym.Simp

abbrev isNatValue (e : Expr) : Bool := (Sym.getNatValue? e).isSome
abbrev isStringValue (e : Expr) : Bool := (Sym.getStringValue? e).isSome
abbrev isIntValue (e : Expr) : Bool := (Sym.getIntValue? e).isSome
abbrev isBitVecValue (e : Expr) : Bool := (Sym.getBitVecValue? e).isSome
abbrev isFinValue (e : Expr) : Bool := (Sym.getFinValue? e).isSome
abbrev isCharValue (e : Expr) : Bool := (Sym.getCharValue? e).isSome
abbrev isRatValue (e : Expr) : Bool := (Sym.getRatValue? e).isSome
abbrev isUInt8Value (e : Expr) : Bool := (Sym.getUInt8Value? e).isSome
abbrev isUInt16Value (e : Expr) : Bool := (Sym.getUInt16Value? e).isSome
abbrev isUInt32Value (e : Expr) : Bool := (Sym.getUInt32Value? e).isSome
abbrev isUInt64Value (e : Expr) : Bool := (Sym.getUInt64Value? e).isSome
abbrev isInt8Value (e : Expr) : Bool := (Sym.getInt8Value? e).isSome
abbrev isInt16Value (e : Expr) : Bool := (Sym.getInt16Value? e).isSome
abbrev isInt32Value (e : Expr) : Bool := (Sym.getInt32Value? e).isSome
abbrev isInt64Value (e : Expr) : Bool := (Sym.getInt64Value? e).isSome

public def isVal (e : Expr) : Bool :=
  [
    isNatValue,
    isStringValue,
    isIntValue,
    isBitVecValue,
    isFinValue,
    isCharValue,
    isUInt8Value,
    isUInt16Value,
    isUInt32Value,
    isUInt64Value,
    isInt8Value,
    isInt16Value,
    isInt32Value,
    isInt64Value
  ].any (· e)

/-- Returns `.rfl (done := true)` for ground literal values of any recognized builtin type,
preventing the simplifier from recursing into them. For example, this stops the evaluator
from trying to unfold `OfNat.ofNat 2` further. -/
public def isBuiltinValue : Simproc := fun e => return .rfl (isVal e)

public def guardSimproc (p : Expr → Bool) (s : Simproc) : Simproc := fun e => do
  if p e then s e else return .rfl

/-- TODO: Handle code duplication -/
def isAlwaysZero : Level → Bool
  | .zero ..    => true
  | .mvar ..    => false
  | .param ..   => false
  | .succ ..    => false
  | .max u v    => isAlwaysZero u && isAlwaysZero v
  | .imax _ u   => isAlwaysZero u

/- Modified for the `SymM` usage -/
def isProp (e : Expr) : Sym.SymM Bool := do
  match (← isPropQuick e) with
  | .true  => return true
  | .false => return false
  | .undef =>
    let type ← Sym.inferType e
    let type ← whnfD type
    match type with
    | Expr.sort u => return isAlwaysZero (← instantiateLevelMVars u)
    | _           => return false

/- Modified for the `SymM` usage -/
def isProof (e : Expr) : Sym.SymM Bool := do
  match (← isProofQuick e) with
  | .true  => return true
  | .false => return false
  | .undef => isProp (← Sym.inferType e)

/-- Marks proof terms as done so the simplifier does not recurse into them. -/
public def isProofTerm : Simproc := fun e => do
  return .rfl (← isProof e)

/-- Extract elements from a `List.cons`/`List.nil` chain. -/
public partial def getListLitElems (e : Expr) (acc : Array Expr := #[]) : Option <| Array Expr :=
  match_expr e with
  | List.nil _ => some acc
  | List.cons _ a as => getListLitElems as <| acc.push a
  | _ => none

public def markAsDoneIfFailed : Result → Result
  | .rfl _ cd => .rfl true cd
  | .step e h d cd => .step e h d cd

end Lean.Meta.Tactic.Cbv
```
