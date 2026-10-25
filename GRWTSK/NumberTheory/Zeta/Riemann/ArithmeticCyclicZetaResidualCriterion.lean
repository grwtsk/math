/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicSpectralPerturbation
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicSpectralEnclosure
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions

set_option autoImplicit false
noncomputable section

/-!
# Actual arithmetic Hamiltonian residuals and the critical line

Use the existing signed cyclic Hamiltonian on the full complex Euclidean
space, without replacing it by a positive Gram matrix or selected sector.
The spectral parameter is -I * (s - 1/2): its real part is the ordinate of s
and the absolute value of its imaginary part is the critical-line distance.

A nonzero full-vector relative residual of size epsilon bounds this distance
by epsilon. Arbitrarily small residuals therefore suffice for critical-line
placement. Every arithmetic label, coefficient and vector is retained in the
supplier. No such supplier is constructed, and finite residual checks do not
discharge its all-epsilon or all-zero quantifiers.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
This is a conditional RH criterion, not a zeta-zero spectral realization,
an RH proof, or a bridge to ABC, Goldbach, BSD or physical Yang-Mills.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticCyclicZetaResidualCriterion

open GRWTSK.Algebra.LinearAlgebra.MatrixTheory
open ArithmeticCyclicHamiltonian ArithmeticCyclicOperatorStability
open ArithmeticCyclicSpectralPerturbation ArithmeticCyclicSpectralEnclosure
open GRWTSK.RiemannHypothesis

/-- The ordinate is the real spectral coordinate; off-line displacement is imaginary. -/
def zetaSpectralParameter (s : ℂ) : ℂ := -Complex.I * (s - 1 / 2)

@[simp] theorem zetaSpectralParameter_re (s : ℂ) :
    (zetaSpectralParameter s).re = s.im := by
  simp [zetaSpectralParameter, Complex.mul_re]

@[simp] theorem zetaSpectralParameter_im (s : ℂ) :
    (zetaSpectralParameter s).im = 1 / 2 - s.re := by
  simp [zetaSpectralParameter, Complex.mul_im]
    <;> ring

/-- Complete relative residuals control imaginary displacement for the actual operator. -/
theorem parameter_im_le_of_residual (N : ℕ) [NeZero N]
    (t : ℝ) (q : ZMod N → ℝ) (z : ℂ) (ε : ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) (hε : 0 ≤ ε) (hx : x ≠ 0)
    (hres : ‖hamiltonianOperator N t q x - z • x‖ ≤ ε * ‖x‖) :
    |z.im| ≤ ε := by
  obtain ⟨w, hw, hnear⟩ := selfAdjoint_approximate_eigenvalue N
    (hamiltonianOperator N t q) (hamiltonianOperator_isSelfAdjoint N t q)
    z ε x hε hx hres
  have hwim := spectrum_im_eq_zero N t q w hw
  have him := Complex.abs_im_le_norm (w - z)
  have hdist : |z.im| ≤ ‖w - z‖ := by
    simpa only [Complex.sub_im, hwim, zero_sub, abs_neg] using him
  exact hdist.trans hnear

/-- Quantitative critical-line distance; no zero hypothesis is needed for this estimate. -/
theorem critical_distance_le_of_residual (N : ℕ) [NeZero N]
    (t : ℝ) (q : ZMod N → ℝ) (s : ℂ) (ε : ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) (hε : 0 ≤ ε) (hx : x ≠ 0)
    (hres : ‖hamiltonianOperator N t q x - zetaSpectralParameter s • x‖ ≤
      ε * ‖x‖) :
    |s.re - 1 / 2| ≤ ε := by
  have h := parameter_im_le_of_residual N t q (zetaSpectralParameter s) ε x hε hx hres
  simpa only [zetaSpectralParameter_im, abs_sub_comm] using h

/-- One actual arithmetic stage. A family of these stages is fixed before its zero
and tolerance quantifiers; the consumer cannot fit a new potential to each zero. -/
structure ArithmeticStage where
  n : ℕ
  level : ℕ
  character : DirichletCharacter ℂ level
  labels : ZMod (n + 1) → ℕ
  hopping : ℝ
  mangoldtCoefficient : ℝ
  radicalCoefficient : ℝ
  characterCoefficient : ℝ

def ArithmeticStage.operator (A : ArithmeticStage) :
    EuclideanSpace ℂ (ZMod (A.n + 1)) →L[ℂ]
      EuclideanSpace ℂ (ZMod (A.n + 1)) :=
  hamiltonianOperator (A.n + 1) A.hopping
    (arithmeticPotential (A.n + 1) A.level A.character A.labels
      A.mangoldtCoefficient A.radicalCoefficient A.characterCoefficient)

/-- A nonzero full-vector residual in one preselected arithmetic family.
Only the stage index and vector may depend on the candidate and tolerance. -/
def ArithmeticApproximation (family : ℕ → ArithmeticStage) (s : ℂ) (ε : ℝ) : Prop :=
  ∃ (k : ℕ) (x : EuclideanSpace ℂ (ZMod ((family k).n + 1))),
    x ≠ 0 ∧ ‖(family k).operator x - zetaSpectralParameter s • x‖ ≤ ε * ‖x‖

theorem critical_distance_le_of_arithmeticApproximation
    (family : ℕ → ArithmeticStage) (s : ℂ) (ε : ℝ)
    (hε : 0 ≤ ε) (h : ArithmeticApproximation family s ε) :
    |s.re - 1 / 2| ≤ ε := by
  obtain ⟨k, x, hx, hres⟩ := h
  exact critical_distance_le_of_residual ((family k).n + 1) (family k).hopping
    (arithmeticPotential ((family k).n + 1) (family k).level
      (family k).character (family k).labels (family k).mangoldtCoefficient
      (family k).radicalCoefficient (family k).characterCoefficient) s ε x hε hx hres

/-- An off-line candidate cannot pass a tolerance smaller than its displacement. -/
theorem no_arithmeticApproximation_below_distance
    (family : ℕ → ArithmeticStage) (s : ℂ) (ε : ℝ)
    (hε : 0 ≤ ε) (hsmall : ε < |s.re - 1 / 2|) :
    ¬ ArithmeticApproximation family s ε := by
  intro h
  exact (not_le_of_gt hsmall)
    (critical_distance_le_of_arithmeticApproximation family s ε hε h)

/-- Every positive tolerance is essential; a finite list of residuals does not suffice. -/
theorem critical_line_of_arbitrarily_small_arithmetic_residuals
    (family : ℕ → ArithmeticStage) (s : ℂ)
    (h : ∀ ε : ℝ, 0 < ε → ArithmeticApproximation family s ε) : s.re = 1 / 2 := by
  by_contra hne
  have hd : 0 < |s.re - 1 / 2| := abs_pos.mpr (sub_ne_zero.mpr hne)
  have hb := critical_distance_le_of_arithmeticApproximation family s
    (|s.re - 1 / 2| / 2) (by positivity) (h _ (by positivity))
  linarith

/-- The all-zero arithmetic approximation obligation remains an unsupplied proposition. -/
def ZetaArithmeticResidualSupplier (family : ℕ → ArithmeticStage) : Prop :=
  ∀ s : ℂ, NontrivialZetaZero s →
    ∀ ε : ℝ, 0 < ε → ArithmeticApproximation family s ε

/-- Exact canonical RH endpoint, with all trivial-zero and pole exclusions retained. -/
theorem riemannHypothesis_of_arithmetic_residual_supplier
    (family : ℕ → ArithmeticStage)
    (h : ZetaArithmeticResidualSupplier family) : _root_.RiemannHypothesis := by
  intro s hz ht hp
  exact critical_line_of_arbitrarily_small_arithmetic_residuals family s
    (h s ⟨hz, ht, hp⟩)

end GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticCyclicZetaResidualCriterion
