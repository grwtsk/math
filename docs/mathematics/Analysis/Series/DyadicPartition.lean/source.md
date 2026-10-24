# Complete source: GRWTSK.Analysis.Series.DyadicPartition

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da71fe7ab16209168e7d444e711475346d93274c` · SHA-256 `576f7caa22aedfb31c288e71d125158cfd1e1316d2f698b4d0fe437a98b38ca6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Lean and Mathlib retain their original attribution and licenses.
Status: candidate proof source; not elaborated in the pinned environment.
-/
import Mathlib

/-! # Exact half-open dyadic regrouping

The index zero cell is (1,2]. Powers of two belong to the preceding cell.
Indices 0 and 1 of the ambient sequence are retained as explicit zero
hypotheses. Regrouping consumes an actual HasSum, not a totalized tsum.
-/
set_option autoImplicit false
noncomputable section
open Set Finset
open scoped BigOperators
namespace GRWTSK.Analysis.Series.DyadicPartition

def edge (j : ℕ) : ℕ := 2^j

def cell (j : ℕ) : Finset ℕ := Finset.Ioc (edge j) (edge (j+1))

theorem edge_pos (j : ℕ) : 0 < edge j := by unfold edge; positivity

theorem edge_succ (j : ℕ) : edge (j+1) = 2*edge j := by
  simp only [edge, pow_succ]
  omega

theorem edge_strictMono : StrictMono edge := by
  apply strictMono_nat_of_lt_succ
  intro j
  rw [edge_succ]
  have h := edge_pos j
  omega

theorem one_le_edge (j : ℕ) : 1 ≤ edge j := by
  simpa [edge] using edge_strictMono.monotone (Nat.zero_le j)

theorem index_lt_edge (j : ℕ) : j < edge j := by
  induction j with
  | zero => norm_num [edge]
  | succ j ih =>
    rw [edge_succ]
    have hp := edge_pos j
    omega

theorem upper_exists (n : ℕ) : ∃ j : ℕ, n ≤ edge (j+1) := by
  exact ⟨n, (Nat.le_succ n).trans (index_lt_edge (n+1)).le⟩

/-- The first cell whose closed upper endpoint reaches n. For n=0,1
this is merely an auxiliary owner; the sequence values must be zero. -/
def owner (n : ℕ) : ℕ := Nat.find (upper_exists n)

theorem owner_upper (n : ℕ) : n ≤ edge (owner n+1) :=
  Nat.find_spec (upper_exists n)

theorem owner_le_of_upper {n j : ℕ} (h : n ≤ edge (j+1)) : owner n ≤ j :=
  Nat.find_min' (upper_exists n) h

theorem owner_lower {n : ℕ} (hn : 1 < n) : edge (owner n) < n := by
  cases he : owner n with
  | zero => simpa [edge] using hn
  | succ j =>
    by_contra h
    have hupper : n ≤ edge (j+1) := by simpa using (le_of_not_gt h)
    have hm := owner_le_of_upper hupper
    omega

theorem mem_cell_iff_owner {n j : ℕ} (hn : 1 < n) :
    n ∈ cell j ↔ owner n = j := by
  constructor
  · intro h
    have hc := Finset.mem_Ioc.mp h
    have hle : owner n ≤ j := owner_le_of_upper hc.2
    have hge : j ≤ owner n := by
      by_contra h
      have hj : owner n+1 ≤ j := by omega
      have hp := edge_strictMono.monotone hj
      have hu := owner_upper n
      omega
    omega
  · intro h
    apply Finset.mem_Ioc.mpr
    simpa [h] using And.intro (owner_lower hn) (owner_upper n)

theorem cell_disjoint {i j : ℕ} (hij : i ≠ j) : Disjoint (cell i) (cell j) := by
  apply Finset.disjoint_left.mpr
  intro n hi hj
  have hn : 1 < n := (one_le_edge i).trans_lt (Finset.mem_Ioc.mp hi).1
  have h1 := (mem_cell_iff_owner hn).mp hi
  have h2 := (mem_cell_iff_owner hn).mp hj
  exact hij (h1.symm.trans h2)

theorem endpoint_in_preceding_cell (j : ℕ) : edge (j+1) ∈ cell j := by
  exact Finset.mem_Ioc.mpr ⟨edge_strictMono (Nat.lt_succ_self j), le_rfl⟩

theorem endpoint_not_in_following_cell (j : ℕ) : edge (j+1) ∉ cell (j+1) := by
  simp [cell]

theorem initial_cell : cell 0 = {2} := by decide

/-- The union at each finite stage retains every integer exactly once. -/
theorem prefix_union (j : ℕ) :
    Finset.Ioc 1 (edge (j+1)) = Finset.Ioc 1 (edge j) ∪ cell j := by
  ext n
  have h1 := one_le_edge j
  have h2 : edge j ≤ edge (j+1) := (edge_strictMono (Nat.lt_succ_self j)).le
  simp only [cell, Finset.mem_Ioc, Finset.mem_union]
  change 1 < n ∧ n ≤ edge (j + 1) ↔
    (1 < n ∧ n ≤ edge j) ∨ (edge j < n ∧ n ≤ edge (j + 1))
  omega

theorem prefix_disjoint (j : ℕ) :
    Disjoint (Finset.Ioc 1 (edge j)) (cell j) := by
  apply Finset.disjoint_left.mpr
  intro n hn hm
  have h1 := Finset.mem_Ioc.mp hn
  have h2 := Finset.mem_Ioc.mp hm
  omega

theorem finite_partition {E : Type*} [AddCommMonoid E] (f : ℕ → E) (J : ℕ) :
    (∑ j ∈ Finset.range J, ∑ n ∈ cell j, f n) =
      ∑ n ∈ Finset.Ioc 1 (edge J), f n := by
  induction J with
  | zero => simp [edge]
  | succ J ih =>
    rw [Finset.sum_range_succ, ih, prefix_union, Finset.sum_union (prefix_disjoint J)]

/-- On every fiber, the only labels not in its finite arithmetic cell
are 0 and 1, where the input is explicitly required to vanish. -/
theorem fiber_tsum (f : ℕ → ℂ) (h0 : f 0 = 0) (h1 : f 1 = 0) (j : ℕ) :
    (∑' n : owner ⁻¹' {j}, f n) = ∑ n ∈ cell j, f n := by
  classical
  rw [_root_.tsum_subtype]
  have he : (owner ⁻¹' {j}).indicator f = ((cell j : Finset ℕ) : Set ℕ).indicator f := by
    funext n
    by_cases hn : 1 < n
    · by_cases he : owner n = j
      · have hc := (mem_cell_iff_owner hn).mpr he
        simp [he, hc]
      · have hc : n ∉ cell j := fun hc => he ((mem_cell_iff_owner hn).mp hc)
        simp [he, hc]
    · have hsmall : n = 0 ∨ n = 1 := by omega
      rcases hsmall with rfl | rfl
      · simp only [Set.indicator_apply, h0, ite_self]
      · simp only [Set.indicator_apply, h1, ite_self]
  rw [he]
  calc
    (∑' n, ((cell j : Finset ℕ) : Set ℕ).indicator f n) =
        ∑ n ∈ cell j, ((cell j : Finset ℕ) : Set ℕ).indicator f n := by
      apply tsum_eq_sum
      intro n hn
      simp [hn]
    _ = ∑ n ∈ cell j, f n := by
      apply Finset.sum_congr rfl
      intro n hn
      simp [hn]

/-- Regroup an actually summable sequence, retaining both omitted labels.
The proof is Mathlib's fiberwise HasSum theorem plus the exact cell identity. -/
theorem hasSum_cells {f : ℕ → ℂ} {z : ℂ} (hf : HasSum f z)
    (h0 : f 0 = 0) (h1 : f 1 = 0) :
    HasSum (fun j => ∑ n ∈ cell j, f n) z := by
  have h := hf.tsum_fiberwise owner
  exact h.congr_fun (fun j => (fiber_tsum f h0 h1 j).symm)

theorem summable_cells {f : ℕ → ℂ} (hf : Summable f)
    (h0 : f 0 = 0) (h1 : f 1 = 0) :
    Summable (fun j => ∑ n ∈ cell j, f n) :=
  (hasSum_cells hf.hasSum h0 h1).summable

/-- The first cell is present once, not silently absorbed into a tail. -/
theorem split_first_cell {f : ℕ → ℂ} (hf : Summable f) :
    (∑' j, f j) = f 0 + ∑' j, f (j+1) := hf.tsum_eq_zero_add

end GRWTSK.Analysis.Series.DyadicPartition
```
