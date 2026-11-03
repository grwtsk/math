/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMSourceUnitaryInteraction
import Mathlib.Analysis.SpecialFunctions.Exponential
import Mathlib.Tactic

/-!
# Explicit holomorphic generator of the nontrivial rank-two interaction

The actual two-way self-adjoint source interaction K(v,w) is a bounded
complex-linear endomorphism on the complete joint Hilbert sum. For a real,
EXTERNAL coupling-strength κ, the complex-time generator is

                     L = -i κ K(v,w).

The globally convergent Banach-algebra exponential exp(z L) has the source-
explicit derivative d/dz exp(z L) = exp(z L) L = L exp(z L). This is
Mathlib's existing `NormedSpace.hasDerivAt_exp_smul_const` specialization,
not a guessed formal derivative or a finite Taylor approximation.

The unitary real-clock family is precisely exp(-i κ (t-s) K); the complex
parameter theorem is not itself a physical constitutive equation. The
labelled real pickup responses have separate birth thresholds t=log(n),
where pointwise smooth generator identities for the FULL causal evolution
need a piecewise/absolutely-continuous analysis. The coefficient κ and the
geometric metric remain externally selected, not dynamically derived.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSourceUnitaryGenerator

open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledJointIsometry
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMArithmeticRankTwoCoupling
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSourceUnitaryInteraction

universe u v
variable {H : Type u} {C : Type v}
variable [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
variable [NormedAddCommGroup C] [InnerProductSpace ℂ C] [CompleteSpace C]

/-- The explicit, source-dependent skew-adjoint generator. Its physical
strength is the independent REAL parameter κ, not a Mobius bound. -/
def complexGenerator (v : H) (w : C) (κ : ℝ) :
    Joint H C →L[ℂ] Joint H C :=
  ((-Complex.I) * (κ : ℂ)) • coupledOperator v w

/-- A complex-parameter exponential of the exact rank-two operator; the
pinned Banach algebra has infinite exponential convergence radius. -/
def complexGeneratorFlow (v : H) (w : C) (κ : ℝ) (z : ℂ) :
    Joint H C →L[ℂ] Joint H C :=
  NormedSpace.exp ℂ (Joint H C →L[ℂ] Joint H C)
    (z • complexGenerator v w κ)

/-- Genuine derivative on the complete Banach algebra, for ALL complex
parameters. This is a source-specialized analytic identity, not a physical
claim about the nondifferentiable arithmetic birth points. -/
theorem complexGeneratorFlow_hasDerivAt
    (v : H) (w : C) (κ : ℝ) (z : ℂ) :
    HasDerivAt (complexGeneratorFlow v w κ)
      ((complexGeneratorFlow v w κ z) * complexGenerator v w κ) z := by
  exact NormedSpace.hasDerivAt_exp_smul_const (complexGenerator v w κ) z

/-- First-order infinitesimal equation: the chosen generator is EXACTLY the
initial derivative of the analytic interaction family. -/
theorem complexGeneratorFlow_hasDerivAt_zero
    (v : H) (w : C) (κ : ℝ) :
    HasDerivAt (complexGeneratorFlow v w κ)
      (complexGenerator v w κ) 0 := by
  simpa [complexGeneratorFlow] using complexGeneratorFlow_hasDerivAt v w κ (0 : ℂ)

/-- The physical real-clock interaction is the same Banach-algebra
exponential evaluated at a real parameter. It is not a different operator. -/
theorem sourceUnitary_eq_complexGeneratorFlow
    (v : H) (w : C) (κ s t : ℝ) :
    (sourceUnitaryTwoTime v w κ s t : Joint H C →L[ℂ] Joint H C) =
      complexGeneratorFlow v w κ ((t - s : ℝ) : ℂ) := by
  change NormedSpace.exp ℂ (Joint H C →L[ℂ] Joint H C)
      (Complex.I • ((-(κ * (t - s))) • coupledOperator v w)) =
    NormedSpace.exp ℂ (Joint H C →L[ℂ] Joint H C)
      (((t - s : ℝ) : ℂ) •
        (((-Complex.I) * (κ : ℂ)) • coupledOperator v w))
  congr 1
  simp only [RCLike.real_smul_eq_coe_smul (K := ℂ), smul_smul]
  congr 1
  push_cast
  ring

/-- The coupling-strength normalization is explicit: zero coupling means
zero generator, with no hidden source arithmetic assumptions. -/
@[simp] theorem complexGenerator_zero_strength
    (v : H) (w : C) : complexGenerator v w 0 = 0 := by
  simp [complexGenerator]

/-- No universal signed Mobius energy estimate is needed: the generator
has a pointwise bounded-operator estimate from its rank-two definition. -/
theorem complexGenerator_opNorm_le
    (v : H) (w : C) (κ : ℝ) :
    ‖complexGenerator v w κ‖ ≤
      2 * |κ| * (‖v‖ * ‖w‖) := by
  calc
    ‖complexGenerator v w κ‖ = |κ| * ‖coupledOperator v w‖ := by
      simp [complexGenerator, norm_smul, norm_mul]
    _ ≤ |κ| * (2 * (‖v‖ * ‖w‖)) :=
      mul_le_mul_of_nonneg_left (coupledOperator_norm_bound v w) (abs_nonneg _)
    _ = 2 * |κ| * (‖v‖ * ‖w‖) := by ring

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSourceUnitaryGenerator
