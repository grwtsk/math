# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FixedSourceResolventFloorAudit.Variantae45cd827fa91932a574c5b072b3137a4021de2fd4439b5c67f3bf179383320b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5480472e4dd3c2ecbbe3dde3efc87be5579b974` · SHA-256 `ae45cd827fa91932a574c5b072b3137a4021de2fd4439b5c67f3bf179383320b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdjointExponential
import FormalResearch.RiemannHypothesis.SourceComparison.TimeKernelTruncation
import FormalResearch.RiemannHypothesis.SourceComparison.PositiveResolvent
set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceComparison.PositiveResolventKernel
open PositiveResolvent

open ContinuousLinearMap
open scoped InnerProduct ComplexConjugate ComplexOrder NNReal

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]

/-- A fixed vector of a positive operator gives a directional lower bound. -/
theorem positive_fixed_direction_le (B : E →L[ℂ] E) (hB : B.IsPositive)
    (r e : E) (he : e ≠ 0) (hBe : B e = e) :
    ‖inner ℂ r e‖ ^ 2 / ‖e‖ ^ 2 ≤ (inner ℂ r (B r)).re := by
  let q : ℝ := ‖e‖ ^ 2
  let c : ℂ := inner ℂ e r
  let v : E := (q : ℂ) • r - c • e
  have hq : 0 < q := sq_pos_of_pos (norm_pos_iff.mpr he)
  have hee : inner ℂ e e = (q : ℂ) := by
    calc
      inner ℂ e e = (‖e‖ : ℂ) ^ 2 := inner_self_eq_norm_sq_to_K e
      _ = (q : ℂ) := (Complex.ofReal_pow ‖e‖ 2).symm
  have her : inner ℂ e (B r) = c := by
    rw [← hB.inner_left_eq_inner_right, hBe]
  have hre : inner ℂ r e = conj c := (inner_conj_symm r e).symm
  have hquad : inner ℂ v (B v) =
      (q : ℂ) ^ 2 * inner ℂ r (B r) - (q : ℂ) * (conj c * c) := by
    simp only [v, map_sub, map_smul, inner_sub_left, inner_sub_right,
      inner_smul_left, inner_smul_right, Complex.conj_ofReal, hBe, her, hre, hee]
    ring
  have hp := hB.re_inner_nonneg_right v
  change 0 ≤ (inner ℂ v (B v)).re at hp
  rw [hquad, ← Complex.normSq_eq_conj_mul_self] at hp
  simp only [← Complex.ofReal_pow, Complex.sub_re, Complex.mul_re, Complex.ofReal_re,
    Complex.ofReal_im, zero_mul, sub_zero, Complex.normSq_eq_norm_sq] at hp
  have hn : ‖c‖ = ‖inner ℂ r e‖ := by rw [hre, Complex.norm_conj]
  rw [hn] at hp
  apply (div_le_iff₀ hq).2
  change ‖inner ℂ r e‖ ^ 2 ≤ (inner ℂ r (B r)).re * q
  nlinarith

variable [CompleteSpace E]

/-- A vector in the original operator's kernel is fixed by the regularized inverse. -/
theorem regularized_resolvent_kernel_apply (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) (e : E) (he : S e = 0) :
    ((α : ℂ) • positiveResolvent S α) e = e := by
  have h := congrArg (fun A : E →L[ℂ] E => A e) (resolvent_mul_positiveShift S hS α hα)
  simpa only [mul_apply_eq_comp, one_apply_eq_self, positiveShift, add_apply,
    smul_apply, he, zero_add, map_smul] using h

/-- Every nonzero kernel witness gives its exact overlap floor at every positive parameter. -/
theorem kernel_witness_regularizedMass_le (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) (r e : E) (he : e ≠ 0) (hSe : S e = 0) :
    ‖inner ℂ r e‖ ^ 2 / ‖e‖ ^ 2 ≤ regularizedMass S α r := by
  have hp : ((α : ℂ) • positiveResolvent S α).IsPositive :=
    (positiveResolvent_isPositive S hS α hα).smul_of_nonneg (by exact_mod_cast hα.le)
  have h := positive_fixed_direction_le _ hp r e he
    (regularized_resolvent_kernel_apply S hS α hα e hSe)
  simpa only [regularizedMass, smul_apply, inner_smul_right, Complex.mul_re,
    Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero] using h

end FormalResearch.RiemannHypothesis.SourceComparison.PositiveResolventKernel


/-!
# Actual source resolvents and a joint time/parameter truncation bound

Every inverse below is justified by positivity of the original TT*. The diagonal
comparison controls approximation error; it does not prove vanishing of either
actual or truncated directional mass.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation
open MeasureTheory Set Filter
open scoped Topology
open HalfLineExponential FixedSourceKernel HalfLineOperator TimeKernelTruncation PositiveResolvent
noncomputable section

/-- The requested directional mass for the actual source TT*. -/
def sourceMass (α : ℝ) : ℝ := regularizedMass sourceEnergy α referenceVector

/-- The same reference vector and parameter for the actual time-truncated TT*. -/
def truncatedMass (N α : ℝ) : ℝ := regularizedMass (truncatedEnergy N) α referenceVector

/-- The source inverse exists at every strictly positive parameter. -/
theorem sourceShift_isUnit (α : ℝ) (hα : 0 < α) :
    IsUnit (positiveShift sourceEnergy α) :=
  positiveShift_isUnit sourceEnergy sourceEnergy_isPositive α hα

/-- The truncated source inverse exists at every strictly positive parameter. -/
theorem truncatedShift_isUnit (N α : ℝ) (hα : 0 < α) :
    IsUnit (positiveShift (truncatedEnergy N) α) :=
  positiveShift_isUnit (truncatedEnergy N) (truncatedEnergy_isPositive N) α hα

/-- Genuine resolvent positivity retains the actual reference direction. -/
theorem sourceMass_nonneg (α : ℝ) (hα : 0 < α) : 0 ≤ sourceMass α :=
  mul_nonneg hα.le
    ((positiveResolvent_isPositive sourceEnergy sourceEnergy_isPositive α hα).re_inner_nonneg_right _)

/-- Positive approximants use exactly the same reference direction. -/
theorem truncatedMass_nonneg (N α : ℝ) (hα : 0 < α) : 0 ≤ truncatedMass N α :=
  mul_nonneg hα.le
    ((positiveResolvent_isPositive (truncatedEnergy N)
      (truncatedEnergy_isPositive N) α hα).re_inner_nonneg_right _)

private theorem regularizedMass_le_norm_sq
    (S : H →L[ℂ] H) (hS : S.IsPositive) (α : ℝ) (hα : 0 < α) (r : H) :
    regularizedMass S α r ≤ ‖r‖ ^ 2 := by
  have hinner : (inner ℂ r (positiveResolvent S α r)).re ≤
      ‖r‖ ^ 2 * (1 / α) := by
    calc
      _ ≤ ‖inner ℂ r (positiveResolvent S α r)‖ := Complex.re_le_norm _
      _ ≤ ‖r‖ * ‖positiveResolvent S α r‖ := norm_inner_le_norm _ _
      _ ≤ ‖r‖ * (‖positiveResolvent S α‖ * ‖r‖) :=
        mul_le_mul_of_nonneg_left ((positiveResolvent S α).le_opNorm r) (norm_nonneg _)
      _ ≤ ‖r‖ * ((1 / α) * ‖r‖) := by
        gcongr
        exact positiveResolvent_norm_le S hS α hα
      _ = _ := by ring
  calc
    _ ≤ α * (‖r‖ ^ 2 * (1 / α)) := mul_le_mul_of_nonneg_left hinner hα.le
    _ = _ := by field_simp

/-- The original reference has squared norm one half, bounding its actual directional mass. -/
theorem sourceMass_le_half (α : ℝ) (hα : 0 < α) : sourceMass α ≤ 1 / 2 := by
  have h := regularizedMass_le_norm_sq sourceEnergy sourceEnergy_isPositive α hα referenceVector
  simpa only [referenceVector_norm_sq, sourceMass, truncatedMass] using h

/-- The identical reference normalization bounds each actual truncated directional mass. -/
theorem truncatedMass_le_half (N α : ℝ) (hα : 0 < α) : truncatedMass N α ≤ 1 / 2 := by
  have h := regularizedMass_le_norm_sq (truncatedEnergy N)
    (truncatedEnergy_isPositive N) α hα referenceVector
  simpa only [referenceVector_norm_sq, sourceMass, truncatedMass] using h

/-- Uniform source-based error, with one inverse power of the parameter. -/
theorem mass_sub_abs_le (N : ℝ) (hN : 2 ≤ N) (α : ℝ) (hα : 0 < α) :
    |sourceMass α - truncatedMass N α| ≤
      2 * kernelMass * derivativeBudget * Real.exp ((1 - N) / 2) / α := by
  have h := reference_regularizedMass_sub_abs_le sourceEnergy (truncatedEnergy N)
    sourceEnergy_isPositive (truncatedEnergy_isPositive N) α hα
  calc
    _ ≤ ‖sourceEnergy - truncatedEnergy N‖ / (2 * α) := h
    _ ≤ (4 * kernelMass * derivativeBudget * Real.exp ((1 - N) / 2)) / (2 * α) :=
      div_le_div_of_nonneg_right (energy_norm_sub_le N hN) (by positivity)
    _ = _ := by ring

/-- The joint cutoff produces a vanishing error, without interchanging limits. -/
theorem diagonal_mass_sub_abs_le (α : ℝ) (hα : 0 < α) :
    |sourceMass α - truncatedMass (diagonalCutoff α) α| ≤
      2 * kernelMass * derivativeBudget * α := by
  have h := reference_regularizedMass_sub_abs_le sourceEnergy
    (truncatedEnergy (diagonalCutoff α)) sourceEnergy_isPositive
    (truncatedEnergy_isPositive (diagonalCutoff α)) α hα
  calc
    _ ≤ ‖sourceEnergy - truncatedEnergy (diagonalCutoff α)‖ / (2 * α) := h
    _ ≤ (4 * kernelMass * derivativeBudget * α ^ 2) / (2 * α) :=
      div_le_div_of_nonneg_right (diagonal_energy_error_le α hα) (by positivity)
    _ = _ := by field_simp; ring


/-- Only the actual-versus-truncated directional error is proved to vanish. -/
theorem diagonal_mass_sub_abs_tendsto_zero :
    Tendsto (fun α : ℝ => |sourceMass α - truncatedMass (diagonalCutoff α) α|)
      (𝓝[>] (0 : ℝ)) (𝓝 0) := by
  apply squeeze_zero' (Filter.Eventually.of_forall (fun _ => abs_nonneg _))
  · filter_upwards [self_mem_nhdsWithin] with α hα
    exact diagonal_mass_sub_abs_le α hα
  · have h : Tendsto (fun α : ℝ => 2 * kernelMass * derivativeBudget * α)
        (𝓝[>] (0 : ℝ)) (𝓝 (2 * kernelMass * derivativeBudget * 0)) :=
      tendsto_const_nhds.mul (tendsto_id.mono_left nhdsWithin_le_nhds)
    simpa only [mul_zero] using h

/-- The signed approximation error also vanishes along the same prescribed joint cutoff. -/
theorem diagonal_mass_sub_tendsto_zero :
    Tendsto (fun α : ℝ => sourceMass α - truncatedMass (diagonalCutoff α) α)
      (𝓝[>] (0 : ℝ)) (𝓝 0) := by
  apply tendsto_zero_iff_norm_tendsto_zero.mpr
  simpa only [Real.norm_eq_abs] using diagonal_mass_sub_abs_tendsto_zero

end
end FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation
namespace FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open HalfLineExponential HalfLineOperator FixedKernelAdjointExponential
open PositiveResolventKernel SourceResolventTruncation

/-- An actual adjoint-kernel vector contributes its full reference overlap to every source mass. -/
theorem sourceMass_kernel_overlap_le (u : H) (hu : u ≠ 0)
    (hTu : sourceOperator.adjoint u = 0) (α : ℝ) (hα : 0 < α) :
    ‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2 ≤ sourceMass α := by
  apply kernel_witness_regularizedMass_le sourceEnergy sourceEnergy_isPositive α hα
    referenceVector u hu
  rw [sourceEnergy_apply, hTu, map_zero]

/-- Every original occurrence to the right gives the exact positive overlap floor, at all rates. -/
theorem occurrence_sourceMass_floor (o : ZeroObject.ZeroOccurrence)
    (ho : 0 < (ZeroObject.shiftedValue o).re) (α : ℝ) (hα : 0 < α) :
    2 * (ZeroObject.shiftedValue o).re / ‖1 + ZeroObject.shiftedValue o‖ ^ 2 ≤ sourceMass α := by
  obtain ⟨u, hu, hTu, hcoefficient, _⟩ := occurrence_reference_visible_kernel o ho
  rw [← hcoefficient]
  exact sourceMass_kernel_overlap_le u hu hTu α hα

/-- An actual off-line zero to the right supplies one strictly positive floor for all parameters. -/
theorem nontrivial_sourceMass_uniform_positive_floor (ρ : ℂ)
    (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ) (hρre : 1 / 2 < ρ.re) :
    ∃ c : ℝ, 0 < c ∧ ∀ α : ℝ, 0 < α → c ≤ sourceMass α := by
  obtain ⟨u, hu, hTu, hc⟩ := nontrivial_reference_visible_kernel ρ hρ hρre
  refine ⟨‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2, hc, ?_⟩
  intro α hα
  exact sourceMass_kernel_overlap_le u hu hTu α hα

end FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor


set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.sourceMass_kernel_overlap_le
#print FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.sourceMass_kernel_overlap_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.sourceMass_kernel_overlap_le
#check @FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.occurrence_sourceMass_floor
#print FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.occurrence_sourceMass_floor
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.occurrence_sourceMass_floor
#check @FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.nontrivial_sourceMass_uniform_positive_floor
#print FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.nontrivial_sourceMass_uniform_positive_floor
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.nontrivial_sourceMass_uniform_positive_floor
```
