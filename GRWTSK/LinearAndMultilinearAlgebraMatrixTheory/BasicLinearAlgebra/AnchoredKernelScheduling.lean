/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib declarations retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Complex.Order
import Mathlib.Data.Fin.VecNotation
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

set_option autoImplicit false

/-!
# Anchored kernels and finite scheduling congruences

This file refutes the proposed addition `lambda * ((x-y)^2 + (x-y)*phase + 5*phase^2)`
to an anchored screw kernel. Positivity of a quadratic polynomial in two variables does
not imply positive semidefiniteness of a two-point kernel. The counterexamples are real
and finite; the positive congruence construction works over a general ordered star ring.

The consumer is the signed-source refinement in `ScrewKernelRefinement.lean` and its
reconstruction budget in `ScrewSpectralReconstruction.lean`; see the adjacent provenance
record. No theorem here identifies a scheduling matrix with the actual Weil form,
proves its positivity, or establishes scheduler fairness or machine nonhalting.
-/

namespace GRWTSK.Algebra.LinearAlgebra.AnchoredKernelScheduling

open Matrix
open scoped BigOperators

noncomputable section

/-- The positive polynomial from the proposed scheduling rule. -/
def quadraticMetric (d phase : ℝ) : ℝ :=
  d ^ 2 + d * phase + 5 * phase ^ 2

theorem quadraticMetric_decomposition (d phase : ℝ) :
    quadraticMetric d phase = (d + phase / 2) ^ 2 + (19 / 4 : ℝ) * phase ^ 2 := by
  unfold quadraticMetric
  ring

theorem quadraticMetric_nonneg (d phase : ℝ) : 0 ≤ quadraticMetric d phase := by
  rw [quadraticMetric_decomposition]
  positivity

theorem quadraticMetric_eq_zero_iff (d phase : ℝ) :
    quadraticMetric d phase = 0 ↔ d = 0 ∧ phase = 0 := by
  constructor
  · intro h
    rw [quadraticMetric_decomposition] at h
    have hp : phase ^ 2 = 0 := by
      nlinarith [sq_nonneg phase, sq_nonneg (d + phase / 2)]
    have hp0 : phase = 0 := by nlinarith [sq_nonneg phase]
    refine ⟨?_, hp0⟩
    subst phase
    nlinarith [sq_nonneg d]
  · rintro ⟨rfl, rfl⟩
    norm_num [quadraticMetric]

/-- The polynomial is strictly positive away from the origin. -/
theorem quadraticMetric_pos (d phase : ℝ) (hne : d ≠ 0 ∨ phase ≠ 0) :
    0 < quadraticMetric d phase := by
  by_contra h
  have hz : quadraticMetric d phase = 0 :=
    le_antisymm (le_of_not_gt h) (quadraticMetric_nonneg d phase)
  obtain ⟨hd, hp⟩ := (quadraticMetric_eq_zero_iff d phase).mp hz
  rcases hne with hne | hne
  · exact hne hd
  · exact hne hp

/-- The anchored kernel includes `g 0`; no normalization hypothesis is concealed. -/
def anchoredKernel (g : ℝ → ℝ) (x y : ℝ) : ℝ :=
  g (x - y) - g x - g (-y) + g 0

@[simp]
theorem anchoredKernel_zero_left (g : ℝ → ℝ) (y : ℝ) :
    anchoredKernel g 0 y = 0 := by
  simp only [anchoredKernel, zero_sub]
  ring

@[simp]
theorem anchoredKernel_zero_right (g : ℝ → ℝ) (x : ℝ) :
    anchoredKernel g x 0 = 0 := by
  simp [anchoredKernel]

/-- The disputed polynomial addition, kept separate from the source kernel. -/
def polynomialPerturbation (K : ℝ → ℝ → ℝ) (lambda phase x y : ℝ) : ℝ :=
  K x y + lambda * quadraticMetric (x - y) phase

/-- Away from phase zero, the polynomial term destroys the symmetry of a symmetric
source kernel whenever the displayed product is nonzero. -/
theorem polynomialPerturbation_asymmetry (K : ℝ → ℝ → ℝ)
    (lambda phase x y : ℝ) (hK : K x y = K y x) :
    polynomialPerturbation K lambda phase x y -
      polynomialPerturbation K lambda phase y x = 2 * lambda * (x - y) * phase := by
  unfold polynomialPerturbation quadraticMetric
  rw [hK]
  ring

theorem polynomialPerturbation_not_symmetric (K : ℝ → ℝ → ℝ)
    (lambda phase x y : ℝ) (hK : K x y = K y x)
    (hproduct : lambda * (x - y) * phase ≠ 0) :
    polynomialPerturbation K lambda phase x y ≠
      polynomialPerturbation K lambda phase y x := by
  intro h
  have ha := polynomialPerturbation_asymmetry K lambda phase x y hK
  rw [h, sub_self] at ha
  apply hproduct
  nlinarith

/-- Restriction to the two distinct real coordinates `0` and `1`. -/
def sampleTwo (K : ℝ → ℝ → ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  ![![K 0 0, K 0 1], ![K 1 0, K 1 1]]

/-- On the same two coordinates, a nonzero phase and nonzero coupling destroy the
Hermitian property, even when the source observations at those coordinates are symmetric. -/
theorem sampled_polynomial_not_isHermitian (K : ℝ → ℝ → ℝ)
    (lambda phase : ℝ) (hK : K 0 1 = K 1 0)
    (hlambda : lambda ≠ 0) (hphase : phase ≠ 0) :
    ¬ (sampleTwo (polynomialPerturbation K lambda phase)).IsHermitian := by
  intro h
  have heq : polynomialPerturbation K lambda phase 0 1 =
      polynomialPerturbation K lambda phase 1 0 := by
    simpa [sampleTwo] using h.apply (1 : Fin 2) (0 : Fin 2)
  have hproduct : lambda * ((0 : ℝ) - 1) * phase ≠ 0 :=
    mul_ne_zero (mul_ne_zero hlambda (by norm_num)) hphase
  exact polynomialPerturbation_not_symmetric K lambda phase 0 1 hK hproduct heq

theorem sampled_polynomial_phase_ne_zero_not_posSemidef (K : ℝ → ℝ → ℝ)
    (lambda phase : ℝ) (hK : K 0 1 = K 1 0)
    (hlambda : lambda ≠ 0) (hphase : phase ≠ 0) :
    ¬ (sampleTwo (polynomialPerturbation K lambda phase)).PosSemidef := by
  intro h
  exact sampled_polynomial_not_isHermitian K lambda phase hK hlambda hphase h.isHermitian

/-- A zero diagonal entry with nonzero symmetric coupling is incompatible with PSD. -/
def badCorner (a lambda : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  ![![0, lambda], ![lambda, a]]

/-- An explicit vector witnessing a negative quadratic value for every real `a`. -/
def badWitness (a lambda : ℝ) : Fin 2 → ℝ :=
  ![-(a ^ 2 + 1), lambda]

theorem badCorner_quadratic (a lambda : ℝ) :
    star (badWitness a lambda) ⬝ᵥ (badCorner a lambda *ᵥ badWitness a lambda) =
      lambda ^ 2 * (a - 2 * a ^ 2 - 2) := by
  simp [badCorner, badWitness, Matrix.mulVec, dotProduct, Fin.sum_univ_two] <;> ring

theorem badCorner_negative (a lambda : ℝ) (hlambda : lambda ≠ 0) :
    star (badWitness a lambda) ⬝ᵥ (badCorner a lambda *ᵥ badWitness a lambda) < 0 := by
  rw [badCorner_quadratic]
  have hf : a - 2 * a ^ 2 - 2 < 0 := by
    nlinarith [sq_nonneg (a - 1 / 4)]
  exact mul_neg_of_pos_of_neg (sq_pos_of_ne_zero hlambda) hf

theorem badCorner_not_posSemidef (a lambda : ℝ) (hlambda : lambda ≠ 0) :
    ¬ (badCorner a lambda).PosSemidef := by
  intro h
  exact not_lt_of_ge (h.dotProduct_mulVec_nonneg (badWitness a lambda))
    (badCorner_negative a lambda hlambda)

theorem anchored_polynomial_phase_zero (g : ℝ → ℝ) (lambda : ℝ) :
    sampleTwo (polynomialPerturbation (anchoredKernel g) lambda 0) =
      badCorner (anchoredKernel g 1 1) lambda := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [sampleTwo, polynomialPerturbation, quadraticMetric, badCorner, anchoredKernel]
    <;> ring

/-- No positivity, evenness, continuity, or RH assumption on `g` is needed for this
counterexample. In particular, certifying the original kernel does not repair the addition. -/
theorem anchored_polynomial_not_posSemidef (g : ℝ → ℝ) (lambda : ℝ)
    (hlambda : lambda ≠ 0) :
    ¬ (sampleTwo (polynomialPerturbation (anchoredKernel g) lambda 0)).PosSemidef := by
  rw [anchored_polynomial_phase_zero]
  exact badCorner_not_posSemidef _ _ hlambda

/-- An anchored sample containing the origin cannot be strictly positive definite. -/
theorem anchored_sample_not_posDef (g : ℝ → ℝ) :
    ¬ (sampleTwo (anchoredKernel g)).PosDef := by
  intro h
  have hd := h.diag_pos (i := (0 : Fin 2))
  simpa [sampleTwo] using hd

section PhaseCongruence

variable {ι R : Type*} [Fintype ι] [DecidableEq ι]
variable [Ring R] [PartialOrder R] [StarRing R]

/-- A diagonal phase encoding. The nineteenth-root condition is a separate hypothesis. -/
def phaseDiagonal (omega : ι → R) (tick : ℕ) : Matrix ι ι R :=
  Matrix.diagonal (fun i => omega i ^ tick)

/-- A certified period of 19 follows from nineteenth roots, without floating-point
exponentiation or a real residue for a complex score. Minimal period 19 is not asserted. -/
theorem phaseDiagonal_periodic (omega : ι → R) (hperiod : ∀ i, omega i ^ 19 = 1)
    (tick : ℕ) : phaseDiagonal omega (tick + 19) = phaseDiagonal omega tick := by
  unfold phaseDiagonal
  congr 1
  funext i
  simp [pow_add, hperiod i]

/-- A finite scheduling congruence; this definition does not identify `K` with a source form. -/
def phaseKernel (K : Matrix ι ι R) (omega : ι → R) (tick : ℕ) : Matrix ι ι R :=
  phaseDiagonal omega tick * K * (phaseDiagonal omega tick)ᴴ

theorem phaseKernel_posSemidef (K : Matrix ι ι R) (hK : K.PosSemidef)
    (omega : ι → R) (tick : ℕ) : (phaseKernel K omega tick).PosSemidef := by
  exact hK.mul_mul_conjTranspose_same (phaseDiagonal omega tick)

theorem phaseKernel_periodic (K : Matrix ι ι R) (omega : ι → R)
    (hperiod : ∀ i, omega i ^ 19 = 1) (tick : ℕ) :
    phaseKernel K omega (tick + 19) = phaseKernel K omega tick := by
  simp only [phaseKernel, phaseDiagonal_periodic omega hperiod]

/-- An invertible congruence preserves PSD in both directions. This theorem reuses
Mathlib's exact statement; invertibility is not inferred from a scheduling label. -/
theorem invertible_congruence_posSemidef_iff (K U : Matrix ι ι R) (hU : IsUnit U) :
    (U * K * Uᴴ).PosSemidef ↔ K.PosSemidef := by
  simpa only [Matrix.star_eq_conjTranspose] using
    (Matrix.IsUnit.posSemidef_star_right_conjugate_iff (U := U) (x := K) hU)

end PhaseCongruence

/-- A positive diagonal regularizer gives a strictly positive finite scheduling matrix.
It changes the matrix and is not evidence for positivity of the unregularized source. -/
theorem regularized_posDef {ι : Type*} [DecidableEq ι]
    (K : Matrix ι ι ℝ) (hK : K.PosSemidef) (epsilon : ℝ) (hepsilon : 0 < epsilon) :
    (K + epsilon • (1 : Matrix ι ι ℝ)).PosDef := by
  exact Matrix.PosDef.posSemidef_add hK
    ((Matrix.PosDef.one : (1 : Matrix ι ι ℝ).PosDef).smul hepsilon)

/-- A nonnegative magnitude priority is a separate observable from a signed source value. -/
def magnitudePriority (source : ℝ) : ℝ := source ^ 2

theorem magnitudePriority_neg (source : ℝ) :
    magnitudePriority (-source) = magnitudePriority source := by
  simp [magnitudePriority]

/-- No decoder recovers every signed real value from this magnitude priority alone. -/
theorem no_signed_recovery_from_magnitude :
    ¬ ∃ decode : ℝ → ℝ, ∀ source : ℝ, decode (magnitudePriority source) = source := by
  rintro ⟨decode, hdecode⟩
  have hp := hdecode 1
  have hn := hdecode (-1)
  norm_num [magnitudePriority] at hp hn
  linarith

/-- Returning a certified absolute error to the signed scalar source requires a margin.
The reconstruction and omitted-tail work must supply `herror`; priority positivity cannot. -/
theorem signed_source_nonneg_of_error_and_margin (source reconstructed error : ℝ)
    (herror : |source - reconstructed| ≤ error) (hmargin : error ≤ reconstructed) :
    0 ≤ source := by
  have hlower := (abs_le.mp herror).1
  linarith

end

end GRWTSK.Algebra.LinearAlgebra.AnchoredKernelScheduling
