import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.MeasureTheory.Function.LpSeminorm.Indicator
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.MeasureTheory.Group.Integral
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Direct comparison of one-sided wrap energy and zero extension

Local attribution is to grwtsk contributors.

The window and direction of translation are those of the periodic comparison. Before the wrap point the two squared differences agree. After
the wrap point, zero extension identifies the two terms of the wrapped
difference with whole-line differences at the original and translated
arguments. The elementary square estimate charges both terms with factor
two. Translating the latter integral lands in the interval directly to the
left of the window, so the two charged regions are disjoint up to endpoints.

An indicator supplies the pointwise zero representative for almost-everywhere
support. Translation preserves null sets and the resulting energy integrals.
The reduced wrap preserves window mass. Shifts by a whole period or more
separate the two supports up to a null endpoint, so their zero-extension
energy is twice the total mass. In particular the endpoint case is included.

The comparison gives a one-sided inequality. The equality of closed form
domains and the spectral decomposition of the periodic energy need separate
arguments. Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set Filter

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddWrapEnergy

/-- A one-sided shift on the window with at most one wrap. -/
def wrapShift (T r : ℝ) (f : ℝ → ℝ) (t : ℝ) : ℝ :=
  if t + r ≤ T then f (t + r) else f (t + r - 2 * T)

def zeroShiftSquare (r : ℝ) (f : ℝ → ℝ) (t : ℝ) : ℝ := (f (t + r) - f t) ^ 2

def wrapShiftSquare (T r : ℝ) (f : ℝ → ℝ) (t : ℝ) : ℝ := (wrapShift T r f t - f t) ^ 2

def zeroShiftEnergy (r : ℝ) (f : ℝ → ℝ) : ℝ :=
  ∫ t : ℝ, zeroShiftSquare r f t

def wrapEnergy (T r : ℝ) (f : ℝ → ℝ) : ℝ :=
  ∫ t in Icc (-T) T, wrapShiftSquare T r f t

private theorem memLp_translate {f : ℝ → ℝ} (hf : MemLp f 2 volume) (s : ℝ) :
    MemLp (fun t ↦ f (t + s)) 2 volume :=
  hf.comp_measurePreserving (measurePreserving_add_right volume s)

theorem zeroShiftSquare_integrable {f : ℝ → ℝ} (hf : MemLp f 2 volume) (r : ℝ) :
    Integrable (zeroShiftSquare r f) :=
  ((memLp_translate hf r).sub hf).integrable_sq

private theorem memLp_wrapShift {f : ℝ → ℝ} (hf : MemLp f 2 volume) (T r : ℝ) :
    MemLp (wrapShift T r f) 2 volume := by
  have hs : MeasurableSet {t : ℝ | t + r ≤ T} :=
    measurableSet_le (measurable_id.add measurable_const) measurable_const
  have hg := MemLp.piecewise hs ((memLp_translate hf r).restrict _)
    ((memLp_translate hf (r - 2 * T)).restrict _)
  convert hg using 1
  funext t
  simp only [wrapShift, piecewise, mem_ofPred_eq, ← add_sub_assoc]

theorem wrapShiftSquare_integrable {f : ℝ → ℝ} (hf : MemLp f 2 volume) (T r : ℝ) :
    Integrable (wrapShiftSquare T r f) :=
  ((memLp_wrapShift hf T r).sub hf).integrable_sq

theorem wrapShiftSquare_eq_of_le {T r t : ℝ} {f : ℝ → ℝ} (ht : t ≤ T - r) :
    wrapShiftSquare T r f t = zeroShiftSquare r f t := by
  have h : t + r ≤ T := by linarith
  simp [wrapShiftSquare, wrapShift, h, zeroShiftSquare]

theorem wrapShiftSquare_le_of_wrap {T r t : ℝ} {f : ℝ → ℝ}
    (hsupport : ∀ u, u ∉ Icc (-T) T → f u = 0) (ht : t ∈ Ioo (T - r) T) :
    wrapShiftSquare T r f t ≤
      2 * (zeroShiftSquare r f t + zeroShiftSquare r f (t - 2 * T)) := by
  have hwrap : ¬ t + r ≤ T := by linarith [ht.1]
  have hright : t + r ∉ Icc (-T) T := fun h ↦ hwrap h.2
  have hleft : t - 2 * T ∉ Icc (-T) T := by
    intro h
    linarith [h.1, ht.2]
  rw [wrapShiftSquare, wrapShift, ite_eq_right hwrap, zeroShiftSquare, zeroShiftSquare,
    hsupport _ hright, hsupport _ hleft, show t - 2 * T + r = t + r - 2 * T by ring]
  nlinarith [sq_nonneg (f (t + r - 2 * T) + f t)]

/-- The one-sided wrap costs at most twice the whole-line zero-extended shift energy. -/
theorem wrapEnergy_le_two_zeroShiftEnergy (T r : ℝ) (hr : 0 ≤ r) (hrt : r ≤ 2 * T)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume)
    (hsupport : ∀ u, u ∉ Icc (-T) T → f u = 0) :
    wrapEnergy T r f ≤ 2 * zeroShiftEnergy r f := by
  let D := zeroShiftSquare r f
  let W := wrapShiftSquare T r f
  have hd : Integrable D := zeroShiftSquare_integrable hf r
  have hw : Integrable W := wrapShiftSquare_integrable hf T r
  have hdextra : Integrable (fun t ↦ D (t - 2 * T)) := by
    simpa only [sub_eq_add_neg, Function.comp_def] using
      (measurePreserving_add_right volume (-(2 * T))).integrable_comp_of_integrable hd
  have hL : -T ≤ T - r := by linarith
  have hR : T - r ≤ T := by linarith
  have hT : -T ≤ T := hL.trans hR
  have hLwrap : (∫ t in (-T)..(T - r), W t) = ∫ t in (-T)..(T - r), D t := by
    apply intervalIntegral.integral_congr
    rw [uIcc_of_le hL]
    exact fun t ht ↦ wrapShiftSquare_eq_of_le ht.2
  have hRwrap : (∫ t in (T - r)..T, W t) ≤
      2 * ((∫ t in (T - r)..T, D t) + ∫ t in (-T - r)..(-T), D t) := by
    calc
      _ ≤ ∫ t in (T - r)..T, 2 * (D t + D (t - 2 * T)) :=
        intervalIntegral.integral_mono_on_of_le_Ioo hR hw.intervalIntegrable
          (((hd.add hdextra).const_mul 2).intervalIntegrable)
          (fun _ ht ↦ wrapShiftSquare_le_of_wrap hsupport ht)
      _ = _ := by
        rw [intervalIntegral.integral_const_mul,
          intervalIntegral.integral_add hd.intervalIntegrable hdextra.intervalIntegrable,
          intervalIntegral.integral_comp_sub_right D (2 * T)]
        rw [show T - r - 2 * T = -T - r by ring, show T - 2 * T = -T by ring]
  have hLnonneg : 0 ≤ ∫ t in (-T)..(T - r), D t :=
    intervalIntegral.integral_nonneg_of_forall hL (fun _ ↦ sq_nonneg _)
  have hdwindow : (∫ t in (-T)..(T - r), D t) + ∫ t in (T - r)..T, D t =
      ∫ t in (-T)..T, D t :=
    intervalIntegral.integral_add_adjacent_intervals hd.intervalIntegrable hd.intervalIntegrable
  have hdwhole : (∫ t in (-T - r)..(-T), D t) + ∫ t in (-T)..T, D t =
      ∫ t in (-T - r)..T, D t :=
    intervalIntegral.integral_add_adjacent_intervals hd.intervalIntegrable hd.intervalIntegrable
  have hdle : (∫ t in (-T - r)..T, D t) ≤ zeroShiftEnergy r f := by
    rw [intervalIntegral.integral_of_le (by linarith : -T - r ≤ T)]
    exact setIntegral_le_integral hd (Eventually.of_forall (fun _ ↦ sq_nonneg _))
  calc
    wrapEnergy T r f = (∫ t in (-T)..(T - r), W t) + ∫ t in (T - r)..T, W t := by
      rw [intervalIntegral.integral_add_adjacent_intervals hw.intervalIntegrable hw.intervalIntegrable,
        intervalIntegral.integral_of_le hT, wrapEnergy, integral_Icc_eq_integral_Ioc]
    _ ≤ _ := by rw [hLwrap]; linarith

