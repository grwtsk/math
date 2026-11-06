/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.Combinatorics.GraphTheory.RootHeatState
import Mathlib.Tactic

/-!
# Reversible rational coverage on a finite certificate inventory

Use the existing column-stochastic `HeatKernel`, not a parallel heat model.
The kernel is half the identity plus half a supplied positive probability
column. It preserves mass, gives positive heat to every indexed record from
any nonnegative nonzero mass, and has an exact inverse on its image. Inverse
positivity on arbitrary states is not asserted. Exact rational state is
retained; rounded floating data do not acquire a lossless inverse.

Finite inventories of natural-number codes are the prefixes `Fin (n+1)`.
Every finite code belongs to one such inventory. That is coverage of finite
descriptions, not enumeration of arbitrary reals, fairness, eventual proof,
or a sign theorem. This coverage heat is distinct from the spectral
Euler-heat sign test and from a continuum semigroup.

Baseline c5648c5a280d1cbdf4f98b594a450aaa5e4969c9.
AI-assisted manual source. Elaboration, kernel replay, transitive axiom
audit and independent mathematical review: NOT_RUN.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ReversibleCertificateHeat

open RootHeatState

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

/-- Half-retention prevents the loss of the original state under mixing. -/
def blend (pi : ι → ℚ) (hnonneg : ∀ i, 0 ≤ pi i) (hmass : ∑ i, pi i = 1) :
    HeatKernel ι where
  transition target source := (if target = source then 1 / 2 else 0) + pi target / 2
  nonnegative target source := by
    apply add_nonneg
    · split_ifs <;> norm_num
    · exact div_nonneg (hnonneg target) (by norm_num)
  stochastic source := by
    simp only [Finset.sum_add_distrib, Finset.sum_div, hmass]
    simp

theorem step_eq (pi : ι → ℚ) (hnonneg : ∀ i, 0 ≤ pi i) (hmass : ∑ i, pi i = 1)
    (w : ι → ℚ) (i : ι) :
    (blend pi hnonneg hmass).step w i = w i / 2 + pi i * (∑ j, w j) / 2 := by
  change (∑ j, ((if i = j then (1 / 2 : ℚ) else 0) + pi i / 2) * w j) = _
  simp only [add_mul, Finset.sum_add_distrib, ite_mul, zero_mul]
  rw [← Finset.mul_sum]
  simp only [Finset.sum_ite_eq', Finset.sum_ite_eq, Finset.mem_univ, ite_true]
  ring

/-- Decode the exact finite rational heat state, using its preserved mass. -/
def unmix (pi : ι → ℚ) (w : ι → ℚ) : ι → ℚ :=
  fun i => 2 * w i - pi i * ∑ j, w j

theorem unmix_step (pi : ι → ℚ) (hnonneg : ∀ i, 0 ≤ pi i) (hmass : ∑ i, pi i = 1)
    (w : ι → ℚ) : unmix pi ((blend pi hnonneg hmass).step w) = w := by
  funext i
  unfold unmix
  rw [step_eq, HeatKernel.step_mass]
  ring

theorem step_injective (pi : ι → ℚ) (hnonneg : ∀ i, 0 ≤ pi i) (hmass : ∑ i, pi i = 1) :
    Function.Injective (blend pi hnonneg hmass).step := by
  intro x y h
  have hd := congrArg (unmix pi) h
  simpa only [unmix_step] using hd

theorem step_pos (pi : ι → ℚ) (hnonneg : ∀ i, 0 ≤ pi i) (hmass : ∑ i, pi i = 1)
    (hpositive : ∀ i, 0 < pi i) (w : ι → ℚ) (hw : ∀ i, 0 ≤ w i)
    (hm : 0 < ∑ j, w j) (i : ι) : 0 < (blend pi hnonneg hmass).step w i := by
  rw [step_eq]
  exact add_pos_of_nonneg_of_pos (div_nonneg (hw i) (by norm_num))
    (div_pos (mul_pos (hpositive i) hm) (by norm_num))

/-- Every inventory item, rather than merely one aggregate, has positive heat. -/
theorem typeComplete_identity (pi : ι → ℚ) (hnonneg : ∀ i, 0 ≤ pi i)
    (hmass : ∑ i, pi i = 1) (hpositive : ∀ i, 0 < pi i)
    (w : ι → ℚ) (hw : ∀ i, 0 ≤ w i) (hm : 0 < ∑ j, w j) :
    TypeCompleteAt (fun i : ι => i) ((blend pi hnonneg hmass).step w) := by
  intro i
  simpa [aggregate] using step_pos pi hnonneg hmass hpositive w hw hm i

/-- Concrete positive probability data for every nonempty finite prefix. -/
def uniform (n : ℕ) : HeatKernel (Fin (n + 1)) :=
  blend (fun _ => 1 / ((n : ℚ) + 1)) (fun _ => by positivity) (by
    simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin,
      nsmul_eq_mul, Nat.cast_add, Nat.cast_one]
    rw [mul_one_div, div_self (by positivity)])

theorem uniform_step_pos (n : ℕ) (w : Fin (n + 1) → ℚ)
    (hw : ∀ i, 0 ≤ w i) (hm : 0 < ∑ i, w i) (i : Fin (n + 1)) :
    0 < (uniform n).step w i := by
  unfold uniform
  exact step_pos _ _ _ (fun _ => by positivity) w hw hm i

/-- A single exact rational unit of initial mass. -/
def seed (n : ℕ) : Fin (n + 1) → ℚ := fun i => if i = 0 then 1 else 0

theorem uniform_seed_pos (n : ℕ) (i : Fin (n + 1)) :
    0 < (uniform n).step (seed n) i := by
  apply uniform_step_pos n (seed n)
  · intro k
    simp only [seed]
    split_ifs <;> norm_num
  · simp [seed]

/-- The countable inventory is covered by finite prefixes, not one finite carrier. -/
theorem every_code_in_prefix (code : ℕ) : ∃ n : ℕ, ∃ i : Fin (n + 1), i.val = code :=
  ⟨code, ⟨code, Nat.lt_succ_self code⟩, rfl⟩

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ReversibleCertificateHeat
