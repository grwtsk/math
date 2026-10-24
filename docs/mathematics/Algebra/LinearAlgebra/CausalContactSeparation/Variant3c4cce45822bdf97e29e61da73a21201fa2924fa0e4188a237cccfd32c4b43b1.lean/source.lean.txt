/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.BilinearAndQuadraticForms.ZeroCoordinateObstruction
import GRWTSK.Analysis.InnerProductSpace.CausalResponseGram
import GRWTSK.Analysis.InnerProductSpace.DilationResponseSeparation
import Mathlib.LinearAlgebra.Pi

/-!
Current source verification is recorded in
`evidence/Analysis/InnerProductSpace/CausalRealization/formalization-admission.json`.
Original draft annotations and failed checks remain in the preserved evidence archive.

# Original-window contact obstructs restricted source realization


The actual response is zero on its entire reading window before or at arrival,
including the touching endpoint. The literal prescribed source has unit squared
integral for positive scale. Consequently zero-preserving maps on each restricted
feature, scalar diagonal congruence, and domination of the prescribed form by a
finite multiple of the native form for every vector fail at contact.

The original closed inventory and complete ordered quadratic forms are retained.
The scale/horizon witness uses the admitted label 8; its Möbius coefficient is
zero. These statements therefore do not compare full energies on the particular
Möbius vector. They do not exclude operators mixing labels, added features,
altered windows, the reverse form inequality or other transformed comparisons.
Native arithmetic upper budgets, pointwise amplitude return and general operator
realization remain open. RH consumers remain conditional, with no converse.

Research direction: grwtsk contributors. Lean implementation: OpenAI Codex.
-/

namespace GRWTSK.Analysis.InnerProductSpace.CausalContactSeparation

open MeasureTheory Set
open GRWTSK.ProofHorizon.CorkscrewChamberCap
open ArithmeticPickupEnergy
open GRWTSK.LinearAlgebra.ZeroCoordinateObstruction

noncomputable section

/-- The complete original-window restriction of a literal native response. -/
def windowResponse (T : ℝ) (n : ℕ) : ℝ → ℝ :=
  (Ioc 0 T).indicator (response n)

theorem response_zero_before_or_at_contact {n : ℕ} (hn : 1 ≤ n)
    {u : ℝ} (hu : u ≤ Real.log (n : ℝ)) : response n u = 0 := by
  by_cases touching : u = Real.log (n : ℝ)
  · rw [touching]
    exact response_touching_atom_zero hn
  · apply response_of_not_arrived
    intro arrived
    exact touching (le_antisymm hu arrived)

/-- This is equality of whole functions, not only an almost-everywhere equality. -/
theorem window_response_eq_zero_of_before_contact {n : ℕ} (hn : 1 ≤ n)
    {T : ℝ} (hT : T ≤ Real.log (n : ℝ)) : windowResponse T n = 0 := by
  classical
  funext u
  by_cases inWindow : u ∈ Ioc 0 T
  · rw [windowResponse, indicator_of_mem inWindow]
    exact response_zero_before_or_at_contact hn (le_trans inWindow.2 hT)
  · simp only [windowResponse, indicator_of_notMem inWindow, Pi.zero_apply]

theorem touching_window_response_eq_zero {n : ℕ} (hn : 1 ≤ n) :
    windowResponse (Real.log (n : ℝ)) n = 0 :=
  window_response_eq_zero_of_before_contact hn le_rfl

/-- Every row entry at or before contact vanishes through the actual integrand. -/
theorem native_before_contact_row_zero {n : ℕ} (hn : 1 ≤ n)
    {T : ℝ} (hT : T ≤ Real.log (n : ℝ)) (m : ℕ) : gram T n m = 0 := by
  unfold gram
  calc
    (∫ u in Ioc 0 T, response n u * response m u) =
        ∫ _u : ℝ in Ioc 0 T, (0 : ℝ) := by
      apply setIntegral_congr_fun measurableSet_Ioc
      intro u hu
      change response n u * response m u = 0
      rw [response_zero_before_or_at_contact hn (le_trans hu.2 hT), zero_mul]
    _ = 0 := by simp

/-- The unit integral uses actual positive-radius normalization. -/
theorem prescribed_source_vector_ne_zero {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 1 ≤ n) : SourceGram.sourceVector A n ≠ (0 : ℝ → ℝ) := by
  intro isZero
  have positive : 0 < n := lt_of_lt_of_le Nat.zero_lt_one hn
  have unit := SourceGram.source_gram_diagonal_eq_one hA n
  rw [SourceGram.source_gram_eq_integral positive positive, isZero] at unit
  norm_num at unit

/-- This excludes zero-preserving maps of individual original-window features. -/
theorem zero_preserving_contact_map_ne_source {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 1 ≤ n) (map : (ℝ → ℝ) → (ℝ → ℝ)) (atZero : map 0 = 0) :
    map (windowResponse (Real.log (n : ℝ)) n) ≠ SourceGram.sourceVector A n :=
  zero_preserving_map_ne_target map atZero (touching_window_response_eq_zero hn)
    (prescribed_source_vector_ne_zero hA hn)

theorem linear_contact_map_ne_source {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 1 ≤ n) (map : (ℝ → ℝ) →ₗ[ℝ] (ℝ → ℝ)) :
    map (windowResponse (Real.log (n : ℝ)) n) ≠ SourceGram.sourceVector A n :=
  zero_preserving_contact_map_ne_source hA hn map map.map_zero

theorem diagonal_scaled_native_ne_source {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 1 ≤ n) (d : ℕ → ℝ) :
    diagonalScale d (gram (Real.log (n : ℝ))) n n ≠ SourceGram.sourceGram A n n := by
  apply diagonal_scale_ne_positive
  · exact SourceNativeSeparation.native_touching_diagonal_zero hn
  · rw [SourceGram.source_gram_diagonal_eq_one hA]
    norm_num

/-- All vectors are quantified over the original closed inventory. The coordinate
test leaves its complete ordered double sums intact, including every mixed term. -/
theorem native_contact_no_source_quadratic_domination {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 1 ≤ n) (C : ℝ) :
    ¬ ∀ w : ℕ → ℝ,
      (∑ m ∈ inventory (Real.log (n : ℝ)), ∑ k ∈ inventory (Real.log (n : ℝ)),
        w m * w k * SourceGram.sourceGram A m k) ≤
      C * ArithmeticPickupGram.quadraticForm (Real.log (n : ℝ))
        (inventory (Real.log (n : ℝ))) w := by
  change ¬ ∀ w : ℕ → ℝ,
    orderedQuadratic (SourceGram.sourceGram A) (inventory (Real.log (n : ℝ))) w ≤
      C * orderedQuadratic (gram (Real.log (n : ℝ)))
        (inventory (Real.log (n : ℝ))) w
  apply no_uniform_domination
  · exact SourceNativeSeparation.touching_atom_in_inventory hn
  · exact SourceNativeSeparation.native_touching_diagonal_zero hn
  · rw [SourceGram.source_gram_diagonal_eq_one hA]
    norm_num

/-- The same restricted obstructions occur with the prescribed T = 2A, A ≥ 1.
This full-vector assertion supplies no claim about the distinguished Möbius vector. -/
theorem prescribed_horizon_restricted_obstructions :
    ∃ A : ℝ, 1 ≤ A ∧ 8 ∈ inventory (2 * A) ∧
      (∀ map : (ℝ → ℝ) →ₗ[ℝ] (ℝ → ℝ),
        map (windowResponse (2 * A) 8) ≠ SourceGram.sourceVector A 8) ∧
      (∀ d : ℕ → ℝ,
        diagonalScale d (gram (2 * A)) 8 8 ≠ SourceGram.sourceGram A 8 8) ∧
      (∀ C : ℝ, ¬ ∀ w : ℕ → ℝ,
        (∑ m ∈ inventory (2 * A), ∑ k ∈ inventory (2 * A),
          w m * w k * SourceGram.sourceGram A m k) ≤
        C * ArithmeticPickupGram.quadraticForm (2 * A) (inventory (2 * A)) w) := by
  have logEight : Real.log (8 : ℝ) = 3 * Real.log 2 := by
    rw [show (8 : ℝ) = 2 ^ (3 : ℕ) by norm_num, Real.log_pow]
    norm_num
  have scale : 1 ≤ Real.log (8 : ℝ) / 2 := by
    rw [logEight]
    linarith [Real.log_two_gt_d9]
  have positive : 0 < Real.log (8 : ℝ) / 2 := by linarith
  have horizon : 2 * (Real.log (8 : ℝ) / 2) = Real.log (8 : ℝ) := by ring
  refine ⟨Real.log (8 : ℝ) / 2, scale, ?_, ?_, ?_, ?_⟩
  · rw [horizon]
    exact SourceNativeSeparation.touching_atom_in_inventory (n := 8) (by norm_num)
  · intro map
    rw [horizon]
    exact linear_contact_map_ne_source positive (by norm_num) map
  · intro d
    rw [horizon]
    exact diagonal_scaled_native_ne_source positive (by norm_num) d
  · intro C
    rw [horizon]
    exact native_contact_no_source_quadratic_domination positive (by norm_num) C

end

end GRWTSK.Analysis.InnerProductSpace.CausalContactSeparation
