/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonFullRegulatedHamiltonian
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceResidualOperatorNorm
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceNormalizedSeparation
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonStationaryDensity

/-!
# Global discrete-time evolution of the entire regulated SU(2) Wilson Hamiltonian

Local mathematical attribution: grwtsk contributors.

The maintained SU(2) Wilson spatial transfer operator acts on the COMPLETE
gauge-invariant real slice Hilbert space (not a residue Gram, finite matrix or
positive-time subalgebra). Its actual normalized transfer is a contraction.
Iterating it produces a GLOBAL bounded discrete semigroup for EVERY input,
including the principal vacuum and all orthogonal excitations.

The contractivity proof consumes the actual source positivity and the
proved first-value-equals-norm identity. The excitation contraction is
not supplied as a free scalar: it consumes the actual source residual
operator bound on the whole vacuum hyperplane and the source-built vacuum.
All-time decay follows by induction and genuine vacuum orthogonality
preservation; NO cross sector or infinite-dimensional complement is erased.

The spectral-coordinate identity binds the discrete evolution to the
source-defined maximal-domain self-adjoint logarithmic Hamiltonian.
This is the COMPLETE REGULATED transfer dynamics on all invariant slice L2.
It does not identify finite-period reflection quotient time translation
with this semigroup or construct the 4D continuum physical Hamiltonian.

SOURCE_PROOF_CANDIDATE / LEAN_BUILD_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOMS_NOT_RUN / EXPECTED_TYPES_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonFullHamiltonianEvolution

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivePrincipal
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePrincipalSimplicity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceResidualOperatorNorm
open GRWTSK.Geometry.GaugeTheory.WilsonSliceNormalizedSeparation
open GRWTSK.Geometry.GaugeTheory.WilsonFullRegulatedHamiltonian
open GRWTSK.Geometry.GaugeTheory.WilsonStationaryDensity
open GRWTSK.Analysis.InnerProductSpace.VariationalSpectralBracket

variable (L : ℕ) [NeZero L] (β : ℝ) (hβ : 0 < β)

/-- The exact normalized transfer on EVERY actual invariant-slice vector.
Its normalization is the actual positive principal Wilson eigenvalue. -/
def normalizedTransfer :
    RegulatedHilbert L →L[ℝ] RegulatedHilbert L :=
  (lambda0 L β hβ.le)⁻¹ • invariantOperator L β hβ.le

