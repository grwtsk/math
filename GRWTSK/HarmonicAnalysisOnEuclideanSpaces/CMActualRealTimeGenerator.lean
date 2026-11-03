/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMActualPickupBirthDerivative
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMRealTimeGeneratorAlgebra
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMActualUnitaryCausalInteraction
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMSourceUnitaryGenerator
import Mathlib.Analysis.InnerProductSpace.ProdL2
import Mathlib.Analysis.Complex.RealDeriv
import Mathlib.Tactic

/-!
# Exact source-specific real-time CM–Möbius generator and moving metric

For every finite labelled source j, retain the ORIGINAL pickupResponse
D_j(t) and the actual degree-zero CM whole-cycle K_j. The full constructed
operator is

 U(s,t)=Phi(t) exp((t-s)L) Psi(s),  L=-i κ K_j,
 Phi(t)=id_CM ⊕ causalStep_j(0,t), Psi(t)=Phi(t)^(-1).

Away from all t=log n with 1<=n<=2^j the formal pointwise generator is

 G_j(t)=N_j(t) + Phi(t)L Psi(t),

where N_j(t) maps the ORIGINAL latent n to its observed n with the strictly
active multiplier exp(-t/2), and vanishes on all other components. The
nonunitary response birth remains explicit. At a birth the two-sided
classical derivative is NOT asserted; the frame remains continuous and the
weak/absolutely-continuous operator equation is the correct extension.

A generic HasDerivAt return is proved below with its two exact differentiability
inputs visible: the finite causal operator-valued derivative and the real
restriction of the complex Banach-algebra exponential derivative. Their
source-specific discharge is a separate Lean acceptance obligation.

The exact moving-metric conservation is unconditional at the level of the
previous two-time operator, including all birth thresholds. It is NOT
fixed-metric unitarity or a physical measurement normalization.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualRealTimeGenerator

open _root_.CategoryTheory _root_.AlgebraicGeometry
open OAI.AlgebraicGeometry
open OAI.AlgebraicGeometry.ComplexPoint
open scoped OAI.AlgebraicGeometry.Hodge.Filtration.ComplexPoint
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledCausalDefectComparison
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledCocycleIntertwiner
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.FiniteLabelledPickupCocycle
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualPickupBirthDerivative
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualUnitaryCausalInteraction
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSourceUnitaryGenerator
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMRealTimeGeneratorAlgebra

variable (X : Over (Spec ↧ℂ)) [IsIntegral X.left] [Smooth X.hom]
  [OAI.AlgebraicGeometry.Foundations.ProjectiveSpaceIs.IsProjective X.hom]
  [GrpObj X] [FiniteDimensional ℚ (OriginalBetti X 0)]
variable (d : ℕ) [NeZero d]

abbrev StateOperator (j : ℕ) := ActualJoint d j →L[ℂ] ActualJoint d j

/-- Source-exact differentiated causal shear, acting only from the retained
integer-labelled latent coordinate to its observed coordinate. -/
def originalLabelledKick (j : ℕ) (t : ℝ) :
    LabelledState j →L[ℂ] LabelledState j :=
  let latent : LabelledState j →L[ℂ] SourceHilbert j :=
    WithLp.fstL 2 ℂ (SourceHilbert j) (SourceHilbert j)
  let zeroMap : LabelledState j →L[ℂ] SourceHilbert j := 0
  ((WithLp.prodContinuousLinearEquiv 2 ℂ (SourceHilbert j) (SourceHilbert j)).symm :
      (SourceHilbert j × SourceHilbert j) →L[ℂ] LabelledState j).comp
    (zeroMap.prod ((sourceDiagonalDerivative j t).comp latent))

@[simp] theorem originalLabelledKick_apply (j : ℕ) (t : ℝ)
    (z : LabelledState j) :
    originalLabelledKick j t z =
      WithLp.toLp 2 ((0 : SourceHilbert j),
        sourceDiagonalDerivative j t z.fst) := rfl

/-- Derivative of the FULL decoupled causal frame: the CM sector is held
fixed, the latent arithmetic source is held fixed, and only the original
observed source responds. -/
def actualFrameKick (j : ℕ) (t : ℝ) : StateOperator d j :=
  let causal : ActualJoint d j →L[ℂ] LabelledState j :=
    WithLp.sndL 2 ℂ (CommonHilbert d) (LabelledState j)
  let zeroMap : ActualJoint d j →L[ℂ] CommonHilbert d := 0
  ((WithLp.prodContinuousLinearEquiv 2 ℂ (CommonHilbert d) (LabelledState j)).symm :
      (CommonHilbert d × LabelledState j) →L[ℂ] ActualJoint d j).comp
    (zeroMap.prod ((originalLabelledKick j t).comp causal))

@[simp] theorem actualFrameKick_apply (j : ℕ) (t : ℝ)
    (z : ActualJoint d j) :
    actualFrameKick d j t z =
      WithLp.toLp 2 ((0 : CommonHilbert d),
        WithLp.toLp 2 ((0 : SourceHilbert j),
          sourceDiagonalDerivative j t z.snd.fst)) := rfl

