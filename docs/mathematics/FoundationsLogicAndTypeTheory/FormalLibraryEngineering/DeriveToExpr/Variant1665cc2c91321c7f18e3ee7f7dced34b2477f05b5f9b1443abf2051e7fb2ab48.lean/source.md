# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeriveToExpr.Variant1665cc2c91321c7f18e3ee7f7dced34b2477f05b5f9b1443abf2051e7fb2ab48

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f1edbfdebf16aff3d70825d83aaf7cd97ae3748` · SHA-256 `89bee9f4de3b8a128f2a0d1d6e6374c0be44d4b0c499df85ee3d179702b034c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MyMaybe.Variant0a1c1021f64359e17af13e6d43f01d53fe5847817da44167d1714b58885b1d6c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0a1c1021f64359e17af13e6d43f01d53fe5847817da44167d1714b58885b1d6c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MyMaybe.Variant0a1c1021f64359e17af13e6d43f01d53fe5847817da44167d1714b58885b1d6c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0a1c1021f64359e17af13e6d43f01d53fe5847817da44167d1714b58885b1d6c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/DeriveToExpr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import Mathlib.Tactic.DeriveToExpr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MyMaybe.Variant0a1c1021f64359e17af13e6d43f01d53fe5847817da44167d1714b58885b1d6c

namespace tests
open Lean

-- TODO this file fails without this line due to a bug in the handler?
set_option autoImplicit true
set_option trace.Elab.Deriving.toExpr true

inductive MyMaybe (α : Type u)
  | none | some (x : α)
  deriving ToExpr

#eval Lean.PrettyPrinter.ppExpr <| toExpr (MyMaybe.some 2)

#eval Meta.check <| toExpr (MyMaybe.some 2)

deriving instance ToExpr for ULift

#eval do
  let e := toExpr (MyMaybe.none : MyMaybe (ULift.{1,0} Nat))
  let ty := toTypeExpr (MyMaybe (ULift.{1,0} Nat))
  Meta.check e
  Meta.check ty
  guard <| ← Meta.isDefEq (← Meta.inferType e) ty
  guard <| (← Meta.getLevel ty) == Level.zero.succ.succ

#eval do
  Meta.check <| toExpr <| (MyMaybe.some (ULift.up 2) : MyMaybe (ULift.{1,0} Nat))

deriving instance ToExpr for List

inductive Foo
  | l (x : List Foo)
  deriving ToExpr

#eval Meta.check <| toExpr (Foo.l [Foo.l [], Foo.l [Foo.l []]])

inductive Bar
  | func (x : Bool → Nat)
  --deriving ToExpr
/- As expected:
failed to synthesize instance
  ToExpr (Bool → Nat)
-/

def boolFunHelper (x y : α) (b : Bool) : α := if b then x else y

instance {α : Type u} [ToExpr α] [ToLevel.{u+1}] : ToExpr (Bool → α) where
  toExpr g :=
    mkApp3 (.const ``boolFunHelper [toLevel.{u+1}])
      (toTypeExpr α) (toExpr <| g true) (toExpr <| g false)
  toTypeExpr := .forallE `x (.const ``Bool []) (toTypeExpr α) .default

deriving instance ToExpr for Bar

#eval do
  let f : Bool → Nat | false => 0 | true => 1
  let e := toExpr <| Bar.func f
  Meta.check e
  guard <| ← Meta.isDefEq (← Meta.inferType e) (toTypeExpr Bar)

mutual
inductive A
  | a
deriving ToExpr
inductive B
  | b
deriving ToExpr
end

#eval do
  Meta.check <| toExpr A.a
  Meta.check <| toExpr B.b

mutual
inductive C
  | c (x : List D)
deriving ToExpr
inductive D
  | b (y : List C)
deriving ToExpr
end

-- An incomplete `ToExpr` instance just to finish deriving `ToExpr` for `Expr`.
instance : ToExpr MData where
  toExpr _ := mkConst ``MData.empty
  toTypeExpr := mkConst ``MData

deriving instance ToExpr for FVarId
deriving instance ToExpr for MVarId
deriving instance ToExpr for LevelMVarId
deriving instance ToExpr for Level
deriving instance ToExpr for BinderInfo
deriving instance ToExpr for Literal
deriving instance ToExpr for Expr

#eval Meta.check <| toExpr <| toExpr [1,2,3]

end tests
```
