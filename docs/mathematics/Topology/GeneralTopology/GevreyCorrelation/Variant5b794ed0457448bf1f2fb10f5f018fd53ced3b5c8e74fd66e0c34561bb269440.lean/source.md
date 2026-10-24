# Complete source: GRWTSK.Topology.GeneralTopology.GevreyCorrelation.Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `381ea2a831d39222ecdc6a913652c016b4b2aaa0` · SHA-256 `5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.GevreyNormalization
import Mathlib.Analysis.Convolution

/-!
# Source and displacement support for the normalized profile

The profile radius is one, the dilated source radius is `A`, and the autocorrelation
radius in the displacement variable is `2 * A`. The correlation uses the source's
unit squared norm directly, with no further normalization.

AI attribution: developed with OpenAI Codex; the proof terms are checked by Lean.
-/

namespace FormalResearch.RiemannHypothesis.GevreyCorrelation

open MeasureTheory Function Set
open GevreyNormalization
open scoped Convolution

/-- The autocorrelation of the already normalized differential source. -/
noncomputable def correlation (h : ℝ → ℝ) (A u : ℝ) : ℝ :=
  ∫ x : ℝ, normalizedOperator h A x * normalizedOperator h A (x - u)

/-- The profile support hypothesis supplies actual compact support. -/
theorem profile_hasCompactSupport {h : ℝ → ℝ}
    (hs : support h ⊆ Icc (-1) 1) : HasCompactSupport h :=
  HasCompactSupport.of_support_subset_isCompact isCompact_Icc hs

/-- Dilation carries the profile radius one to the source radius `A`. -/
theorem scaledProfile_support {h : ℝ → ℝ} (hs : support h ⊆ Icc (-1) 1)
    {A : ℝ} (hA : 0 < A) : support (scaledProfile h A) ⊆ Icc (-A) A := by
  intro x hx
  have hh : h (x / A) ≠ 0 := by
    intro hz
    exact hx (by simp [scaledProfile, hz])
  obtain ⟨hl, hr⟩ := hs hh
  constructor
  · have := (le_div_iff₀ hA).mp hl
    nlinarith
  · have := (div_le_iff₀ hA).mp hr
    nlinarith

/-- Differentiating and applying the pole multiplier preserves the source radius. -/
theorem dilationOperator_support {h : ℝ → ℝ} (hs : support h ⊆ Icc (-1) 1)
    {A : ℝ} (hA : 0 < A) : support (dilationOperator h A) ⊆ Icc (-A) A := by
  have hφ := scaledProfile_support hs hA
  have ht : tsupport (scaledProfile h A) ⊆ Icc (-A) A :=
    closure_minimal hφ isClosed_Icc
  have hd : support (deriv (deriv (scaledProfile h A))) ⊆ Icc (-A) A :=
    support_deriv_subset.trans (tsupport_deriv_subset.trans ht)
  intro x hx
  by_contra hm
  have hz : scaledProfile h A x = 0 := by
    by_contra hz
    exact hm (hφ hz)
  have hdz : deriv (deriv (scaledProfile h A)) x = 0 := by
    by_contra hdz
    exact hm (hd hdz)
  exact hx (by simp [dilationOperator, hz, hdz])

/-- Dividing by the norm does not enlarge the source support. -/
theorem normalizedOperator_support {h : ℝ → ℝ} (hs : support h ⊆ Icc (-1) 1)
    {A : ℝ} (hA : 0 < A) : support (normalizedOperator h A) ⊆ Icc (-A) A := by
  intro x hx
  apply dilationOperator_support hs hA
  intro hz
  exact hx (by simp [normalizedOperator, hz])

/-- The normalized source is continuous as a consequence of ordinary C² regularity. -/
theorem normalizedOperator_continuous {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h) (A : ℝ) :
    Continuous (normalizedOperator h A) := by
  have hφ : ContDiff ℝ 2 (scaledProfile h A) :=
    (hc.comp (contDiff_id.div_const A)).div_const (Real.sqrt A)
  have hd : ContDiff ℝ 1 (deriv (scaledProfile h A)) := hφ.deriv'
  exact (hd.continuous_deriv_one.sub (hφ.continuous.div_const 4)).div_const _

/-- The normalized source has compact support of radius `A`. -/
theorem normalizedOperator_hasCompactSupport {h : ℝ → ℝ}
    (hs : support h ⊆ Icc (-1) 1) {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (normalizedOperator h A) :=
  HasCompactSupport.of_support_subset_isCompact isCompact_Icc
    (normalizedOperator_support hs hA)

private theorem zero_of_radius_le_abs {f : ℝ → ℝ} (hc : Continuous f) {r x : ℝ}
    (hs : support f ⊆ Icc (-r) r) (hx : r ≤ |x|) : f x = 0 := by
  have hr : Ioi r ⊆ {y | f y = 0} := by
    intro y hy
    by_contra hz
    have := (hs hz).2
    exact (not_le_of_gt hy) this
  have hl : Iio (-r) ⊆ {y | f y = 0} := by
    intro y hy
    by_contra hz
    have := (hs hz).1
    exact (not_le_of_gt hy) this
  have hr' := closure_minimal hr (isClosed_eq hc continuous_const)
  have hl' := closure_minimal hl (isClosed_eq hc continuous_const)
  rw [closure_Ioi] at hr'
  rw [closure_Iio] at hl'
  rcases le_total 0 x with hpos | hneg
  · exact hr' (by simpa [abs_of_nonneg hpos] using hx)
  · apply hl'
    simp only [mem_Iic]
    rw [abs_of_nonpos hneg] at hx
    linarith

/-- The source vanishes at both endpoints as well as outside its radius. -/
theorem normalizedOperator_zero_of_le_abs {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : support h ⊆ Icc (-1) 1) {A x : ℝ} (hA : 0 < A) (hx : A ≤ |x|) :
    normalizedOperator h A x = 0 :=
  zero_of_radius_le_abs (normalizedOperator_continuous hc A)
    (normalizedOperator_support hs hA) hx

/-- The displacement endpoint is twice the source endpoint. -/
theorem correlation_zero_of_le_abs {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : support h ⊆ Icc (-1) 1) {A u : ℝ} (hA : 0 < A) (hu : 2 * A ≤ |u|) :
    correlation h A u = 0 := by
  unfold correlation
  have hz : ∀ x : ℝ, normalizedOperator h A x * normalizedOperator h A (x - u) = 0 := by
    intro x
    by_cases hx : A ≤ |x|
    · rw [normalizedOperator_zero_of_le_abs hc hs hA hx, zero_mul]
    by_cases hy : A ≤ |x - u|
    · rw [normalizedOperator_zero_of_le_abs hc hs hA hy, mul_zero]
    have ht := abs_sub_le x 0 (x - u)
    have ht' : |u| ≤ |x| + |x - u| := by
      simpa only [sub_zero, zero_sub, abs_neg, sub_sub_cancel] using ht
    have : |u| < 2 * A := lt_of_le_of_lt ht' (by linarith [not_le.mp hx, not_le.mp hy])
    exact (not_lt_of_ge hu this).elim
  simp_rw [hz]
  simp

/-- The correlation is supported in the displacement interval `[-2A, 2A]`. -/
theorem correlation_support {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : support h ⊆ Icc (-1) 1) {A : ℝ} (hA : 0 < A) :
    support (correlation h A) ⊆ Icc (-(2 * A)) (2 * A) := by
  intro u hu
  have habs : |u| < 2 * A := by
    by_contra hz
    exact hu (correlation_zero_of_le_abs hc hs hA (not_lt.mp hz))
  exact ⟨(abs_lt.mp habs).1.le, (abs_lt.mp habs).2.le⟩

/-- Correlation at zero is the squared norm already fixed by the source normalization. -/
theorem correlation_zero {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) (hn : ∃ x, h x ≠ 0) {A : ℝ} (hA : 0 < A) :
    correlation h A 0 = 1 := by
  simpa only [correlation, sub_zero, ← pow_two] using
    normalizedOperator_square_integral hc hs hn hA

private theorem correlation_eq_convolution (h : ℝ → ℝ) (A : ℝ) :
    correlation h A = normalizedOperator h A ⋆[ContinuousLinearMap.mul ℝ ℝ]
      (fun x ↦ normalizedOperator h A (-x)) := by
  funext u
  unfold correlation convolution
  congr 1
  funext x
  simp only [neg_sub]
  rfl

/-- Correlation integrability follows from integrability of the already normalized source. -/
theorem correlation_integrable {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) {A : ℝ} (hA : 0 < A) : Integrable (correlation h A) := by
  rw [correlation_eq_convolution]
  have hi := (normalizedOperator_integrable hc hs hA).1
  exact hi.integrable_convolution (ContinuousLinearMap.mul ℝ ℝ) hi.comp_neg

/-- The compactly supported continuous source gives a continuous correlation. -/
theorem correlation_continuous {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : support h ⊆ Icc (-1) 1) {A : ℝ} (hA : 0 < A) :
    Continuous (correlation h A) := by
  have href : support (fun x ↦ normalizedOperator h A (-x)) ⊆ Icc (-A) A := by
    intro x hx
    obtain ⟨hl, hr⟩ := normalizedOperator_support hs hA hx
    constructor <;> linarith
  have hcompact : HasCompactSupport (fun x ↦ normalizedOperator h A (-x)) :=
    HasCompactSupport.of_support_subset_isCompact isCompact_Icc href
  rw [correlation_eq_convolution]
  exact hcompact.continuous_convolution_right (ContinuousLinearMap.mul ℝ ℝ)
    ((normalizedOperator_integrable hc (profile_hasCompactSupport hs) hA).1.locallyIntegrable)
    ((normalizedOperator_continuous hc A).comp continuous_neg)

/-- Correlation compact support is in the displacement radius `2A`. -/
theorem correlation_hasCompactSupport {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : support h ⊆ Icc (-1) 1) {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (correlation h A) :=
  HasCompactSupport.of_support_subset_isCompact isCompact_Icc (correlation_support hc hs hA)

/-- All three support radii for the concrete corrected profile. -/
theorem profile_support_radii {A : ℝ} (hA : 0 < A) :
    support GevreyProfile.profile ⊆ Icc (-1) 1 ∧
    support (scaledProfile GevreyProfile.profile A) ⊆ Icc (-A) A ∧
    support (dilationOperator GevreyProfile.profile A) ⊆ Icc (-A) A ∧
    support (normalizedOperator GevreyProfile.profile A) ⊆ Icc (-A) A ∧
    support (correlation GevreyProfile.profile A) ⊆ Icc (-(2 * A)) (2 * A) := by
  have hs : support GevreyProfile.profile ⊆ Icc (-1) 1 := by
    rw [GevreyProfile.profile_support]
    exact Ioo_subset_Icc_self
  exact ⟨hs, scaledProfile_support hs hA, dilationOperator_support hs hA,
    normalizedOperator_support hs hA, correlation_support GevreyProfile.profile_contDiff hs hA⟩

/-- The corrected profile's autocorrelation takes value one at zero. -/
theorem profile_correlation_zero {A : ℝ} (hA : 0 < A) :
    correlation GevreyProfile.profile A 0 = 1 :=
  correlation_zero GevreyProfile.profile_contDiff GevreyProfile.profile_hasCompactSupport
    GevreyProfile.profile_nonzero hA

end FormalResearch.RiemannHypothesis.GevreyCorrelation
```