/-- Source-produced moving frame and its true two-time inverse. -/
def Phi (j : ℕ) (t : ℝ) : StateOperator d j :=
  exactLabelledJointEvolution d j 0 t

def Psi (j : ℕ) (t : ℝ) : StateOperator d j :=
  exactLabelledJointEvolution d j t 0

/-- The ORIGINAL selected whole-cycle and Möbius latent vectors determine
K; only the real coupling strength κ remains external. -/
def interactionL (j : ℕ) (κ : ℝ) : StateOperator d j :=
  complexGenerator (actualGeometricVector X d) (actualArithmeticVector j) κ

/-- Exact 3-sector (CM, latent, observed) real-time generator candidate.
The term Phi L Psi is NOT in general skew-adjoint in the fixed positive
metric, because the original causal shear is nonunitary. -/
def actualRealTimeGenerator (j : ℕ) (κ t : ℝ) : StateOperator d j :=
  actualFrameKick d j t +
    (Phi d j t).comp ((interactionL X d j κ).comp (Psi d j t))

/-- Zero coupling reduces precisely to the true original labelled
nonunitary causal generator, not to zero. -/
theorem generator_zero_coupling (j : ℕ) (t : ℝ) :
    actualRealTimeGenerator X d j 0 t = actualFrameKick d j t := by
  simp [actualRealTimeGenerator, interactionL, complexGenerator]

/-- The genuine off-diagonal interaction term is kept as an independently
inspectable correction, with both channel directions and their signs. -/
theorem generator_minus_source_kick (j : ℕ) (κ t : ℝ) :
    actualRealTimeGenerator X d j κ t - actualFrameKick d j t =
      (Phi d j t).comp ((interactionL X d j κ).comp (Psi d j t)) := by
  simp [actualRealTimeGenerator]

/-- The moving-frame energy (positive Hilbert metric pulled back through
Psi) is EXACTLY conserved for the genuine two-time source-coupled model,
including all birth thresholds. No time derivative is needed here. -/
theorem moving_frame_norm_conserved (j : ℕ) (κ s t : ℝ)
    (z : ActualJoint d j) :
    ‖Psi d j t (actualUnitaryCoupledTwoTime X d j κ s t z)‖ =
      ‖Psi d j s z‖ := by
  rw [actualUnitaryCoupled_factor]
  change ‖exactLabelledJointEvolution d j t 0
      (exactLabelledJointEvolution d j 0 t
        (actualInteractionCLM X d j κ s t
          (exactLabelledJointEvolution d j s 0 z)))‖ = _
  have hinv := congrArg
    (fun T : ActualJoint d j →L[ℂ] ActualJoint d j =>
      T (actualInteractionCLM X d j κ s t
        (exactLabelledJointEvolution d j s 0 z)))
    (exactLabelledJointEvolution_inverse d j 0 t)
  rw [ContinuousLinearMap.comp_apply, ContinuousLinearMap.id_apply] at hinv
  rw [hinv]
  exact actualInteractionCLM_norm X d j κ s t
    (exactLabelledJointEvolution d j s 0 z)

/-- The generic real-time derivative is applied to the EXACT source frame.
The visible hypotheses say precisely what must still be typechecked and
proved about the real physical clock away from births. There is NO claim
that either hypothesis holds at a birth where the derivative jumps. -/
theorem actualRealTimeGenerator_hasDerivAt_of_source_derivatives
    (j : ℕ) (κ s t : ℝ)
    (hPhi : HasDerivAt (Phi d j) (actualFrameKick d j t) t)
    (hInteraction : HasDerivAt
      (fun u : ℝ => actualInteractionCLM X d j κ s u)
      (interactionL X d j κ * actualInteractionCLM X d j κ s t) t) :
    HasDerivAt (fun u : ℝ =>
        (Phi d j u) * actualInteractionCLM X d j κ s u * (Psi d j s))
      (actualRealTimeGenerator X d j κ t *
        ((Phi d j t) * actualInteractionCLM X d j κ s t * (Psi d j s))) t := by
  have hinv : Psi d j t * Phi d j t = 1 := by
    change (exactLabelledJointEvolution d j t 0).comp
      (exactLabelledJointEvolution d j 0 t) =
        ContinuousLinearMap.id ℂ (ActualJoint d j)
    exact exactLabelledJointEvolution_inverse d j 0 t
  change HasDerivAt (fun u : ℝ =>
      (Phi d j u) * actualInteractionCLM X d j κ s u * (Psi d j s))
    (frameGenerator (Phi d j) (Psi d j)
      (fun _ => actualFrameKick d j t) (interactionL X d j κ) t *
      ((Phi d j t) * actualInteractionCLM X d j κ s t * (Psi d j s))) t
  exact hasDerivAt_frame_transport (Phi d j) (Psi d j)
    (interactionL X d j κ)
    (fun u : ℝ => actualInteractionCLM X d j κ s u)
    s t (fun _ => actualFrameKick d j t) hPhi hInteraction hinv

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualRealTimeGenerator
