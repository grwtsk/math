import FormalResearch.RiemannHypothesis.Conversation.CriticalModeIntervals

/-!
# The literal growing sinusoid has divergent running-record payments

B10-L03's consumer uses the real-time running supremum on [0,t], retaining
the initial zero. Its quarter-period endpoints are actual record contacts;
the exponential envelope bounds every
earlier time and is attained at each endpoint. Positive growth gives a
strictly positive common lower bound on every native square payment between
these contacts. Nonpositive growth keeps every real running level at most one.
This is a single-mode comparison, not the actual zeta superposition or primes.

Human stopping-selector direction: grwtsk contributors. Local continuous-time
regulator, contacts and divergence proof: OpenAI Codex. Mathlib ordered
suprema, exponentials and trigonometry retain upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.GrowingModeRecords
open Filter Set
noncomputable section

def profile (delta gamma t : ℝ) : ℝ := Real.exp (delta * t) * Real.sin (gamma * t)
def recordLevel (delta gamma t : ℝ) : ℝ :=
  sSup (insert 0 (profile delta gamma '' Icc 0 t))
def recordGap (delta gamma : ℝ) (k : ℕ) : ℝ :=
  recordLevel delta gamma (CriticalModeIntervals.finish gamma (k + 1)) -
    recordLevel delta gamma (CriticalModeIntervals.finish gamma k)
def recordWidth (gamma : ℝ) (k : ℕ) : ℝ :=
  2 * (Real.exp (-CriticalModeIntervals.finish gamma k / 2) -
    Real.exp (-CriticalModeIntervals.finish gamma (k + 1) / 2))
def recordSquarePayment (delta gamma : ℝ) (k : ℕ) : ℝ :=
  recordGap delta gamma k ^ 2 / recordWidth gamma k

theorem nonnegative_growth_envelope {delta gamma t : ℝ} (hd : 0 ≤ delta) (_ht : 0 ≤ t) :
    ∀ y ∈ insert 0 (profile delta gamma '' Icc 0 t), y ≤ Real.exp (delta * t) := by
  intro y hy
  rcases mem_insert_iff.mp hy with rfl | hy
  · exact (Real.exp_pos _).le
  · obtain ⟨s, hs, rfl⟩ := hy
    have hf : profile delta gamma s ≤ Real.exp (delta * s) := by
      unfold profile
      simpa only [mul_one] using mul_le_mul_of_nonneg_left (Real.sin_le_one (gamma * s))
        (Real.exp_pos _).le
    exact hf.trans (Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left hs.2 hd))

theorem envelope_contact_is_actual_record {delta gamma t : ℝ}
    (hd : 0 ≤ delta) (ht : 0 ≤ t) (hcontact : Real.sin (gamma * t) = 1) :
    recordLevel delta gamma t = Real.exp (delta * t) := by
  have hu := nonnegative_growth_envelope (gamma := gamma) hd ht
  have hb : BddAbove (insert 0 (profile delta gamma '' Icc 0 t)) := ⟨_, hu⟩
  have hm : Real.exp (delta * t) ∈ insert 0 (profile delta gamma '' Icc 0 t) := by
    apply mem_insert_of_mem
    exact ⟨t, ⟨ht, le_rfl⟩, by simp [profile, hcontact]⟩
  exact (csSup_le ⟨0, mem_insert _ _⟩ hu).antisymm (le_csSup hb hm)

theorem quarter_endpoint_nonnegative {gamma : ℝ} (hg : 0 < gamma) (k : ℕ) :
    0 ≤ CriticalModeIntervals.finish gamma k := by
  unfold CriticalModeIntervals.finish CriticalModeIntervals.start
  positivity

theorem actual_quarter_record {delta gamma : ℝ} (hd : 0 ≤ delta) (hg : 0 < gamma) (k : ℕ) :
    recordLevel delta gamma (CriticalModeIntervals.finish gamma k) =
      Real.exp (delta * CriticalModeIntervals.finish gamma k) :=
  envelope_contact_is_actual_record hd (quarter_endpoint_nonnegative hg k)
    (CriticalModeIntervals.exact_interval_endpoints hg k).2

theorem quarter_step (gamma : ℝ) (k : ℕ) :
    CriticalModeIntervals.finish gamma (k + 1) =
      CriticalModeIntervals.finish gamma k + 2 * Real.pi / gamma := by
  unfold CriticalModeIntervals.finish CriticalModeIntervals.start
  push_cast
  ring

theorem exact_record_gap {delta gamma : ℝ} (hd : 0 ≤ delta) (hg : 0 < gamma) (k : ℕ) :
    recordGap delta gamma k = Real.exp (delta * CriticalModeIntervals.finish gamma k) *
      (Real.exp (delta * (2 * Real.pi / gamma)) - 1) := by
  rw [recordGap, actual_quarter_record hd hg, actual_quarter_record hd hg, quarter_step,
    mul_add, Real.exp_add]
  ring

