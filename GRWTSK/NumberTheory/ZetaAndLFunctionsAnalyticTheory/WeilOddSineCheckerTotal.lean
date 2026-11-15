/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTriangle

/-!
# Array evaluation of the conductor-three checker numerator

The checker weights each retained diagonal once and each distinct retained
pair twice. Precompute the clipped prices and the two sinc lookups, then
traverse the retained indices once with each later partner. The traversal
reverses the orientation of pairs in `scripts/verify_odd_three_sine_hs.py`, blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`, lines 147–152. Symmetry of the
exact pair majorant gives the same numerator. The sinc table covers the
full grid, hence includes every slot allocated by the Python checker.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

private def unorderedPairsSum {α : Type*} (cost : α → α → ℕ) : List α → ℕ
  | [] => 0
  | i :: is => cost i i + 2 * (is.map (cost i)).sum + unorderedPairsSum cost is

private theorem list_sum_eq_toFinset {α : Type*} [DecidableEq α] (cost : α → ℕ)
    {is : List α} (h : is.Nodup) : (is.map cost).sum = ∑ i ∈ is.toFinset, cost i := by
  induction is with
  | nil => simp
  | cons i is ih =>
    have hn := List.nodup_cons.mp h
    rw [List.map_cons, List.sum_cons, List.toFinset_cons,
      Finset.sum_insert (by simpa using hn.1), ih hn.2]

private theorem unorderedPairsSum_eq_dense {α : Type*} [DecidableEq α] (cost : α → α → ℕ)
    (hsym : ∀ i j, cost i j = cost j i) {is : List α} (hn : is.Nodup) :
    unorderedPairsSum cost is = ∑ i ∈ is.toFinset, ∑ j ∈ is.toFinset, cost i j := by
  induction is with
  | nil => simp [unorderedPairsSum]
  | cons i is ih =>
    have h := List.nodup_cons.mp hn
    have hi : i ∉ is.toFinset := by simpa using h.1
    have hswap : (∑ j ∈ is.toFinset, cost j i) = ∑ j ∈ is.toFinset, cost i j :=
      Finset.sum_congr rfl fun j _ => hsym j i
    simp only [unorderedPairsSum, List.toFinset_cons, Finset.sum_insert hi, ih h.2,
      list_sum_eq_toFinset _ h.2, Finset.sum_add_distrib, hswap, two_mul, add_assoc]

private def priceIndices {N : ℕ} (priceAt : Fin N → ℕ) : List (Fin N) :=
  (List.finRange N).filter fun i => 0 < priceAt i

private theorem priceIndices_toFinset {N : ℕ} (raw : Fin N → ℤ) :
    (priceIndices (price raw)).toFinset = retained raw := by
  ext i
  simp [priceIndices, price, retained]

private def tablePrice {N : ℕ} (table : Array ℕ) (i : Fin N) : ℕ := table[i.val]!

private theorem tablePrice_ofFn {N : ℕ} (f : Fin N → ℕ) (i : Fin N) :
    tablePrice (Array.ofFn f) i = f i := by
  rw [tablePrice, getElem!_pos _ _ (by simp), Array.getElem_ofFn]

private def sincTable : Array ℤ := Array.ofFn fun j : Fin (2 * 32768) => sincEntry j.val

private theorem sincTable_get (j : ℕ) (hj : j < 2 * 32768) : sincTable[j]! = sincEntry j := by
  rw [sincTable, getElem!_pos _ _ (by simpa using hj), Array.getElem_ofFn]

private def tableMajor (table : Array ℤ) (i j : ℕ) : ℕ :=
  (table[Nat.dist i j]! - table[i + j + 1]!).natAbs + variation

private theorem tableMajor_sincTable (i j : Fin 32768) :
    tableMajor sincTable i.val j.val = pairMajor i.val j.val := by
  have h := table_indices_lt (last := 32767) (Nat.le_of_lt_succ i.isLt) (Nat.le_of_lt_succ j.isLt)
  rw [tableMajor, sincTable_get _ h.1, sincTable_get _ h.2, pairMajor]

/-- Evaluate the exact clipped, weighted triangle with one price table and one sinc table. -/
def totalUsingTables (midpointLower : Fin 32768 → ℤ) : ℕ :=
  let prices := Array.ofFn (price (rawDeficit midpointLower))
  let indices : List (Fin 32768) := priceIndices (tablePrice prices)
  let sinc := sincTable
  unorderedPairsSum (fun i j => tablePrice prices i * tablePrice prices j *
    tableMajor sinc i.val j.val ^ 2) indices

/-- The executable sum computes the existing numerator for any midpoint table. -/
theorem totalUsingTables_eq_total (midpointLower : Fin 32768 → ℤ) :
    totalUsingTables midpointLower = total midpointLower := by
  let raw := rawDeficit midpointLower
  let cost (i j : Fin 32768) := price raw i * price raw j * pairMajor i.val j.val ^ 2
  have hs : ∀ i j, cost i j = cost j i := by
    intro i j
    simp only [cost, pairMajor_comm i.val j.val, mul_comm (price raw i) (price raw j)]
  have hn : (priceIndices (price raw)).Nodup :=
    (List.nodup_finRange _).filter _
  have hprice : tablePrice (Array.ofFn (price (rawDeficit midpointLower))) =
      price (rawDeficit midpointLower) := funext (tablePrice_ofFn _)
  unfold totalUsingTables
  simp only [hprice, tableMajor_sincTable]
  change unorderedPairsSum cost (priceIndices (price raw)) = _
  rw [unorderedPairsSum_eq_dense cost hs hn, priceIndices_toFinset]
  have hd := dense_eq_triangular raw (fun i j : Fin 32768 => pairMajor i.val j.val)
    (fun i _ j _ => pairMajor_comm i.val j.val)
  rw [← Finset.univ_product_univ, Finset.sum_product] at hd
  refine Eq.trans ?_ hd
  simp only [cost]
  symm
  calc
    _ = ∑ i ∈ retained raw, ∑ j : Fin 32768,
        price raw i * price raw j * pairMajor i.val j.val ^ 2 := by
      symm
      apply Finset.sum_subset (Finset.subset_univ _)
      intro i _ hi
      simp [price_eq_zero_of_not_retained hi]
    _ = _ := by
      apply Finset.sum_congr rfl
      intro i _
      symm
      apply Finset.sum_subset (Finset.subset_univ _)
      intro j _ hj
      simp [price_eq_zero_of_not_retained hj]

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
