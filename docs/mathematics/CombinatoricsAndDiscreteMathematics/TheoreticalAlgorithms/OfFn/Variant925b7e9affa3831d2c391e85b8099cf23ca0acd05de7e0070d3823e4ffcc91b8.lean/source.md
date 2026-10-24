# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OfFn.Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97f2789d7cef7b111cd43619a104e1ee7a689541` · SHA-256 `fa9cfe3fe8e21407857df0ba3773ffb6b821991a3b96577763a56ff1a7151d80`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemOfFn.Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MemOfFn.Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b","mathematical_subject":"Computation.DataStructures","original_sha256":"10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Vector/OfFn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
import all Init.Data.Vector.Basic
public import Init.Data.Array.OfFn
public import Init.Data.Vector.Basic
import Init.Data.Fin.Lemmas
import Init.Data.Vector.Monadic
import Init.TacticsExtra


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemOfFn.Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b

public section

/-!
# Theorems about `Vector.ofFn`
-/

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace Vector

@[simp, grind =] theorem getElem_ofFn {α n} {f : Fin n → α} (h : i < n) :
    (Vector.ofFn f)[i] = f ⟨i, by simpa using h⟩ := by
  simp [ofFn]

@[simp, grind =] theorem getElem?_ofFn {α n} {f : Fin n → α} :
    (ofFn f)[i]? = if h : i < n then some (f ⟨i, h⟩) else none := by
  simp [getElem?_def]

@[simp 500, grind =]
theorem mem_ofFn {n} {f : Fin n → α} {a : α} : a ∈ ofFn f ↔ ∃ i, f i = a := by
  constructor
  · intro w
    obtain ⟨i, h, rfl⟩ := getElem_of_mem w
    exact ⟨⟨i, by simpa using h⟩, by simp⟩
  · rintro ⟨i, rfl⟩
    apply mem_of_getElem (i := i) <;> simp

@[simp, grind =]
theorem map_ofFn {f : Fin n → α} {g : α → β} :
    (Vector.ofFn f).map g = Vector.ofFn (g ∘ f) := by
  simp [← Vector.toArray_inj]

@[grind =] theorem back_ofFn {n} [NeZero n] {f : Fin n → α} :
    (ofFn f).back = f ⟨n - 1, by have := NeZero.ne n; omega⟩ := by
  simp [back]

theorem ofFn_succ {f : Fin (n+1) → α} :
    ofFn f = (ofFn (fun (i : Fin n) => f i.castSucc)).push (f ⟨n, by omega⟩) := by
  ext i h
  · simp only [getElem_ofFn, getElem_push, Fin.castSucc_mk, left_eq_dite_iff]
    intro h'
    have : i = n := by omega
    simp_all

theorem ofFn_add {n m} {f : Fin (n + m) → α} :
    ofFn f = (ofFn (fun i => f (i.castLE (Nat.le_add_right n m)))) ++ (ofFn (fun i => f (i.natAdd n))) := by
  apply Vector.toArray_inj.mp
  simp [Array.ofFn_add]

