# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ProfileTransport.Variant68458214777ed595f63786b7ee40ae5dc5fcc2b9a83e59c88ba1bb4e4820bcd7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e6cc926781c4331f2da3bda609e58ff24b497a0` · SHA-256 `4429e953dabf964521f5b92ee918f01d99e42793a33e6eae90e94976451b569d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivEqOnClosed.Variant8c3c369e4551e95cfb945c6a37ad14619b4701630c2d040b59b8e73808a255f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c3c369e4551e95cfb945c6a37ad14619b4701630c2d040b59b8e73808a255f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.DerivEqOnClosed.Variant8c3c369e4551e95cfb945c6a37ad14619b4701630c2d040b59b8e73808a255f6","mathematical_subject":"Analysis.Calculus","original_sha256":"8c3c369e4551e95cfb945c6a37ad14619b4701630c2d040b59b8e73808a255f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh-packet-20261005/peano-worker/ProfileTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePrimitiveBumpProfile
import FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature
import FormalResearch.RiemannHypothesis.SourceBumpPeano
import FormalResearch.RiemannHypothesis.SourcePositivePeanoPrimitive


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivEqOnClosed.Variant8c3c369e4551e95cfb945c6a37ad14619b4701630c2d040b59b8e73808a255f6

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePeanoProfileTransportScratch

open Set SourcePairing SourceBumpAutocorrelation SourceBumpPeano SourcePositivePeanoPrimitive
open SourcePrimitivePrimeInteraction SourcePrimitiveCorrelationCurvature SourcePrimitiveBumpProfile
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

private theorem deriv_eq_on_closed {f g : ℝ → ℝ} {a b : ℝ} (hab : a < b)
    (hf : Differentiable ℝ f) (hg : Differentiable ℝ g) (he : EqOn f g (Icc a b)) :
    EqOn (deriv f) (deriv g) (Icc a b) := by
  intro x hx
  have hu := uniqueDiffOn_Icc hab x hx
  rw [← (hf x).hasDerivAt.hasDerivWithinAt.derivWithin hu,
    ← (hg x).hasDerivAt.hasDerivWithinAt.derivWithin hu]
  exact derivWithin_congr he (he hx)

def scaledProfile (A t : ℝ) : ℝ := overlapProfile (t / A) / sourceNormalization A

theorem scaledProfile_hasDerivAt (A t : ℝ) :
    HasDerivAt (scaledProfile A)
      (deriv overlapProfile (t / A) / A / sourceNormalization A) t := by
  have hF : Differentiable ℝ overlapProfile := by
    unfold overlapProfile overlapP0
    fun_prop
  have hd := ((hF (t / A)).hasDerivAt.comp t ((hasDerivAt_id t).div_const A)).div_const
    (sourceNormalization A)
  exact hd.congr_deriv (by ring)

theorem scaledProfile_deriv (A t : ℝ) :
    deriv (scaledProfile A) t = deriv overlapProfile (t / A) / A / sourceNormalization A :=
  (scaledProfile_hasDerivAt A t).deriv

theorem scaledProfile_second_hasDerivAt (A t : ℝ) :
    HasDerivAt (deriv (scaledProfile A))
      (deriv (deriv overlapProfile) (t / A) / A ^ 2 / sourceNormalization A) t := by
  have hF : ContDiff ℝ 2 overlapProfile := by
    unfold overlapProfile overlapP0
    fun_prop
  have hF1c : ContDiff ℝ 1 (deriv overlapProfile) := hF.deriv'
  have hF1 : Differentiable ℝ (deriv overlapProfile) := hF1c.differentiable (by norm_num)
  have hd := (((hF1 (t / A)).hasDerivAt.comp t ((hasDerivAt_id t).div_const A)).div_const A).div_const
    (sourceNormalization A)
  rw [show deriv (scaledProfile A) = fun t =>
    deriv overlapProfile (t / A) / A / sourceNormalization A from funext (scaledProfile_deriv A)]
  exact hd.congr_deriv (by simp only [div_eq_mul_inv]; ring)


theorem primitiveCorrelationZero_deriv_eq_scaledProfile {A : ℝ} (hA : 0 < A) :
    EqOn (deriv (primitiveCorrelationZero A)) (deriv (scaledProfile A)) (Icc 0 (2 * A)) := by
  apply deriv_eq_on_closed (by linarith)
  · exact (primitiveCorrelationZero_contDiff_four hA).differentiable (by norm_num)
  · unfold scaledProfile overlapProfile overlapP0
    fun_prop
  · intro t ht
    exact primitiveCorrelationZero_eq_profile hA ht.1 ht.2

theorem primitiveCorrelationZero_second_deriv_eq_scaledProfile {A : ℝ} (hA : 0 < A) :
    EqOn (deriv (deriv (primitiveCorrelationZero A))) (deriv (deriv (scaledProfile A)))
      (Icc 0 (2 * A)) := by
  apply deriv_eq_on_closed (by linarith)
  · have hF1 : ContDiff ℝ 3 (deriv (primitiveCorrelationZero A)) :=
      (primitiveCorrelationZero_contDiff_four hA).deriv'
    exact hF1.differentiable (by norm_num)
  · have hG : ContDiff ℝ 2 (scaledProfile A) := by
      unfold scaledProfile overlapProfile overlapP0
      fun_prop
    have hG1 : ContDiff ℝ 1 (deriv (scaledProfile A)) := hG.deriv'
    exact hG1.differentiable (by norm_num)
  · exact primitiveCorrelationZero_deriv_eq_scaledProfile hA

theorem primitiveCorrelationZero_deriv_eq_profile {A t : ℝ} (hA : 0 < A)
    (ht0 : 0 ≤ t) (ht2 : t ≤ 2 * A) :
    deriv (primitiveCorrelationZero A) t =
      deriv overlapProfile (t / A) / A / sourceNormalization A := by
  rw [primitiveCorrelationZero_deriv_eq_scaledProfile hA ⟨ht0, ht2⟩,
    scaledProfile_deriv]

theorem primitiveCorrelationZero_second_deriv_eq_profile {A t : ℝ} (hA : 0 < A)
    (ht0 : 0 ≤ t) (ht2 : t ≤ 2 * A) :
    deriv (deriv (primitiveCorrelationZero A)) t =
      deriv (deriv overlapProfile) (t / A) / A ^ 2 / sourceNormalization A := by
  rw [primitiveCorrelationZero_second_deriv_eq_scaledProfile hA ⟨ht0, ht2⟩,
    (scaledProfile_second_hasDerivAt A t).deriv]


theorem sourcePeanoPrimitive_eq_profile {A t : ℝ} (hA : 0 < A)
    (ht0 : 0 ≤ t) (ht2 : t ≤ 2 * A) :
    sourcePeanoPrimitive A t =
      Real.exp (t / 2) / sourceNormalization A * peanoNumerator A (t / A) := by
  unfold sourcePeanoPrimitive
  rw [primitiveCorrelationZero_deriv_eq_profile hA ht0 ht2,
    primitiveCorrelationZero_second_deriv_eq_profile hA ht0 ht2,
    primitiveCorrelationZero_eq_profile hA ht0 ht2]
  unfold peanoNumerator
  ring

theorem sourcePeanoPrimitive_nonneg {A t : ℝ} (hA : 0 < A)
    (hthreshold : (136 / 7 : ℝ) ≤ A ^ 2) (ht0 : 0 ≤ t) (ht2 : t ≤ 2 * A) :
    0 ≤ sourcePeanoPrimitive A t := by
  have hu0 : 0 ≤ t / A := div_nonneg ht0 hA.le
  have hu2 : t / A ≤ 2 := (div_le_iff₀ hA).mpr (by linarith)
  have hn := peanoNumerator_nonneg hA hthreshold hu0 hu2
  have hZ : 0 < sourceNormalization A := by
    unfold sourceNormalization
    positivity
  rw [sourcePeanoPrimitive_eq_profile hA ht0 ht2]
  positivity

theorem sourcePeanoPrimitive_nonneg_iff {A : ℝ} (hA : 0 < A) :
    (∀ t : ℝ, 0 ≤ t → t ≤ 2 * A → 0 ≤ sourcePeanoPrimitive A t) ↔
      (136 / 7 : ℝ) ≤ A ^ 2 := by
  constructor
  · intro h
    apply (peanoNumerator_nonneg_iff hA).mp
    intro u hu0 hu2
    have ht0 : 0 ≤ A * u := mul_nonneg hA.le hu0
    have ht2 : A * u ≤ 2 * A := by nlinarith
    have hp := h (A * u) ht0 ht2
    rw [sourcePeanoPrimitive_eq_profile hA ht0 ht2] at hp
    have hu : A * u / A = u := by field_simp
    rw [hu] at hp
    have hZ : 0 < sourceNormalization A := by
      unfold sourceNormalization
      positivity
    exact (mul_nonneg_iff_of_pos_left (div_pos (Real.exp_pos _) hZ)).mp hp
  · intro h t ht0 ht2
    exact sourcePeanoPrimitive_nonneg hA h ht0 ht2

end FormalResearch.RiemannHypothesis.SourcePeanoProfileTransportScratch
```
