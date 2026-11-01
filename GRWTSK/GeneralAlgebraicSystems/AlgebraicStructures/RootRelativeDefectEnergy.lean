/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Root-relative defect energy and finite-order torsion excess

A portable mathematical interface for comparing *distinct* notions called
"torsion".  This file DOES NOT assert that geometric connection torsion,
elliptic finite-order torsion, a closed orbit, a heat residual, and a signed
arithmetic Gram are the same object.

The positivity statements are valid only for positive scalar weights and
separating observations. Nonzero torsion *away from the root* must be supplied
by each concrete family; it does not follow from root normalization.

The signed two-fiber identity retains the full mixed term, which can be
negative. Neither an Einstein/Godel spacetime theorem nor the arithmetic
InteriorLongGapAllRate nor RH is proved by this algebra.
-/

namespace GRWTSK.GeneralAlgebra.RootRelativeDefectEnergy

universe u
variable {α : Type u}

/-- Difference from a declared root, not a change to an object's native torsion. -/
def realRootDefect (root : α) (observation : α → ℝ) (x : α) : ℝ :=
  observation x - observation root

/-- Positive quadratic readout, proportional to a nonnegative weight. -/
def weightedDefectEnergy (root : α) (observation weight : α → ℝ) (x : α) : ℝ :=
  weight x * realRootDefect root observation x ^ 2

/-- The distinguished root always has zero *relative* defect. -/
theorem realRootDefect_at_root (root : α) (observation : α → ℝ) :
    realRootDefect root observation root = 0 := by
  simp [realRootDefect]

/-- No claim is made that the unshifted observation itself vanishes. -/
theorem weightedDefectEnergy_at_root
    (root : α) (observation weight : α → ℝ) :
    weightedDefectEnergy root observation weight root = 0 := by
  simp [weightedDefectEnergy, realRootDefect]

/-- Familywise nonnegative weights give a nonnegative scalar defect budget. -/
theorem weightedDefectEnergy_nonneg
    (root : α) (observation weight : α → ℝ)
    (hweight : ∀ x, 0 ≤ weight x) (x : α) :
    0 ≤ weightedDefectEnergy root observation weight x := by
  unfold weightedDefectEnergy
  exact mul_nonneg (hweight x) (sq_nonneg _)

/-- STRICT positivity away from the root needs a detecting observation.
Non-root by itself does not establish the required separation. -/
theorem weightedDefectEnergy_pos_iff
    (root : α) (observation weight : α → ℝ) (x : α)
    (hweight : 0 < weight x) :
    0 < weightedDefectEnergy root observation weight x ↔
      observation x ≠ observation root := by
  unfold weightedDefectEnergy realRootDefect
  constructor
  · intro hpos heq
    rw [heq] at hpos
    norm_num at hpos
  · intro hne
    have hd : observation x - observation root ≠ 0 :=
      sub_ne_zero.mpr hne
    exact mul_pos hweight (sq_pos_of_ne_zero hd)

/-- Full signed two-fiber cross contribution survives before taking squares.
Two positive separate energies do not bound the coherent sum from below. -/
theorem weightedDefectEnergy_two_fibers
    (root : α) (a b weight : α → ℝ) (x : α) :
    weightedDefectEnergy root (fun y => a y + b y) weight x =
      weightedDefectEnergy root a weight x +
      weightedDefectEnergy root b weight x +
        2 * weight x *
          realRootDefect root a x *
          realRootDefect root b x := by
  unfold weightedDefectEnergy realRootDefect
  ring

/-- An explicit opposite-phase fixture: the total coherent response vanishes
despite two potentially nonzero individual defect observations. -/
theorem weightedDefectEnergy_opposite_phases
    (root : α) (a weight : α → ℝ) (x : α) :
    weightedDefectEnergy root (fun y => a y + (-a y)) weight x = 0 := by
  simp [weightedDefectEnergy, realRootDefect]

/-- A nonnegative finite-order *excess* over a distinguished base order. -/
def finiteOrderExcess (root : α) (order : α → ℕ) (x : α) : ℕ :=
  order x - order root

theorem finiteOrderExcess_at_root
    (root : α) (order : α → ℕ) :
    finiteOrderExcess root order root = 0 := by
  simp [finiteOrderExcess]

/-- The mathematical root-one order convention gives strict off-root
excess ONLY when the order-one stratum consists of the root and the
considered point has positive finite order. A zero-valued infinite
order marker is deliberately excluded. -/
theorem finiteOrderExcess_pos_of_faithful_root
    (root x : α) (order : α → ℕ)
    (hroot : order root = 1)
    (hfinite : 1 ≤ order x)
    (horder_one : order x = 1 → x = root)
    (hne : x ≠ root) :
    0 < finiteOrderExcess root order x := by
  unfold finiteOrderExcess
  rw [hroot]
  have hnot : order x ≠ 1 := by
    intro h
    exact hne (horder_one h)
  omega

/-- Positive proportional weights preserve the proved strict finite-order
excess; they do not turn an unproved nonvanishing claim into a theorem. -/
def proportionalFiniteOrderExcess
    (root : α) (order : α → ℕ) (weight : α → ℝ) (x : α) : ℝ :=
  weight x * (finiteOrderExcess root order x : ℝ)

theorem proportionalFiniteOrderExcess_at_root
    (root : α) (order : α → ℕ) (weight : α → ℝ) :
    proportionalFiniteOrderExcess root order weight root = 0 := by
  simp [proportionalFiniteOrderExcess, finiteOrderExcess]

theorem proportionalFiniteOrderExcess_pos
    (root x : α) (order : α → ℕ) (weight : α → ℝ)
    (hw : 0 < weight x)
    (horder : 0 < finiteOrderExcess root order x) :
    0 < proportionalFiniteOrderExcess root order weight x := by
  unfold proportionalFiniteOrderExcess
  exact mul_pos hw (Nat.cast_pos.mpr horder)


/-- A closed finite orbit cannot carry a *globally defined* real time
coordinate that increases strictly at every step. This is a finite-order
logical analogue of the chronology question, NOT a result about any
specific Einstein spacetime or about positivity of Cartan torsion. -/
theorem closed_cycle_no_strict_real_time
    (n : ℕ) (hn : 0 < n) (time : ℕ → ℝ)
    (hclosed : time n = time 0)
    (hincrease : ∀ k : ℕ, k < n → time k < time (k + 1)) :
    False := by
  have hchain : ∀ k : ℕ, 0 < k → k ≤ n → time 0 < time k := by
    intro k
    induction k with
    | zero =>
        intro hk _
        omega
    | succ k ih =>
        intro _ hk
        have hstep : time k < time (k + 1) :=
          hincrease k (by omega)
        by_cases hz : k = 0
        · subst k
          simpa using hstep
        · exact lt_trans (ih (by omega) (by omega)) hstep
  have hlt := hchain n hn le_rfl
  rw [hclosed] at hlt
  exact (lt_irrefl _) hlt

end GRWTSK.GeneralAlgebra.RootRelativeDefectEnergy
