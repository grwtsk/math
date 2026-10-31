/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceEigenfunctionRepresentative
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceRowDifference

/-!
# Actual continuous eigenfunction ratios for normalized Wilson rows

The actual nonzero-eigenvalue representative divided by the positive principal
representative is continuous. Its normalized-row integral is the actual
eigenvalue ratio times itself. Orthogonality excludes constant ratios by exact
L2 embedding. No extrema or spectral-contraction theorem is assumed.
SOURCE_PROOF_CANDIDATE; compile, fresh replay, axioms and interface NOT_RUN.
No regulator-uniform physical gap or continuum construction follows.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory
namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceEigenfunctionRatio
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2Operator
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivePrincipal
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePrincipalRepresentativeBounds
open GRWTSK.Geometry.GaugeTheory.WilsonSliceEigenfunctionRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGroundStateRows
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRowDifference
variable (L : ℕ) [NeZero L] (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L)
variable (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) (hne : f ≠ 0)

def eigenRatio (μ : ℝ) (x : gaugeInvariantSpace L) : C(Slice L SU2, ℝ) :=
  ⟨fun b => eigenRepresentative L β hβ.le μ x b / principalRepresentative L β hβ f b,
    (eigenRepresentative L β hβ.le μ x).continuous.div
      (principalRepresentative L β hβ f).continuous
      (fun b => (principalRepresentative_pos L β hβ f hf hne b).ne')⟩

theorem ratio_mixed_integrable (μ : ℝ) (x : gaugeInvariantSpace L) (a : Slice L SU2) :
    Integrable (fun b => rowDensity L β hβ f a b * eigenRatio L β hβ f hf hne μ x b)
      (sliceHaar L) :=
  row_mixed_integrable L β hβ f hf hne (eigenRatio L β hβ f hf hne μ x) a

theorem ratio_integral_equation (μ : ℝ) (hμ : μ ≠ 0) (x : gaugeInvariantSpace L)
    (hex : invariantOperator L β hβ.le x = μ • x) (a : Slice L SU2) :
    (∫ b, rowDensity L β hβ f a b * eigenRatio L β hβ f hf hne μ x b ∂sliceHaar L) =
      (μ / lambda0 L β hβ.le) * eigenRatio L β hβ f hf hne μ x a := by
  have heA := congrArg (fun y : gaugeInvariantSpace L => (y : RealSliceL2 L)) hex
  have hλ := (lambda0_pos L β hβ).ne'
  have hpa := (principalRepresentative_pos L β hβ f hf hne a).ne'
  calc
    _ = ∫ b, (sliceKernel L β a b * eigenRepresentative L β hβ.le μ x b) /
        (lambda0 L β hβ.le * principalRepresentative L β hβ f a) ∂sliceHaar L := by
      apply integral_congr_ae
      exact ae_of_all _ (fun b => by
        have hpb := (principalRepresentative_pos L β hβ f hf hne b).ne'
        dsimp only [rowDensity, eigenRatio]
        field_simp [hpb, hλ, hpa] <;> ring)
    _ = (μ * eigenRepresentative L β hβ.le μ x a) /
        (lambda0 L β hβ.le * principalRepresentative L β hβ f a) := by
      rw [integral_div, eigenRepresentative_integral_equation L β hβ.le μ hμ x heA a]
    _ = _ := by
      dsimp only [eigenRatio]
      field_simp [hλ, hpa] <;> ring

/-- A constant ratio would make the original nonzero orthogonal eigenvector principal. -/
theorem ratio_not_constant (μ : ℝ) (hμ : μ ≠ 0) (x : gaugeInvariantSpace L)
    (hex : invariantOperator L β hβ.le x = μ • x)
    (hef : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f)
    (hn : ‖f‖ = 1) (hx : x ≠ 0) (hperp : inner ℝ f x = 0) :
    ¬ ∃ t : ℝ, ∀ b, eigenRatio L β hβ f hf hne μ x b = t := by
  rintro ⟨t, ht⟩
  have hfun : eigenRepresentative L β hβ.le μ x = t • principalRepresentative L β hβ f := by
    ext b
    have hb := ht b
    change eigenRepresentative L β hβ.le μ x b / principalRepresentative L β hβ f b = t at hb
    exact (div_eq_iff (principalRepresentative_pos L β hβ f hf hne b).ne').mp hb
  have hLp := congrArg (ContinuousMap.toLp 2 (sliceHaar L) ℝ) hfun
  rw [invariant_eigenRepresentative_toLp L β hβ.le μ hμ x hex, map_smul,
    principalRepresentative_toLp L β hβ f hef] at hLp
  have hsub : x = t • f := Subtype.ext hLp
  have ht0 : t = 0 := by
    rw [hsub, inner_smul_right, real_inner_self_eq_norm_sq, hn] at hperp
    simpa using hperp
  apply hx
  simpa only [ht0, zero_smul] using hsub

end GRWTSK.Geometry.GaugeTheory.WilsonSliceEigenfunctionRatio
