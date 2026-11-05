/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import Mathlib

/-!
# Source-preserving observations of divided-difference matrices

Consumer: Fourier compressions of the FULL pole-inclusive arithmetic Weil form,
not the almost-Mathieu operator or a positive graph Laplacian. The associated
note derives the actual arithmetic sine symbol and identifies its matrix.
Connes--van Suijlekom, arXiv:2511.23257v1, Proposition 4.1 and equation (11),
already supply the general divided-difference structure; no novelty is claimed.

This file covers finite matrix algebra, four complex probes, the normed-algebra
commutator estimate, and the scalar three-mode obstruction to deleting the long
edge. The contraction of the concrete sawtooth compression, Fourier/source
identification, min--max and infinite-complement analysis are proved or discussed
ANALYTICALLY in the associated note, not formalized here. In particular the
abstract norm theorem does not assert a norm bound for the default Matrix norm.
Its application uses bounded operators on a Euclidean Hilbert space.

All signs, the independent diagonal, and both orientations are retained.
No graph-language inclusion is promoted to an operator inequality. No cofinal
spectral ordering, source-ground comparison, RH or Dirichlet GRH is asserted.
AI-assisted drafting. Compilation, kernel replay, axiom audit and independent
analytical review: NOT_RUN. Novelty: UNASSESSED.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Algebra.LinearAlgebra.DividedDifferenceObserverBounds

open scoped BigOperators

section FiniteMatrices

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

/-- Off-diagonal data represented without erasing the sign of the difference. -/
def differenceMatrix (K : Matrix ι ι ℝ) (f : ι → ℝ) : Matrix ι ι ℝ :=
  fun i j => (f i - f j) * K i j

/-- The diagonal is separately observed; sine samples do not determine it. -/
def observedMatrix (K : Matrix ι ι ℝ) (d f : ι → ℝ) : Matrix ι ι ℝ :=
  Matrix.diagonal d + differenceMatrix K f

/-- Exact commutator identity. No positivity is assumed. -/
theorem differenceMatrix_eq_commutator (K : Matrix ι ι ℝ) (f : ι → ℝ) :
    differenceMatrix K f = Matrix.diagonal f * K - K * Matrix.diagonal f := by
  ext i j
  simp only [differenceMatrix, Matrix.sub_apply, Matrix.diagonal_mul,
    Matrix.mul_diagonal]
  ring

/-- A scalar anchor cancels only from this particular off-diagonal consumer. -/
theorem differenceMatrix_add_constant (K : Matrix ι ι ℝ) (f : ι → ℝ) (c : ℝ) :
    differenceMatrix K (fun i => f i + c) = differenceMatrix K f := by
  ext i j
  simp only [differenceMatrix]
  ring

/-- Every observation discrepancy, including the diagonal, is retained. -/
theorem observedMatrix_sub (K : Matrix ι ι ℝ) (d d' f f' : ι → ℝ) :
    observedMatrix K d f - observedMatrix K d' f' =
      observedMatrix K (fun i => d i - d' i) (fun i => f i - f' i) := by
  ext i j
  by_cases h : i = j
  · subst j
    simp [observedMatrix, differenceMatrix]
  · simp [observedMatrix, differenceMatrix, Matrix.diagonal, h]
    ring

/-- A skew kernel and real symbol yield a symmetric matrix. -/
theorem differenceMatrix_symmetric (K : Matrix ι ι ℝ) (f : ι → ℝ)
    (hK : ∀ i j, K j i = -K i j) (i j : ι) :
    differenceMatrix K f j i = differenceMatrix K f i j := by
  change (f j - f i) * K j i = (f i - f j) * K i j
  rw [hK i j]
  ring

/-- Literal entries of the normalized sawtooth compression; distinct integer
sites are required by the analytical Fourier realization, not by this definition. -/
def sawtoothKernel (site : ι → ℤ) : Matrix ι ι ℝ :=
  fun i j => if i = j then 0 else
    (-1 : ℝ) ^ (site i + site j) / (Real.pi * ((site j : ℝ) - (site i : ℝ)))

/-- The low three Fourier modes of a real reflection-symmetric source form. -/
def threeMode (a b r : ℝ) : Matrix (Fin 3) (Fin 3) ℝ :=
  !![a, r, -r; r, b, r; -r, r, a]

theorem threeMode_equal_edge_magnitudes (a b r : ℝ) :
    |threeMode a b r 0 1| = |threeMode a b r 0 2| ∧
      |threeMode a b r 1 2| = |threeMode a b r 0 2| := by
  simp [threeMode]

end FiniteMatrices

section ComplexProbes

/-- Expansion of Q(u+z*v) when a=Q(u), b=Q(v), c=Q(u,v),
with the first variable of Q conjugate-linear. Positivity is not required. -/
def probe (a b : ℝ) (c z : ℂ) : ℝ :=
  a + (z.re ^ 2 + z.im ^ 2) * b + 2 * (z * c).re

/-- The minus sign on the imaginary probe is essential in this convention. -/
theorem four_probe_identity (a b : ℝ) (c : ℂ) :
    ((probe a b c 1 - probe a b c (-1) : ℝ) : ℂ) -
      Complex.I * ((probe a b c Complex.I - probe a b c (-Complex.I) : ℝ) : ℂ) =
      4 * c := by
  apply Complex.ext <;>
    simp [probe, Complex.mul_re, Complex.mul_im] <;> ring

/-- Equal source edge magnitudes force a loss when a nearest-neighbor target
keeps a hopping of norm h but deletes the other edge. This accommodates arbitrary
complex phase gauges, because only edge magnitudes enter the hypotheses. -/
theorem half_hopping_obstruction (a b target : ℂ) (h ε : ℝ)
    (equalMagnitude : ‖a‖ = ‖b‖)
    (targetMagnitude : ‖target‖ = h)
    (adjacentError : ‖a - target‖ ≤ ε)
    (deletedError : ‖b‖ ≤ ε) :
    h / 2 ≤ ε := by
  have ha : ‖a‖ ≤ ε := by
    rw [equalMagnitude]
    exact deletedError
  have ht : h ≤ 2 * ε := by
    calc
      h = ‖target‖ := targetMagnitude.symm
      _ ≤ ‖target - a‖ + ‖a‖ := norm_le_norm_sub_add target a
      _ ≤ ε + ε := add_le_add (by simpa only [norm_sub_rev] using adjacentError) ha
      _ = 2 * ε := by ring
  linarith

/-- A real signed two-vertex interaction is not determined by coordinate energy. -/
theorem equal_coordinate_energy_opposite_interaction :
    (1 : ℝ)^2 + 1^2 = (1 : ℝ)^2 + (-1)^2 ∧
      2 * (1 : ℝ) * 1 = 2 ∧ 2 * (1 : ℝ) * (-1) = -2 := by
  norm_num

end ComplexProbes

section OperatorNorm

variable {A : Type*} [NormedRing A]

/-- The concrete application uses the algebra of bounded Hilbert-space operators. -/
def operatorModel (H D K : A) : A := H + D * K - K * D

/-- Subtract models BEFORE taking norms. -/
theorem operatorModel_sub (H H' D D' K : A) :
    operatorModel H D K - operatorModel H' D' K =
      (H - H') + ((D - D') * K - K * (D - D')) := by
  unfold operatorModel
  noncomm_ring

/-- A contraction kernel costs twice the diagonal-symbol error, not the number
of matrix entries. Concrete kernel contraction is a separate analytic theorem. -/
theorem norm_commutator_le (D K : A) (η : ℝ)
    (hD : ‖D‖ ≤ η) (hK : ‖K‖ ≤ 1) :
    ‖D * K - K * D‖ ≤ 2 * η := by
  have hη : 0 ≤ η := (norm_nonneg D).trans hD
  calc
    ‖D * K - K * D‖ ≤ ‖D * K‖ + ‖K * D‖ := norm_sub_le _ _
    _ ≤ ‖D‖ * ‖K‖ + ‖K‖ * ‖D‖ := add_le_add (norm_mul_le _ _) (norm_mul_le _ _)
    _ ≤ η * 1 + 1 * η := add_le_add
      (mul_le_mul hD hK (norm_nonneg K) hη)
      (mul_le_mul hK hD (norm_nonneg D) (by norm_num))
    _ = 2 * η := by ring

/-- Independent diagonal and source-symbol observations give the complete price. -/
theorem norm_model_difference_le (H H' D D' K : A) (ε η : ℝ)
    (hH : ‖H - H'‖ ≤ ε) (hD : ‖D - D'‖ ≤ η) (hK : ‖K‖ ≤ 1) :
    ‖operatorModel H D K - operatorModel H' D' K‖ ≤ ε + 2 * η := by
  rw [operatorModel_sub]
  exact (norm_add_le _ _).trans
    (add_le_add hH (norm_commutator_le (D - D') K η hD hK))

/-- Filtering introduces a further ACTUAL operator discrepancy; it is not free. -/
theorem norm_filtered_model_difference_le
    (H H' D D' K filtered : A) (ε η σ : ℝ)
    (hH : ‖H - H'‖ ≤ ε) (hD : ‖D - D'‖ ≤ η) (hK : ‖K‖ ≤ 1)
    (hFilter : ‖operatorModel H' D' K - filtered‖ ≤ σ) :
    ‖operatorModel H D K - filtered‖ ≤ ε + 2 * η + σ := by
  exact (norm_sub_le_norm_sub_add_norm_sub _ (operatorModel H' D' K) _).trans
    (add_le_add (norm_model_difference_le H H' D D' K ε η hH hD hK) hFilter)

/-- A finite reconstruction map also amplifies observation error. In a Hilbert
operator application, take the left map to be the adjoint of the right map.
The concrete rectangular reconstruction can be embedded in one finite ambient
space; its physical norm is not inferred from coefficient entries. -/
theorem norm_sandwich_difference_le (L R X Y : A) (δ : ℝ)
    (h : ‖X - Y‖ ≤ δ) :
    ‖L * X * R - L * Y * R‖ ≤ ‖L‖ * δ * ‖R‖ := by
  have hid : L * X * R - L * Y * R = L * (X - Y) * R := by
    noncomm_ring
  rw [hid]
  calc
    ‖L * (X - Y) * R‖ ≤ ‖L * (X - Y)‖ * ‖R‖ := norm_mul_le _ _
    _ ≤ (‖L‖ * ‖X - Y‖) * ‖R‖ :=
      mul_le_mul_of_nonneg_right (norm_mul_le _ _) (norm_nonneg R)
    _ ≤ (‖L‖ * δ) * ‖R‖ :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left h (norm_nonneg L)) (norm_nonneg R)

end OperatorNorm

end GRWTSK.Algebra.LinearAlgebra.DividedDifferenceObserverBounds
