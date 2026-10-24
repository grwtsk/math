# Complete source: GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd5b5de2ac09e2d2f5f7f6b3b546dd1844545380` · SHA-256 `6bd2b2ca645c2b3b82e871bd07ff12dd9d2464c2a9b3dbc691a9f87ca0f7c0a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.PrimeFilterEnergy
import Mathlib.Tactic.NormNum.Prime

/-! Exact finite-window Laplace filtering. The signed boundary correction is
retained; no improper transform or arithmetic upper estimate is assumed. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC
open MeasureTheory Set
open scoped BigOperators

def noteWindowLaplace (f : ℝ → ℝ) (z : ℂ) (T : ℝ) : ℂ :=
  ∫ u in (0:ℝ)..max 0 T, Complex.exp (-z*u) * (f u : ℂ)

def noteLaplaceTail (f : ℝ → ℝ) (z : ℂ) (a T : ℝ) : ℂ :=
  ∫ u in max 0 (T-a)..max 0 T, Complex.exp (-z*u) * (f u : ℂ)

def primeLaplaceWeight (p : ℕ) (z : ℂ) : ℂ :=
  ((Real.sqrt p)⁻¹ : ℝ) * Complex.exp (-z * Real.log p)

theorem primeLaplaceWeight_eq_exp {p : ℕ} (hp : p.Prime) (z : ℂ) :
    primeLaplaceWeight p z = Complex.exp (-(z+1/2)*Real.log p) := by
  have hi := congrArg Complex.ofReal (pickup_exp_negative_log_half hp.one_le)
  have hc : (((Real.sqrt p)⁻¹ : ℝ) : ℂ) = Complex.exp (-(Real.log p : ℂ)/2) := by
    simpa using hi.symm
  rw [primeLaplaceWeight, hc, ← Complex.exp_add]
  congr 1
  ring

private theorem window_integrand_continuous {f : ℝ → ℝ} (hf : Continuous f) (z : ℂ) :
    Continuous (fun u : ℝ ↦ Complex.exp (-z*u) * (f u : ℂ)) := by
  have he : Continuous (fun u : ℝ ↦ Complex.exp (-z*u)) := by fun_prop
  exact he.mul (Complex.continuous_ofReal.comp hf)

/-- Before a prime's birth, including birth itself, filtering has no effect
on the closed recording. No positivity or transform-domain premise is used. -/
theorem noteWindowLaplace_primeFilter_before_delay {f : ℝ → ℝ} (hf0 : f 0 = 0)
    (z : ℂ) (p : ℕ) {T : ℝ} (hT : 0 ≤ T) (hpT : T ≤ Real.log p) :
    noteWindowLaplace (primeNoteFilter p f) z T = noteWindowLaplace f z T := by
  unfold noteWindowLaplace
  rw [max_eq_right hT]
  apply intervalIntegral.integral_congr
  intro u hu
  rw [uIcc_of_le hT] at hu
  have hz : causalShift (Real.log p) f u = 0 := by
    by_cases h : Real.log p ≤ u
    · have he : u = Real.log p := le_antisymm (hu.2.trans hpT) h
      simp [causalShift, he, hf0]
    · simp [causalShift, h]
  simp [primeNoteFilter, hz]

/-- A finite shifted recording transforms on the shorter window, not the
full window. Causal endpoint equality is paid by the source's value at zero. -/
theorem noteWindowLaplace_causalShift {f : ℝ → ℝ} (hf : Continuous f) (hf0 : f 0 = 0)
    (z : ℂ) {a T : ℝ} (ha : 0 ≤ a) (haT : a ≤ T) :
    noteWindowLaplace (causalShift a f) z T =
      Complex.exp (-z*a) * noteWindowLaplace f z (T-a) := by
  have hT : 0 ≤ T := ha.trans haT
  have hs := window_integrand_continuous (causalShift_continuous hf hf0 a) z
  have hz : (∫ u in (0:ℝ)..a, Complex.exp (-z*u) * (causalShift a f u : ℂ)) = 0 := by
    calc
      _ = ∫ u in (0:ℝ)..a, (0:ℂ) := by
        apply intervalIntegral.integral_congr
        intro u hu
        rw [uIcc_of_le ha] at hu
        by_cases h : a ≤ u
        · have he : u = a := le_antisymm hu.2 h
          simp [causalShift, he, hf0]
        · simp [causalShift, h]
      _ = 0 := intervalIntegral.integral_zero
  have he : (∫ u in a..T, Complex.exp (-z*u) * (causalShift a f u : ℂ)) =
      Complex.exp (-z*a) * ∫ u in (0:ℝ)..T-a, Complex.exp (-z*u) * (f u : ℂ) := by
    calc
      _ = ∫ u in a..T, Complex.exp (-z*a) *
          (Complex.exp (-z*(u-a)) * (f (u-a) : ℂ)) := by
        apply intervalIntegral.integral_congr
        intro u hu
        rw [uIcc_of_le haT] at hu
        simp only [causalShift, if_pos hu.1]
        rw [← mul_assoc, ← Complex.exp_add]
        congr 2
        ring
      _ = Complex.exp (-z*a) * ∫ u in a..T,
          Complex.exp (-z*(u-a)) * (f (u-a) : ℂ) :=
        intervalIntegral.integral_const_mul _ _
      _ = _ := by
        congr 1
        simpa only [sub_self, Complex.ofReal_sub] using intervalIntegral.integral_comp_sub_right
          (fun u ↦ Complex.exp (-z*u) * (f u : ℂ)) a (a := a) (b := T)
  unfold noteWindowLaplace
  rw [max_eq_right hT, max_eq_right (sub_nonneg.mpr haT),
    ← intervalIntegral.integral_add_adjacent_intervals
      (hs.intervalIntegrable 0 a) (hs.intervalIntegrable a T), hz, zero_add, he]

theorem noteWindowLaplace_shorter_add_tail {f : ℝ → ℝ} (hf : Continuous f)
    (z : ℂ) {a T : ℝ} (ha : 0 ≤ a) (haT : a ≤ T) :
    noteWindowLaplace f z (T-a) + noteLaplaceTail f z a T = noteWindowLaplace f z T := by
  have hT := ha.trans haT
  have hc := window_integrand_continuous hf z
  unfold noteWindowLaplace noteLaplaceTail
  rw [max_eq_right hT, max_eq_right (sub_nonneg.mpr haT)]
  exact intervalIntegral.integral_add_adjacent_intervals
    (hc.intervalIntegrable 0 (T-a)) (hc.intervalIntegrable (T-a) T)

/-- The tail is retained with its complex sign; it is not an unsigned error. -/
theorem noteWindowLaplace_primeFilter {f : ℝ → ℝ} (hf : Continuous f) (hf0 : f 0 = 0)
    (z : ℂ) {p : ℕ} (hp : p.Prime) {T : ℝ} (hpT : Real.log p ≤ T) :
    noteWindowLaplace (primeNoteFilter p f) z T =
      (1-primeLaplaceWeight p z)*noteWindowLaplace f z T +
        primeLaplaceWeight p z * noteLaplaceTail f z (Real.log p) T := by
  have ha : 0 ≤ Real.log (p:ℝ) := Real.log_nonneg (by exact_mod_cast hp.one_le)
  have hs := window_integrand_continuous (causalShift_continuous hf hf0 (Real.log p)) z
  have hc := window_integrand_continuous hf z
  have he : noteWindowLaplace (primeNoteFilter p f) z T = noteWindowLaplace f z T -
      ((Real.sqrt p)⁻¹ : ℝ) * noteWindowLaplace (causalShift (Real.log p) f) z T := by
    unfold noteWindowLaplace
    calc
      _ = ∫ u in (0:ℝ)..max 0 T, Complex.exp (-z*u) * (f u : ℂ) -
          ((Real.sqrt p)⁻¹ : ℝ) * (Complex.exp (-z*u) * (causalShift (Real.log p) f u : ℂ)) := by
        apply intervalIntegral.integral_congr
        intro u _
        simp only [primeNoteFilter, Complex.ofReal_sub, Complex.ofReal_mul]
        ring
      _ = _ := by
        rw [intervalIntegral.integral_sub (hc.intervalIntegrable _ _)
          ((hs.const_mul _).intervalIntegrable _ _), intervalIntegral.integral_const_mul]
  rw [he, noteWindowLaplace_causalShift hf hf0 z ha hpT]
  have ht := noteWindowLaplace_shorter_add_tail hf z ha hpT
  unfold primeLaplaceWeight
  linear_combination -((Real.sqrt p)⁻¹ : ℝ) * Complex.exp (-z*Real.log p) * ht

/-- Applied to an actual source cascade, with no new growth premise. -/
theorem noteWindowLaplace_cascade_insert {P : Finset ℕ} (hP : ∀ p ∈ P, p.Prime)
    {p : ℕ} (hp : p.Prime) (hpP : p ∉ P) (z : ℂ) {T : ℝ} (hpT : Real.log p ≤ T) :
    noteWindowLaplace (primeNoteCascade (insert p P)) z T =
      (1-primeLaplaceWeight p z)*noteWindowLaplace (primeNoteCascade P) z T +
        primeLaplaceWeight p z * noteLaplaceTail (primeNoteCascade P) z (Real.log p) T := by
  rw [primeNoteCascade_insert hP hp hpP]
  exact noteWindowLaplace_primeFilter (primeNoteCascade_continuous hP)
    (primeNoteCascade_zero hP) z hp hpT

theorem noteWindowLaplace_actual_cascade (z : ℂ) {T : ℝ} (hT : 0 ≤ T) :
    noteWindowLaplace wholePickup z T = noteWindowLaplace (primeNoteCascade (pickupPrimes T)) z T := by
  unfold noteWindowLaplace
  rw [max_eq_right hT]
  apply intervalIntegral.integral_congr
  intro u hu
  rw [uIcc_of_le hT] at hu
  exact congrArg (fun x : ℝ ↦ Complex.exp (-z*u)*(x:ℂ))
    (pickup_eq_prime_note_cascade hu.1 hu.2)

/-- Even the first source prime at its birth disproves the multiplier-only
finite-recording rule. This uses the actual base note, not an arbitrary test signal. -/
theorem first_prime_window_not_multiplier :
    noteWindowLaplace (primeNoteCascade {2}) 1 (Real.log 2) ≠
      (1-primeLaplaceWeight 2 1)*noteWindowLaplace baseNote 1 (Real.log 2) := by
  have ht : 0 < Real.log (2:ℝ) := Real.log_pos (by norm_num)
  have hb : ∀ u : ℝ, 0 < u → 0 < baseNote u := by
    intro u hu
    have he : Real.exp (-u/2) < 1 := Real.exp_lt_one_iff.mpr (by linarith)
    simp only [baseNote, pickupResponse, Nat.cast_one, Real.log_one, Real.sqrt_one,
      inv_one, if_pos hu.le]
    linarith
  have hf : Continuous baseNote := pickupResponse_continuous (by norm_num : 1 ≤ (1:ℕ))
  have hi : 0 < ∫ u in (0:ℝ)..Real.log 2, Real.exp (-u)*baseNote u := by
    apply intervalIntegral.integral_pos ht ((Real.continuous_exp.comp continuous_id.neg).mul hf).continuousOn
    · intro u hu
      exact (mul_pos (Real.exp_pos _) (hb u hu.1)).le
    · exact ⟨Real.log 2, ⟨ht.le, le_rfl⟩, mul_pos (Real.exp_pos _) (hb _ ht)⟩
  have hL : noteWindowLaplace baseNote 1 (Real.log 2) ≠ 0 := by
    have he : noteWindowLaplace baseNote 1 (Real.log 2) =
        ((∫ u in (0:ℝ)..Real.log 2, Real.exp (-u)*baseNote u):ℝ) := by
      unfold noteWindowLaplace
      rw [max_eq_right ht.le]
      simp only [neg_mul, one_mul, ← Complex.ofReal_neg,
        ← Complex.ofReal_exp, ← Complex.ofReal_mul]
      exact intervalIntegral.integral_ofReal
    rw [he]
    exact_mod_cast hi.ne'
  have hw : primeLaplaceWeight 2 1 ≠ 0 := by
    unfold primeLaplaceWeight
    apply mul_ne_zero
    · exact_mod_cast inv_ne_zero (Real.sqrt_pos.mpr (by norm_num : (0:ℝ) < 2)).ne'
    · exact Complex.exp_ne_zero _
  have hb0 : baseNote 0 = 0 := by simp [baseNote, pickupResponse]
  have hc : primeNoteCascade {2} = primeNoteFilter 2 baseNote := by
    simpa using primeNoteCascade_insert (P := ∅) (p := 2) (by simp) (by norm_num) (by simp)
  intro h
  rw [hc, noteWindowLaplace_primeFilter_before_delay hb0 1 2 ht.le le_rfl] at h
  have hm : primeLaplaceWeight 2 1 * noteWindowLaplace baseNote 1 (Real.log 2) = 0 := by
    linear_combination h
  exact (mul_ne_zero hw hL) hm

end GRWTSK.RiemannHypothesis.CCC
```
