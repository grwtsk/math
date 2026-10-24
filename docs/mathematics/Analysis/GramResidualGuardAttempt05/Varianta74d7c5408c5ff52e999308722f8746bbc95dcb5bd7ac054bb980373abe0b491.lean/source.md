# Complete source: GRWTSK.Analysis.GramResidualGuardAttempt05.Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f21b4b1e8522af767272ee9515d5195fb6a388d` · SHA-256 `57085c5b07f4f528a71b0182278b0ecd5b20b13854264aa3ebcbdcf79fa8b766`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.QuadraticDifferenceAbsLe.Variantc9f49b253eac29867932e1e418701f90f7a75c528b5d3a4334fad4ac10c7593e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c9f49b253eac29867932e1e418701f90f7a75c528b5d3a4334fad4ac10c7593e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.QuadraticDifferenceAbsLe.Variantc9f49b253eac29867932e1e418701f90f7a75c528b5d3a4334fad4ac10c7593e","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"c9f49b253eac29867932e1e418701f90f7a75c528b5d3a4334fad4ac10c7593e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass17/residual_guard/GramResidualGuard-attempt05.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.InnerProductSpace.Positive
import Mathlib.Analysis.InnerProductSpace.Rayleigh
import Mathlib.Analysis.Matrix.Spectrum
import Mathlib.Topology.MetricSpace.HausdorffDistance

/-! Fixed-source Gram residual guard for #246.
Direction grwtsk contributors; scratch proof construction OpenAI Codex.
The existing real changing-state error theorem is retained as prior work.
No actual xi/Weil positive instance or arithmetic residual witness is asserted. -/

namespace GRWTSK.Analysis.QuadraticDifferenceAbsLe.Variantc9f49b253eac29867932e1e418701f90f7a75c528b5d3a4334fad4ac10c7593e

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.GramResidualGuard
open scoped InnerProductSpace
open RCLike Metric
variable {𝕜 : Type*} [RCLike 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]

private theorem quadratic_difference_abs_le (H P : E →L[𝕜] E) (u : E) :
    |H.reApplyInnerSelf u-P.reApplyInnerSelf u| ≤ ‖H-P‖*‖u‖^2 := by
  have he : H.reApplyInnerSelf u-P.reApplyInnerSelf u =
      re (inner 𝕜 ((H-P) u) u) := by
    simp [ContinuousLinearMap.reApplyInnerSelf,inner_sub_left]
  rw [he]
  calc
    |re (inner 𝕜 ((H-P) u) u)| ≤ ‖inner 𝕜 ((H-P) u) u‖ := abs_re_le_norm _
    _ ≤ ‖(H-P) u‖*‖u‖ := norm_inner_le_norm _ _
    _ ≤ (‖H-P‖*‖u‖)*‖u‖ := mul_le_mul_of_nonneg_right ((H-P).le_opNorm u) (norm_nonneg _)
    _ = _ := by ring

/-- A positive approximant supplies only a norm-scaled lower bound on the unchanged operator. -/
theorem positive_approximation_lower (H P : E →L[𝕜] E) (hP : P.IsPositive) (u : E) :
    -‖H-P‖*‖u‖^2 ≤ H.reApplyInnerSelf u := by
  have h := (abs_le.mp (quadratic_difference_abs_le H P u)).1
  have hp := hP.re_inner_nonneg_left u
  change 0 ≤ P.reApplyInnerSelf u at hp
  linarith

/-- A separate coercive margin offsets the complete operator residual. -/
theorem coercive_approximation_lower (H P : E →L[𝕜] E) (c : ℝ)
    (hmargin : ∀ u, c*‖u‖^2 ≤ P.reApplyInnerSelf u) (u : E) :
    (c-‖H-P‖)*‖u‖^2 ≤ H.reApplyInnerSelf u := by
  have h := (abs_le.mp (quadratic_difference_abs_le H P u)).1
  have hp := hmargin u
  nlinarith

/-- Hermitian/symmetric source and an independently established margin yield exact positivity. -/
theorem positive_of_coercive_residual (H P : E →L[𝕜] E) (hH : H.IsSymmetric) (c : ℝ)
    (hmargin : ∀ u, c*‖u‖^2 ≤ P.reApplyInnerSelf u) (hresidual : ‖H-P‖ ≤ c) :
    H.IsPositive := by
  refine ⟨hH,fun u => ?_⟩
  exact (mul_nonneg (sub_nonneg.mpr hresidual) (sq_nonneg _)).trans
    (coercive_approximation_lower H P c hmargin u)

/-- The source operator H is fixed outside every precision/approximant quantifier. -/
theorem positive_of_arbitrary_precision (H : E →L[𝕜] E) (hH : H.IsSymmetric)
    (happrox : ∀ ε : ℝ, 0 < ε → ∃ P : E →L[𝕜] E, P.IsPositive ∧ ‖H-P‖ ≤ ε) :
    H.IsPositive := by
  refine ⟨hH,fun u => ?_⟩
  by_cases hu : u=0
  · simp [hu,ContinuousLinearMap.reApplyInnerSelf]
  have hn : 0 < ‖u‖^2 := sq_pos_of_pos (norm_pos_iff.mpr hu)
  apply le_of_forall_pos_le_add
  intro ε hε
  obtain ⟨P,hP,hHP⟩ := happrox (ε/‖u‖^2) (div_pos hε hn)
  have hl := positive_approximation_lower H P hP u
  have hb : ‖H-P‖*‖u‖^2 ≤ ε := by
    calc
      _ ≤ (ε/‖u‖^2)*‖u‖^2 := mul_le_mul_of_nonneg_right hHP hn.le
      _ = ε := div_mul_cancel₀ _ hn.ne'
  linarith

section Gram
variable {F : Type*} [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]
variable [CompleteSpace E] [CompleteSpace F]

/-- Exact rectangular Gram factorization retains its residual's norm and the actual state. -/
theorem gram_residual_lower (H R : E →L[𝕜] E) (V : E →L[𝕜] F)
    (hfactor : H=V.adjoint.comp V+R) (u : E) :
    -‖R‖*‖u‖^2 ≤ H.reApplyInnerSelf u := by
  have h := positive_approximation_lower H (V.adjoint.comp V)
    (ContinuousLinearMap.isPositive_adjoint_comp_self V) u
  have he : H-V.adjoint.comp V=R := by rw [hfactor]; abel
  simpa only [he] using h

/-- Fixed-source Gram approximants of arbitrarily small residual imply positivity. -/
theorem positive_of_arbitrary_gram_precision (H : E →L[𝕜] E) (hH : H.IsSymmetric)
    (happrox : ∀ ε : ℝ, 0 < ε → ∃ V : E →L[𝕜] F, ‖H-V.adjoint.comp V‖ ≤ ε) :
    H.IsPositive := by
  apply positive_of_arbitrary_precision H hH
  intro ε hε
  obtain ⟨V,hV⟩ := happrox ε hε
  exact ⟨V.adjoint.comp V,ContinuousLinearMap.isPositive_adjoint_comp_self V,hV⟩
end Gram

/-- Actual operator-norm distance to the positive cone. -/
def positiveDistance (H : E →L[𝕜] E) : ℝ :=
  Metric.infDist H {P : E →L[𝕜] E | P.IsPositive}

private theorem negative_rayleigh_le_norm (H P : E →L[𝕜] E) (hP : P.IsPositive) (u : E) :
    -H.rayleighQuotient u ≤ ‖H-P‖ := by
  have hd := (H-P).rayleighQuotient_le_norm u
  have he : (H-P).rayleighQuotient u=H.rayleighQuotient u-P.rayleighQuotient u := by
    simp [ContinuousLinearMap.rayleighQuotient,ContinuousLinearMap.reApplyInnerSelf,
      inner_sub_left,sub_div]
  rw [he] at hd
  have hp : 0 ≤ P.rayleighQuotient u := div_nonneg (hP.re_inner_nonneg_left u) (sq_nonneg _)
  have hl := (abs_le.mp hd).1
  linarith

/-- Every negative Rayleigh value gives a rigorous lower half of the distance-to-PSD formula. -/
theorem negative_rayleigh_distance_lower (H : E →L[𝕜] E) (u : E) :
    max 0 (-H.rayleighQuotient u) ≤ positiveDistance H := by
  unfold positiveDistance
  apply (Metric.le_infDist (s:={P : E →L[𝕜] E | P.IsPositive})
    ⟨0,ContinuousLinearMap.isPositive_zero⟩).mpr
  intro P hP
  rw [dist_eq_norm]
  exact max_le (norm_nonneg _) (negative_rayleigh_le_norm H P hP u)

/-- Distance zero means positivity only for the fixed Hermitian/symmetric source. -/
theorem positiveDistance_eq_zero_iff (H : E →L[𝕜] E) (hH : H.IsSymmetric) :
    positiveDistance H=0 ↔ H.IsPositive := by
  constructor
  · intro hdist
    apply positive_of_arbitrary_precision H hH
    intro ε hε
    have hd : Metric.infDist H {P : E →L[𝕜] E | P.IsPositive} < ε := by
      change positiveDistance H < ε
      simpa only [hdist] using hε
    obtain ⟨P,hP,hclose⟩ := (Metric.infDist_lt_iff
      ⟨0,ContinuousLinearMap.isPositive_zero⟩).mp hd
    exact ⟨P,hP,by simpa only [dist_eq_norm] using hclose.le⟩
  · intro hpositive
    exact Metric.infDist_zero_of_mem hpositive

/-- A normalized actual eigenvector specializes the lower bound to its real eigenvalue. -/
theorem negative_eigenvalue_distance_lower (H : E →L[𝕜] E) (u : E) (eigenvalue : ℝ)
    (hunit : ‖u‖=1) (heigen : H u=(eigenvalue:𝕜) • u) :
    max 0 (-eigenvalue) ≤ positiveDistance H := by
  have he : H.rayleighQuotient u=eigenvalue := by
    simp [ContinuousLinearMap.rayleighQuotient,ContinuousLinearMap.reApplyInnerSelf,
      heigen,inner_smul_left,inner_self_eq_norm_sq_to_K,hunit]
  simpa only [he] using negative_rayleigh_distance_lower H u

section Matrices
open scoped ComplexOrder
variable {n m : Type*} [Fintype n] [DecidableEq n] [Fintype m]

/-- Euclidean operator norm, rather than the unrelated default entrywise matrix norm. -/
def matrixOperator (H : Matrix n n 𝕜) : EuclideanSpace 𝕜 n →L[𝕜] EuclideanSpace 𝕜 n :=
  H.toEuclideanLin.toContinuousLinearMap

theorem matrixOperator_positive_iff (H : Matrix n n 𝕜) :
    (matrixOperator H).IsPositive ↔ H.PosSemidef := by
  exact Matrix.isPositive_toEuclideanLin_iff (A := H)

/-- Direct finite Hermitian adapter with H independent of all precision/factor choices. -/
theorem matrix_posSemidef_of_arbitrary_gram_precision (H : Matrix n n 𝕜)
    (hH : H.IsHermitian)
    (happrox : ∀ ε : ℝ, 0 < ε → ∃ V : Matrix m n 𝕜,
      ‖matrixOperator H-matrixOperator (V.conjTranspose*V)‖ ≤ ε) : H.PosSemidef := by
  apply (matrixOperator_positive_iff H).mp
  apply positive_of_arbitrary_precision (matrixOperator H)
    (Matrix.isSymmetric_toEuclideanLin_iff.mpr hH)
  intro ε hε
  obtain ⟨V,hV⟩ := happrox ε hε
  exact ⟨matrixOperator (V.conjTranspose*V),
    (matrixOperator_positive_iff _).mpr (Matrix.posSemidef_conjTranspose_mul_self V),hV⟩
/-- Each actual finite Hermitian eigenvalue, including a least one, bounds the operator-cone distance. -/
theorem matrix_eigenvalue_distance_lower (H : Matrix n n 𝕜) (hH : H.IsHermitian) (i : n) :
    max 0 (-hH.eigenvalues i) ≤ positiveDistance (matrixOperator H) := by
  apply negative_eigenvalue_distance_lower (matrixOperator H) (hH.eigenvectorBasis i)
    (hH.eigenvalues i) (hH.eigenvectorBasis.orthonormal.1 i)
  apply PiLp.ext
  intro j
  simpa [matrixOperator,Matrix.toLpLin_apply,RCLike.real_smul_eq_coe_smul] using
    congrFun (hH.mulVec_eigenvectorBasis i) j
end Matrices
end ContinuousResearch.GramResidualGuard
```
