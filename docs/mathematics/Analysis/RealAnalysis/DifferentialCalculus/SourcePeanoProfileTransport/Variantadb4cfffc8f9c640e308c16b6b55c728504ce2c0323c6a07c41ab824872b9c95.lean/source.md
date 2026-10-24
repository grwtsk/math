# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourcePeanoProfileTransport.Variantadb4cfffc8f9c640e308c16b6b55c728504ce2c0323c6a07c41ab824872b9c95

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d42e92b6a0beaf92e43adf88f74740210b42659a` · SHA-256 `adb4cfffc8f9c640e308c16b6b55c728504ce2c0323c6a07c41ab824872b9c95`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePrimitiveBumpProfile
import FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature
import FormalResearch.RiemannHypothesis.SourceBumpPeano
import FormalResearch.RiemannHypothesis.SourcePositivePeanoPrimitive

/-!
# Closed-endpoint profile transport for the actual Peano primitive

The actual normalized primitive autocorrelation and its first two ordinary
derivatives equal the exact polynomial profile throughout the closed
half-support. Unique differentiation on the closed interval retains both
endpoints. This transports the sharp positivity threshold to the actual
exponential second primitive; no atomic arithmetic estimate follows.

Research direction, source selection and evaluation: grwtsk contributors.
Formal construction: OpenAI Codex, from the attached ChatGPT Peano proof note.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePeanoProfileTransport

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

/-- The profile has exactly the actual primitive normalization. -/
def normalizedOverlapProfile (A t : ℝ) : ℝ := overlapProfile (t / A) / sourceNormalization A

theorem normalizedOverlapProfile_hasDerivAt (A t : ℝ) :
    HasDerivAt (normalizedOverlapProfile A)
      (deriv overlapProfile (t / A) / A / sourceNormalization A) t := by
  have hF : Differentiable ℝ overlapProfile := by
    unfold overlapProfile overlapP0
    fun_prop
  have hd := ((hF (t / A)).hasDerivAt.comp t ((hasDerivAt_id t).div_const A)).div_const
    (sourceNormalization A)
  exact hd.congr_deriv (by ring)

theorem normalizedOverlapProfile_deriv (A t : ℝ) :
    deriv (normalizedOverlapProfile A) t =
      deriv overlapProfile (t / A) / A / sourceNormalization A :=
  (normalizedOverlapProfile_hasDerivAt A t).deriv

theorem normalizedOverlapProfile_second_hasDerivAt (A t : ℝ) :
    HasDerivAt (deriv (normalizedOverlapProfile A))
      (deriv (deriv overlapProfile) (t / A) / A ^ 2 / sourceNormalization A) t := by
  have hF : ContDiff ℝ 2 overlapProfile := by
    unfold overlapProfile overlapP0
    fun_prop
  have hF1c : ContDiff ℝ 1 (deriv overlapProfile) := hF.deriv'
  have hF1 : Differentiable ℝ (deriv overlapProfile) := hF1c.differentiable (by norm_num)
  have hd := (((hF1 (t / A)).hasDerivAt.comp t
    ((hasDerivAt_id t).div_const A)).div_const A).div_const (sourceNormalization A)
  rw [show deriv (normalizedOverlapProfile A) = fun t =>
    deriv overlapProfile (t / A) / A / sourceNormalization A from
      funext (normalizedOverlapProfile_deriv A)]
  exact hd.congr_deriv (by simp only [div_eq_mul_inv]; ring)


/-- Closed-interval equality transports the first ordinary derivative at both endpoints. -/
theorem primitiveCorrelationZero_deriv_eq_normalizedOverlapProfile {A : ℝ} (hA : 0 < A) :
    EqOn (deriv (primitiveCorrelationZero A)) (deriv (normalizedOverlapProfile A))
      (Icc 0 (2 * A)) := by
  apply deriv_eq_on_closed (by linarith)
  · exact (primitiveCorrelationZero_contDiff_four hA).differentiable (by norm_num)
  · unfold normalizedOverlapProfile overlapProfile overlapP0
    fun_prop
  · intro t ht
    exact primitiveCorrelationZero_eq_profile hA ht.1 ht.2

/-- Differentiate the closed-interval first-derivative equality once more. -/
theorem primitiveCorrelationZero_second_deriv_eq_normalizedOverlapProfile {A : ℝ} (hA : 0 < A) :
    EqOn (deriv (deriv (primitiveCorrelationZero A))) (deriv (deriv (normalizedOverlapProfile A)))
      (Icc 0 (2 * A)) := by
  apply deriv_eq_on_closed (by linarith)
  · have hF1 : ContDiff ℝ 3 (deriv (primitiveCorrelationZero A)) :=
      (primitiveCorrelationZero_contDiff_four hA).deriv'
    exact hF1.differentiable (by norm_num)
  · have hG : ContDiff ℝ 2 (normalizedOverlapProfile A) := by
      unfold normalizedOverlapProfile overlapProfile overlapP0
      fun_prop
    have hG1 : ContDiff ℝ 1 (deriv (normalizedOverlapProfile A)) := hG.deriv'
    exact hG1.differentiable (by norm_num)
  · exact primitiveCorrelationZero_deriv_eq_normalizedOverlapProfile hA

theorem primitiveCorrelationZero_deriv_eq_profile {A t : ℝ} (hA : 0 < A)
    (ht0 : 0 ≤ t) (ht2 : t ≤ 2 * A) :
    deriv (primitiveCorrelationZero A) t =
      deriv overlapProfile (t / A) / A / sourceNormalization A := by
  rw [primitiveCorrelationZero_deriv_eq_normalizedOverlapProfile hA ⟨ht0, ht2⟩,
    normalizedOverlapProfile_deriv]

theorem primitiveCorrelationZero_second_deriv_eq_profile {A t : ℝ} (hA : 0 < A)
    (ht0 : 0 ≤ t) (ht2 : t ≤ 2 * A) :
    deriv (deriv (primitiveCorrelationZero A)) t =
      deriv (deriv overlapProfile) (t / A) / A ^ 2 / sourceNormalization A := by
  rw [primitiveCorrelationZero_second_deriv_eq_normalizedOverlapProfile hA ⟨ht0, ht2⟩,
    (normalizedOverlapProfile_second_hasDerivAt A t).deriv]


/-- The exact physical primitive agrees with the polynomial numerator on the full half-support. -/
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

/-- The sharp threshold applies to the actual source primitive, including both endpoints. -/
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

end FormalResearch.RiemannHypothesis.SourcePeanoProfileTransport
```
