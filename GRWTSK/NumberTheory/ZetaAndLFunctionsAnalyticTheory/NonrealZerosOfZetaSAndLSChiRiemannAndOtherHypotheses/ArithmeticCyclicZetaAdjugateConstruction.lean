/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ArithmeticCyclicZetaResidualBudget
import Mathlib.LinearAlgebra.Matrix.Adjugate
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Adjugate construction of the full vector in a zeta-determinant route

For the actual arithmetic cyclic H, let A=H-lambda(s)I and x=adj(A)b.
The full residual is exactly det(A)b. A genuine source identity
det(A)=F*zeta(s)+Delta would therefore give a residual bound at a zeta
zero, provided the constructed vector has an independently proved lower
norm bound. Neither that analytic identity nor cofactor conditioning is
supplied here. The adjugate may vanish, so det(A)=0 is not enough to
make this particular vector nonzero.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No zeta-specific determinant realization or unconditional RH is claimed.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticCyclicZetaAdjugateConstruction
open ArithmeticCyclicZetaResidualCriterion ArithmeticCyclicZetaResidualBudget
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability

variable (N : ℕ) [NeZero N]

def shiftedMatrix (t : ℝ) (q : ZMod N → ℝ) (s : ℂ) : Matrix (ZMod N) (ZMod N) ℂ :=
  hamiltonian N t q - zetaSpectralParameter s • 1

def adjugateVector (t : ℝ) (q : ZMod N → ℝ) (s : ℂ)
    (b : EuclideanSpace ℂ (ZMod N)) : EuclideanSpace ℂ (ZMod N) :=
  WithLp.toLp 2 ((shiftedMatrix N t q s).adjugate.mulVec (WithLp.ofLp b))

theorem adjugate_residual (t : ℝ) (q : ZMod N → ℝ) (s : ℂ)
    (b : EuclideanSpace ℂ (ZMod N)) :
    hamiltonianOperator N t q (adjugateVector N t q s b) -
        zetaSpectralParameter s • adjugateVector N t q s b =
      (shiftedMatrix N t q s).det • b := by
  have h : (shiftedMatrix N t q s).mulVec
      ((shiftedMatrix N t q s).adjugate.mulVec (WithLp.ofLp b)) =
      (shiftedMatrix N t q s).det • WithLp.ofLp b := by
    rw [Matrix.mulVec_mulVec, Matrix.mul_adjugate, Matrix.smul_mulVec, Matrix.one_mulVec]
  apply WithLp.ofLp_injective 2
  simp only [WithLp.ofLp_sub, WithLp.ofLp_smul, hamiltonianOperator_mulVec,
    adjugateVector, WithLp.ofLp_toLp]
  simpa only [shiftedMatrix, Matrix.sub_mulVec, Matrix.smul_mulVec, Matrix.one_mulVec] using h

theorem adjugate_residual_norm (t : ℝ) (q : ZMod N → ℝ) (s : ℂ)
    (b : EuclideanSpace ℂ (ZMod N)) :
    ‖hamiltonianOperator N t q (adjugateVector N t q s b) -
        zetaSpectralParameter s • adjugateVector N t q s b‖ =
      ‖(shiftedMatrix N t q s).det‖ * ‖b‖ := by
  rw [adjugate_residual, norm_smul]

theorem critical_distance_le_det_div_cofactor (t : ℝ) (q : ZMod N → ℝ) (s : ℂ)
    (b : EuclideanSpace ℂ (ZMod N)) (hx : adjugateVector N t q s b ≠ 0) :
    |s.re - 1 / 2| ≤
      (‖(shiftedMatrix N t q s).det‖ * ‖b‖) / ‖adjugateVector N t q s b‖ := by
  apply (le_div_iff₀ (norm_pos_iff.mpr hx)).mpr
  have h := critical_distance_mul_norm_le_residual N t q s (adjugateVector N t q s b)
  rwa [adjugate_residual_norm] at h

/-- Construct the vector; retain the analytic identification and cofactor scale as inputs.
The displayed scalar identity alone is not a source certificate: arbitrary F/Delta
can satisfy it. Its independent analytic provenance and small-error proof are missing. -/
theorem residual_at_zeta_zero_of_determinant_identity
    (t : ℝ) (q : ZMod N → ℝ) (s F Δ : ℂ)
    (hz : riemannZeta s = 0)
    (hidentity : (shiftedMatrix N t q s).det = F * riemannZeta s + Δ)
    (b : EuclideanSpace ℂ (ZMod N)) (hb : b ≠ 0) (m ε : ℝ)
    (hm : 0 < m) (hε : 0 ≤ ε)
    (hcofactor : m * ‖b‖ ≤ ‖adjugateVector N t q s b‖)
    (herror : ‖Δ‖ ≤ ε * m) :
    adjugateVector N t q s b ≠ 0 ∧
      ‖hamiltonianOperator N t q (adjugateVector N t q s b) -
          zetaSpectralParameter s • adjugateVector N t q s b‖ ≤
        ε * ‖adjugateVector N t q s b‖ := by
  have hd : (shiftedMatrix N t q s).det = Δ := by simpa [hz] using hidentity
  constructor
  · exact norm_pos_iff.mp ((mul_pos hm (norm_pos_iff.mpr hb)).trans_le hcofactor)
  · rw [adjugate_residual_norm, hd]
    calc
      ‖Δ‖ * ‖b‖ ≤ (ε * m) * ‖b‖ :=
        mul_le_mul_of_nonneg_right herror (norm_nonneg b)
      _ = ε * (m * ‖b‖) := by ring
      _ ≤ ε * ‖adjugateVector N t q s b‖ :=
        mul_le_mul_of_nonneg_left hcofactor hε

end GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticCyclicZetaAdjugateConstruction
