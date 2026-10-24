# Complete source: GRWTSK.Analysis.ArithmeticPrimitive.Variante9a0b38f9fb4bb98cdfa355f277a6e2089a1f48ee6fc0b565c93ea9448802d07

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac976b87b18329264ec1745f48ca0bb9136213dd` · SHA-256 `e9a0b38f9fb4bb98cdfa355f277a6e2089a1f48ee6fc0b565c93ea9448802d07`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.CenteredVaughan
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# Closed arithmetic primitives and their exact cell clock

Finite source identities from audited RH conversation Batches 02–05 and 11.
All coefficients remain signed. The moving inventory adds a zero-valued term
at each new upper integer. The exact inverse-root clock is retained; replacing
it by uniform real spacing would be a different source.

Human direction and source selection: grwtsk contributors.
Lean implementation: OpenAI Codex. The actual centered coefficients use the
Mathlib von Mangoldt function through the explicitly proved adapter.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.ArithmeticPrimitive

open scoped BigOperators

noncomputable section

def cumulativeDiscrepancy (b : ℕ → ℝ) (N : ℕ) : ℝ := ∑ n ∈ Finset.Icc 2 N, b n
def finitePrimitive (b : ℕ → ℝ) (x : ℝ) (N : ℕ) : ℝ :=
  2 * ∑ n ∈ Finset.Icc 2 N, b n * (1 / Real.sqrt n - 1 / Real.sqrt x)
def cellClock (N : ℕ) (x : ℝ) : ℝ := 2 * (1 / Real.sqrt N - 1 / Real.sqrt x)
def closedPrimitive (b : ℕ → ℝ) (x : ℝ) : ℝ := finitePrimitive b x ⌊x⌋₊
def hingePrimitive (b : ℕ → ℝ) (M : ℕ) (x : ℝ) : ℝ :=
  2 * ∑ n ∈ Finset.Icc 2 M, b n * max (1 / Real.sqrt n - 1 / Real.sqrt x) 0

/-- The exact source on a fixed inventory is affine in its inverse-root clock. -/
theorem fixed_inventory_interpolation (b : ℕ → ℝ) (N : ℕ) (x : ℝ) :
    finitePrimitive b x N = finitePrimitive b N N + cumulativeDiscrepancy b N * cellClock N x := by
  unfold finitePrimitive cumulativeDiscrepancy cellClock
  have hs : (∑ n ∈ Finset.Icc 2 N, b n * (1 / Real.sqrt n - 1 / Real.sqrt x)) =
      (∑ n ∈ Finset.Icc 2 N, b n * (1 / Real.sqrt n - 1 / Real.sqrt N)) +
        (∑ n ∈ Finset.Icc 2 N, b n) * (1 / Real.sqrt N - 1 / Real.sqrt x) := by
    rw [Finset.sum_mul, ← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro n _
    ring
  rw [hs]
  ring

/-- The touching upper atom has exactly zero primitive weight. -/
theorem touching_atom_zero (b : ℕ → ℝ) (N : ℕ) :
    b N * (1 / Real.sqrt N - 1 / Real.sqrt N) = 0 := by ring

theorem upper_inventory_zero_atom (b : ℕ → ℝ) (N : ℕ) (hN : 1 ≤ N) :
    finitePrimitive b (N + 1 : ℕ) (N + 1) = finitePrimitive b (N + 1 : ℕ) N := by
  unfold finitePrimitive
  rw [Finset.sum_Icc_succ_top (by omega : 2 ≤ N + 1)]
  simp

/-- The cell's whole signed increment is its cumulative discrepancy times width. -/
theorem adjacent_integer_increment (b : ℕ → ℝ) (N : ℕ) (hN : 1 ≤ N) :
    finitePrimitive b (N + 1 : ℕ) (N + 1) - finitePrimitive b N N =
      cumulativeDiscrepancy b N * cellClock N (N + 1 : ℕ) := by
  rw [upper_inventory_zero_atom b N hN, fixed_inventory_interpolation]
  ring

/-- No premise requires the individual coefficient signs to be nonnegative. -/
theorem cell_nonincrease {b : ℕ → ℝ} {N : ℕ} {x : ℝ}
    (hB : cumulativeDiscrepancy b N ≤ 0) (hw : 0 ≤ cellClock N x) :
    finitePrimitive b x N ≤ finitePrimitive b N N := by
  rw [fixed_inventory_interpolation]
  have h := mul_nonpos_of_nonpos_of_nonneg hB hw
  linarith

/-- A common finite hinge inventory represents the closed source on every bounded window. -/
theorem closedPrimitive_eq_hinge (b : ℕ → ℝ) (M : ℕ) {x : ℝ}
    (hx : 0 < x) (hM : x ≤ M) : closedPrimitive b x = hingePrimitive b M x := by
  have hfloor : ⌊x⌋₊ ≤ M := by
    simpa using Nat.floor_mono hM
  unfold closedPrimitive finitePrimitive hingePrimitive
  congr 1
  calc
    _ = ∑ n ∈ Finset.Icc 2 ⌊x⌋₊,
        b n * max (1 / Real.sqrt n - 1 / Real.sqrt x) 0 := by
      apply Finset.sum_congr rfl
      intro n hn
      have hn2 := (Finset.mem_Icc.mp hn).1
      have hn0 : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
      have hnx : (n : ℝ) ≤ x := (Nat.le_floor_iff hx.le).mp (Finset.mem_Icc.mp hn).2
      have horder := one_div_le_one_div_of_le (Real.sqrt_pos.2 hn0) (Real.sqrt_le_sqrt hnx)
      rw [max_eq_left (sub_nonneg.mpr horder)]
    _ = _ := by
      apply Finset.sum_subset (fun n hn => Finset.mem_Icc.mpr
        ⟨(Finset.mem_Icc.mp hn).1, (Finset.mem_Icc.mp hn).2.trans hfloor⟩)
      intro n hn hnot
      have hn2 := (Finset.mem_Icc.mp hn).1
      have hlt : ⌊x⌋₊ < n := by
        by_contra h
        exact hnot (Finset.mem_Icc.mpr ⟨hn2, by omega⟩)
      have hxn : x < n := (Nat.floor_lt hx.le).mp hlt
      have horder := one_div_le_one_div_of_le (Real.sqrt_pos.2 hx)
        (Real.sqrt_le_sqrt hxn.le)
      rw [max_eq_right (sub_nonpos.mpr horder), mul_zero]

theorem hingePrimitive_continuousAt (b : ℕ → ℝ) (M : ℕ) {x : ℝ} (hx : 0 < x) :
    ContinuousAt (hingePrimitive b M) x := by
  have hinv : ContinuousAt (fun y : ℝ => (1 : ℝ) / Real.sqrt y) x :=
    continuousAt_const.div Real.continuous_sqrt.continuousAt (Real.sqrt_pos.2 hx).ne'
  apply continuousAt_const.mul
  apply tendsto_finsetSum
  intro n _
  exact continuousAt_const.mul ((continuousAt_const.sub hinv).max continuousAt_const)

/-- The actual closed inventory is continuous across every integer birth. -/
theorem closedPrimitive_continuousAt (b : ℕ → ℝ) {x : ℝ} (hx : 0 < x) :
    ContinuousAt (closedPrimitive b) x := by
  obtain ⟨M, hM⟩ := exists_nat_gt x
  apply (hingePrimitive_continuousAt b M hx).congr_of_eventuallyEq
  filter_upwards [isOpen_Ioo.mem_nhds (show x ∈ Set.Ioo (0 : ℝ) M from ⟨hx, hM⟩)] with y hy
  exact closedPrimitive_eq_hinge b M hy.1 hy.2.le

/-- On each half-open cell the closed floor is exactly the stated inventory. -/
theorem closed_cell_interpolation (b : ℕ → ℝ) (N : ℕ) {x : ℝ}
    (hx : (N : ℝ) ≤ x) (hx1 : x < (N : ℝ) + 1) :
    closedPrimitive b x = finitePrimitive b N N + cumulativeDiscrepancy b N * cellClock N x := by
  have hfloor := (Nat.floor_eq_iff ((Nat.cast_nonneg N).trans hx)).mpr ⟨hx, hx1⟩
  unfold closedPrimitive
  rw [hfloor, fixed_inventory_interpolation]

/-- The actual every-integer source is explicit, including the corrected atom at one. -/
def actualPrimitive (x : ℝ) : ℝ :=
  closedPrimitive (fun n => CenteredVaughan.centeredMangoldt n) x

theorem actualPrimitive_continuousAt {x : ℝ} (hx : 0 < x) :
    ContinuousAt actualPrimitive x := closedPrimitive_continuousAt _ hx

theorem actual_coefficient (n : ℕ) (hn : 2 ≤ n) :
    CenteredVaughan.centeredMangoldt n = ArithmeticFunction.vonMangoldt n - 1 :=
  CenteredVaughan.centeredMangoldt_apply hn

end
end GRWTSK.RiemannHypothesis.Conversation.ArithmeticPrimitive
```
