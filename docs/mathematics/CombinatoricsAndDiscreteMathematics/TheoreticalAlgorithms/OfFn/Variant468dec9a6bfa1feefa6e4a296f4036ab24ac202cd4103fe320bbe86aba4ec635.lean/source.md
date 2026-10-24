# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OfFn.Variant468dec9a6bfa1feefa6e4a296f4036ab24ac202cd4103fe320bbe86aba4ec635

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `308522d8b9fa1f0798029490b062d989b1d2ec67` · SHA-256 `bd34d0731182e6fd70f0bc188137a803f52c8b921b56afb4ae0e59f2c1a89b5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OfFnM.Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.OfFnM.Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2","mathematical_subject":"Computation.DataStructures","original_sha256":"e2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/List/OfFn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Kim Morrison
-/
module

prelude
public import Init.Data.Fin.Fold
public import Init.NotationExtra
import Init.Data.Fin.Lemmas
import Init.Data.List.Lemmas
import Init.Data.Nat.Lemmas
import Init.Data.Option.Lemmas


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OfFnM.Variante2054feea94eea72e5ddca3145b03e9e669db8bb89cf8d0286354fdd2dfb9de2

public section

/-!
# Theorems about `List.ofFn`
-/

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace List

/--
Creates a list by applying `f` to each potential index in order, starting at `0`.

Examples:
 * `List.ofFn (n := 3) toString = ["0", "1", "2"]`
 * `List.ofFn (fun i => #["red", "green", "blue"].get i.val i.isLt) = ["red", "green", "blue"]`
-/
@[expose] def ofFn {n} (f : Fin n → α) : List α := Fin.foldr n (f · :: ·) []

/--
Creates a list wrapped in a monad by applying the monadic function `f : Fin n → m α`
to each potential index in order, starting at `0`.
-/
def ofFnM {n} [Monad m] (f : Fin n → m α) : m (List α) :=
  List.reverse <$> Fin.foldlM n (fun xs i => (· :: xs) <$> f i) []

@[simp, grind =]
theorem length_ofFn {f : Fin n → α} : (ofFn f).length = n := by
  simp only [ofFn]
  induction n with
  | zero => simp
  | succ n ih => simp [Fin.foldr_succ, ih]

@[simp, grind =]
protected theorem getElem_ofFn {f : Fin n → α} (h : i < (ofFn f).length) :
    (ofFn f)[i] = f ⟨i, by simp_all⟩ := by
  simp only [ofFn]
  induction n generalizing i with
  | zero => simp at h
  | succ n ih =>
    match i with
    | 0 => simp [Fin.foldr_succ]
    | i+1 =>
      simp only [Fin.foldr_succ]
      apply ih
      simp_all

@[simp, grind =]
protected theorem getElem?_ofFn {f : Fin n → α} :
    (ofFn f)[i]? = if h : i < n then some (f ⟨i, h⟩) else none :=
  if h : i < (ofFn f).length
  then by
    rw [getElem?_eq_getElem h, List.getElem_ofFn]
    · simp only [length_ofFn] at h; simp [h]
  else by
    rw [dif_neg] <;>
    simpa using h

/-- `ofFn` on an empty domain is the empty list. -/
@[simp, grind =]
theorem ofFn_zero {f : Fin 0 → α} : ofFn f = [] := by
  rw [ofFn, Fin.foldr_zero]

@[simp]
theorem ofFn_succ {n} {f : Fin (n + 1) → α} : ofFn f = f 0 :: ofFn fun i => f i.succ :=
  ext_get (by simp) (fun i hi₁ hi₂ => by
    cases i
    · simp
    · simp)

theorem ofFn_succ_last {n} {f : Fin (n + 1) → α} :
    ofFn f = (ofFn fun i => f i.castSucc) ++ [f (Fin.last n)] := by
  induction n with
  | zero => simp [ofFn_succ]
  | succ n ih =>
    rw [ofFn_succ]
    conv => rhs; rw [ofFn_succ]
    rw [ih]
    simp

theorem ofFn_add {n m} {f : Fin (n + m) → α} :
    ofFn f = (ofFn fun i => f (i.castLE (Nat.le_add_right n m))) ++ (ofFn fun i => f (i.natAdd n)) := by
  induction m with
  | zero => simp
  | succ m ih =>
    simp [-ofFn_succ, ofFn_succ_last, ih]

@[simp]
theorem ofFn_eq_nil_iff {f : Fin n → α} : ofFn f = [] ↔ n = 0 := by
  cases n <;> simp only [ofFn_zero, ofFn_succ, Nat.succ_ne_zero, reduceCtorEq]

@[simp]
theorem ofFn_getElem {xs : List α} :
    List.ofFn (fun i : Fin xs.length => xs[i.val]) = xs := by
  apply ext_getElem <;> simp

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
    (List.ofFn f).map g = List.ofFn (g ∘ f) := by
  apply List.ext_getElem?
  simp [List.getElem?_ofFn]

@[grind =] theorem head_ofFn {n} {f : Fin n → α} (h : ofFn f ≠ []) :
    (ofFn f).head h = f ⟨0, Nat.pos_of_ne_zero (mt ofFn_eq_nil_iff.2 h)⟩ := by
  rw [← getElem_zero (length_ofFn ▸ Nat.pos_of_ne_zero (mt ofFn_eq_nil_iff.2 h)),
    List.getElem_ofFn]

@[grind =] theorem getLast_ofFn {n} {f : Fin n → α} (h : ofFn f ≠ []) :
    (ofFn f).getLast h = f ⟨n - 1, Nat.sub_one_lt (mt ofFn_eq_nil_iff.2 h)⟩ := by
  simp [getLast_eq_getElem, length_ofFn, List.getElem_ofFn]

/-- `ofFnM` on an empty domain is the empty list. -/
@[simp, grind =]
theorem ofFnM_zero [Monad m] [LawfulMonad m] {f : Fin 0 → m α} : ofFnM f = pure [] := by
  simp [ofFnM]

/-! See `Init.Data.List.FinRange` for the `ofFnM_succ` variant. -/

theorem ofFnM_succ_last {n} [Monad m] [LawfulMonad m] {f : Fin (n + 1) → m α} :
    ofFnM f = (do
      let as ← ofFnM fun i => f i.castSucc
      let a  ← f (Fin.last n)
      pure (as ++ [a])) := by
  simp [ofFnM, Fin.foldlM_succ_last]

theorem ofFnM_add {n m} [Monad m] [LawfulMonad m] {f : Fin (n + k) → m α} :
    ofFnM f = (do
      let as ← ofFnM fun i : Fin n => f (i.castLE (Nat.le_add_right n k))
      let bs ← ofFnM fun i : Fin k => f (i.natAdd n)
      pure (as ++ bs)) := by
  induction k with
  | zero => simp
  | succ k ih =>
    simp [ofFnM_succ_last, ih]

end List

namespace Fin

theorem foldl_cons_eq_append {f : Fin n → α} {xs : List α} :
    Fin.foldl n (fun xs i => f i :: xs) xs = (List.ofFn f).reverse ++ xs := by
  induction n generalizing xs with
  | zero => simp
  | succ n ih => simp [Fin.foldl_succ, List.ofFn_succ, ih]

theorem foldr_cons_eq_append {f : Fin n → α} {xs : List α} :
    Fin.foldr n (fun i xs => f i :: xs) xs = List.ofFn f ++ xs:= by
  induction n generalizing xs with
  | zero => simp
  | succ n ih => simp [Fin.foldr_succ, List.ofFn_succ, ih]

end Fin

namespace List

@[simp]
theorem ofFnM_pure_comp [Monad m] [LawfulMonad m] {n} {f : Fin n → α} :
    ofFnM (pure ∘ f) = (pure (ofFn f) : m (List α)) := by
  simp [ofFnM, Fin.foldlM_pure, Fin.foldl_cons_eq_append]

-- Variant of `ofFnM_pure_comp` using a lambda.
-- This is not marked a `@[simp]` as it would match on every occurrence of `ofFnM`.
theorem ofFnM_pure [Monad m] [LawfulMonad m] {n} {f : Fin n → α} :
    ofFnM (fun i => pure (f i)) = (pure (ofFn f) : m (List α)) :=
  ofFnM_pure_comp

@[simp, grind =] theorem idRun_ofFnM {f : Fin n → Id α} :
    Id.run (ofFnM f) = ofFn (fun i => Id.run (f i)) := by
  induction n with
  | zero => simp
  | succ n ih => simp [-ofFn_succ, ofFnM_succ_last, ofFn_succ_last, ih]

end List
```
