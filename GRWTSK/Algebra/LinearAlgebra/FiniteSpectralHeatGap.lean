import GRWTSK.Algebra.LinearAlgebra.FiniteSpectralHeat
import GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeatBounds
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteAdjointDescent

namespace GRWTSK.Algebra.LinearAlgebra.FiniteSpectralHeat

open scoped BigOperators
open GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat

universe u v

variable {ι : Type u} [Fintype ι]
variable {E : Type v} [AddCommGroup E] [Module ℝ E]

namespace Model

/-- A vector is supported on spectral coordinates of eigenvalue at least `γ`. -/
def SupportedAbove (M : Model ι E) (γ : ℝ) (x : E) : Prop :=
  ∀ i, M.frame x i ≠ 0 → γ ≤ M.eigenvalue i

/-- Spectral-gap damping on a vector whose nonzero coordinates lie above the declared gap. -/
theorem heat_gap_contracts
    (M : Model ι E) (x : E) {t γ : ℝ}
    (ht : 0 ≤ t) (hx : M.SupportedAbove γ x) :
    M.pairing (M.heat t x) (M.heat t x) ≤
      Real.exp (-2 * t * γ) * M.pairing x x := by
  unfold pairing dot
  rw [M.heat_coordinates]
  calc
    (∑ i,
        spectralHeat M.eigenvalue t (M.frame x) i *
          spectralHeat M.eigenvalue t (M.frame x) i) =
        ∑ i,
          Real.exp (-2 * t * M.eigenvalue i) * (M.frame x i) ^ 2 := by
      apply Finset.sum_congr rfl
      intro i _
      change
        (Real.exp (-t * M.eigenvalue i) * M.frame x i) *
            (Real.exp (-t * M.eigenvalue i) * M.frame x i) =
          Real.exp (-2 * t * M.eigenvalue i) * (M.frame x i) ^ 2
      calc
        (Real.exp (-t * M.eigenvalue i) * M.frame x i) *
              (Real.exp (-t * M.eigenvalue i) * M.frame x i) =
            (Real.exp (-t * M.eigenvalue i) *
              Real.exp (-t * M.eigenvalue i)) * (M.frame x i) ^ 2 := by
          ring
        _ = Real.exp
              ((-t * M.eigenvalue i) + (-t * M.eigenvalue i)) *
                (M.frame x i) ^ 2 := by
          rw [Real.exp_add]
        _ = Real.exp (-2 * t * M.eigenvalue i) * (M.frame x i) ^ 2 := by
          congr 2
          ring
    _ ≤ ∑ i, Real.exp (-2 * t * γ) * (M.frame x i) ^ 2 := by
      apply Finset.sum_le_sum
      intro i _
      by_cases hxi : M.frame x i = 0
      · simp [hxi]
      · apply mul_le_mul_of_nonneg_right
        · apply Real.exp_le_exp.mpr
          have hmul : 2 * t * γ ≤ 2 * t * M.eigenvalue i := by
            exact mul_le_mul_of_nonneg_left (hx i hxi)
              (mul_nonneg (by norm_num) ht)
          linarith
        · exact sq_nonneg (M.frame x i)
    _ = Real.exp (-2 * t * γ) *
        (∑ i, M.frame x i * M.frame x i) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i _
      ring

/-- A vector lies in one selected spectral coordinate. -/
def IsCoordinateEigencomponent
    (M : Model ι E) (j : ι) (x : E) : Prop :=
  ∀ i, i ≠ j → M.frame x i = 0

/-- Exact heat multiplier on a single coordinate eigencomponent. -/
theorem heat_eigencomponent
    [DecidableEq ι]
    (M : Model ι E) {j : ι} {x : E}
    (hx : M.IsCoordinateEigencomponent j x) (t : ℝ) :
    M.heat t x = Real.exp (-t * M.eigenvalue j) • x := by
  apply M.frame.injective
  funext i
  rw [M.heat_coordinates]
  by_cases hij : i = j
  · subst i
    simp [spectralHeat, diagonal]
  · have hzero := hx i hij
    simp [spectralHeat, diagonal, hzero]

end Model


/-!
## Literal finite spectral matrix and Hodge-gap transfer

The diagonal spectral operator has a concrete finite observation matrix.
An observation-energy lower bound forces each diagonal coefficient to have
the corresponding squared gap. Positive diagonal Hodge heat consumes this
gap without requiring the spectral coefficients themselves to be positive.
-/

open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteAdjointDescent

/-- The literal finite matrix of the diagonal spectral operator. -/
def spectralFiniteMatrix [DecidableEq ι] (a : ι → ℝ) : ι → ι → ℝ :=
  fun i j => if i = j then a i else 0

/-- Finite matrix evaluation agrees with the existing spectral operator. -/
theorem spectralFiniteMatrix_apply [DecidableEq ι]
    (a v : ι → ℝ) :
    applyMatrix (Finset.univ : Finset ι) (spectralFiniteMatrix a) v =
      spectralOperator a v := by
  funext i
  simp [applyMatrix, spectralFiniteMatrix, spectralOperator, diagonal]

/-- Nonnegative lower bounds on spectral coefficients supply a squared
finite-adjoint observation estimate. -/
theorem spectralFiniteMatrix_observability [DecidableEq ι]
    (a : ι → ℝ) {γ : ℝ} (hγ : 0 ≤ γ)
    (ha : ∀ i, γ ≤ a i) (v : ι → ℝ) :
    γ ^ 2 *
        GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteAdjointDescent.energy
          (Finset.univ : Finset ι) v ≤
      GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteAdjointDescent.energy
        (Finset.univ : Finset ι)
        (applyMatrix Finset.univ (spectralFiniteMatrix a) v) := by
  rw [spectralFiniteMatrix_apply]
  change γ ^ 2 * (∑ i, (v i) ^ 2) ≤ ∑ i, (a i * v i) ^ 2
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro i _
  have hAi : 0 ≤ a i := hγ.trans (ha i)
  have hsquare : γ ^ 2 ≤ (a i) ^ 2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr (ha i)) (add_nonneg hγ hAi)]
  calc
    γ ^ 2 * (v i) ^ 2 ≤ (a i) ^ 2 * (v i) ^ 2 :=
      mul_le_mul_of_nonneg_right hsquare (sq_nonneg _)
    _ = (a i * v i) ^ 2 := by ring

/-- Testing a global observation bound on each coordinate unit vector
forces a squared gap for every spectral multiplier. -/
theorem spectralFiniteMatrix_coefficient_gap [DecidableEq ι]
    (a : ι → ℝ) {γ : ℝ}
    (hobs : ∀ v : ι → ℝ,
      γ ^ 2 *
          GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteAdjointDescent.energy
            (Finset.univ : Finset ι) v ≤
        GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteAdjointDescent.energy
          (Finset.univ : Finset ι)
          (applyMatrix Finset.univ (spectralFiniteMatrix a) v))
    (i : ι) : γ ^ 2 ≤ (a i) ^ 2 := by
  classical
  let v : ι → ℝ := Pi.single i 1
  have h := hobs v
  rw [spectralFiniteMatrix_apply] at h
  simpa [v, GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteAdjointDescent.energy,
    spectralOperator, diagonal, Pi.single_apply] using h

/-- Finite-adjoint observability transfers to the existing positive
diagonal Hodge heat estimate, with squared observation margin. -/
theorem spectralFiniteMatrix_hodge_heat_gap [DecidableEq ι]
    (a : ι → ℝ) {γ t : ℝ}
    (hobs : ∀ v : ι → ℝ,
      γ ^ 2 *
          GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteAdjointDescent.energy
            (Finset.univ : Finset ι) v ≤
        GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteAdjointDescent.energy
          (Finset.univ : Finset ι)
          (applyMatrix Finset.univ (spectralFiniteMatrix a) v))
    (ht : 0 ≤ t) (x : ι → ℝ) :
    dot (heat a t x) (heat a t x) ≤
      Real.exp (-2 * t * γ ^ 2) * dot x x := by
  exact GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.heat_gap_contracts
    a x ht (fun i => spectralFiniteMatrix_coefficient_gap a hobs i)

/-- The positive spectral coefficient gap also gives strict finite-adjoint
residual contraction in these literal diagonal matrix coordinates. -/
theorem spectralFiniteMatrix_adjoint_strict_contraction [DecidableEq ι]
    (a : ι → ℝ) {γ : ℝ}
    (hγ : 0 < γ) (ha : ∀ i, γ ≤ a i) (v : ι → ℝ) :
    GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteAdjointDescent.energy
        (Finset.univ : Finset ι)
        (fun c => v c - reconstruction Finset.univ Finset.univ
          (spectralFiniteMatrix a)
          (applyMatrix Finset.univ (spectralFiniteMatrix a) v) c) ≤
      (1 - damping Finset.univ Finset.univ (spectralFiniteMatrix a) * γ ^ 2) *
        GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteAdjointDescent.energy
          Finset.univ v ∧
      1 - damping Finset.univ Finset.univ (spectralFiniteMatrix a) * γ ^ 2 < 1 := by
  constructor
  · exact residual_relative_contraction
      (Finset.univ : Finset ι) (Finset.univ : Finset ι)
      (spectralFiniteMatrix a) (γ ^ 2)
      (fun w => spectralFiniteMatrix_observability a hγ.le ha w) v
  · exact residual_relative_factor_lt_one
      (Finset.univ : Finset ι) (Finset.univ : Finset ι)
      (spectralFiniteMatrix a) (γ ^ 2) (sq_pos_of_pos hγ)

end GRWTSK.Algebra.LinearAlgebra.FiniteSpectralHeat