theorem zeroShiftEnergy_congr_ae (r : ℝ) {f g : ℝ → ℝ} (hfg : f =ᵐ[volume] g) :
    zeroShiftEnergy r f = zeroShiftEnergy r g := by
  have hshift := (measurePreserving_add_right volume r).quasiMeasurePreserving.ae_eq_comp hfg
  apply integral_congr_ae
  filter_upwards [hfg, hshift] with t ht hs
  change f (t + r) = g (t + r) at hs
  simp only [zeroShiftSquare, ht, hs]

theorem wrapEnergy_congr_ae (T r : ℝ) {f g : ℝ → ℝ} (hfg : f =ᵐ[volume] g) :
    wrapEnergy T r f = wrapEnergy T r g := by
  have hplus := (measurePreserving_add_right volume r).quasiMeasurePreserving.ae_eq_comp hfg
  have hminus := (measurePreserving_add_right volume (r - 2 * T)).quasiMeasurePreserving.ae_eq_comp hfg
  apply integral_congr_ae
  apply ae_restrict_of_ae
  filter_upwards [hfg, hplus, hminus] with t ht hp hm
  change f (t + r) = g (t + r) at hp
  change f (t + (r - 2 * T)) = g (t + (r - 2 * T)) at hm
  have harg : t + r - 2 * T = t + (r - 2 * T) := by ring
  simp only [wrapShiftSquare, wrapShift, ht, hp, harg, hm]

/-- The comparison also holds for zero extension in the almost-everywhere sense. -/
theorem wrapEnergy_le_two_zeroShiftEnergy_ae (T r : ℝ) (hr : 0 ≤ r) (hrt : r ≤ 2 * T)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume)
    (hsupport : ∀ᵐ u : ℝ, u ∉ Icc (-T) T → f u = 0) :
    wrapEnergy T r f ≤ 2 * zeroShiftEnergy r f := by
  let g := (Icc (-T) T).indicator f
  have hgf : g =ᵐ[volume] f := by
    filter_upwards [hsupport] with t ht
    by_cases h : t ∈ Icc (-T) T
    · simp [g, h]
    · simp [g, h, ht h]
  have hg : MemLp g 2 volume := hf.indicator measurableSet_Icc
  have h := wrapEnergy_le_two_zeroShiftEnergy T r hr hrt hg (fun t ht ↦ by simp [g, ht])
  rwa [wrapEnergy_congr_ae T r hgf, zeroShiftEnergy_congr_ae r hgf] at h

/-- A one-sided wrap preserves the squared mass on the window. -/
theorem integral_wrapShift_sq_eq (T r : ℝ) (hr : 0 ≤ r) (hrt : r ≤ 2 * T)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume) :
    (∫ t in Icc (-T) T, (wrapShift T r f t) ^ 2) = ∫ t in Icc (-T) T, (f t) ^ 2 := by
  let D : ℝ → ℝ := fun t ↦ (f t) ^ 2
  let W : ℝ → ℝ := fun t ↦ (wrapShift T r f t) ^ 2
  have hd : Integrable D := hf.integrable_sq
  have hw : Integrable W := (memLp_wrapShift hf T r).integrable_sq
  have hL : -T ≤ T - r := by linarith
  have hR : T - r ≤ T := by linarith
  have hT : -T ≤ T := hL.trans hR
  have hleft : (∫ t in (-T)..(T - r), W t) = ∫ t in (-T + r)..T, D t := by
    calc
      _ = ∫ t in (-T)..(T - r), D (t + r) := by
        apply intervalIntegral.integral_congr_Ioo_of_le hL
        intro t ht
        have h : t + r ≤ T := by linarith [ht.2]
        simp [W, D, wrapShift, h]
      _ = _ := by rw [intervalIntegral.integral_comp_add_right D r, sub_add_cancel]
  have hright : (∫ t in (T - r)..T, W t) = ∫ t in (-T)..(-T + r), D t := by
    calc
      _ = ∫ t in (T - r)..T, D (t + (r - 2 * T)) := by
        apply intervalIntegral.integral_congr_Ioo_of_le hR
        intro t ht
        have h : ¬ t + r ≤ T := by linarith [ht.1]
        have heq : t + r - 2 * T = t + (r - 2 * T) := by ring
        simp [W, D, wrapShift, h, heq]
      _ = _ := by
        rw [intervalIntegral.integral_comp_add_right D (r - 2 * T)]
        rw [show T - r + (r - 2 * T) = -T by ring, show T + (r - 2 * T) = -T + r by ring]
  change (∫ t in Icc (-T) T, W t) = ∫ t in Icc (-T) T, D t
  simp only [integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le hT]
  calc
    _ = (∫ t in (-T)..(T - r), W t) + ∫ t in (T - r)..T, W t :=
      (intervalIntegral.integral_add_adjacent_intervals hw.intervalIntegrable hw.intervalIntegrable).symm
    _ = (∫ t in (-T)..(-T + r), D t) + ∫ t in (-T + r)..T, D t := by rw [hleft, hright, add_comm]
    _ = _ := intervalIntegral.integral_add_adjacent_intervals hd.intervalIntegrable hd.intervalIntegrable

