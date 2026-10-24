# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant36f04592b7303110fa96e372faeec3809ef151697c8e736af277e267110470e8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b615c47839aeb9ff91e3dbe822192372b990a000` · SHA-256 `e7138d1d8b3e76797541f980c19d47ef8440b7f6ff7422e58d60abc3672e4ee3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Gate.Variantea70fd668d1c385019f53c4605ee2505f7b9037613ab9fc382e268ba35511b68","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ea70fd668d1c385019f53c4605ee2505f7b9037613ab9fc382e268ba35511b68","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Gate.Variantea70fd668d1c385019f53c4605ee2505f7b9037613ab9fc382e268ba35511b68","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ea70fd668d1c385019f53c4605ee2505f7b9037613ab9fc382e268ba35511b68","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BoolExpr/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.Data.String.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Gate.Variantea70fd668d1c385019f53c4605ee2505f7b9037613ab9fc382e268ba35511b68

@[expose] public section

/-!
This module contains the definition of a generic boolean substructure for SMT problems with
`BoolExpr`. For verification purposes `BoolExpr.Sat` and `BoolExpr.Unsat` are provided.
-/

namespace Std.Tactic.BVDecide

inductive Gate
  | and
  | xor
  | beq
  | or

namespace Gate

def toString : Gate → String
  | and => "&&"
  | xor => "^^"
  | beq => "=="
  | or => "||"

def eval : Gate → Bool → Bool → Bool
  | and => (· && ·)
  | xor => (· ^^ ·)
  | beq => (· == ·)
  | or => (· || ·)

end Gate

inductive BoolExpr (α : Type)
  | literal : α → BoolExpr α
  | const : Bool → BoolExpr α
  | not : BoolExpr α → BoolExpr α
  | gate : Gate → BoolExpr α → BoolExpr α → BoolExpr α
  | ite : BoolExpr α → BoolExpr α → BoolExpr α → BoolExpr α

namespace BoolExpr

def toString [ToString α] : BoolExpr α → String
  | literal a => ToString.toString a
  | const b => ToString.toString b
  | not x => "!" ++ toString x
  | gate g x y => "(" ++ toString x ++ " " ++ g.toString ++ " " ++ toString y ++ ")"
  | ite d l r => "(if " ++ toString d ++ " " ++ toString l ++ " " ++ toString r ++ ")"

instance [ToString α] : ToString (BoolExpr α) := ⟨toString⟩

def eval (a : α → Bool) : BoolExpr α → Bool
  | .literal l => a l
  | .const b => b
  | .not x => !eval a x
  | .gate g x y => g.eval (eval a x) (eval a y)
  | .ite d l r => bif d.eval a then l.eval a else r.eval a

@[simp] theorem eval_literal : eval a (.literal l) = a l := rfl
@[simp] theorem eval_const : eval a (.const b) = b := rfl
@[simp] theorem eval_not : eval a (.not x) = !eval a x := rfl
@[simp] theorem eval_gate : eval a (.gate g x y) = g.eval (eval a x) (eval a y) := rfl
@[simp] theorem eval_ite : eval a (.ite d l r) = bif d.eval a then l.eval a else r.eval a := rfl

def Sat (a : α → Bool) (x : BoolExpr α) : Prop := eval a x = true
def Unsat (x : BoolExpr α) : Prop := ∀ f, eval f x = false

theorem sat_and {x y : BoolExpr α} {a : α → Bool} (hx : Sat a x) (hy : Sat a y) :
    Sat a (BoolExpr.gate .and x y) := by
  simp only [Sat] at *
  simp [hx, hy, Gate.eval]

theorem sat_true {a : α → Bool} : Sat a (BoolExpr.const true : BoolExpr α) := rfl

end BoolExpr

end Std.Tactic.BVDecide
```
