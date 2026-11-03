/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import Mathlib.Analysis.Calculus.Deriv.Mul
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Analysis.Normed.Operator.Mul
import Mathlib.Tactic

/-!
# Source-preserving real-time generator: product-rule and inverse-frame algebra

This is a generic Banach-algebra differentiation theorem, not an assertion
that the source-specific causal frame is differentiable AT an arithmetic birth.
For a differentiable frame Phi(t), its inverse Psi(t), and a real-parameter
interaction R(t) whose derivative is L*R(t), the evolution

    U(s,t) = Phi(t) * R(s,t) * Psi(s)

has exact generator Phi'(t) Psi(t) + Phi(t) L Psi(t) whenever
Psi(t) Phi(t)=1. This statement includes the noncommutative operator order;
there is no false commuting assumption or source-energy cancellation.

The source-specific scalar pickup derivatives and generator appear in
CMActualPickupBirthDerivative and CMActualRealTimeGenerator, respectively.
At birth points the meaningful statement is an absolutely-continuous
integral evolution with one-sided generator values, not this HasDerivAt fact.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMRealTimeGeneratorAlgebra

universe u
variable {H : Type u} [NormedAddCommGroup H]
  [InnerProductSpace ℂ H] [CompleteSpace H]

abbrev Operator := H →L[ℂ] H

/-- The complete frame-covariant real-time generator. -/
def frameGenerator (Phi Psi dPhi : ℝ → Operator) (L : Operator) (t : ℝ) :
    Operator :=
  dPhi t * Psi t + Phi t * L * Psi t

/-- An exact algebraic product identity, with no commutation of Phi and L.
The inverse enters in the CORRECT order Psi(t)*Phi(t)=1. -/
theorem generator_times_evolution (Phi Psi dPhi : ℝ → Operator)
    (L R : Operator) (s t : ℝ)
    (hinv : Psi t * Phi t = 1) :
    frameGenerator Phi Psi dPhi L t * (Phi t * R * Psi s) =
      (dPhi t * R + Phi t * (L * R)) * Psi s := by
  unfold frameGenerator
  calc
    (dPhi t * Psi t + Phi t * L * Psi t) * (Phi t * R * Psi s) =
        (dPhi t * (Psi t * Phi t) * R +
          Phi t * L * (Psi t * Phi t) * R) * Psi s := by noncomm_ring
    _ = (dPhi t * R + Phi t * (L * R)) * Psi s := by
        simp only [hinv, mul_one, one_mul, mul_assoc]

/-- Full real-time operator derivative, conditional only on the EXACT
source differentiability observations hPhi and hR. They must be supplied
from genuine arithmetic and exponential theorems, never fabricated. -/
theorem hasDerivAt_frame_transport
    (Phi Psi : ℝ → Operator) (L : Operator)
    (R : ℝ → Operator) (s t : ℝ)
    (dPhi : ℝ → Operator)
    (hPhi : HasDerivAt Phi (dPhi t) t)
    (hR : HasDerivAt R (L * R t) t)
    (hinv : Psi t * Phi t = 1) :
    HasDerivAt (fun u => Phi u * R u * Psi s)
      (frameGenerator Phi Psi dPhi L t * (Phi t * R t * Psi s)) t := by
  have hproduct := (hPhi.mul hR).mul_const (Psi s)
  have heq := generator_times_evolution Phi Psi dPhi L (R t) s t hinv
  simpa only [heq] using hproduct

/-- Source-based quantitative pointwise estimate for a specified frame,
without claiming this norm remains bounded uniformly in the time horizon. -/
theorem frameGenerator_norm_le (Phi Psi dPhi : ℝ → Operator)
    (L : Operator) (t : ℝ) :
    ‖frameGenerator Phi Psi dPhi L t‖ ≤
       ‖dPhi t‖ * ‖Psi t‖ +
         ‖Phi t‖ * ‖L‖ * ‖Psi t‖ := by
  unfold frameGenerator
  calc
    ‖dPhi t * Psi t + Phi t * L * Psi t‖ ≤
        ‖dPhi t * Psi t‖ + ‖Phi t * L * Psi t‖ := norm_add_le _ _
    _ ≤ ‖dPhi t‖ * ‖Psi t‖ +
          (‖Phi t‖ * ‖L‖) * ‖Psi t‖ := by
      gcongr
      · exact ContinuousLinearMap.opNorm_comp_le _ _
      · exact (ContinuousLinearMap.opNorm_comp_le _ _).trans
          (mul_le_mul_of_nonneg_right
            (ContinuousLinearMap.opNorm_comp_le _ _) (norm_nonneg _))
    _ = _ := by ring

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMRealTimeGeneratorAlgebra
