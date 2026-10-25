# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NormRank.Variant7506dd03450345ab2dab6b47e6e84762fd91bc9941bf9ff57524115ef600995b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92e5b900d29a7335489db745cdd9c8df741c161c` · SHA-256 `7506dd03450345ab2dab6b47e6e84762fd91bc9941bf9ff57524115ef600995b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Rao Xiaojia. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rao Xiaojia
-/
module

public import Mathlib.Tactic.Echelon.Bareiss
public import Mathlib.Tactic.Echelon.Parsing
public meta import Mathlib.Tactic.Echelon.Bareiss

/-!
# `eval_rank`: rank of matrix literals by Bareiss elimination

This module defines the `eval_rank` tactic and the `norm_rank` simproc, which compute
the rank of a matrix literal with non-symbolic entries through an
`Echelon.Decomposition` certificate checked by the kernel.
-/

public meta section

open Lean Meta Elab Qq

namespace Mathlib.Tactic.Echelon

/-- Rewrite `Matrix.rank A` to the pivot count of the Bareiss decomposition of the matrix
literal `A`. -/
def normalizeRank (e A : Expr) (m n : Nat) (R : Expr) (entries : Array (Array Expr)) :
    MetaM Simp.Result := do
  let u ← getDecLevel R
  have α : Q(Type u) := R
  let res ← mkBareissDecomposition A m n α entries
  let pf ← mkAppM ``Echelon.Decomposition.rank_eq #[res.cert]
  let k := mkNatLit res.data.pivot.size
  return { expr := k, proof? := some (← mkExpectedTypeHint pf (← mkEq e k)) }

/-- Core of the `norm_rank` simproc. -/
def normRankCore : Simp.Simproc := fun e => do
  let_expr Matrix.rank _ _ _ _ _ A := e | return .continue
  let A ← instantiateMVars A
  let some (m, n, R, entries) ← matchMatrixLit? A
    | trace[Tactic.evalRank] "not a closed matrix literal{indentExpr A}"
      return .continue
  match ← checkBareissApplicable R with
  | .ok _ => return .done (← normalizeRank e A m n R entries)
  | .error err =>
    trace[Tactic.evalRank] "{err}{indentExpr A}"
    return .continue

end Mathlib.Tactic.Echelon

open Mathlib.Tactic.Echelon

/-- The `norm_rank` simproc evaluates the rank of matrices with non-symbolic entries.
Terms that it cannot evaluate are skipped. -/
simproc_decl norm_rank (Matrix.rank _) := fun e => do
  try normRankCore e
  catch ex =>
    trace[Tactic.evalRank] "{ex.toMessageData}"
    return .continue

/--
`eval_rank` evaluates the rank of matrices with non-symbolic entries.

The element type must be a commutative domain with kernel-decidable equality.
Terms skipped can be viewed by using `set_option trace.Tactic.evalRank true`.
-/
elab (name := evalRank) "eval_rank" : tactic => do
  try
    Tactic.evalTactic (← `(tactic| simp only [norm_rank]))
  catch _ =>
    throwError "`eval_rank` made no progress.\n\
      Additional information may be available using `set_option trace.Tactic.evalRank true`."
  Tactic.evalTactic (← `(tactic| try lia))
```