theorem ofFn_succ' {f : Fin (n+1) → α} :
    ofFn f = (#v[f 0] ++ ofFn (fun i => f i.succ)).cast (by omega) := by
  apply Vector.toArray_inj.mp
  simp [Array.ofFn_succ']

@[simp]
theorem ofFn_getElem {xs : Vector α n} :
    Vector.ofFn (fun i : Fin n => xs[i.val]) = xs := by
  ext; simp

/-! ### ofFnM -/

/-- Construct (in a monadic context) a vector by applying a monadic function to each index. -/
def ofFnM {n} [Monad m] (f : Fin n → m α) : m (Vector α n) :=
  go 0 (by omega) (Array.emptyWithCapacity n) rfl where
  /-- Auxiliary for `ofFn`. `ofFn.go f i acc = acc ++ #v[f i, ..., f(n - 1)]` -/
  go (i : Nat) (h' : i ≤ n) (acc : Array α) (w : acc.size = i) : m (Vector α n) := do
    if h : i < n then
      go (i+1) (by omega) (acc.push (← f ⟨i, h⟩)) (by simp [w])
    else
      pure ⟨acc, by omega⟩

@[simp, grind =]
theorem ofFnM_zero [Monad m] {f : Fin 0 → m α} : Vector.ofFnM f = pure #v[] := by
  simp [ofFnM, ofFnM.go]

private theorem ofFnM_go_succ {n} [Monad m] [LawfulMonad m] {f : Fin (n + 1) → m α}
    (hi : i ≤ n := by omega) {h : xs.size = i} :
    ofFnM.go f i (by omega) xs h = (do
      let as ← ofFnM.go (fun i => f i.castSucc) i hi xs h
      let a  ← f (Fin.last n)
      pure (as.push a)) := by
  fun_induction ofFnM.go f i (by omega) xs h
  case case1 acc h' h ih =>
    if h : acc.size = n then
      unfold ofFnM.go
      rw [dif_neg (by omega)]
      have h : ¬ acc.size + 1 < n + 1 := by omega
      have : Fin.last n = ⟨acc.size, by omega⟩ := by ext; simp; omega
      simp [*]
    else
      have : acc.size + 1 ≤ n := by omega
      simp only [ih, this]
      conv => rhs; unfold ofFnM.go
      rw [dif_pos (by omega)]
      simp
  case case2 =>
    omega

theorem ofFnM_succ {n} [Monad m] [LawfulMonad m] {f : Fin (n + 1) → m α} :
    ofFnM f = (do
      let as ← ofFnM fun i => f i.castSucc
      let a  ← f (Fin.last n)
      pure (as.push a)) := by
  simp [ofFnM, ofFnM_go_succ]

theorem ofFnM_add {n m} [Monad m] [LawfulMonad m] {f : Fin (n + k) → m α} :
    ofFnM f = (do
      let as ← ofFnM (fun i => f (i.castLE (Nat.le_add_right n k)))
      let bs ← ofFnM (fun i => f (i.natAdd n))
      pure (as ++ bs)) := by
  induction k with
  | zero => simp
  | succ k ih => simp [ofFnM_succ, ih, ← push_append]

@[simp, grind =] theorem toArray_ofFnM [Monad m] [LawfulMonad m] {f : Fin n → m α} :
    toArray <$> ofFnM f = Array.ofFnM f := by
  induction n with
  | zero => simp
  | succ n ih => simp [ofFnM_succ, Array.ofFnM_succ, ← ih]

@[simp, grind =] theorem toList_ofFnM [Monad m] [LawfulMonad m] {f : Fin n → m α} :
    toList <$> Vector.ofFnM f = List.ofFnM f := by
  unfold toList
  suffices Array.toList <$> (toArray <$> ofFnM f) = List.ofFnM f by
    simpa [-toArray_ofFnM]
  simp

theorem ofFnM_succ' {n} [Monad m] [LawfulMonad m] {f : Fin (n + 1) → m α} :
    ofFnM f = (do
      let a ← f 0
      let as ← ofFnM fun i => f i.succ
      pure ((#v[a] ++ as).cast (by omega))) := by
  apply Vector.map_toArray_inj.mp
  simp only [toArray_ofFnM, Array.ofFnM_succ', bind_pure_comp, map_bind, Functor.map_map,
    toArray_cast, toArray_append]
  congr 1
  funext x
  have : (fun xs : Vector α n => #[x] ++ xs.toArray) = (#[x] ++ ·) ∘ toArray := by funext xs; simp
  simp [this, comp_map]

@[simp]
theorem ofFnM_pure_comp [Monad m] [LawfulMonad m] {n} {f : Fin n → α} :
    ofFnM (pure ∘ f) = (pure (ofFn f) : m (Vector α n)) := by
  apply Vector.map_toArray_inj.mp
  simp

-- Variant of `ofFnM_pure_comp` using a lambda.
-- This is not marked a `@[simp]` as it would match on every occurrence of `ofFnM`.
theorem ofFnM_pure [Monad m] [LawfulMonad m] {n} {f : Fin n → α} :
    ofFnM (fun i => pure (f i)) = (pure (ofFn f) : m (Vector α n)) :=
  ofFnM_pure_comp

@[simp, grind =] theorem idRun_ofFnM {f : Fin n → Id α} :
    Id.run (ofFnM f) = ofFn (fun i => Id.run (f i)) := by
  induction n with
  | zero => simp
  | succ n ih => simp [ofFnM_succ', ofFn_succ', ih]

end Vector
```
