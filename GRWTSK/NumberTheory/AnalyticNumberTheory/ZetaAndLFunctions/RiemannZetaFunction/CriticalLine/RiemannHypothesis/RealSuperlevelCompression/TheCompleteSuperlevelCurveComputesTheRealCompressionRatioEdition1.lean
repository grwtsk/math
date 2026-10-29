import FormalResearch.RiemannHypothesis.Conversation.FinitePanelCompression

/-!
# The complete superlevel curve computes the real compression ratio

Batch 07 CS04 is reconstructed for every finite positive weighted unit profile.
The ENNReal layer-cake integral is converted to the real finite moment through
an exact nonnegative sum identity. Native-width normalization is explicit.
The resulting ratio uses the entire curve, keeps the nonzero-moment guard,
and gives no estimate for the actual prime profile. The height-normalization
adapter to arbitrary bounded panels remains a separate obligation.

Human complete-curve direction: grwtsk contributors. Local real-moment adapter
and compression consumer: OpenAI Codex. Mathlib's layer cake and real/extended
nonnegative real laws retain upstream names and provenance.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.RealSuperlevelCompression

open MeasureTheory AtomicSuperlevels FinitePanelCompression
open scoped BigOperators ENNReal
noncomputable section

def normalizedCurve {ι : Type*} (s : Finset ι) (w f : ι → ℝ) (t : ℝ) : ℝ≥0∞ :=
  superlevelMass s (fun i => ENNReal.ofReal (w i / mass s w)) f t

theorem real_unit_layercake {ι : Type*} [MeasurableSpace ι] [MeasurableSingletonClass ι]
    (s : Finset ι) (w f : ι → ℝ) (hw : ∀ i, 0 ≤ w i) (hf : Measurable f)
    (hf0 : ∀ i, 0 ≤ f i) (hf1 : ∀ i ∈ s, f i ≤ 1) {p : ℝ} (hp : 0 < p) :
    moment s w f p = p * (∫⁻ t in Set.Ioc (0 : ℝ) 1,
      superlevelMass s (fun i => ENNReal.ofReal (w i)) f t * ENNReal.ofReal (t ^ (p - 1))).toReal := by
  have hsum : ENNReal.ofReal (moment s w f p) =
      ∑ i ∈ s, ENNReal.ofReal (w i) * ENNReal.ofReal ((f i) ^ p) := by
    unfold moment
    rw [ENNReal.ofReal_sum_of_nonneg (fun i _ => mul_nonneg (hw i) (Real.rpow_nonneg (hf0 i) p))]
    apply Finset.sum_congr rfl
    intro i _
    exact ENNReal.ofReal_mul (hw i)
  have h := unit_panel_moment s (fun i => ENNReal.ofReal (w i)) hf hf0 hf1 hp
  rw [← hsum] at h
  have ht := congrArg ENNReal.toReal h
  have hnonneg : 0 ≤ moment s w f p := Finset.sum_nonneg
    (fun i _ => mul_nonneg (hw i) (Real.rpow_nonneg (hf0 i) p))
  rw [ENNReal.toReal_ofReal hnonneg,
    ENNReal.toReal_mul, ENNReal.toReal_ofReal hp.le] at ht
  exact ht

theorem normalized_moment {ι : Type*} (s : Finset ι) (w f : ι → ℝ) (p : ℝ) :
    moment s (fun i => w i / mass s w) f p = moment s w f p / mass s w := by
  unfold moment
  rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro i _
  ring

theorem normalized_superlevel_moment {ι : Type*} [MeasurableSpace ι] [MeasurableSingletonClass ι]
    (s : Finset ι) (w f : ι → ℝ) (hw : ∀ i, 0 ≤ w i) (hW : 0 < mass s w)
    (hf : Measurable f) (hf0 : ∀ i, 0 ≤ f i) (hf1 : ∀ i ∈ s, f i ≤ 1)
    {p : ℝ} (hp : 0 < p) :
    moment s w f p / mass s w = p * (∫⁻ t in Set.Ioc (0 : ℝ) 1,
      normalizedCurve s w f t * ENNReal.ofReal (t ^ (p - 1))).toReal := by
  rw [← normalized_moment]
  exact real_unit_layercake s (fun i => w i / mass s w) f
    (fun i => div_nonneg (hw i) hW.le) hf hf0 hf1 hp

theorem compression_from_complete_superlevels {ι : Type*} [MeasurableSpace ι]
    [MeasurableSingletonClass ι] {s : Finset ι} {w f : ι → ℝ} {p : ℝ}
    (hs : s.Nonempty) (hw : ∀ i, 0 < w i) (hf : Measurable f)
    (hf0 : ∀ i, 0 ≤ f i) (hf1 : ∀ i ∈ s, f i ≤ 1) (hp : 1 ≤ p)
    (hE : 0 < moment s w f p) :
    compressionFactor s w f p =
      ((∫⁻ t in Set.Ioc (0 : ℝ) 1, normalizedCurve s w f t).toReal) ^ p /
        (p * (∫⁻ t in Set.Ioc (0 : ℝ) 1,
          normalizedCurve s w f t * ENNReal.ofReal (t ^ (p - 1))).toReal) := by
  have hW := mass_pos hs hw
  have hV : 0 ≤ load s w f := Finset.sum_nonneg (fun i _ => mul_nonneg (hw i).le (hf0 i))
  have hp0 : 0 < p := lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1) hp
  have hmoment := normalized_superlevel_moment s w f (fun i => (hw i).le) hW hf hf0 hf1 hp0
  have hfirst := normalized_superlevel_moment s w f (fun i => (hw i).le) hW hf hf0 hf1
    (by norm_num : (0 : ℝ) < 1)
  have hload : load s w f / mass s w =
      (∫⁻ t in Set.Ioc (0 : ℝ) 1, normalizedCurve s w f t).toReal := by
    simpa only [moment, load, Real.rpow_one, sub_self, Real.rpow_zero,
      ENNReal.ofReal_one, mul_one, one_mul] using hfirst
  rw [compression_factor_is_normalized_moment_ratio hW hV hE.ne', hmoment, hload]

end
end GRWTSK.RiemannHypothesis.Conversation.RealSuperlevelCompression
