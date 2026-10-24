# Complete source: GRWTSK.NumberTheory.Moebius.LogarithmicPickupSampling

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1eb0558ffdaf4ae826fea883a8c60a3e3fefdb5e` · SHA-256 `cdd1cb8fde3bcfffee6429f651328626b1bf5137b30deafbab4046adcc56a839`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Lean, Mathlib and imported project sources retain their original credits/licenses.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. Owners: #335 / #334 RH-E02.
-/
import GRWTSK.NumberTheory.Moebius.CofinalEnergyDamping

/-!
# Logarithmic sampling with a paid actual-source interpolation error

Freeze the EXISTING signed pickup at `log (floor (exp u))`, not its two
constituent prefixes separately. The closed-prefix identity derives the exact
error. The elementary bound on the actual Mertens prefix gives
`|wholePickup u - sampledPickup u| <= exp (-u / 2)` for `u >= 0`.
Consequently its squared error is integrable even with no damping. For every
`-1 < sigma`, weighted square integrability of the two source-identical
waveforms is equivalent. This does not prove either waveform integrable at a
new positive damping, prove a cancellation supplier, or decrease the abscissa.

All proof scripts await exact-head elaboration and transitive trust review.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open MeasureTheory Set
open scoped BigOperators

/-- The same signed source evaluated at the preceding logarithmic integer event. -/
def sampledPickup (u : ℝ) : ℝ :=
  wholePickup (Real.log (⌊Real.exp u⌋₊ : ℝ))

theorem sampledPickup_measurable : Measurable sampledPickup := by
  exact (measurable_of_countable
    (fun N : ℕ ↦ wholePickup (Real.log (N : ℝ)))).comp
      ((Nat.measurable_floor (R := ℝ)).comp Real.continuous_exp.measurable)

theorem floor_exp_ge_one {u : ℝ} (hu : 0 ≤ u) : 1 ≤ ⌊Real.exp u⌋₊ := by
  apply (Nat.one_le_floor_iff _).mpr
  simpa only [Real.exp_zero] using Real.exp_le_exp.mpr hu

/-- The finite source, with BOTH prefixes at the same closed integer cutoff. -/
theorem wholePickup_log_nat (n : ℕ) (hn : 1 ≤ n) :
    wholePickup (Real.log (n : ℝ)) =
      2 * (∑ k ∈ Finset.Icc 1 n, moebiusReal k * (Real.sqrt k)⁻¹) -
        2 * (Real.sqrt n)⁻¹ * mertensPrefix (n : ℝ) := by
  have hnreal : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hnpos : (0 : ℝ) < n := lt_of_lt_of_le zero_lt_one hnreal
  simpa only [Real.exp_log hnpos, Nat.floor_natCast,
    pickup_exp_negative_log_half hn] using
      (wholePickup_closed_prefix_flux (Real.log_nonneg hnreal))

@[simp] theorem sampledPickup_zero : sampledPickup 0 = 0 := by
  simp [sampledPickup]

/-- Every retained logarithmic sample is exactly a value of the original pickup. -/
theorem sampledPickup_at_log_nat (n : ℕ) (hn : 1 ≤ n) :
    sampledPickup (Real.log (n : ℝ)) = wholePickup (Real.log (n : ℝ)) := by
  have hnpos : (0 : ℝ) < n := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hn)
  simp only [sampledPickup, Real.exp_log hnpos, Nat.floor_natCast]

/-- Half-open cells own the left event. No midpoint or critical-line projection is used. -/
theorem sampledPickup_on_cell (n : ℕ) (hn : 1 ≤ n) {u : ℝ}
    (hu : u ∈ Ico (Real.log (n : ℝ)) (Real.log ((n : ℝ) + 1))) :
    sampledPickup u = wholePickup (Real.log (n : ℝ)) := by
  have hnpos : (0 : ℝ) < n := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hn)
  have hlo : (n : ℝ) ≤ Real.exp u :=
    (Real.log_le_iff_le_exp hnpos).mp hu.1
  have hhi : Real.exp u < (n : ℝ) + 1 := by
    simpa only [Real.exp_log (by positivity : (0 : ℝ) < (n : ℝ) + 1)] using
      Real.exp_lt_exp.mpr hu.2
  have hfloor := (Nat.floor_eq_iff (Real.exp_pos u).le).mpr ⟨hlo, hhi⟩
  simp only [sampledPickup, hfloor]

/-- The cancellation of the common reciprocal-square-root prefix is DERIVED. -/
theorem sampling_difference {u : ℝ} (hu : 0 ≤ u) :
    wholePickup u - sampledPickup u =
      2 * mertensPrefix (⌊Real.exp u⌋₊ : ℝ) *
        ((Real.sqrt (⌊Real.exp u⌋₊ : ℝ))⁻¹ - Real.exp (-u / 2)) := by
  rw [sampledPickup, wholePickup_log_nat _ (floor_exp_ge_one hu),
    wholePickup_closed_prefix_flux hu]
  have hm : mertensPrefix (Real.exp u) =
      mertensPrefix (⌊Real.exp u⌋₊ : ℝ) := by
    simp only [mertensPrefix, Nat.floor_natCast]
  rw [hm]
  ring

/-- Elementary scalar estimate used only after the exact arithmetic identity.
The unit-width squared-radius condition is the full floor-cell cost. -/
theorem cell_drift_bound {a b m : ℝ} (ha : 0 < a) (hb : 0 < b)
    (hba : b ≤ a) (hwidth : a ^ 2 - b ^ 2 ≤ 1) (hm : |m| ≤ b ^ 2) :
    |2 * m * (b⁻¹ - a⁻¹)| ≤ a⁻¹ := by
  have hd : 0 ≤ b⁻¹ - a⁻¹ := sub_nonneg.mpr (inv_anti₀ hb hba)
  calc
    |2 * m * (b⁻¹ - a⁻¹)| = 2 * |m| * (b⁻¹ - a⁻¹) := by
      rw [abs_mul, abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 2),
        abs_of_nonneg hd]
    _ ≤ 2 * b ^ 2 * (b⁻¹ - a⁻¹) :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left hm (by norm_num)) hd
    _ = (2 * b * (a - b)) / a := by
      field_simp [ne_of_gt ha, ne_of_gt hb]

    _ ≤ (a ^ 2 - b ^ 2) / a :=
      div_le_div_of_nonneg_right (by nlinarith [sq_nonneg (a - b)]) ha.le
    _ ≤ 1 / a := div_le_div_of_nonneg_right hwidth ha.le
    _ = a⁻¹ := by rw [one_div]

/-- A fully paid error, including all cutoffs and the Mertens endpoint term. -/
theorem sampling_difference_abs_le {u : ℝ} (hu : 0 ≤ u) :
    |wholePickup u - sampledPickup u| ≤ Real.exp (-u / 2) := by
  let N : ℕ := ⌊Real.exp u⌋₊
  have hN : 1 ≤ N := floor_exp_ge_one hu
  have hNpos : (0 : ℝ) < N := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN)
  have hNle : (N : ℝ) ≤ Real.exp u := Nat.floor_le (Real.exp_pos u).le
  have hlt : Real.exp u < (N : ℝ) + 1 := Nat.lt_floor_add_one _
  have hwidth : (Real.sqrt (Real.exp u)) ^ 2 - (Real.sqrt (N : ℝ)) ^ 2 ≤ 1 := by
    rw [Real.sq_sqrt (Real.exp_pos u).le, Real.sq_sqrt (Nat.cast_nonneg N)]
    linarith
  have hm : |mertensPrefix (N : ℝ)| ≤ (Real.sqrt (N : ℝ)) ^ 2 := by
    rw [Real.sq_sqrt (Nat.cast_nonneg N)]
    exact mertensPrefix_abs_le (Nat.cast_nonneg N)
  rw [sampling_difference hu]
  simp only [diagonal_negative_half_sqrt]
  exact cell_drift_bound (Real.sqrt_pos.mpr (Real.exp_pos u))
    (Real.sqrt_pos.mpr hNpos) (Real.sqrt_le_sqrt hNle) hwidth hm

/-- The density bound holds for any real damping; integrability needs sigma > -1. -/
theorem weighted_sampling_error_le (σ : ℝ) {u : ℝ} (hu : 0 ≤ u) :
    Real.exp (-σ * u) * (wholePickup u - sampledPickup u) ^ 2 ≤
      Real.exp (-(σ + 1) * u) := by
  have hs := (sq_le_sq₀ (abs_nonneg (wholePickup u - sampledPickup u))
    (Real.exp_pos (-u / 2)).le).mpr (sampling_difference_abs_le hu)
  rw [sq_abs] at hs
  calc
    _ ≤ Real.exp (-σ * u) * Real.exp (-u / 2) ^ 2 :=
      mul_le_mul_of_nonneg_left hs (Real.exp_pos _).le
    _ = _ := by
      rw [pow_two, ← mul_assoc, ← Real.exp_add, ← Real.exp_add]
      congr 1
      ring

theorem weighted_sampling_error_measurable (σ : ℝ) :
    Measurable (fun u : ℝ ↦
      Real.exp (-σ * u) * (wholePickup u - sampledPickup u) ^ 2) := by
  exact (Real.continuous_exp.comp (continuous_const.mul continuous_id)).measurable.mul
    ((wholePickup_measurable.sub sampledPickup_measurable).pow_const 2)

/-- No arithmetic growth supplier is used for this interpolation error. -/
theorem weighted_sampling_error_integrable {σ : ℝ} (hσ : -1 < σ) :
    IntegrableOn (fun u : ℝ ↦
      Real.exp (-σ * u) * (wholePickup u - sampledPickup u) ^ 2) (Ici 0) := by
  have he : IntegrableOn (fun u : ℝ ↦ Real.exp (-(σ + 1) * u)) (Ici 0) :=
    (integrableOn_Ici_iff_integrableOn_Ioi (by finiteness)).mpr
      (integrableOn_exp_mul_Ioi (by linarith) 0)
  apply he.mono' (weighted_sampling_error_measurable σ).aestronglyMeasurable
  filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
  rw [Real.norm_eq_abs, abs_of_nonneg
    (mul_nonneg (Real.exp_pos _).le (sq_nonneg _))]
  exact weighted_sampling_error_le σ hu

/-- The full half-line interpolation cost, also valid at sigma = 0. -/
theorem weighted_sampling_error_integral_le {σ : ℝ} (hσ : -1 < σ) :
    (∫ u in Ici (0 : ℝ),
      Real.exp (-σ * u) * (wholePickup u - sampledPickup u) ^ 2) ≤ 1 / (σ + 1) := by
  have he : IntegrableOn (fun u : ℝ ↦ Real.exp (-(σ + 1) * u)) (Ici 0) :=
    (integrableOn_Ici_iff_integrableOn_Ioi (by finiteness)).mpr
      (integrableOn_exp_mul_Ioi (by linarith) 0)
  calc
    _ ≤ ∫ u in Ici (0 : ℝ), Real.exp (-(σ + 1) * u) := by
      apply integral_mono_ae (weighted_sampling_error_integrable hσ) he
      filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
      exact weighted_sampling_error_le σ hu
    _ = 1 / (σ + 1) := by
      rw [integral_Ici_eq_integral_Ioi,
        integral_exp_mul_Ioi (by linarith : -(σ + 1) < 0)]
      simp only [mul_zero, Real.exp_zero, neg_div_neg_eq]

/-- The error is paid, not either complete waveform's undamped energy. -/
theorem undamped_sampling_error :
    IntegrableOn (fun u : ℝ ↦ (wholePickup u - sampledPickup u) ^ 2) (Ici 0) ∧
      (∫ u in Ici (0 : ℝ), (wholePickup u - sampledPickup u) ^ 2) ≤ 1 := by
  constructor
  · simpa using (weighted_sampling_error_integrable (σ := 0) (by norm_num))
  · simpa using (weighted_sampling_error_integral_le (σ := 0) (by norm_num))

/-- These algebraic comparisons retain the same complete signed difference. -/
theorem weighted_square_comparisons (σ u : ℝ) :
    (Real.exp (-σ * u) * wholePickup u ^ 2 ≤
      2 * (Real.exp (-σ * u) * sampledPickup u ^ 2) +
      2 * (Real.exp (-σ * u) * (wholePickup u - sampledPickup u) ^ 2)) ∧
    (Real.exp (-σ * u) * sampledPickup u ^ 2 ≤
      2 * (Real.exp (-σ * u) * wholePickup u ^ 2) +
      2 * (Real.exp (-σ * u) * (wholePickup u - sampledPickup u) ^ 2)) := by
  have h1 : wholePickup u ^ 2 ≤
      2 * sampledPickup u ^ 2 + 2 * (wholePickup u - sampledPickup u) ^ 2 := by
    nlinarith [sq_nonneg (wholePickup u - 2 * sampledPickup u)]
  have h2 : sampledPickup u ^ 2 ≤
      2 * wholePickup u ^ 2 + 2 * (wholePickup u - sampledPickup u) ^ 2 := by
    nlinarith [sq_nonneg (2 * wholePickup u - sampledPickup u)]
  constructor
  · nlinarith [mul_le_mul_of_nonneg_left h1 (Real.exp_pos (-σ * u)).le]
  · nlinarith [mul_le_mul_of_nonneg_left h2 (Real.exp_pos (-σ * u)).le]

/-- An unconditional source-preserving equivalence, not an integrability supplier. -/
theorem weighted_integrable_iff_sampled {σ : ℝ} (hσ : -1 < σ) :
    IntegrableOn (fun u : ℝ ↦ Real.exp (-σ * u) * wholePickup u ^ 2) (Ici 0) ↔
      IntegrableOn (fun u : ℝ ↦ Real.exp (-σ * u) * sampledPickup u ^ 2) (Ici 0) := by
  have he := weighted_sampling_error_integrable hσ
  constructor
  · intro hi
    apply ((hi.const_mul 2).add (he.const_mul 2)).mono'
      ((Real.continuous_exp.comp (continuous_const.mul continuous_id)).measurable.mul
        (sampledPickup_measurable.pow_const 2)).aestronglyMeasurable
    exact ae_of_all _ (fun u ↦ by
      dsimp only [Function.comp_def, Pi.mul_apply, Pi.add_apply, id_eq]
      rw [Real.norm_eq_abs, abs_of_nonneg
        (mul_nonneg (Real.exp_pos _).le (sq_nonneg _))]
      exact (weighted_square_comparisons σ u).2)
  · intro hi
    apply ((hi.const_mul 2).add (he.const_mul 2)).mono'
      ((Real.continuous_exp.comp (continuous_const.mul continuous_id)).measurable.mul
        (wholePickup_measurable.pow_const 2)).aestronglyMeasurable
    exact ae_of_all _ (fun u ↦ by
      dsimp only [Function.comp_def, Pi.mul_apply, Pi.add_apply, id_eq]
      rw [Real.norm_eq_abs, abs_of_nonneg
        (mul_nonneg (Real.exp_pos _).le (sq_nonneg _))]
      exact (weighted_square_comparisons σ u).1)

/-- A useful quantitative return; source finiteness is proved before integrating. -/
theorem actual_energy_le_sampled {σ : ℝ} (hσ : -1 < σ)
    (hs : IntegrableOn (fun u : ℝ ↦ Real.exp (-σ * u) * sampledPickup u ^ 2) (Ici 0)) :
    (∫ u in Ici (0 : ℝ), Real.exp (-σ * u) * wholePickup u ^ 2) ≤
      2 * (∫ u in Ici (0 : ℝ), Real.exp (-σ * u) * sampledPickup u ^ 2) +
        2 / (σ + 1) := by
  have he := weighted_sampling_error_integrable hσ
  have hw := (weighted_integrable_iff_sampled hσ).mpr hs
  have hb := integral_mono_ae hw ((hs.const_mul 2).add (he.const_mul 2))
    (ae_of_all _ (fun u ↦ (weighted_square_comparisons σ u).1))
  dsimp only [Pi.add_apply] at hb
  rw [integral_add (hs.const_mul 2) (he.const_mul 2), integral_const_mul,
    integral_const_mul] at hb
  apply hb.trans
  apply add_le_add le_rfl
  simpa only [mul_one_div] using
    (mul_le_mul_of_nonneg_left (weighted_sampling_error_integral_le hσ)
      (by norm_num : (0 : ℝ) ≤ 2))

/-- The converse keeps the same paid interpolation cost. -/
theorem sampled_energy_le_actual {σ : ℝ} (hσ : -1 < σ)
    (hw : IntegrableOn (fun u : ℝ ↦ Real.exp (-σ * u) * wholePickup u ^ 2) (Ici 0)) :
    (∫ u in Ici (0 : ℝ), Real.exp (-σ * u) * sampledPickup u ^ 2) ≤
      2 * (∫ u in Ici (0 : ℝ), Real.exp (-σ * u) * wholePickup u ^ 2) +
        2 / (σ + 1) := by
  have he := weighted_sampling_error_integrable hσ
  have hs := (weighted_integrable_iff_sampled hσ).mp hw
  have hb := integral_mono_ae hs ((hw.const_mul 2).add (he.const_mul 2))
    (ae_of_all _ (fun u ↦ (weighted_square_comparisons σ u).2))
  dsimp only [Pi.add_apply] at hb
  rw [integral_add (hw.const_mul 2) (he.const_mul 2), integral_const_mul,
    integral_const_mul] at hb
  apply hb.trans
  apply add_le_add le_rfl
  simpa only [mul_one_div] using
    (mul_le_mul_of_nonneg_left (weighted_sampling_error_integral_le hσ)
      (by norm_num : (0 : ℝ) ≤ 2))

/-- Compact-window sampled energy is finite without an arithmetic supplier. -/
theorem sampled_weighted_square_integrableOn_Icc {σ : ℝ} (hσ : -1 < σ) (T : ℝ) :
    IntegrableOn (fun u : ℝ ↦ Real.exp (-σ * u) * sampledPickup u ^ 2) (Icc 0 T) := by
  have hw : IntegrableOn (fun u : ℝ ↦ Real.exp (-σ * u) * wholePickup u ^ 2)
      (Icc 0 T) :=
    ((Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
      (wholePickup_continuous.pow 2)).integrableOn_Icc
  have he := (weighted_sampling_error_integrable hσ).mono_set
    (show Icc (0 : ℝ) T ⊆ Ici 0 from fun _ hu ↦ hu.1)
  apply ((hw.const_mul 2).add (he.const_mul 2)).mono'
    ((Real.continuous_exp.comp (continuous_const.mul continuous_id)).measurable.mul
      (sampledPickup_measurable.pow_const 2)).aestronglyMeasurable
  exact ae_of_all _ (fun u ↦ by
    dsimp only [Function.comp_def, Pi.mul_apply, Pi.add_apply, id_eq]
    rw [Real.norm_eq_abs, abs_of_nonneg
      (mul_nonneg (Real.exp_pos _).le (sq_nonneg _))]
    exact (weighted_square_comparisons σ u).2)

/-- Both finite-window returns are unconditional and uniform in the horizon.
Only the DIFFERENCE has a horizon-independent absolute energy allowance. -/
theorem finite_weighted_comparisons {σ : ℝ} (hσ : -1 < σ) (T : ℝ) :
    ((∫ u in Icc (0 : ℝ) T, Real.exp (-σ * u) * wholePickup u ^ 2) ≤
      2 * (∫ u in Icc (0 : ℝ) T, Real.exp (-σ * u) * sampledPickup u ^ 2) +
        2 / (σ + 1)) ∧
    ((∫ u in Icc (0 : ℝ) T, Real.exp (-σ * u) * sampledPickup u ^ 2) ≤
      2 * (∫ u in Icc (0 : ℝ) T, Real.exp (-σ * u) * wholePickup u ^ 2) +
        2 / (σ + 1)) := by
  have hw : IntegrableOn (fun u : ℝ ↦ Real.exp (-σ * u) * wholePickup u ^ 2)
      (Icc 0 T) :=
    ((Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
      (wholePickup_continuous.pow 2)).integrableOn_Icc
  have hs := sampled_weighted_square_integrableOn_Icc hσ T
  have heAll := weighted_sampling_error_integrable hσ
  have he := heAll.mono_set (show Icc (0 : ℝ) T ⊆ Ici 0 from fun _ hu ↦ hu.1)
  have herr : (∫ u in Icc (0 : ℝ) T,
      Real.exp (-σ * u) * (wholePickup u - sampledPickup u) ^ 2) ≤ 1 / (σ + 1) := by
    apply le_trans ?_ (weighted_sampling_error_integral_le hσ)
    apply setIntegral_mono_set heAll
      (ae_of_all _ (fun u ↦ mul_nonneg (Real.exp_pos _).le (sq_nonneg _)))
    exact ae_of_all _ (fun u hu ↦ hu.1)
  constructor
  · have hb := integral_mono_ae hw ((hs.const_mul 2).add (he.const_mul 2))
      (ae_of_all _ (fun u ↦ (weighted_square_comparisons σ u).1))
    dsimp only [Pi.add_apply] at hb
    rw [integral_add (hs.const_mul 2) (he.const_mul 2), integral_const_mul,
      integral_const_mul] at hb
    apply hb.trans
    apply add_le_add le_rfl
    simpa only [mul_one_div] using
      (mul_le_mul_of_nonneg_left herr (by norm_num : (0 : ℝ) ≤ 2))
  · have hb := integral_mono_ae hs ((hw.const_mul 2).add (he.const_mul 2))
      (ae_of_all _ (fun u ↦ (weighted_square_comparisons σ u).2))
    dsimp only [Pi.add_apply] at hb
    rw [integral_add (hw.const_mul 2) (he.const_mul 2), integral_const_mul,
      integral_const_mul] at hb
    apply hb.trans
    apply add_le_add le_rfl
    simpa only [mul_one_div] using
      (mul_le_mul_of_nonneg_left herr (by norm_num : (0 : ℝ) ≤ 2))

/-- Cofinality remains universal. The arithmetic sampled-energy premise is still open. -/
theorem abscissa_zero_iff_sampled_reciprocal :
    pickupEnergyAbscissa = 0 ↔ ∀ n : ℕ,
      IntegrableOn (fun u : ℝ ↦
        Real.exp (-CofinalDamping.reciprocalDamping n * u) * sampledPickup u ^ 2) (Ici 0) := by
  rw [CofinalDamping.abscissa_zero_iff_reciprocal]
  constructor
  · intro hp n
    exact (weighted_integrable_iff_sampled
      (by linarith [CofinalDamping.reciprocalDamping_pos n])).mp (hp n).2
  · intro hp n
    refine ⟨CofinalDamping.reciprocalDamping_pos n, ?_⟩
    exact (weighted_integrable_iff_sampled
      (by linarith [CofinalDamping.reciprocalDamping_pos n])).mpr (hp n)

/-- Reuse the old exact RH endpoint; no new arithmetic estimate is asserted. -/
theorem riemannHypothesis_of_sampled_reciprocal
    (hp : ∀ n : ℕ, IntegrableOn (fun u : ℝ ↦
      Real.exp (-CofinalDamping.reciprocalDamping n * u) * sampledPickup u ^ 2) (Ici 0)) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupEnergyAbscissa_zero
    (abscissa_zero_iff_sampled_reciprocal.mpr hp)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
```
