/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceResidualKernel

/-!
# Continuous representatives of actual nonzero Wilson eigenvalues

An actual L2 eigenvector at a nonzero real eigenvalue has a constructed
continuous representative. Full support upgrades equality of continuous L2
embeddings to a pointwise integral eigenfunction equation. No input continuity,
principal eigenvalue, eigenvalue positivity or normalized Markov law is assumed.
This supplies a consumer for continuous eigenfunction-ratio arguments only.
SOURCE_PROOF_CANDIDATE; compile, fresh replay, axioms and interface NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory
namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceEigenfunctionRepresentative
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2Operator
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceContinuousStrictPositivity
variable (L : ℕ) [NeZero L]

def eigenRepresentative (β : ℝ) (hβ : 0 ≤ β) (μ : ℝ) (x : RealSliceL2 L) :
    C(Slice L SU2, ℝ) := μ⁻¹ • kernelRepresentative L β hβ x

theorem eigenRepresentative_toLp (β : ℝ) (hβ : 0 ≤ β) (μ : ℝ) (hμ : μ ≠ 0)
    (x : RealSliceL2 L) (he : operator L β hβ x = μ • x) :
    ContinuousMap.toLp 2 (sliceHaar L) ℝ (eigenRepresentative L β hβ μ x) = x := by
  rw [eigenRepresentative, map_smul]
  change μ⁻¹ • operator L β hβ x = x
  rw [he, smul_smul, inv_mul_cancel₀ hμ, one_smul]

theorem eigenRepresentative_eq_ae (β : ℝ) (hβ : 0 ≤ β) (μ : ℝ) (hμ : μ ≠ 0)
    (x : RealSliceL2 L) (he : operator L β hβ x = μ • x) :
    x =ᵐ[sliceHaar L] eigenRepresentative L β hβ μ x := by
  have h := ContinuousMap.coeFn_toLp (sliceHaar L) (eigenRepresentative L β hβ μ x)
  rwa [eigenRepresentative_toLp L β hβ μ hμ x he] at h

/-- Pointwise equality uses full support only after both functions are continuous. -/
theorem eigenRepresentative_integral_equation (β : ℝ) (hβ : 0 ≤ β)
    (μ : ℝ) (hμ : μ ≠ 0) (x : RealSliceL2 L)
    (he : operator L β hβ x = μ • x) (a : Slice L SU2) :
    (∫ b, sliceKernel L β a b * eigenRepresentative L β hβ μ x b ∂sliceHaar L) =
      μ * eigenRepresentative L β hβ μ x a := by
  let psi := eigenRepresentative L β hβ μ x
  have hto : ContinuousMap.toLp 2 (sliceHaar L) ℝ psi = x :=
    eigenRepresentative_toLp L β hβ μ hμ x he
  have hc : ContinuousMap.toLp 2 (sliceHaar L) ℝ
      (toContinuous L β hβ (ContinuousMap.toLp 2 (sliceHaar L) ℝ psi)) =
      ContinuousMap.toLp 2 (sliceHaar L) ℝ (μ • psi) := by
    rw [map_smul]
    change operator L β hβ (ContinuousMap.toLp 2 (sliceHaar L) ℝ psi) =
      μ • ContinuousMap.toLp 2 (sliceHaar L) ℝ psi
    rw [hto, he]
  letI : Measure.IsOpenPosMeasure (sliceHaar L) := sliceHaar_isOpenPosMeasure L
  have hp : toContinuous L β hβ (ContinuousMap.toLp 2 (sliceHaar L) ℝ psi) =
      μ • psi := ContinuousMap.toLp_injective (sliceHaar L) hc
  have hv := congrArg (fun u : C(Slice L SU2, ℝ) => u a) hp
  change kernelRepresentative L β hβ (ContinuousMap.toLp 2 (sliceHaar L) ℝ psi) a =
    μ * psi a at hv
  rw [representative_of_continuous] at hv
  exact hv

/-- The original invariant operator supplies the same actual ambient eigen-equation. -/
theorem invariant_eigenRepresentative_toLp (β : ℝ) (hβ : 0 ≤ β)
    (μ : ℝ) (hμ : μ ≠ 0) (x : gaugeInvariantSpace L)
    (he : invariantOperator L β hβ x = μ • x) :
    ContinuousMap.toLp 2 (sliceHaar L) ℝ
      (eigenRepresentative L β hβ μ (x : RealSliceL2 L)) = (x : RealSliceL2 L) := by
  have heA := congrArg (fun y : gaugeInvariantSpace L => (y : RealSliceL2 L)) he
  exact eigenRepresentative_toLp L β hβ μ hμ x heA

end GRWTSK.Geometry.GaugeTheory.WilsonSliceEigenfunctionRepresentative