theorem wrapEnergy_le_four_mass (T r : ℝ) (hr : 0 ≤ r) (hrt : r ≤ 2 * T)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume) :
    wrapEnergy T r f ≤ 4 * ∫ t in Icc (-T) T, (f t) ^ 2 := by
  have hW := (memLp_wrapShift hf T r).integrable_sq.integrableOn (s := Icc (-T) T)
  have hf' := hf.integrable_sq.integrableOn (s := Icc (-T) T)
  unfold wrapEnergy
  calc
    _ ≤ ∫ t in Icc (-T) T, 2 * ((wrapShift T r f t) ^ 2 + (f t) ^ 2) := by
      refine setIntegral_mono_on (wrapShiftSquare_integrable hf T r).integrableOn
        ((hW.add hf').const_mul 2) measurableSet_Icc (fun t _ ↦ ?_)
      unfold wrapShiftSquare
      nlinarith [sq_nonneg (wrapShift T r f t + f t)]
    _ = _ := by
      rw [integral_const_mul, integral_add hW hf', integral_wrapShift_sq_eq T r hr hrt hf]
      ring

/-- Shifts by at least one full period separate the supports up to a null endpoint. -/
theorem zeroShiftEnergy_eq_two_mass_of_period_le (T r : ℝ) (hr : 2 * T ≤ r)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume)
    (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) :
    zeroShiftEnergy r f = 2 * ∫ t : ℝ, (f t) ^ 2 := by
  have hshift := (measurePreserving_add_right volume r).quasiMeasurePreserving.ae hsupport
  have hne : ∀ᵐ t : ℝ, t ≠ -T := by
    rw [ae_iff]
    simp
  have heq : zeroShiftSquare r f =ᵐ[volume] (fun t ↦ (f (t + r)) ^ 2 + (f t) ^ 2) := by
    filter_upwards [hsupport, hshift, hne] with t hzero hshift hne
    change t + r ∉ Icc (-T) T → f (t + r) = 0 at hshift
    by_cases hin : t ∈ Icc (-T) T
    · have hout : t + r ∉ Icc (-T) T := by
        intro h
        apply hne
        linarith [hin.1, h.2]
      simp [zeroShiftSquare, hshift hout]
    · simp [zeroShiftSquare, hzero hin]
  have hi := hf.integrable_sq
  have his := (memLp_translate hf r).integrable_sq
  rw [zeroShiftEnergy, integral_congr_ae heq, integral_add his hi,
    integral_add_right_eq_self (fun t : ℝ ↦ (f t) ^ 2) r]
  ring

/-- For a longer whole-line shift, any reduced wrap is bounded by twice its shift energy. -/
theorem wrapEnergy_le_two_zeroShiftEnergy_of_period_le (T s r : ℝ)
    (hs : 0 ≤ s) (hst : s ≤ 2 * T) (hr : 2 * T ≤ r)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume)
    (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) :
    wrapEnergy T s f ≤ 2 * zeroShiftEnergy r f := by
  rw [zeroShiftEnergy_eq_two_mass_of_period_le T r hr hf hsupport]
  have hm : (∫ t in Icc (-T) T, (f t) ^ 2) ≤ ∫ t : ℝ, (f t) ^ 2 :=
    setIntegral_le_integral hf.integrable_sq (Eventually.of_forall (fun _ ↦ sq_nonneg _))
  exact (wrapEnergy_le_four_mass T s hs hst hf).trans (by linarith)

end GRWTSK.NumberTheory.WeilQuadraticForm.OddWrapEnergy
