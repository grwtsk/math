/- Copyright (c) 2026 grwtsk contributors. MIT.
The imported compact spectral theorem retains Heather Macbeth's authorship.
All inherited matrix, Haar, Hilbert, integral and continuous-map sources
retain their actual upstream attribution and licenses. -/
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.CompactPositiveEigenpairs
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.CompactOrthonormalEigenvalueLimit
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceTracePowersInfiniteRank

/-!
# Actual positive eigenpairs and continuous invariant Wilson slice eigenfunctions

Every argument of the generic construction is supplied by the existing
source-defined invariant real Hilbert space/operator. Infinite rank uses
the actual independent trace powers and continuous-domain injection; the
stronger all-L2 strictness theorem is not invoked. Compactness gives decay.

The representative is lambda^(-1) times the distinguished continuous output
on the ambient inclusion of the actual eigenclass. Its embedding is exactly
that class. Only continuous functions are returned from AE equality to
pointwise equality, using the proved full support of original product Haar.

No complete eigenbasis, eigenvalue ordering, distinct eigenvalues, F_n
support/evaluation, reflection-domain density, Hamiltonian, physical vacuum,
continuum limit or physical mass gap is supplied. Beta0 and T3 are untouched.
SOURCE_PROOF_CANDIDATE; entire inherited/new chain acceptance NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonSlicePositiveEigenpairs

open MeasureTheory Filter
open scoped Topology
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2Operator
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceInvariantContinuousDensity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceInvariantOperatorPositive
open GRWTSK.Geometry.GaugeTheory.WilsonSliceCompactOperator
open GRWTSK.Geometry.GaugeTheory.WilsonSliceContinuousStrictPositivity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceTracePowersInfiniteRank

variable (L : ℕ) [NeZero L] (hL : 8 ≤ L) (β : ℝ) (hβ : 0 < β)

def eigenvector : ℕ → gaugeInvariantSpace L :=
  GRWTSK.FunctionalAnalysis.CompactPositiveEigenpairs.eigenvector
    (invariantOperator L β hβ.le) (invariantOperator_isCompactOperator L β hβ.le)
    (invariantOperator_isSymmetric L β hβ.le)
    (invariantOperator_inner_nonnegative L β hβ.le)
    (invariantOperator_range_not_finiteDimensional L hL β hβ)

def eigenvalue : ℕ → ℝ :=
  GRWTSK.FunctionalAnalysis.CompactPositiveEigenpairs.eigenvalue
    (invariantOperator L β hβ.le) (invariantOperator_isCompactOperator L β hβ.le)
    (invariantOperator_isSymmetric L β hβ.le)
    (invariantOperator_inner_nonnegative L β hβ.le)
    (invariantOperator_range_not_finiteDimensional L hL β hβ)

theorem eigenvector_orthonormal : Orthonormal ℝ (eigenvector L hL β hβ) :=
  GRWTSK.FunctionalAnalysis.CompactPositiveEigenpairs.eigenvector_orthonormal
    (invariantOperator L β hβ.le) (invariantOperator_isCompactOperator L β hβ.le)
    (invariantOperator_isSymmetric L β hβ.le)
    (invariantOperator_inner_nonnegative L β hβ.le)
    (invariantOperator_range_not_finiteDimensional L hL β hβ)

theorem eigenvector_inner (n m : ℕ) :
    inner ℝ (eigenvector L hL β hβ n) (eigenvector L hL β hβ m) =
      if n = m then 1 else 0 :=
  orthonormal_iff_ite.mp (eigenvector_orthonormal L hL β hβ) n m

theorem eigenvalue_positive (n : ℕ) : 0 < eigenvalue L hL β hβ n :=
  GRWTSK.FunctionalAnalysis.CompactPositiveEigenpairs.eigenvalue_positive
    (invariantOperator L β hβ.le) (invariantOperator_isCompactOperator L β hβ.le)
    (invariantOperator_isSymmetric L β hβ.le)
    (invariantOperator_inner_nonnegative L β hβ.le)
    (invariantOperator_range_not_finiteDimensional L hL β hβ) n

theorem eigenvalue_le_one (n : ℕ) : eigenvalue L hL β hβ n ≤ 1 :=
  (GRWTSK.FunctionalAnalysis.CompactPositiveEigenpairs.eigenvalue_le_norm
    (invariantOperator L β hβ.le) (invariantOperator_isCompactOperator L β hβ.le)
    (invariantOperator_isSymmetric L β hβ.le)
    (invariantOperator_inner_nonnegative L β hβ.le)
    (invariantOperator_range_not_finiteDimensional L hL β hβ) n).trans
    (invariantOperator_norm_le_one L β hβ.le)

theorem eigenvector_equation (n : ℕ) :
    invariantOperator L β hβ.le (eigenvector L hL β hβ n) =
      eigenvalue L hL β hβ n • eigenvector L hL β hβ n :=
  GRWTSK.FunctionalAnalysis.CompactPositiveEigenpairs.eigenvector_equation
    (invariantOperator L β hβ.le) (invariantOperator_isCompactOperator L β hβ.le)
    (invariantOperator_isSymmetric L β hβ.le)
    (invariantOperator_inner_nonnegative L β hβ.le)
    (invariantOperator_range_not_finiteDimensional L hL β hβ) n

theorem eigenvalue_tendsto_zero : Tendsto (eigenvalue L hL β hβ) atTop (𝓝 0) :=
  GRWTSK.FunctionalAnalysis.CompactOrthonormalEigenvalueLimit.eigenvalue_tendsto_zero
    (invariantOperator L β hβ.le) (invariantOperator_isCompactOperator L β hβ.le)
    (eigenvector L hL β hβ) (eigenvalue L hL β hβ)
    (eigenvector_orthonormal L hL β hβ)
    (fun n => (eigenvalue_positive L hL β hβ n).le) (eigenvector_equation L hL β hβ)

/-- The actual ambient inclusion is used, not evaluation of an arbitrary AE class. -/
def eigenfunction (n : ℕ) : invariantContinuousSpace L :=
  ⟨(eigenvalue L hL β hβ n)⁻¹ •
      toContinuous L β hβ.le (eigenvector L hL β hβ n : RealSliceL2 L), by
    intro g a
    change (eigenvalue L hL β hβ n)⁻¹ *
        kernelRepresentative L β hβ.le _ (sliceGaugeAction g a) = _
    rw [representative_gauge]⟩

theorem eigenfunction_embedding (n : ℕ) :
    invariantEmbedding L (eigenfunction L hL β hβ n) = eigenvector L hL β hβ n := by
  apply Subtype.ext
  change ContinuousMap.toLp 2 (sliceHaar L) ℝ
    ((eigenvalue L hL β hβ n)⁻¹ • toContinuous L β hβ.le
      (eigenvector L hL β hβ n : RealSliceL2 L)) = _
  rw [map_smul]
  change (eigenvalue L hL β hβ n)⁻¹ •
    operator L β hβ.le (eigenvector L hL β hβ n : RealSliceL2 L) = _
  have he := congrArg (fun x : gaugeInvariantSpace L => (x : RealSliceL2 L))
    (eigenvector_equation L hL β hβ n)
  change operator L β hβ.le (eigenvector L hL β hβ n : RealSliceL2 L) =
    eigenvalue L hL β hβ n • (eigenvector L hL β hβ n : RealSliceL2 L) at he
  rw [he, smul_smul, inv_mul_cancel₀ (ne_of_gt (eigenvalue_positive L hL β hβ n)), one_smul]

theorem eigenfunction_gauge (n : ℕ) (g : SliceGauge L SU2) (a : Slice L SU2) :
    eigenfunction L hL β hβ n (sliceGaugeAction g a) = eigenfunction L hL β hβ n a :=
  (eigenfunction L hL β hβ n).property g a

/-- Full support is applied only to two continuous representatives. -/
theorem eigenfunction_integral_equation (n : ℕ) (a : Slice L SU2) :
    (∫ b, sliceKernel L β a b * eigenfunction L hL β hβ n b ∂sliceHaar L) =
      eigenvalue L hL β hβ n * eigenfunction L hL β hβ n a := by
  let f : C(Slice L SU2, ℝ) := (eigenfunction L hL β hβ n).val
  have hf : ContinuousMap.toLp 2 (sliceHaar L) ℝ f =
      (eigenvector L hL β hβ n : RealSliceL2 L) :=
    congrArg (fun x : gaugeInvariantSpace L => (x : RealSliceL2 L))
      (eigenfunction_embedding L hL β hβ n)
  have he := congrArg (fun x : gaugeInvariantSpace L => (x : RealSliceL2 L))
    (eigenvector_equation L hL β hβ n)
  have hc : ContinuousMap.toLp 2 (sliceHaar L) ℝ
        (toContinuous L β hβ.le (ContinuousMap.toLp 2 (sliceHaar L) ℝ f)) =
      ContinuousMap.toLp 2 (sliceHaar L) ℝ (eigenvalue L hL β hβ n • f) := by
    rw [map_smul, hf]
    exact he
  letI : Measure.IsOpenPosMeasure (sliceHaar L) := sliceHaar_isOpenPosMeasure L
  have hpoint : toContinuous L β hβ.le (ContinuousMap.toLp 2 (sliceHaar L) ℝ f) =
      eigenvalue L hL β hβ n • f := ContinuousMap.toLp_injective (sliceHaar L) hc
  have hv := congrArg (fun u : C(Slice L SU2, ℝ) => u a) hpoint
  change kernelRepresentative L β hβ.le (ContinuousMap.toLp 2 (sliceHaar L) ℝ f) a =
    eigenvalue L hL β hβ n * f a at hv
  rw [representative_of_continuous] at hv
  exact hv

/-- The original L=2T,T>=4 parameter regime, with no spectral premise. -/
theorem periodic_eigenpairs (T : ℕ) (hT : 4 ≤ T) (β : ℝ) (hβ : 0 < β) :
    letI : NeZero (2 * T) := ⟨by omega⟩
    ∃ (e : ℕ → gaugeInvariantSpace (2 * T)) (λ : ℕ → ℝ)
      (f : ℕ → invariantContinuousSpace (2 * T)),
      Orthonormal ℝ e ∧ (∀ n, 0 < λ n ∧ λ n ≤ 1) ∧
      (∀ n, invariantOperator (2 * T) β hβ.le (e n) = λ n • e n) ∧
      Tendsto λ atTop (𝓝 0) ∧ (∀ n, invariantEmbedding (2 * T) (f n) = e n) ∧
      (∀ n a, (∫ b, sliceKernel (2 * T) β a b * f n b ∂sliceHaar (2 * T)) =
        λ n * f n a) := by
  letI : NeZero (2 * T) := ⟨by omega⟩
  have hL : 8 ≤ 2 * T := by omega
  exact ⟨eigenvector (2 * T) hL β hβ, eigenvalue (2 * T) hL β hβ,
    eigenfunction (2 * T) hL β hβ, eigenvector_orthonormal (2 * T) hL β hβ,
    fun n => ⟨eigenvalue_positive (2 * T) hL β hβ n, eigenvalue_le_one (2 * T) hL β hβ n⟩,
    eigenvector_equation (2 * T) hL β hβ, eigenvalue_tendsto_zero (2 * T) hL β hβ,
    eigenfunction_embedding (2 * T) hL β hβ, eigenfunction_integral_equation (2 * T) hL β hβ⟩

end GRWTSK.Geometry.GaugeTheory.WilsonSlicePositiveEigenpairs
