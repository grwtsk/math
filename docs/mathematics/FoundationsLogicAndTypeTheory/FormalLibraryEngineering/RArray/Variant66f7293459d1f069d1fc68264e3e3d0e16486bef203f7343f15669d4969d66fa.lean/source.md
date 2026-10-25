# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RArray.Variant66f7293459d1f069d1fc68264e3e3d0e16486bef203f7343f15669d4969d66fa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae549aa70d24125b4fda0026b0f13895a3f78bb5` · SHA-256 `0822ab67c8f313a220a17b236994b9a094112f514aaea2a45a3ddab720bb98df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RArrayOfFn.Variant3315bd2160a9151a778f9bb08a1a49545e07715b3c39e57541d7776e87c84bfe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3315bd2160a9151a778f9bb08a1a49545e07715b3c39e57541d7776e87c84bfe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RArrayOfFn.Variant3315bd2160a9151a778f9bb08a1a49545e07715b3c39e57541d7776e87c84bfe","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3315bd2160a9151a778f9bb08a1a49545e07715b3c39e57541d7776e87c84bfe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/RArray.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module

prelude
public import Lean.Meta.DecLevel
public import Init.Data.RArray
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RArrayOfFn.Variant3315bd2160a9151a778f9bb08a1a49545e07715b3c39e57541d7776e87c84bfe

public section

/-!
Auxiliary definitions related to `Lean.RArray` that are typically only used in meta-code, in
particular the `ToExpr` instance.
-/

namespace Lean

-- This function could live in Init/Data/RArray.lean, but without omega it's tedious to implement
def RArray.ofFn {n : Nat} (f : Fin n → α) (h : 0 < n) : RArray α :=
  go 0 n h (Nat.le_refl _)
where
  go (lb ub : Nat) (h1 : lb < ub) (h2 : ub ≤ n) : RArray α :=
    if h : lb + 1 = ub then
      .leaf (f ⟨lb, Nat.lt_of_lt_of_le h1 h2⟩)
    else
      let mid := (lb + ub)/2
      .branch mid (go lb mid (by omega) (by omega)) (go mid ub (by omega) h2)

def RArray.ofArray (xs : Array α) (h : 0 < xs.size) : RArray α :=
  .ofFn (xs[·]) h

/-- The correctness theorem for `ofFn` -/
theorem RArray.get_ofFn {n : Nat} (f : Fin n → α) (h : 0 < n) (i : Fin n) :
    (ofFn f h).get i = f i :=
  go 0 n h (Nat.le_refl _) (Nat.zero_le _) i.2
where
  go lb ub h1 h2 (h3 : lb ≤ i.val) (h3 : i.val < ub) : (ofFn.go f lb ub h1 h2).get i = f i := by
    fun_induction RArray.ofFn.go
    case case1 =>
      simp only [get_eq_getImpl, getImpl]
      congr
      omega
    case case2 ih1 ih2 hiu =>
      simp [RArray.get_eq_getImpl, RArray.getImpl] at *
      split
      · rw [ih1] <;> omega
      · rw [ih2] <;> omega

@[simp]
theorem RArray.size_ofFn {n : Nat} (f : Fin n → α) (h : 0 < n) :
    (ofFn f h).size = n :=
  go 0 n h (Nat.le_refl _)
where
  go lb ub h1 h2 : (ofFn.go f lb ub h1 h2).size = ub - lb := by
    fun_induction ofFn.go
    case case1 => simp [size]
    case case2 ih1 ih2 hiu => simp[size]; omega

open Meta in
def RArray.toExpr (ty : Expr) (f : α → Expr) (a : RArray α) : MetaM Expr := do
  let u ← getDecLevel ty
  let leaf := mkConst ``RArray.leaf [u]
  let branch := mkConst ``RArray.branch [u]
  let rec go (a : RArray α) : MetaM Expr := do
    match a with
    | .leaf x  =>
      return mkApp2 leaf ty (f x)
    | .branch p l r =>
      return mkApp4 branch ty (mkRawNatLit p) (← go l) (← go r)
  go a

end Lean
```
