# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Cert.Variantccaf9e587267ec6449b3cb5b0301e2d45b719d22fb3e9f64baffa6b1387fb05c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ffcdbfde99b11389744b58363860ae652fa6f34` · SHA-256 `62c67cccfbd58c92532c06dfa4d91e2118b007aeb0127764951292fb751f487c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MkFinNumeral.Variantb126ee3cb798d08c2c513b0604f834d9b98a51f33e0bc43c70f753301dcc6d8e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b126ee3cb798d08c2c513b0604f834d9b98a51f33e0bc43c70f753301dcc6d8e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.MkFinNumeral.Variantb126ee3cb798d08c2c513b0604f834d9b98a51f33e0bc43c70f753301dcc6d8e","mathematical_subject":"Logic.Foundations","original_sha256":"b126ee3cb798d08c2c513b0604f834d9b98a51f33e0bc43c70f753301dcc6d8e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/Echelon/Cert.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Rao Xiaojia. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rao Xiaojia
-/
module

public import Mathlib.LinearAlgebra.Matrix.Echelon.Decomposition  -- shake: keep (Qq dependency)
public import Mathlib.Tactic.Echelon.Core
public import Mathlib.Util.Qq
public meta import Mathlib.Tactic.Echelon.Core

/-!
# Certificate construction for the Bareiss decomposition

The certificate constructor from the decomposition data, and the default certifier
`mkCertificate`, which currently proves the certificate conditions by `decide +kernel`.

This will eventually be generalised to a general certificate
constructor that is parametric on a leaf normaliser.

## Main definitions

- `mkCertificate`: build the `Echelon.Decomposition` certificate of a matrix literal.
- `checkKernelDecide`: check that equality in a ring reduces in the kernel.
- `mkPerm`, `mkPivotLit`, `mkMatrixLit`: elaborate the row permutation, the pivot
  function, and a matrix literal.

## Implementation notes

The elimination records its echelon form `U`, making the product a certificate obligation
of its own, `L * A_σ = U`, decided separately from the pivot condition on `U`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MkFinNumeral.Variantb126ee3cb798d08c2c513b0604f834d9b98a51f33e0bc43c70f753301dcc6d8e

public meta section

open Lean Meta Qq

namespace Mathlib.Tactic.Echelon

/-- Build the numeral of `i` in `Fin $n`. -/
def mkFinNumeral (n : ℕ) (i : ℕ) : MetaM Q(Fin $n) :=
  mkNumeral q(Fin $n) i

/-- Build the matrix literal of the row-major entries `rows`. -/
def mkMatrixLit {u : Level} (α : Q(Type u)) (m n : Nat) (rows : Array (Array Expr)) :
    Q(Matrix (Fin $m) (Fin $n) $α) :=
  Matrix.mkLiteralQ (α := α) (m := m) (n := n) (.of fun i j => (rows[i]!)[j]!)

/-- Build the pivot literal `![↑c₀, …, ⊤, …] : Fin m → WithTop (Fin n)`, sending the
first rows to their pivot columns and the remaining rows to `⊤`. -/
def mkPivotLit (m n : Nat) (pivots : Array Nat) : MetaM Q(Fin $m → WithTop (Fin $n)) := do
  let entries : Array Q(WithTop (Fin $n)) ← Array.ofFnM (n := m) fun i => do
    if hi : i < pivots.size then
      return q(WithTop.some $(← mkFinNumeral n pivots[i]))
    else
      return q(⊤ : WithTop (Fin $n))
  return PiFin.mkLiteralQ (α := q(WithTop (Fin $n))) (n := m) fun i => entries[i]!

/-- Build the permutation `σ = swap a₀ b₀ * swap a₁ b₁ * ⋯` from the recorded swaps. -/
def mkPerm (m : Nat) (swaps : Array (Nat × Nat)) : MetaM Q(Equiv.Perm (Fin $m)) := do
  let mut acc : Q(Equiv.Perm (Fin $m)) := q(Equiv.refl (Fin $m))
  for (a, b) in swaps do
    acc := q((Equiv.swap $(← mkFinNumeral m a) $(← mkFinNumeral m b)).trans $acc)
  return acc

/-- Check that equality with zero in `α` reduces to a verdict in the kernel, as the
certificate conditions will be decided by kernel reduction. This needs to be changed when
the cert-checking tactic is updated. -/
def checkKernelDecide {u : Level} (α : Q(Type u)) : MetaM Unit := do
  have _cr : Q(CommRing $α) := ← synthInstanceQ q(CommRing $α)
  -- `Decidable` of the single equality rather than `DecidableEq`: a ring where equality
  -- is only decidable against zero should pass
  let some inst ← synthInstance? q(Decidable (((1 : ℤ) : $α) = 0))
    | throwError "equality with zero in the element type is not decidable{indentExpr α}"
  -- check if the equality reduced to a concrete false
  unless (Kernel.whnf (← getEnv) (← getLCtx) inst).toOption.any
      (·.isAppOf ``Decidable.isFalse) do
    throwError "equality in the element type does not reduce in the kernel{indentExpr α}"

/-- Prove the certificate condition `c` by a kernel-checked `decide`, with `name` naming
the condition in errors. -/
def certifyCondition (name : String) (c : Q(Prop)) : MetaM Q($c) := do
  let d ← mkDecide c
  let .ok r := Kernel.whnf (← getEnv) (← getLCtx) d
    | throwError "cannot verify the rank certificate: {name} does not reduce in the kernel"
  unless r.isConstOf ``Bool.true do
    throwError "cannot verify the rank certificate: {name} failed"
  mkDecideProofQ c

/-- Build the `Echelon.Decomposition` certificate of `A` from the decomposition data and
`entries`, the parsed entries of `A`. -/
def mkCertificate {u : Level} {m n : ℕ} {α : Q(Type u)} (_cr : Q(CommRing $α))
    (A : Q(Matrix (Fin $m) (Fin $n) $α)) (entries : Array (Array Expr))
    (data : BareissData Expr) : MetaM Q(Echelon.Decomposition $A) := do
  have L := mkMatrixLit α m m data.L
  have U := mkMatrixLit α m n data.U
  -- the row of `A_σ = A.submatrix σ id` at position `i` is the row of `A` at `σ i`
  have Aσ := mkMatrixLit α m n (data.rowOrder.map (entries[·]!))
  let σ ← mkPerm m data.swaps
  let pivot ← mkPivotLit m n data.pivot
  let hperm ← certifyCondition "the row arrangement" q(($A).submatrix $σ id = $Aσ)
  -- TODO: switch to a dedicated matrix multiplication tactic once implemented
  let hprod ← certifyCondition "the product of the transform" q($L * $Aσ = $U)
  have hU : Q($L * ($A).submatrix $σ id = $U) := q($hperm ▸ $hprod)
  let hpivot ← certifyCondition "the echelon-pivot condition" q(($U).IsPivotedBy $pivot)
  let hlower ← certifyCondition "lower triangularity of the transform" q(($L).IsLowerTriangular)
  let hdiag ← certifyCondition "the nonzero diagonal of the transform" q(∀ i, ($L).diag i ≠ 0)
  return q(⟨$L, $σ, $pivot, $hU ▸ $hpivot, $hlower, $hdiag⟩)

end Mathlib.Tactic.Echelon
```
