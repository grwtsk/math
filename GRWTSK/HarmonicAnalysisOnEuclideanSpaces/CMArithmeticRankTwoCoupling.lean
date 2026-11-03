/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Source proof candidate / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMLabelledJointIsometry
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Analysis.Normed.Module.RCLike.Basic
import Mathlib.Tactic

/-!
# Nontrivial bounded two-way coupling on a positive Hilbert direct sum

For an actual geometric source vector `v : H` and an actual arithmetic
source vector `w : C`, form the TWO cross-sector rank-one operators

   F = |w> <v|       (geometry to causal arithmetic),
   G = |v> <w|       (causal arithmetic to geometry).

Their sum is self-adjoint, is nontrivial if BOTH source vectors are nonzero,
and has two separate exact operator-norm formulas. No scalar signed-energy
identity is replaced by Hilbert positivity. An optional real-norm
normalization produces TWO norm-one cross maps without a hidden uniform
summability premise. A source-specific choice of v and w is made in the
next leaf; the generic definitions do not claim a physical Hamiltonian.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMArithmeticRankTwoCoupling

open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledJointIsometry

universe u v
variable {H : Type u} {C : Type v}
variable [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
variable [NormedAddCommGroup C] [InnerProductSpace ℂ C] [CompleteSpace C]

/-- Explicit positive-metric normalization; zero remains zero. -/
def unitVector {V : Type*} [NormedAddCommGroup V] [NormedSpace ℂ V]
    (x : V) : V := (‖x‖⁻¹ : ℂ) • x

theorem unitVector_norm_one {V : Type*} [NormedAddCommGroup V]
    [NormedSpace ℂ V] (x : V) (hx : x ≠ 0) :
    ‖unitVector x‖ = 1 := by
  exact norm_smul_inv_norm hx

theorem unitVector_ne_zero {V : Type*} [NormedAddCommGroup V]
    [NormedSpace ℂ V] (x : V) (hx : x ≠ 0) :
    unitVector x ≠ 0 := by
  intro h
  have hn := unitVector_norm_one x hx
  rw [h, norm_zero] at hn
  norm_num at hn

/-- Real source-determined geometry-to-arithmetic cross channel. -/
def cmToArithmetic (v : H) (w : C) : Joint H C →L[ℂ] Joint H C :=
  InnerProductSpace.rankOne ℂ
    (includeCausal (H := H) (C := C) w)
    (includeCM (H := H) (C := C) v)

/-- Its independent reverse arithmetic-to-geometry cross channel. -/
def arithmeticToCM (v : H) (w : C) : Joint H C →L[ℂ] Joint H C :=
  InnerProductSpace.rankOne ℂ
    (includeCM (H := H) (C := C) v)
    (includeCausal (H := H) (C := C) w)

/-- The genuinely interacting two-way bounded operator. -/
def coupledOperator (v : H) (w : C) : Joint H C →L[ℂ] Joint H C :=
  cmToArithmetic v w + arithmeticToCM v w

/-- Both directed cross operators have EXACTLY the same quantified norm.
No triangle-inequality overestimate is used for either off-diagonal channel. -/
theorem cmToArithmetic_norm (v : H) (w : C) :
    ‖cmToArithmetic v w‖ = ‖v‖ * ‖w‖ := by
  simp [cmToArithmetic, InnerProductSpace.norm_rankOne, mul_comm]

theorem arithmeticToCM_norm (v : H) (w : C) :
    ‖arithmeticToCM v w‖ = ‖v‖ * ‖w‖ := by
  simp [arithmeticToCM, InnerProductSpace.norm_rankOne]

/-- The off-diagonal directions are the literal Hilbert adjoints. -/
theorem cmToArithmetic_adjoint (v : H) (w : C) :
    (cmToArithmetic v w).adjoint = arithmeticToCM v w := by
  exact InnerProductSpace.adjoint_rankOne _ _

/-- No sign or complex conjugation is suppressed when reversing the channel. -/
theorem arithmeticToCM_adjoint (v : H) (w : C) :
    (arithmeticToCM v w).adjoint = cmToArithmetic v w := by
  exact InnerProductSpace.adjoint_rankOne _ _

/-- Self-adjointness is a statement about the constructed positive-Hilbert
coupling, NOT a claim that its time-dependent source is a Hamiltonian flow. -/
theorem coupledOperator_selfAdjoint (v : H) (w : C) :
    (coupledOperator v w).adjoint = coupledOperator v w := by
  change (cmToArithmetic v w + arithmeticToCM v w).adjoint =
    cmToArithmetic v w + arithmeticToCM v w
  rw [map_add, cmToArithmetic_adjoint, arithmeticToCM_adjoint]
  exact add_comm _ _

/-- The CM source and its causal source are not disconnected: both channels
are nonzero under the two explicit, independently checkable source witnesses. -/
theorem cmToArithmetic_ne_zero (v : H) (w : C)
    (hv : v ≠ 0) (hw : w ≠ 0) : cmToArithmetic v w ≠ 0 := by
  intro h
  have hn := cmToArithmetic_norm v w
  rw [h, norm_zero] at hn
  have hvp : 0 < ‖v‖ := norm_pos_iff.mpr hv
  have hwp : 0 < ‖w‖ := norm_pos_iff.mpr hw
  have hpositive : 0 < ‖v‖ * ‖w‖ := mul_pos hvp hwp
  linarith

theorem arithmeticToCM_ne_zero (v : H) (w : C)
    (hv : v ≠ 0) (hw : w ≠ 0) : arithmeticToCM v w ≠ 0 := by
  intro h
  have hn := arithmeticToCM_norm v w
  rw [h, norm_zero] at hn
  have hvp : 0 < ‖v‖ := norm_pos_iff.mpr hv
  have hwp : 0 < ‖w‖ := norm_pos_iff.mpr hw
  have hpositive : 0 < ‖v‖ * ‖w‖ := mul_pos hvp hwp
  linarith

/-- Normalization of actual source vectors gives a scale-independent norm
ONE for both selected cross maps. It does NOT bound the unnormalized
source amplitude or its coherent signed scalar summation. -/
theorem cmToArithmetic_unit_norm (v : H) (w : C)
    (hv : v ≠ 0) (hw : w ≠ 0) :
    ‖cmToArithmetic (unitVector v) (unitVector w)‖ = 1 := by
  rw [cmToArithmetic_norm, unitVector_norm_one v hv,
    unitVector_norm_one w hw, one_mul]

theorem arithmeticToCM_unit_norm (v : H) (w : C)
    (hv : v ≠ 0) (hw : w ≠ 0) :
    ‖arithmeticToCM (unitVector v) (unitVector w)‖ = 1 := by
  rw [arithmeticToCM_norm, unitVector_norm_one v hv,
    unitVector_norm_one w hw, one_mul]

/-- The total coupling is bounded by the sum of the two exact directional
norms. Its sharper spectral norm is not needed by the consumer. -/
theorem coupledOperator_norm_bound (v : H) (w : C) :
    ‖coupledOperator v w‖ ≤ 2 * (‖v‖ * ‖w‖) := by
  calc
    ‖coupledOperator v w‖ ≤ ‖cmToArithmetic v w‖ +
        ‖arithmeticToCM v w‖ := norm_add_le _ _
    _ = 2 * (‖v‖ * ‖w‖) := by
      rw [cmToArithmetic_norm, arithmeticToCM_norm]
      ring

/-- Generic full-state application; the source signed coordinates are
preserved INSIDE w, rather than replaced by positive residue variances. -/
theorem coupledOperator_apply (v : H) (w : C) (z : Joint H C) :
    coupledOperator v w z =
      WithLp.toLp 2
        (inner ℂ w z.snd • v, inner ℂ v z.fst • w) := by
  have h₁ : inner ℂ (includeCausal (H := H) (C := C) w) z =
      inner ℂ w z.snd := by
    simp [includeCausal_apply, WithLp.prod_inner_apply]
  have h₂ : inner ℂ (includeCM (H := H) (C := C) v) z =
      inner ℂ v z.fst := by
    simp [includeCM_apply, WithLp.prod_inner_apply]
  change (inner ℂ (includeCM (H := H) (C := C) v) z) •
      includeCausal (H := H) (C := C) w +
      (inner ℂ (includeCausal (H := H) (C := C) w) z) •
      includeCM (H := H) (C := C) v = _
  rw [h₁, h₂]
  simp [includeCM_apply, includeCausal_apply, ← WithLp.toLp_add]

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMArithmeticRankTwoCoupling
