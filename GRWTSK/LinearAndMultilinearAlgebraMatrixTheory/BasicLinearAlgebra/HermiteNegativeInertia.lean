/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.HermiteRealRootCriterion
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.NegativeIndexBounds

/-!
# Full finite negative inertia of the weighted Hermite support matrix

MSC2020: 15A63, 12D10; consumers RP-OC-03 and RP-OC-06, math #1808 / #1806.

Reuse Program 6's actual `supportMatrix` and `exists_real_interpolant`.
For conjugation-closed finite support, strictly positive weights, and coefficient
length at least the number of DISTINCT locations, its REAL negative index is
the number of upper-half-plane locations. Positive multiplicities are weights,
not repeated independent coordinates. No weight-conjugation equality is needed
for this real-part matrix; no assertion about arbitrary complex moments follows.

The lower bound is a single linear synthesis of all pair separators. Every
linear combination is purely imaginary on the support; imaginary evaluation on
the upper support recovers its coefficients. The upper bound uses the same
imaginary-evaluation observer and nonnegativity on its whole kernel. Empty
support, repeated-root weights and coefficient spaces larger than the support
are retained. Index zero is not strict positivity or a trivial radical.

This is a classical Hermite inertia argument, not a novelty claim or a theorem
identifying the finite matrix with the infinite arithmetic Weil form. The
primary interpolation comparison is Nathanson, arXiv:1911.01745v2, as recorded
in the reused source. Exact-source baseline: math@8d7c8b8084caa6ff3cf6b254da449042617519f8.
FORMAL_SOURCE_CANDIDATE: elaboration, fresh kernel replay, transitive axiom
audit and independent mathematical review NOT_RUN. Individual records adjacent.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators ComplexConjugate

namespace GRWTSK.LinearAlgebra.HermiteNegativeInertia

open GRWTSK.HermiteMomentCertificates
open GRWTSK.HermiteRealRootCriterion
open GRWTSK.LinearAlgebra.NegativeIndex
open GRWTSK.LinearAlgebra.NegativeIndexBounds

/-- One canonical representative from each nonreal conjugate pair. -/
def upperSupport (S : Finset ℂ) : Finset ℂ := by
  classical
  exact S.filter fun z => 0 < z.im

/-- Real and imaginary evaluations as real-linear maps. -/
def realEvaluationMap (n : ℕ) (z : ℂ) : (Fin n → ℝ) →ₗ[ℝ] ℝ where
  toFun := realEvaluation z
  map_add' := by
    intro v w
    simp [realEvaluation, add_mul, Finset.sum_add_distrib]
  map_smul' := by
    intro c v
    simp [realEvaluation, Pi.smul_apply, smul_eq_mul, Finset.mul_sum, mul_assoc]

def imagEvaluationMap (n : ℕ) (z : ℂ) : (Fin n → ℝ) →ₗ[ℝ] ℝ where
  toFun := imagEvaluation z
  map_add' := by
    intro v w
    simp [imagEvaluation, add_mul, Finset.sum_add_distrib]
  map_smul' := by
    intro c v
    simp [imagEvaluation, Pi.smul_apply, smul_eq_mul, Finset.mul_sum, mul_assoc]

/-- Real-coefficient evaluation commutes with conjugation. -/
theorem evaluation_conj {n : ℕ} (z : ℂ) (v : Fin n → ℝ) :
    evaluation (conj z) v = conj (evaluation z v) := by
  simp [evaluation, map_sum, map_mul, map_pow]

theorem imagEvaluation_conj {n : ℕ} (z : ℂ) (v : Fin n → ℝ) :
    imagEvaluation (conj z) v = -imagEvaluation z v := by
  rw [← evaluation_im, evaluation_conj]
  simp only [Complex.conj_im, evaluation_im]

/-- The observation has one REAL coordinate for each upper support location. -/
def imaginaryObserver (S : Finset ℂ) (n : ℕ) :
    (Fin n → ℝ) →ₗ[ℝ] (upperSupport S → ℝ) :=
  LinearMap.pi fun z => imagEvaluationMap n z

/-- All imaginary evaluations vanish on the observation kernel, including the
lower half-plane and real axis, by actual conjugation closure. -/
theorem imagEvaluation_zero_of_observer_zero
    (S : Finset ℂ) (n : ℕ) (hconj : ∀ z ∈ S, conj z ∈ S)
    (v : Fin n → ℝ) (hv : imaginaryObserver S n v = 0)
    (z : ℂ) (hz : z ∈ S) : imagEvaluation z v = 0 := by
  classical
  have hupper (w : ℂ) (hw : w ∈ upperSupport S) : imagEvaluation w v = 0 :=
    congrFun hv ⟨w, hw⟩
  rcases lt_trichotomy 0 z.im with hpos | hzero | hneg
  · exact hupper z (Finset.mem_filter.mpr ⟨hz, hpos⟩)
  · exact imagEvaluation_eq_zero_of_real z hzero.symm v
  · have hc : conj z ∈ upperSupport S := by
      apply Finset.mem_filter.mpr
      exact ⟨hconj z hz, by simpa only [Complex.conj_im] using neg_pos.mpr hneg⟩
    have hh := hupper (conj z) hc
    rw [imagEvaluation_conj] at hh
    exact neg_eq_zero.mp hh

/-- This upper-bound supplier requires only nonnegative weights, and no degree budget. -/
theorem nonnegative_on_observer_kernel
    (S : Finset ℂ) (weight : ℂ → ℝ) (n : ℕ)
    (hconj : ∀ z ∈ S, conj z ∈ S) (hweight : ∀ z ∈ S, 0 ≤ weight z)
    (v : Fin n → ℝ) (hv : imaginaryObserver S n v = 0) :
    0 ≤ quadraticValue (supportMatrix S weight n) v := by
  classical
  unfold supportMatrix
  rw [hermite_quadratic_identity]
  apply Finset.sum_nonneg
  intro z _
  rw [imagEvaluation_zero_of_observer_zero S n hconj v hv z z.property]
  simpa using mul_nonneg (hweight z z.property) (sq_nonneg (realEvaluation z v))

/-- Finite observation gives the upper inertia bound even for undersized matrices. -/
theorem negativeIndex_supportMatrix_le
    (S : Finset ℂ) (weight : ℂ → ℝ) (n : ℕ)
    (hconj : ∀ z ∈ S, conj z ∈ S) (hweight : ∀ z ∈ S, 0 ≤ weight z) :
    negativeIndex (𝕜 := ℝ) (quadraticValue (supportMatrix S weight n)) ≤
      ((upperSupport S).card : ℕ∞) := by
  classical
  simpa using negativeIndex_le_finrank_of_nonneg_kernel
    (quadraticValue (supportMatrix S weight n)) (imaginaryObserver S n)
    (nonnegative_on_observer_kernel S weight n hconj hweight)

/-- Expose a pair separator's VALUES, not merely its negative quadratic value. -/
theorem exists_pair_interpolant (S : Finset ℂ) (n : ℕ)
    (hn : S.card ≤ n) (hconj : ∀ z ∈ S, conj z ∈ S)
    (a : upperSupport S) :
    ∃ v : Fin n → ℝ,
      (∀ z ∈ S, realEvaluation z v = 0) ∧
      (∀ b : upperSupport S, imagEvaluation b v = if b = a then 1 else 0) := by
  classical
  have haS : (a : ℂ) ∈ S := (Finset.mem_filter.mp a.property).1
  have ha : 0 < (a : ℂ).im := (Finset.mem_filter.mp a.property).2
  have hcne : conj (a : ℂ) ≠ (a : ℂ) := by
    intro h
    have hi := congrArg Complex.im h
    simp only [Complex.conj_im] at hi
    linarith
  have hne : (a : ℂ) ≠ conj (a : ℂ) := Ne.symm hcne
  let values : ℂ → ℂ := fun z =>
    if z = (a : ℂ) then Complex.I else if z = conj (a : ℂ) then -Complex.I else 0
  have hvalues (z : ℂ) (_hz : z ∈ S) : values (conj z) = conj (values z) := by
    by_cases h0 : z = (a : ℂ)
    · subst z
      simp [values, hne, hcne]
    · by_cases h1 : z = conj (a : ℂ)
      · subst z
        simp [values, hne, hcne]
      · have hc0 : conj z ≠ (a : ℂ) := by
          intro h
          apply h1
          simpa using congrArg conj h
        have hc1 : conj z ≠ conj (a : ℂ) := by
          intro h
          apply h0
          simpa using congrArg conj h
        simp [values, h0, h1, hc0, hc1]
  obtain ⟨v, hv⟩ := exists_real_interpolant S n hn hconj values hvalues
  refine ⟨v, ?_, ?_⟩
  · intro z hz
    rw [← evaluation_re, hv z hz]
    dsimp [values]
    split_ifs <;> simp
  · intro b
    have hbS : (b : ℂ) ∈ S := (Finset.mem_filter.mp b.property).1
    have hb : 0 < (b : ℂ).im := (Finset.mem_filter.mp b.property).2
    have hbconj : (b : ℂ) ≠ conj (a : ℂ) := by
      intro h
      have hi := congrArg Complex.im h
      simp only [Complex.conj_im] at hi
      linarith
    rw [← evaluation_im, hv b hbS]
    by_cases hba : b = a
    · subst b
      simp [values]
    · have hba' : (b : ℂ) ≠ (a : ℂ) := fun h => hba (Subtype.ext h)
      simp [values, hba, hba', hbconj]

/-- Synthesize the entire negative-coordinate space linearly. No independent
pointwise choice is incorrectly asserted to be linear. -/
theorem exists_imaginary_section (S : Finset ℂ) (n : ℕ)
    (hn : S.card ≤ n) (hconj : ∀ z ∈ S, conj z ∈ S) :
    ∃ F : (upperSupport S → ℝ) →ₗ[ℝ] (Fin n → ℝ),
      (∀ x z, z ∈ S → realEvaluation z (F x) = 0) ∧
      (∀ x, imaginaryObserver S n (F x) = x) := by
  classical
  choose vectors hreal himag using exists_pair_interpolant S n hn hconj
  let F : (upperSupport S → ℝ) →ₗ[ℝ] (Fin n → ℝ) :=
    { toFun := fun x => ∑ a, x a • vectors a
      map_add' := by
        intro x y
        simp only [Pi.add_apply, add_smul, Finset.sum_add_distrib]
      map_smul' := by
        intro c x
        simp only [Pi.smul_apply, smul_eq_mul, Finset.smul_sum, smul_smul] }
  refine ⟨F, ?_, ?_⟩
  · intro x z hz
    change realEvaluationMap n z (∑ a, x a • vectors a) = 0
    rw [map_sum]
    simp only [map_smul]
    change (∑ a, x a * realEvaluation z (vectors a)) = 0
    simp [hreal, hz]
  · intro x
    funext b
    change imagEvaluationMap n b (∑ a, x a • vectors a) = x b
    rw [map_sum]
    simp only [map_smul]
    change (∑ a, x a * imagEvaluation b (vectors a)) = x b
    simp [himag, mul_ite]

/-- A purely imaginary evaluation vector with a nonzero upper coordinate is
strictly negative for the FULL finite support sum, including all cross terms. -/
theorem negative_of_pure_imaginary_evaluations
    (S : Finset ℂ) (weight : ℂ → ℝ) (n : ℕ)
    (hweight : ∀ z ∈ S, 0 < weight z) (v : Fin n → ℝ)
    (hreal : ∀ z ∈ S, realEvaluation z v = 0)
    (hobs : imaginaryObserver S n v ≠ 0) :
    quadraticValue (supportMatrix S weight n) v < 0 := by
  classical
  have hexists : ∃ a : upperSupport S, imagEvaluation a v ≠ 0 := by
    by_contra h
    apply hobs
    funext a
    exact not_not.mp (fun ha => h ⟨a, ha⟩)
  obtain ⟨a, ha⟩ := hexists
  have haS : (a : ℂ) ∈ S := (Finset.mem_filter.mp a.property).1
  unfold supportMatrix
  rw [hermite_quadratic_identity]
  have hsum :
      (∑ z : S, weight z * (realEvaluation z v ^ 2 - imagEvaluation z v ^ 2)) <
        ∑ _z : S, (0 : ℝ) := by
    apply Finset.sum_lt_sum
    · intro z _
      rw [hreal z z.property]
      exact mul_nonpos_of_nonneg_of_nonpos (hweight z z.property).le
        (by nlinarith [sq_nonneg (imagEvaluation z v)])
    · refine ⟨⟨(a : ℂ), haS⟩, Finset.mem_univ _, ?_⟩
      change weight a * (realEvaluation a v ^ 2 - imagEvaluation a v ^ 2) < 0
      rw [hreal a haS]
      exact mul_neg_of_pos_of_neg (hweight a haS)
        (by nlinarith [sq_pos_of_ne_zero ha])
  simpa using hsum

/-- Full finite Hermite negative-inertia formula. The count is of distinct
conjugate PAIRS, with no simplicity or weight-invariance assumption. -/
theorem negativeIndex_supportMatrix_eq
    (S : Finset ℂ) (weight : ℂ → ℝ) (n : ℕ)
    (hn : S.card ≤ n) (hconj : ∀ z ∈ S, conj z ∈ S)
    (hweight : ∀ z ∈ S, 0 < weight z) :
    negativeIndex (𝕜 := ℝ) (quadraticValue (supportMatrix S weight n)) =
      ((upperSupport S).card : ℕ∞) := by
  classical
  obtain ⟨F, hreal, hsection⟩ := exists_imaginary_section S n hn hconj
  let e := (Module.finBasis ℝ (upperSupport S → ℝ)).equivFun
  let L := F.comp e.symm.toLinearMap
  have hzero : quadraticValue (supportMatrix S weight n) 0 = 0 := by
    simp [quadraticValue]
  have hnegative : ∀ x, x ≠ 0 → quadraticValue (supportMatrix S weight n) (L x) < 0 := by
    intro x hx
    have hx' : e.symm x ≠ 0 := by
      intro he
      apply hx
      have hh := congrArg e he
      simpa using hh
    apply negative_of_pure_imaginary_evaluations S weight n hweight (L x)
    · intro z hz
      exact hreal (e.symm x) z hz
    · change imaginaryObserver S n (F (e.symm x)) ≠ 0
      rw [hsection]
      exact hx'
  have hframe := hasNegativeFrame_of_strict_negative
    (quadraticValue (supportMatrix S weight n)) hzero L hnegative
  have hindex := negativeIndex_eq_of_frame_and_observer (imaginaryObserver S n)
    (nonnegative_on_observer_kernel S weight n hconj (fun z hz => (hweight z hz).le))
    rfl hframe
  simpa using hindex

/-- Changing positive weights or enlarging an already sufficient coefficient
space does not change the negative index. Singular excess coordinates are allowed. -/
theorem negativeIndex_independent_of_positive_weights
    (S : Finset ℂ) (w₁ w₂ : ℂ → ℝ) (n₁ n₂ : ℕ)
    (hn₁ : S.card ≤ n₁) (hn₂ : S.card ≤ n₂)
    (hconj : ∀ z ∈ S, conj z ∈ S)
    (hw₁ : ∀ z ∈ S, 0 < w₁ z) (hw₂ : ∀ z ∈ S, 0 < w₂ z) :
    negativeIndex (𝕜 := ℝ) (quadraticValue (supportMatrix S w₁ n₁)) =
      negativeIndex (𝕜 := ℝ) (quadraticValue (supportMatrix S w₂ n₂)) := by
  rw [negativeIndex_supportMatrix_eq S w₁ n₁ hn₁ hconj hw₁,
    negativeIndex_supportMatrix_eq S w₂ n₂ hn₂ hconj hw₂]

end GRWTSK.LinearAlgebra.HermiteNegativeInertia