theorem native_record_width_positive {gamma : ℝ} (hg : 0 < gamma) (k : ℕ) :
    0 < recordWidth gamma k := by
  rw [recordWidth]
  have hp : 0 < 2 * Real.pi / gamma := by positivity
  have he : -CriticalModeIntervals.finish gamma (k + 1) / 2 <
      -CriticalModeIntervals.finish gamma k / 2 := by rw [quarter_step]; linarith
  exact mul_pos (by norm_num) (sub_pos.mpr (Real.exp_lt_exp.mpr he))

theorem native_record_width_le_two {gamma : ℝ} (hg : 0 < gamma) (k : ℕ) :
    recordWidth gamma k ≤ 2 := by
  have ht := quarter_endpoint_nonnegative hg k
  have he : Real.exp (-CriticalModeIntervals.finish gamma k / 2) ≤ 1 := by
    simpa only [Real.exp_zero] using Real.exp_le_exp.mpr (by linarith :
      -CriticalModeIntervals.finish gamma k / 2 ≤ 0)
  have hp := Real.exp_pos (-CriticalModeIntervals.finish gamma (k + 1) / 2)
  unfold recordWidth
  linarith

theorem growing_record_payment_lower {delta gamma : ℝ} (hd : 0 < delta) (hg : 0 < gamma)
    (k : ℕ) :
    (Real.exp (delta * (2 * Real.pi / gamma)) - 1) ^ 2 / 2 ≤ recordSquarePayment delta gamma k := by
  let d : ℝ := Real.exp (delta * (2 * Real.pi / gamma)) - 1
  have hd0 : 0 < d := by
    have hx : 0 < delta * (2 * Real.pi / gamma) := by positivity
    have he : 1 < Real.exp (delta * (2 * Real.pi / gamma)) := by
      simpa only [Real.exp_zero] using Real.exp_lt_exp.mpr hx
    exact sub_pos.mpr he
  have he : 1 ≤ Real.exp (delta * CriticalModeIntervals.finish gamma k) := by
    simpa only [Real.exp_zero] using Real.exp_le_exp.mpr
      (mul_nonneg hd.le (quarter_endpoint_nonnegative hg k))
  have hgap : d ≤ recordGap delta gamma k := by
    rw [exact_record_gap hd.le hg]
    change d ≤ Real.exp (delta * CriticalModeIntervals.finish gamma k) * d
    simpa only [one_mul] using mul_le_mul_of_nonneg_right he hd0.le
  have hs : d ^ 2 ≤ recordGap delta gamma k ^ 2 :=
    (sq_le_sq₀ hd0.le (hd0.le.trans hgap)).mpr hgap
  unfold recordSquarePayment
  apply (div_le_div_iff₀ (by norm_num) (native_record_width_positive hg k)).mpr
  have hw := mul_le_mul_of_nonneg_left (native_record_width_le_two hg k) (sq_nonneg d)
  change d ^ 2 * recordWidth gamma k ≤ recordGap delta gamma k ^ 2 * 2
  nlinarith

theorem growing_real_record_payments_not_summable {delta gamma : ℝ}
    (hd : 0 < delta) (hg : 0 < gamma) : ¬ Summable (recordSquarePayment delta gamma) := by
  have hx : 0 < delta * (2 * Real.pi / gamma) := by positivity
  have he : 1 < Real.exp (delta * (2 * Real.pi / gamma)) := by
    simpa only [Real.exp_zero] using Real.exp_lt_exp.mpr hx
  have hC : 0 < (Real.exp (delta * (2 * Real.pi / gamma)) - 1) ^ 2 / 2 := by positivity
  intro hs
  have hb := hs.tendsto_atTop_zero.eventually_lt_const hC
  obtain ⟨k, hk⟩ := hb.exists
  exact (not_lt_of_ge (growing_record_payment_lower hd hg k)) hk

theorem nonpositive_growth_record_bounded {delta gamma t : ℝ} (hd : delta ≤ 0) :
    recordLevel delta gamma t ≤ 1 := by
  apply csSup_le ⟨0, mem_insert _ _⟩
  intro y hy
  rcases mem_insert_iff.mp hy with rfl | hy
  · norm_num
  · obtain ⟨s, hs, rfl⟩ := hy
    have hf : profile delta gamma s ≤ Real.exp (delta * s) := by
      unfold profile
      simpa only [mul_one] using mul_le_mul_of_nonneg_left (Real.sin_le_one (gamma * s))
        (Real.exp_pos _).le
    apply hf.trans
    simpa only [Real.exp_zero] using Real.exp_le_exp.mpr (mul_nonpos_of_nonpos_of_nonneg hd hs.1)

end
end GRWTSK.RiemannHypothesis.Conversation.GrowingModeRecords
