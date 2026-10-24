# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CriticalModeIntervals.Variant775c8869983ce6fd39c1cfa0d34142f3972d76f536aaec9b9d498236d8fe6941

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8c26c45989bda12d1adcad08f568f660fb4b04b` · SHA-256 `775c8869983ce6fd39c1cfa0d34142f3972d76f536aaec9b9d498236d8fe6941`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.CausalRecords

/-!
# A bounded literal sinusoidal mode has divergent disjoint native payments

B10-L02 retains the source's exact quarter-period intervals and native
inverse-root widths in logarithmic time. The sine rises from zero to one on
each disjoint interval, and its positive square payment has the exact
exponential formula. After level one is retained, no later sine value creates
a new record. This comparison mode is not substituted for the prime source
or the complete zeta-zero sum.

Human record-selector fidelity: grwtsk contributors. Local literal sinusoidal
intervals, payments and selector consumer: OpenAI Codex. Mathlib trigonometric,
exponential and summability laws retain upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.CriticalModeIntervals
open Filter Set
noncomputable section

def mode (gamma t : ℝ) : ℝ := Real.sin (gamma * t)
def start (gamma : ℝ) (k : ℕ) : ℝ := 2 * Real.pi * k / gamma
def finish (gamma : ℝ) (k : ℕ) : ℝ := start gamma k + Real.pi / (2 * gamma)
def nativeWidth (gamma : ℝ) (k : ℕ) : ℝ :=
  2 * (Real.exp (-start gamma k / 2) - Real.exp (-finish gamma k / 2))
def positiveSquarePayment (gamma : ℝ) (k : ℕ) : ℝ :=
  (max (mode gamma (finish gamma k) - mode gamma (start gamma k)) 0) ^ 2 / nativeWidth gamma k

theorem mode_bounded (gamma t : ℝ) : |mode gamma t| ≤ 1 :=
  abs_le.mpr ⟨Real.neg_one_le_sin _, Real.sin_le_one _⟩

theorem exact_interval_endpoints {gamma : ℝ} (hg : 0 < gamma) (k : ℕ) :
    mode gamma (start gamma k) = 0 ∧ mode gamma (finish gamma k) = 1 := by
  have ha : gamma * start gamma k = (2 * k : ℕ) * Real.pi := by
    dsimp [start]; push_cast; field_simp [hg.ne']
  have hb : gamma * finish gamma k = Real.pi / 2 + k * (2 * Real.pi) := by
    dsimp [finish, start]; field_simp [hg.ne']; ring
  constructor
  · rw [mode, ha]; exact Real.sin_nat_mul_pi _
  · rw [mode, hb, Real.sin_add_nat_mul_two_pi, Real.sin_pi_div_two]

theorem ordered_intervals_disjoint {gamma : ℝ} (hg : 0 < gamma) {i j : ℕ} (hij : i < j) :
    finish gamma i < start gamma j := by
  have hc : (i : ℝ) + 1 ≤ j := by exact_mod_cast (Nat.add_one_le_iff.mpr hij)
  unfold finish start
  rw [show Real.pi / (2 * gamma) = (Real.pi / 2) / gamma by field_simp, ← add_div]
  apply (div_lt_div_iff_of_pos_right hg).mpr
  nlinarith [Real.pi_pos]

theorem literal_intervals_pairwise_disjoint {gamma : ℝ} (hg : 0 < gamma) :
    Pairwise (fun i j : ℕ ↦ Disjoint (Icc (start gamma i) (finish gamma i))
      (Icc (start gamma j) (finish gamma j))) := by
  intro i j hne
  apply Set.disjoint_left.mpr
  intro x hxi hxj
  rcases lt_or_gt_of_ne hne with hij | hji
  · exact (not_le_of_gt (ordered_intervals_disjoint hg hij)) (hxj.1.trans hxi.2)
  · exact (not_le_of_gt (ordered_intervals_disjoint hg hji)) (hxi.1.trans hxj.2)

theorem native_width_exact {gamma : ℝ} (hg : 0 < gamma) (k : ℕ) :
    nativeWidth gamma k = 2 * Real.exp (-Real.pi * k / gamma) *
      (1 - Real.exp (-Real.pi / (4 * gamma))) := by
  have ha : -start gamma k / 2 = -Real.pi * k / gamma := by
    dsimp [start]; ring
  have hb : -finish gamma k / 2 = -Real.pi * k / gamma + -Real.pi / (4 * gamma) := by
    dsimp [finish, start]; field_simp [hg.ne']; ring
  rw [nativeWidth, ha, hb, Real.exp_add]
  ring

theorem denominator_positive {gamma : ℝ} (hg : 0 < gamma) :
    0 < 2 * (1 - Real.exp (-Real.pi / (4 * gamma))) := by
  have hn : -Real.pi / (4 * gamma) < 0 := div_neg_of_neg_of_pos (neg_neg_of_pos Real.pi_pos)
    (by linarith)
  have he : Real.exp (-Real.pi / (4 * gamma)) < 1 := by
    simpa only [Real.exp_zero] using Real.exp_lt_exp.mpr hn
  linarith

theorem exact_positive_square_payment {gamma : ℝ} (hg : 0 < gamma) (k : ℕ) :
    positiveSquarePayment gamma k = Real.exp (Real.pi * k / gamma) /
      (2 * (1 - Real.exp (-Real.pi / (4 * gamma)))) := by
  obtain ⟨ha, hb⟩ := exact_interval_endpoints hg k
  rw [positiveSquarePayment, ha, hb, sub_zero, max_eq_left (by norm_num : (0 : ℝ) ≤ 1),
    one_pow, native_width_exact hg]
  rw [show -Real.pi * k / gamma = -(Real.pi * k / gamma) by ring, Real.exp_neg]
  field_simp [(Real.exp_pos (Real.pi * k / gamma)).ne', (denominator_positive hg).ne']

theorem disjoint_native_square_payment_not_summable {gamma : ℝ} (hg : 0 < gamma) :
    ¬ Summable (positiveSquarePayment gamma) := by
  let C : ℝ := 1 / (2 * (1 - Real.exp (-Real.pi / (4 * gamma))))
  have hC : 0 < C := div_pos (by norm_num) (denominator_positive hg)
  have hl : ∀ k, C ≤ positiveSquarePayment gamma k := by
    intro k
    rw [exact_positive_square_payment hg]
    apply div_le_div_of_nonneg_right _ (denominator_positive hg).le
    have hx : 0 ≤ Real.pi * (k : ℝ) / gamma := by positivity
    simpa only [Real.exp_zero] using Real.exp_le_exp.mpr hx
  intro hs
  have he : ∀ᶠ k in atTop, positiveSquarePayment gamma k < C :=
    hs.tendsto_atTop_zero.eventually_lt_const hC
  obtain ⟨k, hk⟩ := he.exists
  exact (not_lt_of_ge (hl k)) hk

theorem first_peak_establishes_one {gamma : ℝ} (hg : 0 < gamma) :
    CausalRecords.recordIncrement 0 (mode gamma (finish gamma 0)) = 1 := by
  rw [(exact_interval_endpoints hg 0).2]
  norm_num [CausalRecords.recordIncrement]

theorem retained_peak_excludes_all_later_records (gamma t : ℝ) :
    CausalRecords.recordIncrement 1 (mode gamma t) = 0 := by
  unfold CausalRecords.recordIncrement
  rw [max_eq_left (abs_le.mp (mode_bounded gamma t)).2]
  norm_num

end
end GRWTSK.RiemannHypothesis.Conversation.CriticalModeIntervals
```