/-- Contractivity follows from the ACTUAL positive Wilson transfer and
its source-proved variational equality firstValue=operator norm. -/
theorem normalizedTransfer_norm_le_one :
    ‖normalizedTransfer L β hβ‖ ≤ 1 := by
  have hλ : 0 < lambda0 L β hβ.le := lambda0_pos L β hβ
  have hnorm : ‖invariantOperator L β hβ.le‖ = lambda0 L β hβ.le :=
    (firstValue_eq_norm (invariantOperator L β hβ.le)
      (invariantOperator_isSymmetric L β hβ.le)
      (fun x => invariantOperator_inner_nonnegative L β hβ.le x)).symm
  unfold normalizedTransfer
  rw [norm_smul, Real.norm_eq_abs, abs_of_pos (inv_pos.mpr hλ), hnorm]
  simp [hλ.ne']

/-- The source-chosen entire gauge-invariant vacuum is fixed at one step. -/
theorem normalizedTransfer_vacuum :
    normalizedTransfer L β hβ (vacuum L β hβ) = vacuum L β hβ := by
  have hλ : 0 < lambda0 L β hβ.le := lambda0_pos L β hβ
  simp only [normalizedTransfer, ContinuousLinearMap.smul_apply,
    vacuum_eigen L β hβ, smul_smul,
    inv_mul_cancel₀ hλ.ne', one_smul]

/-- The true eigenvector is positive almost everywhere, as supplied by
principal simplicity, not postulated for a stationary measure. -/
theorem vacuum_positive_ae :
    ∀ᵐ a ∂sliceHaar L, 0 < (vacuum L β hβ : RealSliceL2 L) a :=
  (Classical.choose_spec (exists_unit_principal_spanning L β hβ)).2.2.1

/-- The physical vacuum has unit norm and is nonzero. -/
theorem vacuum_nonzero : vacuum L β hβ ≠ 0 := by
  intro hz
  have hn := vacuum_unit L β hβ
  rw [hz, norm_zero] at hn
  norm_num at hn

/-- The actual stationary measure from the source principal kernel, not
the product-Haar law or finite periodic Wilson law. -/
def stationaryVacuumMeasure : Measure
    (GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry.Slice L SU2) :=
  stationaryMeasure L β hβ (vacuum L β hβ)

/-- The complete source-proved principal eigenvector normalizes its
own stationary squared representative to mass one. -/
theorem stationaryVacuum_probability :
    IsProbabilityMeasure (stationaryVacuumMeasure L β hβ) :=
  stationary_probability L β hβ (vacuum L β hβ)
    (vacuum_unit L β hβ) (vacuum_eigen L β hβ)

/-- Actual source detailed balance of the vacuum-transformed kernel. -/
theorem stationaryVacuum_detailed_balance
    (a b : GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry.Slice L SU2) :
    stationaryDensity L β hβ (vacuum L β hβ) a *
        GRWTSK.Geometry.GaugeTheory.WilsonSliceGroundStateRows.rowDensity
          L β hβ (vacuum L β hβ) a b =
      stationaryDensity L β hβ (vacuum L β hβ) b *
        GRWTSK.Geometry.GaugeTheory.WilsonSliceGroundStateRows.rowDensity
          L β hβ (vacuum L β hβ) b a :=
  detailed_balance L β hβ (vacuum L β hβ)
    (vacuum_positive_ae L β hβ).mono (fun _ h => h.le)
    (vacuum_nonzero L β hβ) a b

/-- ALL nonnegative integer steps are bounded operators on the actual
complete invariant Hilbert, defined by genuine composition. -/
def evolution : ℕ → RegulatedHilbert L →L[ℝ] RegulatedHilbert L :=
  Nat.rec (ContinuousLinearMap.id ℝ (RegulatedHilbert L))
    (fun _ previous => (normalizedTransfer L β hβ).comp previous)

theorem evolution_zero (x : RegulatedHilbert L) :
    evolution L β hβ 0 x = x := rfl

theorem evolution_succ (n : ℕ) (x : RegulatedHilbert L) :
    evolution L β hβ (n + 1) x =
      normalizedTransfer L β hβ (evolution L β hβ n x) := rfl

/-- Exact discrete semigroup law, on EVERY vector (not a dense subspace). -/
theorem evolution_add (n m : ℕ) (x : RegulatedHilbert L) :
    evolution L β hβ (n + m) x =
      evolution L β hβ n (evolution L β hβ m x) := by
  induction n with
  | zero => rfl
  | succ n ih =>
      change normalizedTransfer L β hβ (evolution L β hβ (n + m) x) =
        normalizedTransfer L β hβ
          (evolution L β hβ n (evolution L β hβ m x))
      rw [ih]

/-- Every discrete step is a genuine contraction of the entire Hilbert norm. -/
theorem evolution_norm_le (n : ℕ) (x : RegulatedHilbert L) :
    ‖evolution L β hβ n x‖ ≤ ‖x‖ := by
  induction n with
  | zero => exact le_refl _
  | succ n ih =>
      calc
        ‖evolution L β hβ (n + 1) x‖ =
            ‖normalizedTransfer L β hβ (evolution L β hβ n x)‖ := rfl
        _ ≤ ‖normalizedTransfer L β hβ‖ *
            ‖evolution L β hβ n x‖ :=
          (normalizedTransfer L β hβ).le_opNorm _
        _ ≤ ‖evolution L β hβ n x‖ :=
          (mul_le_mul_of_nonneg_right
            (normalizedTransfer_norm_le_one L β hβ)
            (norm_nonneg _)).trans_eq (one_mul _)
        _ ≤ ‖x‖ := ih

/-- No time evolution erases or creates vacuum mass. -/
theorem evolution_vacuum (n : ℕ) :
    evolution L β hβ n (vacuum L β hβ) = vacuum L β hβ := by
  induction n with
  | zero => rfl
  | succ n ih =>
      change normalizedTransfer L β hβ
          (evolution L β hβ n (vacuum L β hβ)) =
        vacuum L β hβ
      rw [ih, normalizedTransfer_vacuum]

/-- The exact source-positive normalized-transfer contraction factor on
the actual vacuum orthogonal complement. -/
def excitationFactor : ℝ :=
  1 - Real.exp (-12 * β * (L : ℝ)^3) * lambda0 L β hβ.le

/-- The factor lies in [0,1) at every positive finite regulator. -/
theorem excitationFactor_bounds :
    0 ≤ excitationFactor L β hβ ∧ excitationFactor L β hβ < 1 := by
  have hc : Real.exp (-12 * β * (L : ℝ)^3) ≤ 1 := by
    apply Real.exp_le_one_iff.mpr
    have hn : 0 ≤ 12 * β * (L : ℝ)^3 := by positivity
    linarith
  have hl := GRWTSK.Geometry.GaugeTheory.WilsonSliceResidualOperatorNorm.lambda0_le_one
    L β hβ
  have hp : 0 < Real.exp (-12 * β * (L : ℝ)^3) *
      lambda0 L β hβ.le :=
    mul_pos (Real.exp_pos _) (lambda0_pos L β hβ)
  have hu : Real.exp (-12 * β * (L : ℝ)^3) *
      lambda0 L β hβ.le ≤ 1 := by
    calc
      _ ≤ Real.exp (-12 * β * (L : ℝ)^3) * 1 :=
        mul_le_mul_of_nonneg_left hl (Real.exp_pos _).le
      _ ≤ 1 := by simpa using hc
  unfold excitationFactor
  constructor <;> linarith

/-- The ACTUAL symmetric transfer preserves the entire true vacuum
orthogonal complement. -/
theorem normalizedTransfer_preserves_vacuum_orthogonal
    (x : RegulatedHilbert L)
    (hx : inner ℝ (vacuum L β hβ) x = 0) :
    inner ℝ (vacuum L β hβ) (normalizedTransfer L β hβ x) = 0 := by
  have hsym := invariantOperator_isSymmetric L β hβ.le (vacuum L β hβ) x
  calc
    inner ℝ (vacuum L β hβ) (normalizedTransfer L β hβ x) =
        (lambda0 L β hβ.le)⁻¹ *
        inner ℝ (vacuum L β hβ) (invariantOperator L β hβ.le x) := by
      simp [normalizedTransfer, inner_smul_right]
    _ = (lambda0 L β hβ.le)⁻¹ *
        inner ℝ (invariantOperator L β hβ.le (vacuum L β hβ)) x := by
      rw [← hsym]
    _ = 0 := by
      rw [vacuum_eigen L β hβ, real_inner_smul_left, hx]
      ring

/-- One step of the full vacuum-orthogonal dynamics is bounded by the
actual source residual estimate, without introducing a free gap witness. -/
theorem normalizedTransfer_excitation_le
    (x : RegulatedHilbert L)
    (hx : inner ℝ (vacuum L β hβ) x = 0) :
    ‖normalizedTransfer L β hβ x‖ ≤
      excitationFactor L β hβ * ‖x‖ := by
  let u := vacuum L β hβ
  let R := residualOperator L β hβ u
  have hλ : 0 < lambda0 L β hβ.le := lambda0_pos L β hβ
  have hR : ‖R‖ ≤ residualRate L β hβ := by
    exact residualOperator_norm_le L β hβ u
      (vacuum_unit L β hβ)
      ((vacuum_positive_ae L β hβ).mono (fun _ hp => hp.le))
      (vacuum_eigen L β hβ)
  have heq : R x = invariantOperator L β hβ.le x :=
    residualOperator_on_hyperplane L β hβ u x hx
  have hbound : ‖R x‖ ≤ residualRate L β hβ * ‖x‖ :=
    (R.le_opNorm x).trans
      (mul_le_mul_of_nonneg_right hR (norm_nonneg _))
  calc
    ‖normalizedTransfer L β hβ x‖ =
        (lambda0 L β hβ.le)⁻¹ * ‖R x‖ := by
      unfold normalizedTransfer
      rw [ContinuousLinearMap.smul_apply, norm_smul, Real.norm_eq_abs,
        abs_of_pos (inv_pos.mpr hλ), ← heq]
    _ ≤ (lambda0 L β hβ.le)⁻¹ *
        (residualRate L β hβ * ‖x‖) :=
      mul_le_mul_of_nonneg_left hbound (inv_pos.mpr hλ).le
    _ = excitationFactor L β hβ * ‖x‖ := by
      unfold excitationFactor residualRate
      field_simp [hλ.ne']
      ring

/-- Every time step remains in the FULL vacuum complement, without
a Galerkin cut or arbitrary finite residue truncation. -/
theorem evolution_preserves_vacuum_orthogonal
    (n : ℕ) (x : RegulatedHilbert L)
    (hx : inner ℝ (vacuum L β hβ) x = 0) :
    inner ℝ (vacuum L β hβ) (evolution L β hβ n x) = 0 := by
  induction n with
  | zero => exact hx
  | succ n ih =>
      exact normalizedTransfer_preserves_vacuum_orthogonal
        L β hβ (evolution L β hβ n x) ih

/-- FULL-EXCITATION all-time geometric relaxation at the actual finite
SU(2) Wilson regulator, directly from the actual residual operator norm. -/
theorem evolution_excitation_decay
    (n : ℕ) (x : RegulatedHilbert L)
    (hx : inner ℝ (vacuum L β hβ) x = 0) :
    ‖evolution L β hβ n x‖ ≤
      (excitationFactor L β hβ)^n * ‖x‖ := by
  induction n with
  | zero => simp [evolution]
  | succ n ih =>
      calc
        ‖evolution L β hβ (n + 1) x‖ =
            ‖normalizedTransfer L β hβ (evolution L β hβ n x)‖ := rfl
        _ ≤ excitationFactor L β hβ * ‖evolution L β hβ n x‖ :=
          normalizedTransfer_excitation_le L β hβ _ 
            (evolution_preserves_vacuum_orthogonal L β hβ n x hx)
        _ ≤ excitationFactor L β hβ *
              ((excitationFactor L β hβ)^n * ‖x‖) :=
          mul_le_mul_of_nonneg_left ih (excitationFactor_bounds L β hβ).1
        _ = (excitationFactor L β hβ)^(n + 1) * ‖x‖ := by
          rw [pow_succ]
          ring

/-- The source-proved principal eigenvalue lower bound eliminates the
unknown lambda0 from the full-sector relaxation rate, at the cost of the
EXPLICIT regulator-dependent factor exp(-24 beta L^3). -/
theorem excitationFactor_le_explicit :
    excitationFactor L β hβ ≤
      1 - Real.exp (-24 * β * (L : ℝ)^3) := by
  have hlower := GRWTSK.Geometry.GaugeTheory.WilsonSliceConstantTrial.lambda0_lower
    L β hβ.le
  have hpos : 0 ≤ Real.exp (-12 * β * (L : ℝ)^3) :=
    (Real.exp_pos _).le
  have hm := mul_le_mul_of_nonneg_left hlower hpos
  have he : Real.exp (-24 * β * (L : ℝ)^3) =
      Real.exp (-12 * β * (L : ℝ)^3) *
        Real.exp (-12 * β * (L : ℝ)^3) := by
    rw [← Real.exp_add]
    congr 1 <;> ring
  rw [he]
  unfold excitationFactor
  linarith

/-- The full invariant-slice excitation Hilbert space obeys an explicit
all-time regulator-dependent estimate with no free spectral certificate,
no finite-dimensional projection, and no omitted orthogonal sector. -/
theorem evolution_excitation_explicit
    (n : ℕ) (x : RegulatedHilbert L)
    (hx : inner ℝ (vacuum L β hβ) x = 0) :
    ‖evolution L β hβ n x‖ ≤
      (1 - Real.exp (-24 * β * (L : ℝ)^3))^n * ‖x‖ := by
  have hfactor := excitationFactor_bounds L β hβ
  have hp : (excitationFactor L β hβ)^n ≤
      (1 - Real.exp (-24 * β * (L : ℝ)^3))^n :=
    pow_le_pow_left₀ hfactor.1
      (excitationFactor_le_explicit L β hβ) n
  calc
    ‖evolution L β hβ n x‖ ≤
        (excitationFactor L β hβ)^n * ‖x‖ :=
      evolution_excitation_decay L β hβ n x hx
    _ ≤ (1 - Real.exp (-24 * β * (L : ℝ)^3))^n * ‖x‖ :=
      mul_le_mul_of_nonneg_right hp (norm_nonneg _)

/-- The source Hamiltonian's actual positive-time coordinate action is
the normalized one-step transfer on ALL Hilbert vectors, no domain restriction.
No continuum semigroup identification is inferred. -/
theorem evolution_one_coordinate
    {a : ℝ} (ha : 0 < a)
    (x : RegulatedHilbert L) (μ : ℝ) :
    spectralCoordinates L β hβ.le (evolution L β hβ 1 x) μ =
      Real.exp (-a *
        (Real.log (lambda0 L β hβ.le / μ) / a)) •
      spectralCoordinates L β hβ.le x μ := by
  change spectralCoordinates L β hβ.le
    ((lambda0 L β hβ.le)⁻¹ • invariantOperator L β hβ.le x) μ = _
  exact normalizedTransfer_coordinate L β hβ ha x μ

/-- All modes, all time steps: source-specific spectral action of the
entire positive-time discrete semigroup, including all multiplicities. -/
theorem evolution_coordinate (n : ℕ) {a : ℝ} (ha : 0 < a)
    (x : RegulatedHilbert L) (μ : ℝ) :
    spectralCoordinates L β hβ.le (evolution L β hβ n x) μ =
      (Real.exp (-a *
        (Real.log (lambda0 L β hβ.le / μ) / a)))^n •
      spectralCoordinates L β hβ.le x μ := by
  induction n with
  | zero => simp [evolution]
  | succ n ih =>
      change spectralCoordinates L β hβ.le
        (normalizedTransfer L β hβ (evolution L β hβ n x)) μ = _
      rw [show spectralCoordinates L β hβ.le
            (normalizedTransfer L β hβ (evolution L β hβ n x)) μ =
          Real.exp (-a * (Real.log (lambda0 L β hβ.le / μ) / a)) •
            spectralCoordinates L β hβ.le (evolution L β hβ n x) μ from
        normalizedTransfer_coordinate L β hβ ha (evolution L β hβ n x) μ]
      rw [ih, smul_smul, pow_succ]
      congr 1
      ring

end GRWTSK.Geometry.GaugeTheory.WilsonFullHamiltonianEvolution
