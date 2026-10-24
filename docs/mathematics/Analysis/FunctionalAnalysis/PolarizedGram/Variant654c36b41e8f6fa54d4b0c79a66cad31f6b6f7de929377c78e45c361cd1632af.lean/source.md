# Complete source: GRWTSK.Analysis.FunctionalAnalysis.PolarizedGram.Variant654c36b41e8f6fa54d4b0c79a66cad31f6b6f7de929377c78e45c361cd1632af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `520af6481ea913470683d426a573a3c57b24597c` · SHA-256 `654c36b41e8f6fa54d4b0c79a66cad31f6b6f7de929377c78e45c361cd1632af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.PrimeLattice.MomentPath
public import Mathlib.Analysis.InnerProductSpace.Adjoint
public import Mathlib.Analysis.InnerProductSpace.PiL2
public import Mathlib.Analysis.Normed.Operator.NormedSpace
import Mathlib.Tactic

/-!
# Polarized packet Gram data

The Boolean object in this module is only an incidence mask.  Amplitudes and
Gram entries remain complex.  An interaction certificate contains local
off-diagonal estimates, never the desired global arithmetic bound.
-/

public section

namespace Surface.Core.PrimeLattice.PolarizedGram

noncomputable section

open scoped InnerProductSpace InnerProduct
open Surface.Core.PrimeLattice.MomentPath
open Surface.Core.PrimeWalkLosslessSpatial
open ComplexConjugate

/-- Finite synthesis from the Euclidean coefficient space into the spatial
packet space.  Keeping this map explicit makes the Gram operator literally
`T†T`, rather than merely a matrix with suggestive entries. -/
@[expose]
def packetSynthesisLinearMap {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) :
    EuclideanSpace ℂ frame.Atom →ₗ[ℂ] SpatialL2 where
  toFun coefficient := ∑ a : frame.Atom, coefficient a • frame.packet a
  map_add' := by
    intro left right
    simp only [PiLp.add_apply, add_smul, Finset.sum_add_distrib]
  map_smul' := by
    intro scalar coefficient
    simp only [PiLp.smul_apply, RingHom.id_apply]
    rw [Finset.smul_sum]
    apply Finset.sum_congr rfl
    intro a _
    exact (smul_smul scalar (coefficient a) (frame.packet a)).symm

/-- The synthesis map is continuous because its coefficient domain is finite
dimensional. -/
@[expose]
def packetSynthesisCLM {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) :
    EuclideanSpace ℂ frame.Atom →L[ℂ] SpatialL2 :=
  (packetSynthesisLinearMap frame).toContinuousLinearMap

/-- Pairwise packet inner product. -/
@[expose]
def packetGram {N : ℕ} (frame : ConductorThreeCoefficientPacketFrame N)
    (left right : frame.Atom) : ℂ :=
  ⟪frame.packet left, frame.packet right⟫_ℂ

/-- Complex Gram matrix of a coefficient packet frame. -/
@[expose]
def packetGramMatrix {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) :
    Matrix frame.Atom frame.Atom ℂ :=
  fun left right ↦ packetGram frame left right

/-- The finite-dimensional Gram operator. -/
@[expose]
def packetGramOperator {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) :
    EuclideanSpace ℂ frame.Atom →L[ℂ] EuclideanSpace ℂ frame.Atom :=
  (packetSynthesisCLM frame)† ∘L packetSynthesisCLM frame

/-! ## Scalar polarization is unitary conjugation -/

/-- Multiplication by a complex unit of norm one, packaged as a complex-linear
isometry. -/
@[expose]
def scalarPhaseIsometry (phase : ℂˣ) (hphase : ‖(phase : ℂ)‖ = 1) :
    ℂ ≃ₗᵢ[ℂ] ℂ where
  toLinearEquiv := DistribMulAction.toLinearEquiv ℂ ℂ phase
  norm_map' value := by
    change ‖(phase : ℂ) * value‖ = ‖value‖
    rw [norm_mul, hphase, one_mul]

/-- Coordinatewise multiplication by unit-modulus phases. -/
@[expose]
def phaseModulation {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N)
    (phase : frame.Atom → ℂˣ)
    (hphase : ∀ a, ‖(phase a : ℂ)‖ = 1) :
    EuclideanSpace ℂ frame.Atom ≃ₗᵢ[ℂ]
      EuclideanSpace ℂ frame.Atom :=
  LinearIsometryEquiv.piLpCongrRight 2 fun a ↦
    scalarPhaseIsometry (phase a) (hphase a)

/-- The Gram operator after multiplying every synthesis column by a
unit-modulus scalar.  Algebraically this is `D⁻¹ G D`. -/
@[expose]
def polarizedGramOperator {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N)
    (phase : frame.Atom → ℂˣ)
    (hphase : ∀ a, ‖(phase a : ℂ)‖ = 1) :
    EuclideanSpace ℂ frame.Atom →L[ℂ] EuclideanSpace ℂ frame.Atom :=
  let D := (phaseModulation frame phase hphase).toContinuousLinearEquiv
  D.symm.toContinuousLinearMap ∘L
    (packetGramOperator frame ∘L D.toContinuousLinearMap)

/-- Conjugating an operator by a linear isometric equivalence preserves its
operator norm. -/
@[surface_novel, surface_published]
theorem norm_isometricConjugate
    {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    (D : E ≃ₗᵢ[ℂ] E) (A : E →L[ℂ] E) :
    ‖D.symm.toContinuousLinearEquiv.toContinuousLinearMap ∘L
        (A ∘L D.toContinuousLinearEquiv.toContinuousLinearMap)‖ = ‖A‖ := by
  let d := D.toContinuousLinearEquiv.toContinuousLinearMap
  let di := D.symm.toContinuousLinearEquiv.toContinuousLinearMap
  let conjugate := di ∘L (A ∘L d)
  have hd : ‖d‖ ≤ 1 := by
    exact D.toLinearIsometry.norm_toContinuousLinearMap_le
  have hdi : ‖di‖ ≤ 1 := by
    exact D.symm.toLinearIsometry.norm_toContinuousLinearMap_le
  have hupper : ‖conjugate‖ ≤ ‖A‖ := by
    calc
      ‖conjugate‖ ≤ ‖di‖ * ‖A ∘L d‖ :=
        ContinuousLinearMap.opNorm_comp_le _ _
      _ ≤ ‖di‖ * (‖A‖ * ‖d‖) := by
        gcongr
        exact ContinuousLinearMap.opNorm_comp_le _ _
      _ ≤ 1 * (‖A‖ * 1) := by gcongr
      _ = ‖A‖ := by ring
  have hrecover : A = d ∘L (conjugate ∘L di) := by
    ext value
    simp [conjugate, d, di]
  have hlower : ‖A‖ ≤ ‖conjugate‖ := by
    rw [hrecover]
    calc
      ‖d ∘L (conjugate ∘L di)‖ ≤ ‖d‖ * ‖conjugate ∘L di‖ :=
        ContinuousLinearMap.opNorm_comp_le _ _
      _ ≤ ‖d‖ * (‖conjugate‖ * ‖di‖) := by
        gcongr
        exact ContinuousLinearMap.opNorm_comp_le _ _
      _ ≤ 1 * (‖conjugate‖ * 1) := by gcongr
      _ = ‖conjugate‖ := by ring
  exact le_antisymm hupper hlower

/-- Scalar signs or arbitrary unit phases cannot improve the norm of the full
Gram operator: they only produce a unitary conjugate. -/
@[surface_novel, surface_published]
theorem polarizedGram_norm_eq_gram_norm {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N)
    (phase : frame.Atom → ℂˣ)
    (hphase : ∀ a, ‖(phase a : ℂ)‖ = 1) :
    ‖polarizedGramOperator frame phase hphase‖ =
      ‖packetGramOperator frame‖ := by
  exact norm_isometricConjugate
    (phaseModulation frame phase hphase) (packetGramOperator frame)

/-! ## A bounded readout forces Gram energy -/

/-- Squared Euclidean energy of the packet amplitudes recovered by the
readout. -/
@[expose]
def coefficientEnergy {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) : ℝ :=
  ∑ a : frame.Atom, ‖frame.amplitude a‖ ^ 2

/-- The coefficient functional obtained by synthesizing and then applying the
frame readout. -/
@[expose]
def coefficientFunctional {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) :
    EuclideanSpace ℂ frame.Atom →L[ℂ] ℂ :=
  frame.readout ∘L packetSynthesisCLM frame

@[surface_novel, surface_published]
theorem packetSynthesisCLM_single {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) [DecidableEq frame.Atom]
    (a : frame.Atom) :
    packetSynthesisCLM frame (EuclideanSpace.single a 1) = frame.packet a := by
  classical
  simp [packetSynthesisCLM, packetSynthesisLinearMap, PiLp.single_apply]

/-- The adjoint Riesz vector of the coefficient functional has the conjugate
amplitude in each coordinate. -/
@[surface_novel, surface_published]
theorem coefficientFunctional_adjoint_one_coordinate {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) (a : frame.Atom) :
    conj ((((coefficientFunctional frame)†) 1) a) =
      frame.amplitude a := by
  classical
  have hadjoint := (coefficientFunctional frame).adjoint_inner_left
    (EuclideanSpace.single a 1) 1
  rw [EuclideanSpace.inner_single_right] at hadjoint
  simpa [coefficientFunctional, packetSynthesisCLM_single,
    frame.readout_packet] using hadjoint

/-- The amplitude energy is exactly the squared norm of the Riesz vector of
the coefficient functional. -/
@[surface_novel, surface_published]
theorem coefficientEnergy_eq_adjoint_norm_sq {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) :
    coefficientEnergy frame = ‖((coefficientFunctional frame)†) 1‖ ^ 2 := by
  rw [EuclideanSpace.norm_sq_eq]
  unfold coefficientEnergy
  apply Finset.sum_congr rfl
  intro a _
  have hcoord := congrArg norm
    (coefficientFunctional_adjoint_one_coordinate frame a)
  simpa using hcoord.symm

/-- A readout that recovers every atom coefficient cannot coexist with a
sub-energy full-Gram bound.  This is the exact finite Riesz/`T†T` inequality
`‖c‖₂² ≤ ‖readout‖² ‖G‖`. -/
@[surface_novel, surface_published]
theorem readout_forces_gram_lowerBound {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) :
    coefficientEnergy frame ≤
      ‖frame.readout‖ ^ 2 * ‖packetGramOperator frame‖ := by
  let T := packetSynthesisCLM frame
  let A := coefficientFunctional frame
  have hadjoint : ‖(A†) 1‖ ≤ ‖A‖ := by
    calc
      ‖(A†) 1‖ ≤ ‖A†‖ * ‖(1 : ℂ)‖ := ContinuousLinearMap.le_opNorm _ _
      _ = ‖A‖ := by simp
  have hcompose : ‖A‖ ≤ ‖frame.readout‖ * ‖T‖ := by
    exact ContinuousLinearMap.opNorm_comp_le _ _
  have hnorm : ‖(A†) 1‖ ≤ ‖frame.readout‖ * ‖T‖ :=
    hadjoint.trans hcompose
  rw [coefficientEnergy_eq_adjoint_norm_sq]
  have hsq : ‖(A†) 1‖ ^ 2 ≤ (‖frame.readout‖ * ‖T‖) ^ 2 :=
    (sq_le_sq₀ (norm_nonneg _)
      (mul_nonneg (norm_nonneg _) (norm_nonneg _))).2 hnorm
  rw [show packetGramOperator frame = T† ∘L T by rfl,
    ContinuousLinearMap.norm_adjoint_comp_self]
  nlinarith [sq_nonneg ‖frame.readout‖, sq_nonneg ‖T‖]

/-- Local geometric interaction evidence.  A false mask entry forces either
exact orthogonality or the supplied rapidly decaying error. -/
structure PolarizedInteractionControl {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) where
  interactionMask : frame.Atom → frame.Atom → Bool
  offDiagonalError : ℝ
  offDiagonalError_nonneg : 0 ≤ offDiagonalError
  gram_small_of_mask_false : ∀ left right,
    interactionMask left right = false →
      ‖packetGram frame left right‖ ≤ offDiagonalError

/-- Exact-disjointness specialization of the interaction certificate. -/
@[expose]
def PolarizedInteractionControl.IsExact {N : ℕ}
    {frame : ConductorThreeCoefficientPacketFrame N}
    (control : PolarizedInteractionControl frame) : Prop :=
  control.offDiagonalError = 0

@[surface_novel, surface_published]
theorem gram_zero_of_interactionMask_false {N : ℕ}
    {frame : ConductorThreeCoefficientPacketFrame N}
    (control : PolarizedInteractionControl frame)
    (hexact : control.IsExact) (left right : frame.Atom)
    (hmask : control.interactionMask left right = false) :
    packetGram frame left right = 0 := by
  have hnorm := control.gram_small_of_mask_false left right hmask
  rw [hexact] at hnorm
  simpa using (norm_eq_zero.mp (le_antisymm hnorm (norm_nonneg _)))

/-- A generic scale-uniform frame bound for the *unsigned full Gram
operator*.  By `polarizedGram_norm_eq_gram_norm`, multiplying columns by the
conductor-three signs (or any unit phases) cannot improve this quantity.
Accordingly this predicate must not be used as the coefficient-sensitive
arithmetic cancellation theorem.  It remains useful only as ordinary frame
control. -/
@[expose]
def FullGramPowerBound
    (frame : (N : ℕ) → ConductorThreeCoefficientPacketFrame N) : Prop :=
  ∀ epsilon : ℝ, 0 < epsilon →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ N : ℕ, 2 ≤ N →
        ‖packetGramOperator (frame N)‖ ≤
          C * (N : ℝ) ^ epsilon

end

end Surface.Core.PrimeLattice.PolarizedGram
```
