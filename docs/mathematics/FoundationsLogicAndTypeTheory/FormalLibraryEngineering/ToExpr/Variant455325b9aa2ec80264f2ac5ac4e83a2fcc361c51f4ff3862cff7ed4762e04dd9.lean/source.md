# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToExpr.Variant455325b9aa2ec80264f2ac5ac4e83a2fcc361c51f4ff3862cff7ed4762e04dd9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c5e695a990966b08bba30ca0dd1e73559fdd3e7` · SHA-256 `621e99ff8b5b79c88c50445ef5d03ca49082455b461d77dd34e5305de83436a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToExpr.Variant97ce56c718e5eeb86f308d10007485cac0803f92216d434a2aee3db6cfee7cd0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"97ce56c718e5eeb86f308d10007485cac0803f92216d434a2aee3db6cfee7cd0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ToExpr.Variant97ce56c718e5eeb86f308d10007485cac0803f92216d434a2aee3db6cfee7cd0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"97ce56c718e5eeb86f308d10007485cac0803f92216d434a2aee3db6cfee7cd0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/ToExpr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.ToLevel
public import Init.Data.Rat.Basic

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToExpr.Variant97ce56c718e5eeb86f308d10007485cac0803f92216d434a2aee3db6cfee7cd0

public section
universe u
namespace Lean

/--
We use the `ToExpr` type class to convert values of type `α` into
expressions that denote these values in Lean.

Examples:
```
toExpr true = .const ``Bool.true []

toTypeExpr Bool = .const ``Bool []
```

See also `ToLevel` for representing universe levels as `Level` expressions.
-/
class ToExpr (α : Type u) where
  /-- Convert a value `a : α` into an expression that denotes `a` -/
  toExpr     : α → Expr
  /-- Expression representing the type `α` -/
  toTypeExpr : Expr

export ToExpr (toExpr toTypeExpr)

instance : ToExpr Nat where
  toExpr     := mkNatLit
  toTypeExpr := mkConst ``Nat

instance : ToExpr Int where
  toTypeExpr := .const ``Int []
  toExpr i := if 0 ≤ i then
    mkNat i.toNat
  else
    mkApp3 (.const ``Neg.neg [0]) (.const ``Int []) (.const ``Int.instNegInt [])
      (mkNat (-i).toNat)
where
  mkNat (n : Nat) : Expr :=
    let r := mkRawNatLit n
    mkApp3 (.const ``OfNat.ofNat [0]) (.const ``Int []) r
        (.app (.const ``instOfNat []) r)

instance : ToExpr Rat where
  toTypeExpr := .const ``Rat []
  toExpr i   := if i.den == 1 then
    mkInt i.num
  else
    mkApp6 (.const ``HDiv.hDiv [0, 0, 0]) (.const ``Rat []) (.const ``Rat []) (.const ``Rat [])
      (mkApp2 (.const ``instHDiv [0]) (.const ``Rat []) (.const ``Rat.instDiv []))
      (mkInt i.num) (mkInt i.den)
where
  mkInt (i : Int) : Expr :=
    if 0 ≤ i then
      mkNat i.toNat
    else
      mkApp3 (.const ``Neg.neg [0]) (.const ``Rat []) (.const ``Rat.instNeg [])
        (mkNat (-i).toNat)
  mkNat (n : Nat) : Expr :=
    let r := mkRawNatLit n
    mkApp3 (.const ``OfNat.ofNat [0]) (.const ``Rat []) r
        (.app (.const ``Rat.instOfNat []) r)

instance : ToExpr (Fin n) where
  toTypeExpr := .app (mkConst ``Fin) (toExpr n)
  toExpr a :=
    let r := mkRawNatLit a.val
    mkApp3 (.const ``OfNat.ofNat [0]) (.app (mkConst ``Fin) (toExpr n)) r
      (mkApp3 (.const ``Fin.instOfNat []) (toExpr n)
        (.app (.const ``Nat.instNeZeroSucc []) (mkNatLit (n-1))) r)

instance : ToExpr (BitVec n) where
  toTypeExpr := .app (mkConst ``BitVec) (toExpr n)
  -- Remark: We use ``BitVec.ofNat to represent bitvector literals
  toExpr a := mkApp2 (.const ``BitVec.ofNat []) (toExpr n) (toExpr a.toNat)

instance : ToExpr UInt8 where
  toTypeExpr := mkConst ``UInt8
  toExpr a :=
    let r := mkRawNatLit a.toNat
    mkApp3 (.const ``OfNat.ofNat [0]) (mkConst ``UInt8) r
      (.app (.const ``UInt8.instOfNat []) r)

instance : ToExpr UInt16 where
  toTypeExpr := mkConst ``UInt16
  toExpr a :=
    let r := mkRawNatLit a.toNat
    mkApp3 (.const ``OfNat.ofNat [0]) (mkConst ``UInt16) r
      (.app (.const ``UInt16.instOfNat []) r)

instance : ToExpr UInt32 where
  toTypeExpr := mkConst ``UInt32
  toExpr a :=
    let r := mkRawNatLit a.toNat
    mkApp3 (.const ``OfNat.ofNat [0]) (mkConst ``UInt32) r
      (.app (.const ``UInt32.instOfNat []) r)

instance : ToExpr UInt64 where
  toTypeExpr := mkConst ``UInt64
  toExpr a :=
    let r := mkRawNatLit a.toNat
    mkApp3 (.const ``OfNat.ofNat [0]) (mkConst ``UInt64) r
      (.app (.const ``UInt64.instOfNat []) r)

instance : ToExpr USize where
  toTypeExpr := mkConst ``USize
  toExpr a :=
    let r := mkRawNatLit a.toNat
    mkApp3 (.const ``OfNat.ofNat [0]) (mkConst ``USize) r
      (.app (.const ``USize.instOfNat []) r)

instance : ToExpr Int8 where
  toTypeExpr := mkConst ``Int8
  toExpr i := if 0 ≤ i then
    mkNat i.toNatClampNeg
  else
    mkApp3 (.const ``Neg.neg [0]) (.const ``Int8 []) (.const ``Int8.instNeg [])
      (mkNat (-(i.toInt)).toNat)
where
  mkNat (n : Nat) : Expr :=
    let r := mkRawNatLit n
    mkApp3 (.const ``OfNat.ofNat [0]) (.const ``Int8 []) r
        (.app (.const ``Int8.instOfNat []) r)

instance : ToExpr Int16 where
  toTypeExpr := mkConst ``Int16
  toExpr i := if 0 ≤ i then
    mkNat i.toNatClampNeg
  else
    mkApp3 (.const ``Neg.neg [0]) (.const ``Int16 []) (.const ``Int16.instNeg [])
      (mkNat (-(i.toInt)).toNat)
where
  mkNat (n : Nat) : Expr :=
    let r := mkRawNatLit n
    mkApp3 (.const ``OfNat.ofNat [0]) (.const ``Int16 []) r
        (.app (.const ``Int16.instOfNat []) r)

instance : ToExpr Int32 where
  toTypeExpr := mkConst ``Int32
  toExpr i := if 0 ≤ i then
    mkNat i.toNatClampNeg
  else
    mkApp3 (.const ``Neg.neg [0]) (.const ``Int32 []) (.const ``Int32.instNeg [])
      (mkNat (-(i.toInt)).toNat)
where
  mkNat (n : Nat) : Expr :=
    let r := mkRawNatLit n
    mkApp3 (.const ``OfNat.ofNat [0]) (.const ``Int32 []) r
        (.app (.const ``Int32.instOfNat []) r)

instance : ToExpr Int64 where
  toTypeExpr := mkConst ``Int64
  toExpr i := if 0 ≤ i then
    mkNat i.toNatClampNeg
  else
    mkApp3 (.const ``Neg.neg [0]) (.const ``Int64 []) (.const ``Int64.instNeg [])
      (mkNat (-(i.toInt)).toNat)
where
  mkNat (n : Nat) : Expr :=
    let r := mkRawNatLit n
    mkApp3 (.const ``OfNat.ofNat [0]) (.const ``Int64 []) r
        (.app (.const ``Int64.instOfNat []) r)

instance : ToExpr ISize where
  toTypeExpr := mkConst ``ISize
  toExpr i := if 0 ≤ i then
    mkNat i.toNatClampNeg
  else
    mkApp3 (.const ``Neg.neg [0]) (.const ``ISize []) (.const ``ISize.instNeg [])
      (mkNat (-(i.toInt)).toNat)
where
  mkNat (n : Nat) : Expr :=
    let r := mkRawNatLit n
    mkApp3 (.const ``OfNat.ofNat [0]) (.const ``ISize []) r
        (.app (.const ``ISize.instOfNat []) r)

instance : ToExpr Bool where
  toExpr     := fun b => if b then mkConst ``Bool.true else mkConst ``Bool.false
  toTypeExpr := mkConst ``Bool

instance : ToExpr Char where
  toExpr     := fun c => mkApp (mkConst ``Char.ofNat) (mkRawNatLit c.toNat)
  toTypeExpr := mkConst ``Char

instance : ToExpr String where
  toExpr     := mkStrLit
  toTypeExpr := mkConst ``String

instance : ToExpr Unit where
  toExpr     := fun _ => mkConst `Unit.unit
  toTypeExpr := mkConst ``Unit

instance : ToExpr System.FilePath where
  toExpr p := mkApp (mkConst ``System.FilePath.mk) (toExpr p.toString)
  toTypeExpr := mkConst ``System.FilePath

private def Name.toExprAux (n : Name) : Expr :=
  if isSimple n 0 then
    mkStr n 0 #[]
  else
    go n
where
  isSimple (n : Name) (sz : Nat) : Bool :=
    match n with
    | .anonymous => 0 < sz && sz <= 8
    | .str p _ => isSimple p (sz+1)
    | _ => false

  mkStr (n : Name) (sz : Nat) (args : Array Expr) : Expr :=
    match n with
    | .anonymous => mkAppN (mkConst (.str ``Lean.Name ("mkStr" ++ toString sz))) args.reverse
    | .str p s => mkStr p (sz+1) (args.push (toExpr s))
    | _ => unreachable!

  go : Name → Expr
    | .anonymous => mkConst ``Lean.Name.anonymous
    | .str p s ..=> mkApp2 (mkConst ``Lean.Name.str) (go p) (toExpr s)
    | .num p n ..=> mkApp2 (mkConst ``Lean.Name.num) (go p) (toExpr n)

instance : ToExpr Name where
  toExpr     := private Name.toExprAux
  toTypeExpr := mkConst ``Name

instance {α : Type u} [ToLevel.{u}] [ToExpr α] : ToExpr (Option α) :=
  let type := toTypeExpr α
  { toExpr     := fun o => match o with
      | none   => mkApp (mkConst ``Option.none [toLevel.{u}]) type
      | some a => mkApp2 (mkConst ``Option.some [toLevel.{u}]) type (toExpr a),
    toTypeExpr := mkApp (mkConst ``Option [toLevel.{u}]) type }

private def List.toExprAux [ToExpr α] (nilFn : Expr) (consFn : Expr) : List α → Expr
  | []    => nilFn
  | a::as => mkApp2 consFn (toExpr a) (toExprAux nilFn consFn as)

instance {α : Type u} [ToLevel.{u}] [ToExpr α] : ToExpr (List α) :=
  let type := toTypeExpr α
  let nil  := mkApp (mkConst ``List.nil [toLevel.{u}]) type
  let cons := mkApp (mkConst ``List.cons [toLevel.{u}]) type
  { toExpr     := private List.toExprAux nil cons,
    toTypeExpr := mkApp (mkConst ``List [toLevel.{u}]) type }

instance {α : Type u} [ToLevel.{u}] [ToExpr α] : ToExpr (Array α) :=
  let type := toTypeExpr α
  { toExpr     := fun as => mkApp2 (mkConst ``List.toArray [toLevel.{u}]) type (toExpr as.toList),
    toTypeExpr := mkApp (mkConst ``Array [toLevel.{u}]) type }

instance {α : Type u} {β : Type v} [ToLevel.{u}] [ToLevel.{v}]
    [ToExpr α] [ToExpr β] : ToExpr (α × β) :=
  let αType := toTypeExpr α
  let βType := toTypeExpr β
  { toExpr     := fun ⟨a, b⟩ => mkApp4 (mkConst ``Prod.mk [toLevel.{u}, toLevel.{v}]) αType βType (toExpr a) (toExpr b),
    toTypeExpr := mkApp2 (mkConst ``Prod [toLevel.{u}, toLevel.{v}]) αType βType }

instance : ToExpr Literal where
  toTypeExpr := mkConst ``Literal
  toExpr l   := match l with
   | .natVal _ => mkApp (mkConst ``Literal.natVal) (.lit l)
   | .strVal _ => mkApp (mkConst ``Literal.strVal) (.lit l)

instance : ToExpr FVarId where
  toTypeExpr    := mkConst ``FVarId
  toExpr fvarId := mkApp (mkConst ``FVarId.mk) (toExpr fvarId.name)

instance : ToExpr Syntax.Preresolved where
  toTypeExpr := .const ``Syntax.Preresolved []
  toExpr
    | .namespace ns => mkApp (.const ``Syntax.Preresolved.namespace []) (toExpr ns)
    | .decl a ls => mkApp2 (.const ``Syntax.Preresolved.decl []) (toExpr a) (toExpr ls)

end Lean
````
