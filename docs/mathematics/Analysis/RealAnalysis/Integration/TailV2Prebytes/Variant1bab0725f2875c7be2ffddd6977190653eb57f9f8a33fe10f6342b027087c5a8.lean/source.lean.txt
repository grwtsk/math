-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.NormalizedPrimitiveBump.Variantd21b6a0f27ef0bdcc91bbaf18446617974cbb9636adac5cda60db9b7130089d5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d21b6a0f27ef0bdcc91bbaf18446617974cbb9636adac5cda60db9b7130089d5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.NormalizedPrimitiveBump.Variantd21b6a0f27ef0bdcc91bbaf18446617974cbb9636adac5cda60db9b7130089d5","mathematical_subject":"Analysis.Integration","original_sha256":"d21b6a0f27ef0bdcc91bbaf18446617974cbb9636adac5cda60db9b7130089d5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle6/causal-energy/tail-v2-prebytes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.GevreyPolynomial
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment
import Mathlib.MeasureTheory.Function.L2Space

/-!
# The actual compact pole primitive and causal source tail

The independently defined causal integral is evaluated for the unchanged,
zero-extended normalized source at every positive scale. The primitive and
both ordinary bump derivatives retain their literal seams. No raw interior
pole polynomial is extended outside its interval, no C⁴ assumption is used,
and no arithmetic or Riemann Hypothesis estimate is asserted.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.NormalizedPrimitiveBump.Variantd21b6a0f27ef0bdcc91bbaf18446617974cbb9636adac5cda60db9b7130089d5

namespace FormalResearch.RiemannHypothesis.SourceCausalEnergy

open MeasureTheory Set
open SourcePairing GevreyPolynomial
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment

noncomputable section

/-- The actual dilated bump with the original fixed source normalization. -/
def normalizedPrimitiveBump (A x : ℝ) : ℝ :=
  scaledBump A x / Real.sqrt (sourceNormalization A)

/-- A compact primitive for the negative exponentially weighted actual source. -/
def compactPolePrimitive (A x : ℝ) : ℝ :=
  Real.exp (-x / 2) *
    (deriv (normalizedPrimitiveBump A) x + normalizedPrimitiveBump A x / 2)

/-- The independent causal half-line integral, with its literal closed endpoint. -/
def causalSourceTail (A s : ℝ) : ℝ :=
  Real.exp (s / 2) * ∫ u in Ici s,
    Real.exp (-u / 2) * normalizedTest explicitSecondDerivative A u

/-- Fixed normalization preserves global C², including the moving source seams. -/
theorem normalizedPrimitiveBump_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 2 (normalizedPrimitiveBump A) :=
  (scaledBump_contDiff hA).div_const _

/-- The normalized bump's actual ordinary first derivative. -/
theorem normalizedPrimitiveBump_hasDerivAt {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasDerivAt (normalizedPrimitiveBump A)
      (firstDerivative A x / Real.sqrt (sourceNormalization A)) x :=
  (scaledBump_hasDerivAt hA x).div_const _

/-- The derivative function retains the first derivative's explicit zero extension. -/
theorem normalizedPrimitiveBump_deriv {A : ℝ} (hA : 0 < A) :
    deriv (normalizedPrimitiveBump A) =
      fun x ↦ firstDerivative A x / Real.sqrt (sourceNormalization A) :=
  funext fun x ↦ (normalizedPrimitiveBump_hasDerivAt hA x).deriv

/-- The derivative's ordinary derivative is the actual normalized second derivative. -/
theorem normalizedPrimitiveBump_deriv_hasDerivAt {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasDerivAt (deriv (normalizedPrimitiveBump A))
      (explicitSecondDerivative A x / Real.sqrt (sourceNormalization A)) x := by
  rw [normalizedPrimitiveBump_deriv hA]
  exact (firstDerivative_hasDerivAt hA x).div_const _

/-- The bump's second ordinary derivative produces the unchanged source test. -/
theorem normalizedPrimitiveBump_second_sub_quarter {A : ℝ} (hA : 0 < A) (x : ℝ) :
    deriv (deriv (normalizedPrimitiveBump A)) x - normalizedPrimitiveBump A x / 4 =
      normalizedTest explicitSecondDerivative A x := by
  rw [(normalizedPrimitiveBump_deriv_hasDerivAt hA x).deriv]
  dsimp [normalizedPrimitiveBump, normalizedTest, dilationTest]
  ring

/-- The normalized bump equals its raw interior expression only inside the source interval. -/
theorem normalizedPrimitiveBump_eq_interior {A : ℝ} (hA : 0 < A) {x : ℝ}
    (hx : x ∈ Icc (-A) A) :
    normalizedPrimitiveBump A x = bumpInterior A x / Real.sqrt (sourceNormalization A) := by
  rw [normalizedPrimitiveBump, scaledBump_eq_indicator A hA, indicator_of_mem hx]

/-- The normalized derivative's interior adapter preserves the same interval guard. -/
theorem normalizedPrimitiveBump_deriv_eq_interior {A : ℝ} (hA : 0 < A) {x : ℝ}
    (hx : x ∈ Icc (-A) A) :
    deriv (normalizedPrimitiveBump A) x =
      firstInterior A x / Real.sqrt (sourceNormalization A) := by
  simp only [normalizedPrimitiveBump_deriv hA, firstDerivative, indicator_of_mem hx]

/-- The normalized bump vanishes at both literal closed support endpoints. -/
theorem normalizedPrimitiveBump_endpoints {A : ℝ} (hA : 0 < A) :
    normalizedPrimitiveBump A (-A) = 0 ∧ normalizedPrimitiveBump A A = 0 := by
  rw [normalizedPrimitiveBump_eq_interior hA (by constructor <;> linarith),
    normalizedPrimitiveBump_eq_interior hA (by constructor <;> linarith),
    (bumpInterior_endpoints A hA.ne').1, (bumpInterior_endpoints A hA.ne').2]
  simp

/-- Both actual first derivative traces are zero at the closed support endpoints. -/
theorem normalizedPrimitiveBump_deriv_endpoints {A : ℝ} (hA : 0 < A) :
    deriv (normalizedPrimitiveBump A) (-A) = 0 ∧
      deriv (normalizedPrimitiveBump A) A = 0 := by
  rw [normalizedPrimitiveBump_deriv_eq_interior hA (by constructor <;> linarith),
    normalizedPrimitiveBump_deriv_eq_interior hA (by constructor <;> linarith),
    (firstInterior_endpoints A hA.ne').1, (firstInterior_endpoints A hA.ne').2]
  simp

/-- The bump vanishes outside the actual closed support interval. -/
theorem normalizedPrimitiveBump_zero_of_not_mem {A : ℝ} (hA : 0 < A) {x : ℝ}
    (hx : x ∉ Icc (-A) A) : normalizedPrimitiveBump A x = 0 := by
  rw [normalizedPrimitiveBump, scaledBump_eq_indicator A hA, indicator_of_notMem hx]
  simp

/-- The derivative vanishes outside the same actual interval. -/
theorem normalizedPrimitiveBump_deriv_zero_of_not_mem {A : ℝ} (hA : 0 < A) {x : ℝ}
    (hx : x ∉ Icc (-A) A) : deriv (normalizedPrimitiveBump A) x = 0 := by
  simp only [normalizedPrimitiveBump_deriv hA, firstDerivative, indicator_of_notMem hx]
  simp

/-- The normalized bump has genuinely compact support. -/
theorem normalizedPrimitiveBump_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (normalizedPrimitiveBump A) := by
  refine exists_compact_iff_hasCompactSupport.mp ⟨Icc (-A) A, isCompact_Icc, ?_⟩
  intro x hx
  exact normalizedPrimitiveBump_zero_of_not_mem hA hx

/-- Ordinary derivative support remains compact; no boundary distributions are introduced. -/
theorem normalizedPrimitiveBump_deriv_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (deriv (normalizedPrimitiveBump A)) :=
  (normalizedPrimitiveBump_hasCompactSupport hA).deriv

/-- The compact primitive is the raw pole expression only on its guarded interval. -/
theorem compactPolePrimitive_eq_polePrimitive {A : ℝ} (hA : 0 < A) {x : ℝ}
    (hx : x ∈ Icc (-A) A) :
    compactPolePrimitive A x =
      polePrimitive A (-1 / 2) x / Real.sqrt (sourceNormalization A) := by
  rw [compactPolePrimitive, normalizedPrimitiveBump_eq_interior hA hx,
    normalizedPrimitiveBump_deriv_eq_interior hA hx]
  dsimp [polePrimitive]
  rw [show (-1 / 2 : ℝ) * x = -x / 2 by ring]
  ring

/-- The primitive's derivative is the actual negative-pole weighted source everywhere. -/
theorem compactPolePrimitive_hasDerivAt {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasDerivAt (compactPolePrimitive A)
      (Real.exp (-x / 2) * normalizedTest explicitSecondDerivative A x) x := by
  have hb := normalizedPrimitiveBump_hasDerivAt hA x
  have hb' := normalizedPrimitiveBump_deriv_hasDerivAt hA x
  have he := (((hasDerivAt_id x).neg).div_const 2).exp
  have hd := he.mul (hb'.add (hb.div_const 2))
  apply hd.congr_deriv
  rw [← normalizedPrimitiveBump_second_sub_quarter hA x,
    (normalizedPrimitiveBump_deriv_hasDerivAt hA x).deriv,
    ← (normalizedPrimitiveBump_hasDerivAt hA x).deriv]
  dsimp only [id_eq, Pi.add_apply, Pi.neg_apply]
  ring

/-- The global derivative equality retains both support seams. -/
theorem compactPolePrimitive_deriv {A : ℝ} (hA : 0 < A) :
    deriv (compactPolePrimitive A) =
      fun x ↦ Real.exp (-x / 2) * normalizedTest explicitSecondDerivative A x :=
  funext fun x ↦ (compactPolePrimitive_hasDerivAt hA x).deriv

/-- C² of the bump suffices for C¹ of the compact primitive. -/
theorem compactPolePrimitive_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (compactPolePrimitive A) := by
  have hb : ContDiff ℝ 1 (normalizedPrimitiveBump A) :=
    (normalizedPrimitiveBump_contDiff hA).of_le (by norm_num)
  have hb' : ContDiff ℝ 1 (deriv (normalizedPrimitiveBump A)) :=
    (normalizedPrimitiveBump_contDiff hA).deriv'
  exact ((contDiff_id.neg.div_const 2).exp).mul (hb'.add (hb.div_const 2))

/-- The global primitive vanishes outside the closed actual source interval. -/
theorem compactPolePrimitive_zero_of_not_mem {A : ℝ} (hA : 0 < A) {x : ℝ}
    (hx : x ∉ Icc (-A) A) : compactPolePrimitive A x = 0 := by
  simp [compactPolePrimitive, normalizedPrimitiveBump_zero_of_not_mem hA hx,
    normalizedPrimitiveBump_deriv_zero_of_not_mem hA hx]

/-- The primitive also has zero traces at both closed endpoints. -/
theorem compactPolePrimitive_endpoints {A : ℝ} (hA : 0 < A) :
    compactPolePrimitive A (-A) = 0 ∧ compactPolePrimitive A A = 0 := by
  simp [compactPolePrimitive, (normalizedPrimitiveBump_endpoints hA).1,
    (normalizedPrimitiveBump_endpoints hA).2,
    (normalizedPrimitiveBump_deriv_endpoints hA).1,
    (normalizedPrimitiveBump_deriv_endpoints hA).2]

/-- The exponential multiplier does not enlarge the primitive's support. -/
theorem compactPolePrimitive_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (compactPolePrimitive A) := by
  refine exists_compact_iff_hasCompactSupport.mp ⟨Icc (-A) A, isCompact_Icc, ?_⟩
  intro x hx
  exact compactPolePrimitive_zero_of_not_mem hA hx

/-- Actual weighted-source integrability holds at every positive scale. -/
theorem weightedSource_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (fun x ↦ Real.exp (-x / 2) * normalizedTest explicitSecondDerivative A x) :=
  ((Real.continuous_exp.comp (continuous_id.neg.div_const 2)).mul
    (normalizedTest_contDiff A hA).continuous).integrable_of_hasCompactSupport
      (normalizedTest_hasCompactSupport A hA).mul_left

/-- Every closed-half-line tail is genuinely integrable before applying FTC. -/
theorem causalSourceTail_integrable_section {A : ℝ} (hA : 0 < A) (s : ℝ) :
    IntegrableOn (fun u ↦ Real.exp (-u / 2) *
      normalizedTest explicitSecondDerivative A u) (Ici s) :=
  (weightedSource_integrable hA).integrableOn

/-- The independent causal integral equals the compact bump/derivative combination globally. -/
theorem causalSourceTail_eq {A : ℝ} (hA : 0 < A) (s : ℝ) :
    causalSourceTail A s =
      -deriv (normalizedPrimitiveBump A) s - normalizedPrimitiveBump A s / 2 := by
  have hi := HasCompactSupport.integral_Ioi_deriv_eq
    (compactPolePrimitive_contDiff hA) (compactPolePrimitive_hasCompactSupport hA) s
  rw [compactPolePrimitive_deriv hA] at hi
  rw [causalSourceTail, integral_Ici_eq_integral_Ioi, hi, compactPolePrimitive]
  rw [show s / 2 = -(-s / 2) by ring, Real.exp_neg, mul_neg, ← mul_assoc,
    inv_mul_cancel₀ (Real.exp_ne_zero (-s / 2))]
  ring

/-- The evaluated tail is globally C¹, without assuming any C⁴ source regularity. -/
theorem causalSourceTail_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (causalSourceTail A) := by
  have heq : causalSourceTail A = fun x ↦
      -deriv (normalizedPrimitiveBump A) x - normalizedPrimitiveBump A x / 2 :=
    funext (causalSourceTail_eq hA)
  rw [heq]
  exact (normalizedPrimitiveBump_contDiff hA).deriv'.neg.sub
    (((normalizedPrimitiveBump_contDiff hA).of_le (by norm_num)).div_const 2)

/-- The actual tail satisfies its causal first-order equation at every real point. -/
theorem causalSourceTail_hasDerivAt {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasDerivAt (causalSourceTail A)
      (causalSourceTail A x / 2 - normalizedTest explicitSecondDerivative A x) x := by
  have heq : causalSourceTail A = fun x ↦
      -deriv (normalizedPrimitiveBump A) x - normalizedPrimitiveBump A x / 2 :=
    funext (causalSourceTail_eq hA)
  have hd := (normalizedPrimitiveBump_deriv_hasDerivAt hA x).neg.sub
    ((normalizedPrimitiveBump_hasDerivAt hA x).div_const 2)
  rw [heq]
  apply hd.congr_deriv
  rw [← (normalizedPrimitiveBump_deriv_hasDerivAt hA x).deriv,
    ← (normalizedPrimitiveBump_hasDerivAt hA x).deriv,
    ← normalizedPrimitiveBump_second_sub_quarter hA x]
  ring

/-- The actual differential equation is also an ordinary derivative equality. -/
theorem causalSourceTail_deriv {A : ℝ} (hA : 0 < A) (x : ℝ) :
    deriv (causalSourceTail A) x =
      causalSourceTail A x / 2 - normalizedTest explicitSecondDerivative A x :=
  (causalSourceTail_hasDerivAt hA x).deriv

/-- The evaluated tail vanishes outside the actual source interval. -/
theorem causalSourceTail_zero_of_not_mem {A : ℝ} (hA : 0 < A) {s : ℝ}
    (hs : s ∉ Icc (-A) A) : causalSourceTail A s = 0 := by
  rw [causalSourceTail_eq hA s, normalizedPrimitiveBump_zero_of_not_mem hA hs,
    normalizedPrimitiveBump_deriv_zero_of_not_mem hA hs]
  ring

/-- Both literal endpoint values of the causal tail are zero. -/
theorem causalSourceTail_endpoints {A : ℝ} (hA : 0 < A) :
    causalSourceTail A (-A) = 0 ∧ causalSourceTail A A = 0 := by
  rw [causalSourceTail_eq hA (-A), causalSourceTail_eq hA A,
    (normalizedPrimitiveBump_endpoints hA).1, (normalizedPrimitiveBump_endpoints hA).2,
    (normalizedPrimitiveBump_deriv_endpoints hA).1,
    (normalizedPrimitiveBump_deriv_endpoints hA).2]
  norm_num

/-- The actual half-line integral is compact as a consequence of its proved evaluation. -/
theorem causalSourceTail_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (causalSourceTail A) := by
  refine exists_compact_iff_hasCompactSupport.mp ⟨Icc (-A) A, isCompact_Icc, ?_⟩
  intro x hx
  exact causalSourceTail_zero_of_not_mem hA hx

/-- Genuine full-line tail integrability follows from the evaluated compact source. -/
theorem causalSourceTail_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (causalSourceTail A) :=
  (causalSourceTail_contDiff hA).continuous.integrable_of_hasCompactSupport
    (causalSourceTail_hasCompactSupport hA)

/-- The actual tail belongs to real L² with the original Lebesgue measure. -/
theorem causalSourceTail_memLp_two {A : ℝ} (hA : 0 < A) :
    MemLp (causalSourceTail A) 2 volume :=
  (causalSourceTail_contDiff hA).continuous.memLp_of_hasCompactSupport
    (causalSourceTail_hasCompactSupport hA)

/-- The tail square is integrable before any energy identity is invoked. -/
theorem causalSourceTail_square_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (fun x ↦ causalSourceTail A x ^ 2) := by
  apply ((causalSourceTail_contDiff hA).continuous.pow 2).integrable_of_hasCompactSupport
  convert (causalSourceTail_hasCompactSupport hA).mul_right
      (f' := causalSourceTail A) using 1 <;> first | rfl | (funext x; exact pow_two _)

/-- The source/tail signed product is integrable before the compact-double comparison. -/
theorem source_mul_causalSourceTail_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (fun x ↦ normalizedTest explicitSecondDerivative A x * causalSourceTail A x) :=
  ((normalizedTest_contDiff A hA).continuous.mul
    (causalSourceTail_contDiff hA).continuous).integrable_of_hasCompactSupport
      (causalSourceTail_hasCompactSupport hA).mul_left

end

end FormalResearch.RiemannHypothesis.SourceCausalEnergy
