/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.OrderedHeatSchedule
import Mathlib.Data.List.Perm.Basic

/-!
# Order invariance and the defect of a heat-stage swap

A schedule acts in list order. Pairwise commutation is equivalent to invariance
under all permutations of a fixed list of stages. For the two orthogonal charts
in OrderedHeatSchedule, a single swap has an explicit norm defect.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.OperatorTheory.OrderedHeatSchedule

variable {X J : Type*}

/-- A finite schedule acts on the state from left to right. -/
def runList (stage : J → X → X) (schedule : List J) (x : X) : X :=
  schedule.foldl (fun y j => stage j y) x

theorem runList_range_eq_run (stage : ℕ → X → X) (x : X) (n : ℕ) :
    runList stage (List.range n) x = run stage x n := by
  induction n with
  | zero => rfl
  | succ n ih =>
    rw [List.range_succ]
    simpa only [runList, List.foldl_append, List.foldl_cons, List.foldl_nil, run]
      using congrArg (stage n) ih

theorem runList_perm_iff_commute (stage : J → X → X) :
    (∀ a b : List J, a.Perm b → ∀ x, runList stage a x = runList stage b x) ↔
      ∀ i j, Function.Commute (stage i) (stage j) := by
  constructor
  · intro h i j x
    have hp : ([j, i] : List J).Perm [i, j] := List.Perm.swap _ _ _
    exact h _ _ hp x
  · intro h a b hp x
    unfold runList
    exact hp.foldl_eq' (fun i _ j _ y => h j i y) x

/-- A common suffix of contractive stages cannot amplify a discrepancy. -/
theorem runList_dist_le [PseudoMetricSpace X] (stage : J → X → X) (schedule : List J)
    (contract : ∀ j ∈ schedule, ∀ x y, dist (stage j x) (stage j y) ≤ dist x y)
    (x y : X) : dist (runList stage schedule x) (runList stage schedule y) ≤ dist x y := by
  induction schedule generalizing x y with
  | nil => exact le_rfl
  | cons j tail ih =>
    exact (ih (fun i hi => contract i (List.mem_cons_of_mem _ hi)) (stage j x) (stage j y)).trans
      (contract j List.mem_cons_self x y)

/-- A swap inside a longer schedule costs at most the two-stage defect at
the actual prefix output, provided the shared suffix is contractive. -/
theorem runList_adjacent_swap_dist_le [PseudoMetricSpace X] (stage : J → X → X)
    (before after : List J) (i j : J) (x : X)
    (contract : ∀ k ∈ after, ∀ a b, dist (stage k a) (stage k b) ≤ dist a b) :
    dist (runList stage (before ++ i :: j :: after) x)
      (runList stage (before ++ j :: i :: after) x) ≤
      dist (stage j (stage i (runList stage before x)))
        (stage i (stage j (runList stage before x))) := by
  simpa only [runList, List.foldl_append, List.foldl_cons] using
    runList_dist_le stage after contract
      (stage j (stage i (runList stage before x))) (stage i (stage j (runList stage before x)))

/-- For two charts, the difference is a multiple of a signed coordinate swap. -/
theorem axis_mixed_commutator (r s : ℝ) (x : ℝ × ℝ) :
    axisStage r (mixedStage s x) - mixedStage s (axisStage r x) =
      (((1 - r) * (1 - s) / 2) * x.2, -((1 - r) * (1 - s) / 2) * x.1) := by
  apply Prod.ext <;> simp [axisStage, mixedStage] <;> ring

/-- Both attenuation factors are at most one. The exact swap
defect is measured in the product sup norm. -/
theorem axis_mixed_swap_dist (r s : ℝ) (hr : r ≤ 1) (hs : s ≤ 1) (x : ℝ × ℝ) :
    dist (axisStage r (mixedStage s x)) (mixedStage s (axisStage r x)) =
      ((1 - r) * (1 - s) / 2) * ‖x‖ := by
  let c := (1 - r) * (1 - s) / 2
  have hc : 0 ≤ c := div_nonneg (mul_nonneg (sub_nonneg.mpr hr) (sub_nonneg.mpr hs)) (by norm_num)
  rw [dist_eq_norm, axis_mixed_commutator]
  change max ‖c * x.2‖ ‖-c * x.1‖ = c * max ‖x.1‖ ‖x.2‖
  rw [norm_mul, norm_mul, norm_neg, Real.norm_eq_abs c, abs_of_nonneg hc, ← mul_max_of_nonneg _ _ hc,
    max_comm ‖x.2‖ ‖x.1‖]

/-- The two unit-time heats have the same stage inventory in each order.
Their discrepancy on a unit input is strictly positive. -/
theorem unit_heat_swap_defect :
    let r := Real.exp (-1)
    dist (runList (fun b : Bool => if b then axisStage r else mixedStage r) [false, true] (1, 0))
      (runList (fun b : Bool => if b then axisStage r else mixedStage r) [true, false] (1, 0)) =
      (1 - r)^2 / 2 ∧ 0 < (1 - r)^2 / 2 := by
  dsimp [runList]
  let r := Real.exp (-1)
  have hr : r < 1 := Real.exp_lt_one_iff.mpr (by norm_num)
  change dist (axisStage r (mixedStage r (1, 0))) (mixedStage r (axisStage r (1, 0))) =
    (1 - r)^2 / 2 ∧ 0 < (1 - r)^2 / 2
  constructor
  · rw [axis_mixed_swap_dist _ _ hr.le hr.le]
    change (1 - r) * (1 - r) / 2 * max ‖(1 : ℝ)‖ ‖(0 : ℝ)‖ = _
    simp [pow_two]
  · exact div_pos (sq_pos_of_pos (sub_pos.mpr hr)) (by norm_num)

end GRWTSK.OperatorTheory.OrderedHeatSchedule
