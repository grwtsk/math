/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMArithmeticRankTwoCoupling
import Mathlib.Analysis.CStarAlgebra.Exponential
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Tactic

/-!
# A bounded source-derived unitary interaction, with an explicit coupling clock

Take the two already sourced vectors `v : H` (CM Betti cycle) and `w : C`
(original complete finite labelled Mobius causal state). On the L2 joint
Hilbert sum their self-adjoint rank-at-most-two interaction is

    K(v,w) = |(v,0)><(0,w)| + |(0,w)><(v,0)|.

For a real interaction parameter θ, define the UNITARY group

    R(θ) = exp (i θ K(v,w)).

Mathlib's selfAdjoint.expUnitary supplies the genuine global exponential,
not a truncated polynomial or a nonunitary elementary shear. An additive
parameter obeys R(θ+η) = R(θ) R(η), R(0)=1, and ‖R(θ)x‖=‖x‖.

This fixes a mathematical family for every real coupling clock. It does NOT
identify θ with measured physical time or infer the interaction strength
from either original geometric or arithmetic source. The original signed
Mobius readout and its cross terms remain defined independently.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSourceUnitaryInteraction

open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledJointIsometry
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMArithmeticRankTwoCoupling

universe u v
variable {H : Type u} {C : Type v}
variable [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
variable [NormedAddCommGroup C] [InnerProductSpace ℂ C] [CompleteSpace C]

/-- The exact previously sourced two-way rank-one operator, now exhibited as
an element of Mathlib's real vector space of self-adjoint operators. -/
def sourceSelfAdjoint (v : H) (w : C) :
    selfAdjoint (Joint H C →L[ℂ] Joint H C) :=
  ⟨coupledOperator v w, by
    change star (coupledOperator v w) = coupledOperator v w
    rw [ContinuousLinearMap.star_eq_adjoint, coupledOperator_selfAdjoint]⟩

/-- A unitary interaction at any real angle. The operator is NOT the
unmodified, nonunitary Mobius birth-response propagator. -/
def sourceUnitary (v : H) (w : C) (θ : ℝ) :
    unitary (Joint H C →L[ℂ] Joint H C) :=
  selfAdjoint.expUnitary (θ • sourceSelfAdjoint v w)

@[simp] theorem sourceUnitary_zero (v : H) (w : C) :
    sourceUnitary v w 0 = 1 := by
  simp [sourceUnitary]

/-- The two exponents commute because they are real multiples of the SAME
actual self-adjoint operator. No time-ordering assumption is hidden. -/
theorem sourceUnitary_add (v : H) (w : C) (θ η : ℝ) :
    sourceUnitary v w (θ + η) =
      sourceUnitary v w θ * sourceUnitary v w η := by
  change selfAdjoint.expUnitary ((θ + η) • sourceSelfAdjoint v w) =
    selfAdjoint.expUnitary (θ • sourceSelfAdjoint v w) *
      selfAdjoint.expUnitary (η • sourceSelfAdjoint v w)
  rw [add_smul]
  apply Commute.expUnitary_add
  change Commute (θ • coupledOperator v w) (η • coupledOperator v w)
  exact ((Commute.refl (coupledOperator v w)).smul_left θ).smul_right η

/-- An explicit real coupling-strength parameter κ, separate from the
physical time difference. It is not derived by assuming the original RH
energy estimate or by an invented Hodge metric. -/
def sourceUnitaryTwoTime (v : H) (w : C) (κ s t : ℝ) :
    unitary (Joint H C →L[ℂ] Joint H C) :=
  sourceUnitary v w (-(κ * (t - s)))

@[simp] theorem sourceUnitaryTwoTime_self
    (v : H) (w : C) (κ s : ℝ) :
    sourceUnitaryTwoTime v w κ s s = 1 := by
  simp [sourceUnitaryTwoTime]

/-- Exact two-time law at the UNITARY group level; nonzero κ is not needed
for this purely algebraic identity. -/
theorem sourceUnitaryTwoTime_comp
    (v : H) (w : C) (κ s t u : ℝ) :
    sourceUnitaryTwoTime v w κ t u *
        sourceUnitaryTwoTime v w κ s t =
      sourceUnitaryTwoTime v w κ s u := by
  unfold sourceUnitaryTwoTime
  rw [← sourceUnitary_add]
  congr 1
  ring

/-- The unitary group acts by genuine norm-preserving bounded complex
linear maps on the COMPLETE joint Hilbert space, not just on the source pair. -/
def sourceUnitaryCLM (v : H) (w : C) (κ s t : ℝ) :
    Joint H C →L[ℂ] Joint H C :=
  (sourceUnitaryTwoTime v w κ s t : Joint H C →L[ℂ] Joint H C)

@[simp] theorem sourceUnitaryCLM_self
    (v : H) (w : C) (κ s : ℝ) :
    sourceUnitaryCLM v w κ s s =
      ContinuousLinearMap.id ℂ (Joint H C) := by
  simp [sourceUnitaryCLM]

/-- The same composition holds on continuous linear maps. -/
theorem sourceUnitaryCLM_comp
    (v : H) (w : C) (κ s t u : ℝ) :
    (sourceUnitaryCLM v w κ t u).comp
        (sourceUnitaryCLM v w κ s t) =
      sourceUnitaryCLM v w κ s u := by
  have h := sourceUnitaryTwoTime_comp v w κ s t u
  simpa only [ContinuousLinearMap.mul_def] using
    congrArg
      (fun f : unitary (Joint H C →L[ℂ] Joint H C) =>
        (f : Joint H C →L[ℂ] Joint H C)) h

/-- Unitarity is an EXACT Hilbert norm equality, not a guessed bound. -/
theorem sourceUnitaryCLM_norm_map
    (v : H) (w : C) (κ s t : ℝ) (z : Joint H C) :
    ‖sourceUnitaryCLM v w κ s t z‖ = ‖z‖ :=
  Unitary.norm_map (sourceUnitaryTwoTime v w κ s t) z

/-- The unitary interaction alone has global operator norm at most one,
independent of κ, inventory, and elapsed time. -/
theorem sourceUnitaryCLM_opNorm_le_one
    (v : H) (w : C) (κ s t : ℝ) :
    ‖sourceUnitaryCLM v w κ s t‖ ≤ 1 := by
  apply ContinuousLinearMap.opNorm_le_bound _ (by norm_num)
  intro z
  rw [sourceUnitaryCLM_norm_map]
  exact le_refl _

/-- The generic Hamiltonian retains the two genuine, independently
normalized directions, including both off-diagonal operators. -/
theorem sourceSelfAdjoint_operator
    (v : H) (w : C) :
    (sourceSelfAdjoint v w : Joint H C →L[ℂ] Joint H C) =
      cmToArithmetic v w + arithmeticToCM v w := rfl

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSourceUnitaryInteraction
