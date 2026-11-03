/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib complex inner products retain upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PrimePowerCenteredGramSource

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Finite phase-retaining diagonal pairings and complete polarization.
All vectors share the same finite carrier. No infinite continuation,
zeta-zero supplier or eigenvector identification is constructed.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerCenteredPolarization
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian

variable (N : ℕ) [NeZero N]

def finitePairing (q : ZMod N → ℝ) (u v : ZMod N → ℂ) : ℂ :=
  ∑ i, (q i : ℂ) * star (u i) * v i

def finiteQuadratic (q : ZMod N → ℝ) (u : ZMod N → ℂ) : ℝ :=
  ∑ i, q i * ((u i).re ^ 2 + (u i).im ^ 2)

theorem actual_diagonal_pairing (q : ZMod N → ℝ) (u v : ZMod N → ℂ) :
    inner ℂ (WithLp.toLp 2 u)
      (hamiltonianOperator N 0 q (WithLp.toLp 2 v)) = finitePairing N q u v := by
  have he : WithLp.ofLp (hamiltonianOperator N 0 q (WithLp.toLp 2 v)) =
      fun i => (q i : ℂ) * v i := by
    funext i
    rw [hamiltonianOperator_mulVec, hamiltonian_mulVec]
    simp
  rw [PiLp.inner_apply]
  unfold finitePairing
  apply Finset.sum_congr rfl
  intro i _
  change inner ℂ (u i)
    (WithLp.ofLp (hamiltonianOperator N 0 q (WithLp.toLp 2 v)) i) = _
  rw [he, RCLike.inner_apply]
  ring

theorem finiteQuadratic_eq_actual_energy (q : ZMod N → ℝ) (u : ZMod N → ℂ) :
    finiteQuadratic N q u =
      GRWTSK.Analysis.OperatorTheory.SpectralTheory.DeterminantSectorCoercivity.hamiltonianEnergy
        N 0 q (WithLp.toLp 2 u) := by
  unfold GRWTSK.Analysis.OperatorTheory.SpectralTheory.DeterminantSectorCoercivity.hamiltonianEnergy
  rw [actual_diagonal_pairing]
  unfold finiteQuadratic finitePairing
  rw [map_sum]
  apply Finset.sum_congr rfl
  intro i _
  simp [Complex.mul_re, Complex.mul_im, Complex.star_def]
  <;> ring

theorem finitePairing_centering (q : ZMod N → ℝ) (c : ℝ)
    (u v : ZMod N → ℂ) :
    finitePairing N (fun i => q i - c) u v =
      finitePairing N q u v - (c : ℂ) * (∑ i, star (u i) * v i) := by
  unfold finitePairing
  rw [Finset.mul_sum, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i _
  push_cast
  ring

lemma coordinate_polarization (a : ℝ) (u v : ℂ) :
    (a : ℂ) * star u * v =
      (((a * ((u + v).re ^ 2 + (u + v).im ^ 2) : ℝ) : ℂ) -
        ((a * ((u - v).re ^ 2 + (u - v).im ^ 2) : ℝ) : ℂ) -
        Complex.I *
          (((a * ((u + Complex.I * v).re ^ 2 + (u + Complex.I * v).im ^ 2) : ℝ) : ℂ) -
            ((a * ((u - Complex.I * v).re ^ 2 + (u - Complex.I * v).im ^ 2) : ℝ) : ℂ))) / 4 := by
  apply Complex.ext <;>
    simp [Complex.mul_re, Complex.mul_im, Complex.div_re, Complex.div_im,
      Complex.normSq, Complex.star_def] <;> ring

theorem finite_complete_polarization (q : ZMod N → ℝ) (u v : ZMod N → ℂ) :
    finitePairing N q u v =
      ((finiteQuadratic N q (fun i => u i + v i) : ℂ) -
        (finiteQuadratic N q (fun i => u i - v i) : ℂ) - Complex.I *
          ((finiteQuadratic N q (fun i => u i + Complex.I * v i) : ℂ) -
            (finiteQuadratic N q (fun i => u i - Complex.I * v i) : ℂ))) / 4 := by
  unfold finitePairing finiteQuadratic
  simp only [map_sum]
  simp only [← Finset.sum_sub_distrib, Finset.mul_sum, Finset.sum_div]
  apply Finset.sum_congr rfl
  intro i _
  exact coordinate_polarization (q i) (u i) (v i)

end GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerCenteredPolarization
