import FormalResearch.RiemannHypothesis.Conversation.BranchNativeTranslationGap
import Mathlib.Analysis.InnerProductSpace.Projection.Basic
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Analysis.InnerProductSpace.Projection.FiniteDimensional

/-!
# Native orthogonal compression and its exact readout error

Batch 36, native-gap.md, equations (10) and (11). This uses the genuine
orthogonal projection on the real L² carrier. The arithmetic coefficient
cutoff is a different operator. A lower energy bound supplies no arithmetic
upper energy budget.
Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.Conversation.BranchOrthogonalCompression
open BranchDyadicGap BranchNativeTranslationGap

variable (U : Submodule ℝ SourceSpace) [U.HasOrthogonalProjection]

/-- Native log-two translation followed by the actual Hilbert orthogonal projection. -/
def compressedTranslation (f : SourceSpace) : SourceSpace :=
  U.starProjection (translation (Real.log 2) f)

/-- The weighted difference using orthogonal compression, rather than a coefficient cutoff. -/
def compressedDifference (f : SourceSpace) : SourceSpace :=
  f - theta • compressedTranslation U f

theorem compressed_translation_norm_le (f : SourceSpace) :
    ‖compressedTranslation U f‖ ≤ ‖f‖ := by
  exact (U.norm_starProjection_apply_le _).trans_eq (translation_norm _ _)

theorem compressed_lower_norm (f : SourceSpace) :
    (1 - theta) * ‖f‖ ≤ ‖compressedDifference U f‖ := by
  have h := norm_sub_norm_le f (theta • compressedTranslation U f)
  rw [norm_smul, Real.norm_eq_abs, abs_of_pos theta_positive] at h
  have hc := mul_le_mul_of_nonneg_left
    (compressed_translation_norm_le U f) theta_positive.le
  change _ ≤ ‖f - theta • compressedTranslation U f‖
  nlinarith

theorem compressed_upper_norm (f : SourceSpace) :
    ‖compressedDifference U f‖ ≤ (1 + theta) * ‖f‖ := by
  have h := norm_sub_le f (theta • compressedTranslation U f)
  rw [norm_smul, Real.norm_eq_abs, abs_of_pos theta_positive] at h
  have hc := mul_le_mul_of_nonneg_left
    (compressed_translation_norm_le U f) theta_positive.le
  change ‖f - theta • compressedTranslation U f‖ ≤ _
  nlinarith

theorem compressed_energy_gap (f : SourceSpace) :
    gap * ‖f‖ ^ 2 ≤ ‖compressedDifference U f‖ ^ 2 := by
  have h := compressed_lower_norm U f
  have ht := sub_pos.mpr theta_lt_one
  have hf := norm_nonneg f
  have hd := norm_nonneg (compressedDifference U f)
  rw [← gap_identity]
  have hsq := (sq_le_sq₀ (mul_nonneg ht.le hf) hd).2 h
  simpa only [mul_pow] using hsq

theorem compressed_kernel_zero (f : SourceSpace)
    (hf : compressedDifference U f = 0) : f = 0 := by
  have h := compressed_lower_norm U f
  rw [hf, norm_zero] at h
  have ht := sub_pos.mpr theta_lt_one
  have hn := norm_nonneg f
  apply norm_eq_zero.mp
  nlinarith

theorem compressed_translation_mem (f : SourceSpace) :
    compressedTranslation U f ∈ U :=
  U.starProjection_apply_mem _

theorem compressed_difference_mem (f : SourceSpace) (hf : f ∈ U) :
    compressedDifference U f ∈ U :=
  U.sub_mem hf (U.smul_mem theta (compressed_translation_mem U f))

theorem exact_readout_defect (w f : SourceSpace) :
    inner ℝ w (primeTwoDifference f) - inner ℝ w (compressedDifference U f) =
      -theta * inner ℝ (w - U.starProjection w) (translation (Real.log 2) f) := by
  have hp := U.inner_starProjection_left_eq_right w (translation (Real.log 2) f)
  simp only [primeTwoDifference, difference, compressedDifference, compressedTranslation,
    inner_sub_right, real_inner_smul_right, inner_sub_left]
  rw [← hp]
  ring

theorem readout_exact_of_mem (w f : SourceSpace) (hw : w ∈ U) :
    inner ℝ w (primeTwoDifference f) = inner ℝ w (compressedDifference U f) := by
  have h := exact_readout_defect U w f
  rw [U.starProjection_eq_self_iff.mpr hw, sub_self, inner_zero_left, mul_zero] at h
  exact sub_eq_zero.mp h

theorem readout_defect_bound (w f : SourceSpace) :
    |inner ℝ w (primeTwoDifference f) - inner ℝ w (compressedDifference U f)| ≤
      theta * ‖w - U.starProjection w‖ * ‖f‖ := by
  rw [exact_readout_defect, abs_mul, abs_neg, abs_of_pos theta_positive]
  have h := norm_inner_le_norm (𝕜 := ℝ)
    (w - U.starProjection w) (translation (Real.log 2) f)
  rw [Real.norm_eq_abs, translation_norm] at h
  nlinarith [mul_le_mul_of_nonneg_left h theta_positive.le]

/-- The continuous operator of the original, uncompressed native weighted difference. -/
def nativeDifferenceOperator : SourceSpace →L[ℝ] SourceSpace := 1 - weightedTranslation

/-- The native positive Laplacian D†D, on the genuine real L² carrier. -/
def nativeLaplacian : SourceSpace →L[ℝ] SourceSpace :=
  nativeDifferenceOperator.adjoint.comp nativeDifferenceOperator

theorem native_difference_operator_apply (f : SourceSpace) :
    nativeDifferenceOperator f = primeTwoDifference f := rfl

theorem native_laplacian_self_adjoint : IsSelfAdjoint nativeLaplacian := by
  change IsSelfAdjoint (star nativeDifferenceOperator * nativeDifferenceOperator)
  exact IsSelfAdjoint.star_mul_self _

theorem native_laplacian_energy (f : SourceSpace) :
    inner ℝ f (nativeLaplacian f) = ‖primeTwoDifference f‖ ^ 2 := by
  simpa only [nativeLaplacian, native_difference_operator_apply, RCLike.re_to_real] using
    (nativeDifferenceOperator.apply_norm_sq_eq_inner_adjoint_right f).symm

theorem native_laplacian_gap (f : SourceSpace) :
    gap * ‖f‖ ^ 2 ≤ inner ℝ f (nativeLaplacian f) := by
  rw [native_laplacian_energy]
  exact native_gap f

theorem native_laplacian_kernel_zero (f : SourceSpace) (hf : nativeLaplacian f = 0) :
    f = 0 := by
  have h := native_laplacian_energy f
  rw [hf, inner_zero_right] at h
  have hn : ‖primeTwoDifference f‖ = 0 := by
    nlinarith [norm_nonneg (primeTwoDifference f)]
  exact native_kernel_zero f (norm_eq_zero.mp hn)

theorem native_laplacian_kernel : nativeLaplacian.ker = ⊥ := by
  ext f
  simp only [LinearMap.mem_ker, Submodule.mem_bot]
  exact ⟨native_laplacian_kernel_zero f, fun h ↦ by rw [h]; exact map_zero _⟩

theorem native_harmonic_projection_zero : nativeLaplacian.ker.starProjection = 0 := by
  apply ContinuousLinearMap.ext
  intro f
  change nativeLaplacian.ker.starProjection f = 0
  apply native_laplacian_kernel_zero
  exact LinearMap.mem_ker.mp (nativeLaplacian.ker.starProjection_apply_mem f)

theorem native_readout_energy_bound (L : SourceSpace →L[ℝ] ℝ) (f : SourceSpace) :
    |L f| ≤ (‖L‖ / (1 - theta)) * Real.sqrt (inner ℝ f (nativeLaplacian f)) := by
  have ht := sub_pos.mpr theta_lt_one
  have hf : ‖f‖ ≤ ‖primeTwoDifference f‖ / (1 - theta) := by
    apply (le_div_iff₀ ht).2
    simpa only [mul_comm] using native_lower_norm f
  have h := (L.le_opNorm f).trans (mul_le_mul_of_nonneg_left hf (norm_nonneg L))
  rw [native_laplacian_energy, Real.sqrt_sq (norm_nonneg _)]
  simpa only [Real.norm_eq_abs, mul_div_assoc, div_mul_eq_mul_div] using h

/-- The actual finite source-vector span; no orthogonality of its generators is assumed. -/
abbrev finiteSourceSpan {ι : Type*} (v : ι → SourceSpace) :
    Submodule ℝ SourceSpace := Submodule.span ℝ (Set.range v)

theorem finite_span_has_orthogonal_projection {ι : Type*} [Finite ι]
    (v : ι → SourceSpace) : (finiteSourceSpan v).HasOrthogonalProjection := by
  let : FiniteDimensional ℝ (finiteSourceSpan v) :=
    FiniteDimensional.span_of_finite ℝ (Set.finite_range v)
  infer_instance

/-- Orthogonal compression on the finite source span, with its projection existence proved. -/
def finiteCompressedDifference {ι : Type*} [Finite ι]
    (v : ι → SourceSpace) (f : SourceSpace) : SourceSpace := by
  letI := finite_span_has_orthogonal_projection v
  exact compressedDifference (finiteSourceSpan v) f

theorem finite_compressed_lower_norm {ι : Type*} [Finite ι]
    (v : ι → SourceSpace) (f : SourceSpace) :
    (1 - theta) * ‖f‖ ≤ ‖finiteCompressedDifference v f‖ := by
  let := finite_span_has_orthogonal_projection v
  exact compressed_lower_norm (finiteSourceSpan v) f

theorem finite_compressed_energy_gap {ι : Type*} [Finite ι]
    (v : ι → SourceSpace) (f : SourceSpace) :
    gap * ‖f‖ ^ 2 ≤ ‖finiteCompressedDifference v f‖ ^ 2 := by
  let := finite_span_has_orthogonal_projection v
  exact compressed_energy_gap (finiteSourceSpan v) f

theorem finite_readout_exact {ι : Type*} [Finite ι]
    (v : ι → SourceSpace) (i : ι) (f : SourceSpace) :
    inner ℝ (v i) (primeTwoDifference f) =
      inner ℝ (v i) (finiteCompressedDifference v f) := by
  let := finite_span_has_orthogonal_projection v
  apply readout_exact_of_mem (finiteSourceSpan v)
  exact Submodule.subset_span (Set.mem_range_self i)

end FormalResearch.RiemannHypothesis.Conversation.BranchOrthogonalCompression
