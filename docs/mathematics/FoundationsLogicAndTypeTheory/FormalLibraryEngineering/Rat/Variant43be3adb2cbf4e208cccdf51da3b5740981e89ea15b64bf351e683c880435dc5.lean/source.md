# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rat.Variant43be3adb2cbf4e208cccdf51da3b5740981e89ea15b64bf351e683c880435dc5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `539cf1128685c401685151c16e5f49bef3f62231` · SHA-256 `ecf8696ec531c79a3028e4070e6245f5617b71b6b12f6d5e2682155d0c74e542`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalRatEntry.Variant80b446961100d3615cd6f269349be4a3386b0ed301b2128750725f4e78b61027","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"80b446961100d3615cd6f269349be4a3386b0ed301b2128750725f4e78b61027","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EvalRatEntry.Variant80b446961100d3615cd6f269349be4a3386b0ed301b2128750725f4e78b61027","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"80b446961100d3615cd6f269349be4a3386b0ed301b2128750725f4e78b61027","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/Echelon/Rat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Rao Xiaojia. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rao Xiaojia
-/
module

public import Mathlib.Algebra.CharP.Defs  -- shake: keep (Qq dependency)
public import Mathlib.Tactic.Echelon.Core
public import Mathlib.Tactic.NormNum.Basic
public meta import Mathlib.Tactic.Echelon.Core

/-!
# The rational model for the Bareiss elimination

The rational model of a ring: entries evaluate to rational numerals via `norm_num`,
denominators are cleared by row scaling, and the elimination runs on integer values. It
is the fallback model the tactic uses when no ring-specific model matches the ring.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalRatEntry.Variant80b446961100d3615cd6f269349be4a3386b0ed301b2128750725f4e78b61027

public meta section

open Lean Meta Qq

namespace Mathlib.Tactic.Echelon

/-- Data-only evaluation of a matrix entry to its rational value via `norm_num`.
Fraction values are accepted only in characteristic zero. -/
def evalRatEntry (charZero : Bool) (e : Expr) : MetaM Rat := do
  let ⟨_, _, eQ⟩ ← inferTypeQ' e
  let r ← try some <$> Meta.NormNum.derive eQ catch _ => pure none
  if let some v := r.bind (·.toRat) then
    if v.den == 1 || charZero then
      return v
  throwError "the following entry cannot be simplified to a numeral{indentExpr e}"

/-- Scale each row by the lcm of its denominators to clear them. Returns the integer
matrix together with the row scales, which are later folded back into `L`. -/
def scaleRowsIntegral (ratRows : Array (Array Rat)) : Array (Array Int) × Array Nat :=
  let scales : Array Nat := ratRows.map fun row => row.foldl (fun l v => Nat.lcm l v.den) 1
  ((ratRows.zipWith (bs := scales) fun row s => row.map fun v => (mkRat s 1 * v).num), scales)

/-- The restoration for `scaleRowsIntegral`: fold the row scales into the transform,
scaling column `j` by the factor of the row that ends up in position `j`. -/
def restoreScaling (scales : Array Nat) (d : BareissData Int) : BareissData Int :=
  let order := d.rowOrder
  { d with L := d.L.map fun row =>
      row.mapIdx fun j a => a * scales.getD (order.getD j 0) 1 }

/-- Build the numeral of an integer in `α`: `mkNumeral` on the absolute value, negated if
`i` is negative. -/
def mkIntNumeral {u : Level} (α : Q(Type u)) (i : Int) : MetaM Q($α) := do
  let n ← mkNumeral α i.natAbs
  have n : Q($α) := n
  if i < 0 then
    let _ ← synthInstanceQ q(Neg $α)
    return q(-$n)
  else
    return n

/-- The rational model of a ring: entries evaluate to rational numerals, denominators
are cleared by row scaling, and the elimination runs on integer values. It applies to
every ring, as the fallback model. -/
def ratProducer (R : Expr) : MetaM Producer := do
  let u ← getDecLevel R
  have α : Q(Type u) := R
  -- the characteristic determines the zero test
  have _cr : Q(CommRing $α) := ← synthInstanceQ q(CommRing $α)
  let pE : Q(ℕ) ← mkFreshExprMVarQ q(ℕ)
  let .some _ ← trySynthInstanceQ q(CharP $α $pE)
    | throwError "could not determine the characteristic of the element type{indentExpr α}"
  -- `whnfD`: the ambient transparency inside `simp` is `reducible`, which does not reduce
  -- the numeral to a literal
  let some p := (← whnfD (← instantiateMVars pE)).rawNatLit?
    | throwError "the characteristic of the element type is not a literal{indentExpr α}"
  let ops : RingOps Int := {
    zero := 0
    one := 1
    mul := (· * ·)
    sub := (· - ·)
    divExact := (· / ·)
    isZero := if p == 0 then (· == 0) else fun v => v % p == 0 }
  let prepare (entries : Array (Array Expr)) :
      MetaM (Array (Array Int) × (BareissData Int → BareissData Int)) := do
    let ratRows ← entries.mapM (·.mapM (evalRatEntry (p == 0)))
    let (values, scales) := scaleRowsIntegral ratRows
    return (values, restoreScaling scales)
  return mkProducer ops prepare (mkIntNumeral α)

end Mathlib.Tactic.Echelon
```
