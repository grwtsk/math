# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MatveevPhaseBridge.Variant03045a36fd91095287a568da21ae86a582173b3d4757105d20c08aac8adceeb4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60c0dad4b528c5b7d891471eaf3a9165f758695d` · SHA-256 `03045a36fd91095287a568da21ae86a582173b3d4757105d20c08aac8adceeb4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.PrimePhaseChord
import FormalResearch.RiemannHypothesis.Conversation.QuantitativePhaseContract

/-!
# Exact nearest-integer return from the external two-log input

Written Matveev certificate 2026-10-09: grwtsk contributors. Local geometric
return: OpenAI Codex. The external two-log lower bound remains an explicit
ordinary hypothesis. No Matveev proof, RH input or mixture decoder is admitted.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.MatveevPhaseBridge
open PrimePhaseGeometry PrimePhaseChord QuantitativePhaseContract
noncomputable section

theorem logLength_square : logLength ^ 2 = (Real.log 2) ^ 2 + (Real.log 3) ^ 2 :=
  Real.sq_sqrt (add_nonneg (sq_nonneg _) (sq_nonneg _))

theorem phase_distance_near {δ : ℝ} (hδ : 0 ≤ δ)
    (hnear : δ * Real.log 3 ≤ Real.pi) :
    2 * logLength / Real.pi * δ ≤ phaseDistance δ 0 := by
  have hl2 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hl3 : 0 ≤ Real.log (3 : ℝ) := Real.log_nonneg (by norm_num)
  have h23 : Real.log (2 : ℝ) ≤ Real.log 3 := Real.log_le_log (by norm_num) (by norm_num)
  have h2 := chord_lower_on_pi (x := δ * Real.log 2)
    (by rw [abs_of_nonneg (mul_nonneg hδ hl2)]; nlinarith)
  have h3 := chord_lower_on_pi (x := δ * Real.log 3)
    (by rw [abs_of_nonneg (mul_nonneg hδ hl3)]; exact hnear)
  rw [abs_of_nonneg (mul_nonneg hδ hl2)] at h2
  rw [abs_of_nonneg (mul_nonneg hδ hl3)] at h3
  have hs2 := pow_le_pow_left₀ (by positivity) h2 2
  have hs3 := pow_le_pow_left₀ (by positivity) h3 2
  apply (sq_le_sq₀ (mul_nonneg (div_nonneg (mul_nonneg (by norm_num) logLength_positive.le)
    Real.pi_pos.le) hδ) (show 0 ≤ phaseDistance δ 0 from norm_nonneg _)).mp
  rw [phase_distance_sq_chords]
  have he : (2 * logLength / Real.pi * δ) ^ 2 =
      (2 * (δ * Real.log 2) / Real.pi) ^ 2 + (2 * (δ * Real.log 3) / Real.pi) ^ 2 := by
    simp only [mul_pow, div_pow]
    rw [logLength_square]
    ring
  rw [he]
  exact add_le_add hs2 hs3

theorem nearest_log_size {δ H : ℝ} (hδ : 0 ≤ δ) (hδH : δ ≤ 2 * H)
    (p : Fin 2) : |(nearest (δ * primeLog p) : ℝ)| ≤ 1 + H := by
  have hl : 0 ≤ primeLog p := by fin_cases p <;> exact Real.log_nonneg (by norm_num)
  have hlpi : primeLog p ≤ Real.pi := by
    have hl3 : Real.log (3 : ℝ) ≤ 2 := by
      have h := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 3)
      linarith
    fin_cases p
    · exact (Real.log_le_log (by norm_num : (0 : ℝ) < 2) (by norm_num : (2 : ℝ) ≤ 3)).trans
        (hl3.trans Real.two_le_pi)
    · exact hl3.trans Real.two_le_pi
  have h := nearest_size (δ * primeLog p) (mul_nonneg hδ hl)
  have hterm : δ * primeLog p / (2 * Real.pi) ≤ H := by
    apply (div_le_iff₀ (by positivity : 0 < 2 * Real.pi)).2
    have h1 := mul_le_mul_of_nonneg_left hlpi hδ
    have h2 := mul_le_mul_of_nonneg_right hδH Real.pi_pos.le
    nlinarith
  linarith

theorem residual_linear_form_bound {a b x y d Λ L : ℝ}
    (hL : 0 ≤ L) (hd : 0 ≤ d) (hs : L ^ 2 = a ^ 2 + b ^ 2)
    (hrel : 2 * Real.pi * Λ = b * x - a * y)
    (henergy : x ^ 2 + y ^ 2 ≤ Real.pi ^ 2 / 4 * d ^ 2) : |Λ| ≤ L / 4 * d := by
  have hcs : (b * x - a * y) ^ 2 ≤ L ^ 2 * (x ^ 2 + y ^ 2) := by
    rw [hs]
    nlinarith [sq_nonneg (a * x + b * y)]
  have he := mul_le_mul_of_nonneg_left henergy (sq_nonneg L)
  rw [← hrel] at hcs
  have hsq : Λ ^ 2 ≤ (L / 4 * d) ^ 2 := by
    apply le_of_mul_le_mul_left (a := (2 * Real.pi) ^ 2) _ (by positivity)
    calc
      _ = (2 * Real.pi * Λ) ^ 2 := by ring
      _ ≤ L ^ 2 * (x ^ 2 + y ^ 2) := hcs
      _ ≤ L ^ 2 * (Real.pi ^ 2 / 4 * d ^ 2) := he
      _ = _ := by ring
  apply (sq_le_sq₀ (abs_nonneg _) (by positivity)).mp
  simpa only [sq_abs] using hsq

theorem nearest_linear_form_upper (δ : ℝ) :
    |(nearest (δ * Real.log 3) : ℝ) * Real.log 2 -
      (nearest (δ * Real.log 2) : ℝ) * Real.log 3| ≤ logLength / 4 * phaseDistance δ 0 := by
  have h2 := residual_paid_by_chord (nearest_residual (δ * Real.log 2))
  have h3 := residual_paid_by_chord (nearest_residual (δ * Real.log 3))
  rw [residual_chord] at h2 h3
  have hs2 := pow_le_pow_left₀ (abs_nonneg _) h2 2
  have hs3 := pow_le_pow_left₀ (abs_nonneg _) h3 2
  rw [sq_abs] at hs2 hs3
  apply residual_linear_form_bound (a := Real.log 2) (b := Real.log 3)
    (x := PrimePhaseChord.residual (δ * Real.log 2))
    (y := PrimePhaseChord.residual (δ * Real.log 3))
    logLength_positive.le (norm_nonneg _) logLength_square
  · unfold PrimePhaseChord.residual
    ring
  · change PrimePhaseChord.residual (δ * Real.log 2) ^ 2 +
      PrimePhaseChord.residual (δ * Real.log 3) ^ 2 ≤ Real.pi ^ 2 / 4 * phaseDistance δ 0 ^ 2
    rw [phase_distance_sq_chords]
    nlinarith

theorem phase_distance_far (hinput : MatveevTwoLogInput) {δ H : ℝ}
    (hδ : 0 ≤ δ) (hδH : δ ≤ 2 * H) (hfar : Real.pi < δ * Real.log 3) :
    4 * Real.exp (-(matveevExponent : ℝ)) / logLength *
      (1 + H) ^ (-(matveevExponent : ℝ)) ≤ phaseDistance δ 0 := by
  have hl : nearest (δ * Real.log 3) ≠ 0 := by
    intro hz
    have h := nearest_residual (δ * Real.log 3)
    simp only [PrimePhaseChord.residual, hz, Int.cast_zero, mul_zero, sub_zero] at h
    rw [abs_of_nonneg (mul_nonneg hδ (Real.log_nonneg (by norm_num)))] at h
    linarith
  have hB : 0 < max |(nearest (δ * Real.log 2) : ℝ)| |(nearest (δ * Real.log 3) : ℝ)| := by
    have hp : 0 < |(nearest (δ * Real.log 3) : ℝ)| := abs_pos.mpr (by exact_mod_cast hl)
    exact hp.trans_le (le_max_right _ _)
  have hBupper : max |(nearest (δ * Real.log 2) : ℝ)|
      |(nearest (δ * Real.log 3) : ℝ)| ≤ 1 + H := by
    exact max_le (nearest_log_size hδ hδH 0) (nearest_log_size hδ hδH 1)
  have hp := Real.rpow_le_rpow_of_nonpos (z := -(matveevExponent : ℝ)) hB hBupper
    (neg_nonpos.mpr (Nat.cast_nonneg _))
  have h := hinput (nearest (δ * Real.log 2)) (nearest (δ * Real.log 3)) (Or.inr hl)
  have he := mul_le_mul_of_nonneg_left hp (Real.exp_pos (-(matveevExponent : ℝ))).le
  have hu := nearest_linear_form_upper δ
  have hb := (he.trans h).trans hu
  have hr : 4 * Real.exp (-(matveevExponent : ℝ)) *
      (1 + H) ^ (-(matveevExponent : ℝ)) / logLength ≤ phaseDistance δ 0 := by
    apply (div_le_iff₀ logLength_positive).mpr
    nlinarith
  simpa [div_eq_mul_inv, mul_assoc, mul_comm, mul_left_comm] using hr

theorem phase_distance_even (x : ℝ) : phaseDistance (-x) 0 = phaseDistance x 0 := by
  apply (sq_eq_sq₀ (show 0 ≤ phaseDistance (-x) 0 from norm_nonneg _)
    (show 0 ≤ phaseDistance x 0 from norm_nonneg _)).mp
  rw [phase_distance_sq_chords, phase_distance_sq_chords]
  rw [neg_mul, neg_mul, chord_neg, chord_neg]

theorem phase_distance_absolute (γ η : ℝ) :
    phaseDistance γ η = phaseDistance |γ - η| 0 := by
  rw [phase_distance_translation]
  rcases le_total 0 (γ - η) with h | h
  · rw [abs_of_nonneg h]
  · rw [abs_of_nonpos h, phase_distance_even]

theorem phase_pointwise_of_matveev_input (hinput : MatveevTwoLogInput)
    {H δ : ℝ} (hH : 0 < H) (hδ : 0 ≤ δ) (hδH : δ ≤ 2 * H) :
    certificateConstant * (1 + H) ^ (-((matveevExponent + 1 : ℕ) : ℝ)) * δ ≤
      phaseDistance δ 0 := by
  have hpow : 0 ≤ (1 + H) ^ (-((matveevExponent + 1 : ℕ) : ℝ)) :=
    Real.rpow_nonneg (by linarith) _
  by_cases hnear : δ * Real.log 3 ≤ Real.pi
  · have hp : (1 + H) ^ (-((matveevExponent + 1 : ℕ) : ℝ)) ≤ 1 :=
      Real.rpow_le_one_of_one_le_of_nonpos (by linarith) (neg_nonpos.mpr (Nat.cast_nonneg _))
    have hc := mul_le_of_le_one_right certificateConstant_positive.le hp
    have hs := mul_le_mul_of_nonneg_right (hc.trans (min_le_left _ _)) hδ
    exact hs.trans (phase_distance_near hδ hnear)
  · have hf := phase_distance_far hinput hδ hδH (lt_of_not_ge hnear)
    have he : (1 + H) ^ (-((matveevExponent + 1 : ℕ) : ℝ)) * (1 + H) =
        (1 + H) ^ (-(matveevExponent : ℝ)) := by
      conv_lhs => arg 2; rw [← Real.rpow_one (1 + H)]
      rw [← Real.rpow_add (by linarith : 0 < 1 + H)]
      congr 1
      push_cast
      ring
    have hd := mul_le_mul_of_nonneg_left
      (hδH.trans (by linarith : 2 * H ≤ 2 * (1 + H)))
      (mul_nonneg certificateConstant_positive.le hpow)
    have hright : certificateConstant * (1 + H) ^ (-((matveevExponent + 1 : ℕ) : ℝ)) *
        (2 * (1 + H)) = 2 * certificateConstant * (1 + H) ^ (-(matveevExponent : ℝ)) := by
      calc
        _ = 2 * certificateConstant *
          ((1 + H) ^ (-((matveevExponent + 1 : ℕ) : ℝ)) * (1 + H)) := by ring
        _ = _ := by rw [he]
    rw [hright] at hd
    have hc := mul_le_mul_of_nonneg_left (min_le_right
      (2 * logLength / Real.pi) (2 * Real.exp (-(matveevExponent : ℝ)) / logLength))
      (by norm_num : (0 : ℝ) ≤ 2)
    have hs := mul_le_mul_of_nonneg_right hc
      (Real.rpow_nonneg (by linarith : 0 ≤ 1 + H) (-(matveevExponent : ℝ)))
    have hfactor : 2 * (2 * Real.exp (-(matveevExponent : ℝ)) / logLength) *
        (1 + H) ^ (-(matveevExponent : ℝ)) =
        4 * Real.exp (-(matveevExponent : ℝ)) / logLength *
          (1 + H) ^ (-(matveevExponent : ℝ)) := by ring
    rw [hfactor] at hs
    apply hd.trans
    exact hs.trans hf

/-- The complete geometric bridge is now proved. Only the exact external
two-log lower bound is required by the downstream certificate. -/
theorem phase_certificate_of_matveev_input (hinput : MatveevTwoLogInput) :
    PhaseCertificate certificateConstant (matveevExponent + 1) := by
  intro H hH γ η hγ hη
  rw [phase_distance_absolute]
  have hδH : |γ - η| ≤ 2 * H := by
    have h := abs_sub_le γ 0 η
    simp only [sub_zero, zero_sub, abs_neg] at h
    linarith
  exact phase_pointwise_of_matveev_input hinput hH (abs_nonneg _) hδH

theorem instantiated_geometric_adapter : MatveevToPhaseAdapter :=
  phase_certificate_of_matveev_input

/-- Next consumer: the actual complex joint port needs only the external
two-log input, with the elementary adapter discharged above. -/
theorem joint_port_from_two_log_input (hinput : MatveevTwoLogInput)
    {H : ℝ} (hH : 0 < H) {ρ η : ℂ}
    (hρ : ρ.re ∈ Set.Icc 0 1) (hη : η.re ∈ Set.Icc 0 1)
    (hργ : |ρ.im| ≤ H) (hηγ : |η.im| ≤ H) :
    certificateConstant / Real.sqrt 3 *
      (1 + H) ^ (-((matveevExponent + 1 : ℕ) : ℝ)) * ‖ρ - η‖ ≤
        ‖PrimePortGeometry.port ρ - PrimePortGeometry.port η‖ :=
  joint_port_of_phase_certificate (phase_certificate_of_matveev_input hinput)
    hH hρ hη hργ hηγ

end
end GRWTSK.RiemannHypothesis.Conversation.MatveevPhaseBridge
```
