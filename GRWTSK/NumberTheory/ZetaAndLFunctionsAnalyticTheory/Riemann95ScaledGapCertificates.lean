/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.Riemann95StageCertificatesCryptids
import Mathlib.Data.Nat.Sqrt

/-!
# Scale-dependent sparse certificates for the original Riemann95 checker

The pinned Chebyshev defect theorem gives contiguous bad blocks whose span
can be a fixed multiple of the defect scale at their right endpoint. This
allows unbounded gaps between sampled windows. Even one certified safe slot
per such comparison range suffices. As a concrete case, one fixed slot at
each sufficiently late square-numbered window is equivalent to RH.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Riemann95StageCertificates

open ConjectureMachines ConjectureMachines.Riemann120 Chebyshev
open GRWTSK.PrimeArgumentCounterexample

private theorem log_nat_ge_one {n : ℕ} (hn : 3 ≤ n) : 1 ≤ Real.log (n : ℝ) := by
  have hnR : (3 : ℝ) ≤ n := by exact_mod_cast hn
  rw [← Real.log_exp 1]
  exact Real.log_le_log (Real.exp_pos _) (Real.exp_one_lt_three.le.trans hnR)

private theorem sqrt_le_scale {n : ℕ} (hn : 3 ≤ n) :
    Real.sqrt (n : ℝ) ≤ defectScale n := by
  have hlog : 1 ≤ (Real.log (n : ℝ)) ^ 2 := by nlinarith [log_nat_ge_one hn]
  unfold defectScale
  exact le_mul_of_one_le_right (Real.sqrt_nonneg _) hlog

private theorem one_le_scale {n : ℕ} (hn : 3 ≤ n) : 1 ≤ defectScale n := by
  apply le_trans _ (sqrt_le_scale hn)
  rw [← Real.sqrt_one]
  apply Real.sqrt_le_sqrt
  exact_mod_cast (show 1 ≤ n by omega)

private theorem scale_le_scale {m n : ℕ} (hm : 1 ≤ m) (hmn : m ≤ n) :
    defectScale m ≤ defectScale n := by
  have hmR : (1 : ℝ) ≤ m := by exact_mod_cast hm
  have hmnR : (m : ℝ) ≤ n := by exact_mod_cast hmn
  unfold defectScale
  exact mul_le_mul (Real.sqrt_le_sqrt hmnR)
    (pow_le_pow_left₀ (Real.log_nonneg hmR) (Real.log_le_log (by linarith) hmnR) 2)
    (sq_nonneg _) (Real.sqrt_nonneg _)

/-- Under halting, every prescribed nonnegative multiple of the defect scale
fits into a bad interval beyond any input cutoff. The span is measured at the
right endpoint, so it also bounds the scale at every earlier tested point. -/
theorem exists_bad_interval_at_scaled_span
    (halts : Halts Riemann95.candidate) (bound : ℕ) (coefficient : ℝ)
    (hcoefficient : 0 ≤ coefficient) :
    ∃ first last : ℕ, max 254 bound ≤ first ∧ first ≤ last ∧
      coefficient * defectScale last ≤ ((last - first : ℕ) : ℝ) ∧
      ∀ m, first ≤ m → m ≤ last → Counterexample m := by
  have notRH := Riemann95.Semantics.halts_candidate_iff_not_riemannHypothesis.mp halts
  let cutoff := max 254 bound
  let K : ℝ := 11 + (cutoff : ℝ) + coefficient
  have hK : 0 < K := by dsimp [K]; positivity
  obtain ⟨n, hn, hnDefect⟩ : ∃ n : ℕ, 253 < n ∧
      K * defectScale n < (n : ℝ) - psi n := by
    simpa only [defectScale, mul_assoc] using
      Riemann120Analytic.not_riemannHypothesis_imp_exists_self_sub_psi_gt notRH (K := K) hK
  have hscale := one_le_scale (show 3 ≤ n by omega)
  let span := ⌈coefficient * defectScale n⌉₊
  have hspan : (span : ℝ) < coefficient * defectScale n + 1 :=
    Nat.ceil_lt_add_one (mul_nonneg hcoefficient (zero_le_one.trans hscale))
  have hcutoff : (cutoff : ℝ) ≤ (cutoff : ℝ) * defectScale n :=
    le_mul_of_one_le_right (by positivity) hscale
  have hsplit : K * defectScale n = 10 * defectScale n +
      (cutoff : ℝ) * defectScale n + coefficient * defectScale n + defectScale n := by
    dsimp [K]
    ring
  rw [hsplit] at hnDefect
  have hroomR : (cutoff : ℝ) + (span : ℝ) < n := by
    linarith only [hnDefect, psi_nonneg (n : ℝ), hspan, hcutoff, hscale]
  have hroom : cutoff + span < n := by exact_mod_cast hroomR
  have hspanLe : span ≤ n := by omega
  have hfirst : cutoff ≤ n - span := by omega
  have hbudget : 10 * defectScale n < (n : ℝ) - psi n - (span : ℝ) := by
    have hcutoffNonneg : 0 ≤ (cutoff : ℝ) := by positivity
    linarith only [hnDefect, hspan, hcutoff, hcutoffNonneg, hscale]
  refine ⟨n - span, n, hfirst, Nat.sub_le _ _, ?_, ?_⟩
  · rw [Nat.sub_sub_self hspanLe]
    exact Nat.le_ceil _
  · intro m hmFirst hmLast
    have hmN : 253 < m := by
      have h254 := (le_max_left 254 bound).trans (hfirst.trans hmFirst)
      omega
    have hshort : n ≤ m + span := by omega
    have hshortR : (n : ℝ) ≤ (m : ℝ) + (span : ℝ) := by exact_mod_cast hshort
    have hpsi := psi_mono (show (m : ℝ) ≤ n by exact_mod_cast hmLast)
    have hmDefect : 10 * defectScale m < (m : ℝ) - psi m := calc
      10 * defectScale m ≤ 10 * defectScale n :=
        mul_le_mul_of_nonneg_left (scale_le_scale (by omega) hmLast) (by norm_num)
      _ < (n : ℝ) - psi n - (span : ℝ) := hbudget
      _ ≤ (m : ℝ) - psi m := by linarith only [hpsi, hshortR]
    apply (counterexample_iff_cryptids m).mpr
    apply Riemann120Analytic.shuniaCounterexample_of_self_sub_psi_gt hmN
    simpa only [defectScale, mul_assoc] using hmDefect

/-- Align an interval from the original predicate with the 95-slot ordinal
partition. Every slot in the resulting variable-length block is bad. -/
theorem exists_all_bad_scaled_gap_block
    (halts : Halts Riemann95.candidate) (start : ℕ) (gap : ℕ → ℕ)
    {C : ℝ} (hC : 0 ≤ C)
    (hgap : ∀ w ≥ start, (gap w : ℝ) ≤ C * (1 + defectScale w)) :
    ∃ w ≥ start, ∀ i ≤ gap w, ∀ slot : Fin 95, slot ∈ badSlots (w + i) := by
  obtain ⟨a, n, ha, han, hspan, hbad⟩ := exists_bad_interval_at_scaled_span halts
    (95 * max start 1 + 2) (95 * (2 * C + 2)) (by positivity)
  have haBound : 95 * max start 1 + 2 ≤ a := (le_max_right _ _).trans ha
  have ha254 : 254 ≤ a := (le_max_left _ _).trans ha
  let w := (a - 2) / 95 + 1
  have hdecode := Nat.div_add_mod (a - 2) 95
  have hrem : (a - 2) % 95 < 95 := Nat.mod_lt _ (by decide)
  have hfloor : a ≤ 95 * w + 2 := by dsimp [w]; omega
  have hceil : 95 * w + 2 ≤ a + 95 := by dsimp [w]; omega
  have hw : start ≤ w := by
    have hstart := le_max_left start 1
    omega
  have hwPos : 1 ≤ w := by dsimp [w]; omega
  have hwN : w ≤ n := by
    have hdiv := Nat.div_le_self (a - 2) 95
    dsimp [w]
    omega
  have hs := one_le_scale (show 3 ≤ n by omega)
  have hcompare : 1 + defectScale w ≤ 2 * defectScale n := by
    linarith only [hs, scale_le_scale hwPos hwN]
  have hgw := (hgap w hw).trans (mul_le_mul_of_nonneg_left hcompare hC)
  have hneedR : ((95 * (gap w + 2) : ℕ) : ℝ) ≤ 95 * (2 * C + 2) * defectScale n := by
    push_cast
    nlinarith only [hgw, hs]
  have hneed : 95 * (gap w + 2) ≤ n - a := by exact_mod_cast hneedR.trans hspan
  refine ⟨w, hw, fun i hi slot => mem_badSlots.mpr ?_⟩
  apply hbad
  · unfold stageArgument stageOrdinal
    omega
  · have hs := slot.isLt
    unfold stageArgument stageOrdinal
    omega

/-- One safe slot, at any ordinal window in each scale-bounded comparison
range, suffices to recover RH. The coverage need not certify whole windows. -/
theorem scaled_gap_safe_slot_iff_cryptids_RH (start : ℕ) (gap : ℕ → ℕ)
    {C : ℝ} (hC : 0 ≤ C)
    (hgap : ∀ w ≥ start, (gap w : ℝ) ≤ C * (1 + defectScale w)) :
    (∀ w ≥ start, ∃ i ≤ gap w, ∃ slot : Fin 95,
      ¬ Counterexample (stageArgument (stageOrdinal (w + i) slot))) ↔ RiemannHypothesis := by
  constructor
  · intro covered
    by_contra notRH
    have halts := Riemann95.Semantics.halts_candidate_iff_not_riemannHypothesis.mpr notRH
    obtain ⟨w, hw, hbad⟩ := exists_all_bad_scaled_gap_block halts start gap hC hgap
    obtain ⟨i, hi, slot, hsafe⟩ := covered w hw
    exact hsafe (mem_badSlots.mp (hbad i hi slot))
  · intro rh w _
    exact ⟨0, Nat.zero_le _, 0, (accepts_iff _).mp
      (all_windows_accept_iff_cryptids_RH.mpr rh (w + 0)) 0⟩

/-- The interface for an implementation has separate soundness and existence
premises. A certificate refers to one literal Cryptids arithmetic argument. -/
theorem cryptids_RH_of_scaled_gap_slot_certificates {Certificate : Type*}
    (check : ℕ → Fin 95 → Certificate → Bool)
    (sound : ∀ w slot c, check w slot c = true →
      ¬ ShuniaCounterexample (stageArgument (stageOrdinal w slot)))
    (start : ℕ) (gap : ℕ → ℕ) {C : ℝ} (hC : 0 ≤ C)
    (hgap : ∀ w ≥ start, (gap w : ℝ) ≤ C * (1 + defectScale w))
    (cover : ∀ w ≥ start, ∃ i ≤ gap w, ∃ (slot : Fin 95) (c : Certificate),
      check (w + i) slot c = true) : RiemannHypothesis := by
  apply (scaled_gap_safe_slot_iff_cryptids_RH start gap hC hgap).mp
  intro w hw
  obtain ⟨i, hi, slot, c, hc⟩ := cover w hw
  exact ⟨i, hi, slot, fun h => sound _ _ c hc ((counterexample_iff_cryptids _).mp h)⟩

private theorem square_gap_bound {w : ℕ} (hw : 3 ≤ w) :
    ((2 * Nat.sqrt w + 1 : ℕ) : ℝ) ≤ 2 * (1 + defectScale w) := by
  have hsq : (Nat.sqrt w : ℝ) ^ 2 ≤ (w : ℝ) := by exact_mod_cast Nat.sqrt_le' w
  have hroot := Real.sqrt_le_sqrt hsq
  rw [Real.sqrt_sq (by positivity : 0 ≤ (Nat.sqrt w : ℝ))] at hroot
  push_cast
  linarith only [hroot, sqrt_le_scale hw]

/-- A fixed slot suffices at each square-numbered ordinal window, even
though the gaps between consecutive squares are unbounded. -/
theorem square_window_fixed_slot_safe_iff_cryptids_RH (start : ℕ) (slot : Fin 95) :
    (∀ k ≥ start, ¬ Counterexample (stageArgument (stageOrdinal (k ^ 2) slot))) ↔
      RiemannHypothesis := by
  constructor
  · intro checked
    let first := max 254 (start ^ 2)
    let gap : ℕ → ℕ := fun w => 2 * Nat.sqrt w + 1
    apply (scaled_gap_safe_slot_iff_cryptids_RH first gap (show (0 : ℝ) ≤ 2 by norm_num)
      (fun w hw => square_gap_bound (show 3 ≤ w from (by decide : 3 ≤ 254).trans
        ((le_max_left 254 (start ^ 2)).trans hw)))).mp
    intro w hw
    let s := Nat.sqrt w
    let i := (s + 1) ^ 2 - w
    have hlo : s ^ 2 ≤ w := Nat.sqrt_le' w
    have hhi : w < (s + 1) ^ 2 := Nat.lt_succ_sqrt' w
    have hsq : (s + 1) ^ 2 = s ^ 2 + (2 * s + 1) := by ring
    have haddr : w + i = (s + 1) ^ 2 := by dsimp [i]; omega
    have hi : i ≤ gap w := by
      change i ≤ 2 * s + 1
      omega
    have hstart : start ≤ s := Nat.le_sqrt'.mpr ((le_max_right _ _).trans hw)
    refine ⟨i, hi, slot, ?_⟩
    rw [haddr]
    exact checked (s + 1) (hstart.trans (Nat.le_succ s))
  · intro rh k _
    exact (accepts_iff _).mp (all_windows_accept_iff_cryptids_RH.mpr rh (k ^ 2)) slot

/-- A common immutable slot is enough for this sparse certificate supplier. -/
theorem cryptids_RH_of_square_window_slot_certificates {Certificate : Type*}
    (check : ℕ → Fin 95 → Certificate → Bool)
    (sound : ∀ w slot c, check w slot c = true →
      ¬ ShuniaCounterexample (stageArgument (stageOrdinal w slot)))
    (start : ℕ) (slot : Fin 95)
    (cover : ∀ k ≥ start, ∃ c : Certificate, check (k ^ 2) slot c = true) : RiemannHypothesis := by
  apply (square_window_fixed_slot_safe_iff_cryptids_RH start slot).mp
  intro k hk hbad
  obtain ⟨c, hc⟩ := cover k hk
  exact sound _ slot c hc ((counterexample_iff_cryptids _).mp hbad)

/-- The executable one-slot verdict for the exact original arithmetic
argument carried by a window and slot. -/
def slotAccepts (window : ℕ) (slot : Fin 95) : Bool :=
  decide (¬ Counterexample (stageArgument (stageOrdinal window slot)))

theorem slotAccepts_iff_safe (window : ℕ) (slot : Fin 95) :
    slotAccepts window slot = true ↔
      ¬ ShuniaCounterexample (stageArgument (stageOrdinal window slot)) := by
  simp only [slotAccepts, decide_eq_true_eq, counterexample_iff_cryptids]

theorem window_accepts_iff_all_slots_accept (window : ℕ) :
    accepts window = true ↔ ∀ slot : Fin 95, slotAccepts window slot = true := by
  simp only [accepts_iff, slotAccepts, decide_eq_true_eq]

theorem square_window_slot_accepts_iff_cryptids_RH (start : ℕ) (slot : Fin 95) :
    (∀ k ≥ start, slotAccepts (k ^ 2) slot = true) ↔ RiemannHypothesis := by
  simpa only [slotAccepts, decide_eq_true_eq] using
    square_window_fixed_slot_safe_iff_cryptids_RH start slot

/-- A fair enumeration of one fixed slot of the square windows is a
semidecision of halting: a rejection is an actual witness, and halting
guarantees a rejection past every tested prefix. -/
theorem cryptids_halts_iff_cofinal_rejected_square_slot (slot : Fin 95) :
    Halts Riemann95.candidate ↔ ∀ start : ℕ, ∃ k ≥ start, slotAccepts (k ^ 2) slot = false := by
  constructor
  · intro hhalts start
    by_contra hnone
    have hall (k : ℕ) (hk : start ≤ k) : slotAccepts (k ^ 2) slot = true := by
      cases he : slotAccepts (k ^ 2) slot with
      | false => exact False.elim (hnone ⟨k, hk, he⟩)
      | true => rfl
    exact (Riemann95.Semantics.halts_candidate_iff_not_riemannHypothesis.mp hhalts)
      ((square_window_slot_accepts_iff_cryptids_RH start slot).mp hall)
  · intro hrejected
    obtain ⟨k, _, hfalse⟩ := hrejected 0
    apply Riemann95.halts_candidate_iff_counterexample.mpr
    refine ⟨stageOrdinal (k ^ 2) slot, ?_⟩
    by_contra! hsafe
    have htrue := (slotAccepts_iff_safe (k ^ 2) slot).mpr hsafe
    rw [hfalse] at htrue
    cases htrue

/-- The square schedule really lies outside every bounded-gap hypothesis,
even when a finite prefix may be ignored. -/
theorem square_windows_have_unbounded_gaps (start gap : ℕ) :
    ∃ w ≥ start, ∀ i ≤ gap, ∀ k : ℕ, w + i ≠ k ^ 2 := by
  let r := start + gap + 1
  let w := r ^ 2 + 1
  have hr : start ≤ r := by dsimp [r]; omega
  have hstart : start ≤ w := by
    have hsq : r ≤ r ^ 2 := by simpa [pow_two] using Nat.le_mul_self r
    dsimp [w]
    omega
  refine ⟨w, hstart, fun i hi k h => ?_⟩
  have hlow : r ^ 2 < w + i := by dsimp [w]; omega
  have hnext : (r + 1) ^ 2 = r ^ 2 + (2 * r + 1) := by ring
  have hhigh : w + i < (r + 1) ^ 2 := by
    have hrGap : gap < 2 * r := by dsimp [r]; omega
    dsimp [w]
    omega
  by_cases hk : k ≤ r
  · exact (not_lt_of_ge (Nat.pow_le_pow_left hk 2)) (h ▸ hlow)
  · exact (not_lt_of_ge (Nat.pow_le_pow_left (show r + 1 ≤ k by omega) 2)) (h ▸ hhigh)

/-- Square-index gaps of logarithmic-square size fit inside the existing
defect-scale comparison range in ordinal windows. -/
private theorem thinned_square_gap_bound (g : ℕ → ℕ) {C : ℝ} (hC : 0 ≤ C)
    {w : ℕ} (hw : 4 ≤ w)
    (linear : g (Nat.sqrt w + 1) ≤ Nat.sqrt w + 1)
    (logarithmic : (g (Nat.sqrt w + 1) : ℝ) ≤ C * (Real.log (Nat.sqrt w + 2 : ℕ)) ^ 2) :
    ((((Nat.sqrt w + 1 + g (Nat.sqrt w + 1)) ^ 2 - w : ℕ) : ℝ)) ≤
      (5 * (1 + C)) * (1 + defectScale w) := by
  let s := Nat.sqrt w
  let d := g (s + 1)
  have hs : 2 ≤ s := Nat.le_sqrt'.mpr (by simpa using hw)
  have hfloor : s ^ 2 ≤ w := Nat.sqrt_le' w
  have hwlt : w < (s + 1) ^ 2 := Nat.lt_succ_sqrt' w
  have harg : s + 2 ≤ w := by
    have hsquare : s + 2 ≤ s ^ 2 := by nlinarith
    omega
  have root : (s : ℝ) ≤ Real.sqrt (w : ℝ) := by
    have h : (s : ℝ) ^ 2 ≤ (w : ℝ) := by exact_mod_cast hfloor
    simpa [Real.sqrt_sq (by positivity : (0 : ℝ) ≤ s)] using Real.sqrt_le_sqrt h
  have hlog : Real.log (s + 2 : ℕ) ≤ Real.log (w : ℝ) :=
    Real.log_le_log (by positivity) (by exact_mod_cast harg)
  have hlog0 : 0 ≤ Real.log (s + 2 : ℕ) := Real.log_nonneg (by exact_mod_cast (show 1 ≤ s + 2 by omega))
  have hlog1 : 1 ≤ Real.log (w : ℝ) := log_nat_ge_one (by omega)
  have hsqlog : Real.log (s + 2 : ℕ) ^ 2 ≤ Real.log (w : ℝ) ^ 2 := by
    gcongr
  have dBound : (d : ℝ) ≤ C * Real.log (w : ℝ) ^ 2 :=
    logarithmic.trans (mul_le_mul_of_nonneg_left hsqlog hC)
  have dLinear : (d : ℝ) ≤ (s : ℝ) + 1 := by exact_mod_cast linear
  have sR : (2 : ℝ) ≤ s := by exact_mod_cast hs
  have second : (2 : ℝ) * s + 1 + d ≤ 5 * Real.sqrt (w : ℝ) := by linarith
  have first : (1 : ℝ) + d ≤ (1 + C) * Real.log (w : ℝ) ^ 2 := by
    have h : 1 ≤ Real.log (w : ℝ) ^ 2 := by nlinarith
    linarith
  change (((s + 1 + d) ^ 2 - w : ℕ) : ℝ) ≤ _
  have enough : w ≤ (s + 1 + d) ^ 2 :=
    hwlt.le.trans (Nat.pow_le_pow_left (Nat.le_add_right _ _) 2)
  rw [Nat.cast_sub enough, Nat.cast_pow]
  push_cast
  have floorR : (s : ℝ) ^ 2 ≤ (w : ℝ) := by exact_mod_cast hfloor
  calc
    _ ≤ (1 + (d : ℝ)) * (2 * s + 1 + d) := by nlinarith
    _ ≤ ((1 + C) * Real.log (w : ℝ) ^ 2) * (5 * Real.sqrt (w : ℝ)) :=
      mul_le_mul first second (by positivity) (by positivity)
    _ ≤ _ := by unfold defectScale; nlinarith

/-- It suffices to obtain one certified slot from each short interval
of square indices. Neither the winning square nor its slot is fixed. -/
theorem log_thinned_square_accepts_iff_cryptids_RH
    (start : ℕ) (g : ℕ → ℕ) {C : ℝ} (hC : 0 ≤ C)
    (linear : ∀ k ≥ start, g k ≤ k)
    (logarithmic : ∀ k ≥ start, (g k : ℝ) ≤ C * Real.log (k + 1 : ℕ) ^ 2) :
    (∀ k ≥ start, ∃ j ≤ g k, ∃ slot : Fin 95, slotAccepts ((k + j) ^ 2) slot = true) ↔
      RiemannHypothesis := by
  constructor
  · intro accepted
    let first := max 4 (start ^ 2)
    let gap (w : ℕ) := (Nat.sqrt w + 1 + g (Nat.sqrt w + 1)) ^ 2 - w
    have start_le {w : ℕ} (hw : first ≤ w) : start ≤ Nat.sqrt w + 1 :=
      (Nat.le_sqrt'.mpr ((le_max_right _ _).trans hw)).trans (Nat.le_succ _)
    apply (scaled_gap_safe_slot_iff_cryptids_RH first gap (C := 5 * (1 + C)) (by positivity)
      (fun w hw => thinned_square_gap_bound g hC ((le_max_left _ _).trans hw)
        (linear _ (start_le hw)) (logarithmic _ (start_le hw)))).mp
    intro w hw
    let s := Nat.sqrt w + 1
    obtain ⟨j, hj, slot, safe⟩ := accepted s (start_le hw)
    have before : w ≤ (s + j) ^ 2 :=
      (Nat.lt_succ_sqrt' w).le.trans (Nat.pow_le_pow_left (Nat.le_add_right _ _) 2)
    have within : (s + j) ^ 2 - w ≤ gap w :=
      Nat.sub_le_sub_right (Nat.pow_le_pow_left (Nat.add_le_add_left hj s) 2) _
    refine ⟨(s + j) ^ 2 - w, within, slot, ?_⟩
    rw [Nat.add_sub_of_le before]
    exact fun bad => (slotAccepts_iff_safe _ _).mp safe ((counterexample_iff_cryptids _).mp bad)
  · intro rh k _
    refine ⟨0, Nat.zero_le _, 0, ?_⟩
    exact (window_accepts_iff_all_slots_accept ((k + 0) ^ 2)).mp
      (all_windows_accept_iff_cryptids_RH.mpr rh _) 0

/-- A concrete gap allowance that grows without a uniform bound. -/
noncomputable def logSquareAllowance (k : ℕ) : ℕ :=
  min k ⌊Real.log (k + 1 : ℕ) ^ 2⌋₊

theorem logSquareAllowance_unbounded (B : ℕ) :
    ∃ k, B ≤ logSquareAllowance k := by
  obtain ⟨k, hk⟩ := exists_nat_gt (max (B : ℝ) (Real.exp (Real.sqrt B)))
  have hB : B ≤ k := by exact_mod_cast (le_max_left _ _).trans hk.le
  have hExp : Real.exp (Real.sqrt B) ≤ (k + 1 : ℕ) := by
    exact (le_max_right _ _).trans (hk.le.trans (by push_cast; linarith))
  have hLog := Real.log_le_log (Real.exp_pos _) hExp
  rw [Real.log_exp] at hLog
  have sq := pow_le_pow_left₀ (Real.sqrt_nonneg (B : ℝ)) hLog 2
  rw [Real.sq_sqrt (by positivity : (0 : ℝ) ≤ B)] at sq
  exact ⟨k, le_min hB ((Nat.le_floor_iff (by positivity)).2 sq)⟩

private theorem logSquareAllowance_le_log_square (k : ℕ) :
    (logSquareAllowance k : ℝ) ≤ Real.log (k + 1 : ℕ) ^ 2 := by
  have bound : (logSquareAllowance k : ℝ) ≤
      (⌊Real.log (k + 1 : ℕ) ^ 2⌋₊ : ℕ) := by
    unfold logSquareAllowance
    exact Nat.cast_le.mpr (min_le_right _ _)
  exact bound.trans (Nat.floor_le (by positivity))

theorem cryptids_RH_of_logSquareAllowance_certificates {Certificate : Type*}
    (check : ℕ → Fin 95 → Certificate → Bool)
    (sound : ∀ w slot c, check w slot c = true →
      ¬ ShuniaCounterexample (stageArgument (stageOrdinal w slot)))
    (start : ℕ)
    (cover : ∀ k ≥ start, ∃ j ≤ logSquareAllowance k, ∃ (slot : Fin 95) (c : Certificate),
      check ((k + j) ^ 2) slot c = true) : RiemannHypothesis := by
  apply (log_thinned_square_accepts_iff_cryptids_RH start logSquareAllowance
    (C := 1) (by norm_num) (fun _ _ => min_le_left _ _)
    (fun k _ => by simpa only [one_mul] using logSquareAllowance_le_log_square k)).mp
  intro k hk
  obtain ⟨j, hj, slot, c, hc⟩ := cover k hk
  exact ⟨j, hj, slot, (slotAccepts_iff_safe _ _).2 (sound _ _ c hc)⟩

/-- Halting forces arbitrarily late blocks in the square index on which
every executable slot verdict rejects. Any such block supplies a native
counterexample, since its initial square and slot zero are present. -/
theorem cryptids_halts_iff_cofinal_log_square_rejection_blocks :
    Halts Riemann95.candidate ↔
      ∀ start : ℕ, ∃ k ≥ start, ∀ j ≤ logSquareAllowance k,
        ∀ slot : Fin 95, slotAccepts ((k + j) ^ 2) slot = false := by
  classical
  rw [Riemann95.Semantics.halts_candidate_iff_not_riemannHypothesis]
  constructor
  · intro hnot start
    have hcover := log_thinned_square_accepts_iff_cryptids_RH start logSquareAllowance
      (C := 1) (by norm_num) (fun _ _ => min_le_left _ _)
      (fun k _ => by simpa only [one_mul] using logSquareAllowance_le_log_square k)
    by_contra hno
    apply hnot
    apply hcover.mp
    intro k hk
    by_contra hnone
    apply hno
    refine ⟨k, hk, fun j hj slot => ?_⟩
    cases h : slotAccepts ((k + j) ^ 2) slot with
    | false => rfl
    | true => exact (hnone ⟨j, hj, slot, h⟩).elim
  · intro hblocks rh
    obtain ⟨k, _, hblock⟩ := hblocks 0
    have hreject := hblock 0 (Nat.zero_le _) 0
    have haccept := (window_accepts_iff_all_slots_accept ((k + 0) ^ 2)).mp
      (all_windows_accept_iff_cryptids_RH.mpr rh _) 0
    rw [hreject] at haccept
    cases haccept


/-- A forward delay of order k log²(k+1) from each quadratic window
preserves the original one-slot coverage criterion. The delayed window
need not be a square. -/
theorem delayed_square_slot_accepts_iff_cryptids_RH
    (start : ℕ) (delay : ℕ → ℕ) (slot : Fin 95)
    {C : ℝ} (hC : 0 ≤ C)
    (bound : ∀ k ≥ start, (delay k : ℝ) ≤ C * k * Real.log (k + 1 : ℕ) ^ 2) :
    (∀ k ≥ start, slotAccepts (k ^ 2 + delay k) slot = true) ↔ RiemannHypothesis := by
  constructor
  · intro safe
    let first := max 4 (start ^ 2)
    let gap (w : ℕ) := (Nat.sqrt w + 1) ^ 2 + delay (Nat.sqrt w + 1) - w
    have start_le (w : ℕ) (hw : first ≤ w) : start ≤ Nat.sqrt w + 1 :=
      (Nat.le_sqrt'.mpr ((le_max_right _ _).trans hw)).trans (Nat.le_succ _)
    have range (w : ℕ) (hw : first ≤ w) :
        (gap w : ℝ) ≤ (2 + 2 * C) * (1 + defectScale w) := by
      let s := Nat.sqrt w
      have large : 4 ≤ w := (le_max_left _ _).trans hw
      have hs : 2 ≤ s := Nat.le_sqrt'.mpr (by simpa using large)
      have floor : s ^ 2 ≤ w := Nat.sqrt_le' w
      have next : w < (s + 1) ^ 2 := Nat.lt_succ_sqrt' w
      have stepBound : (s + 1) ^ 2 - w ≤ 2 * s + 1 := by
        have identity : (s + 1) ^ 2 = s ^ 2 + (2 * s + 1) := by ring
        omega
      have hsR : (s : ℝ) ≤ Real.sqrt w := by
        have h : (s : ℝ) ^ 2 ≤ (w : ℝ) := by exact_mod_cast floor
        simpa [Real.sqrt_sq (by positivity : (0 : ℝ) ≤ s)] using Real.sqrt_le_sqrt h
      have kR : (↑(s + 1) : ℝ) ≤ 2 * Real.sqrt w := by
        push_cast
        have : (2 : ℝ) ≤ s := by exact_mod_cast hs
        linarith
      have arg : s + 2 ≤ w := by
        have : s + 2 ≤ s ^ 2 := by nlinarith
        omega
      have logLe : Real.log (s + 1 + 1 : ℕ) ≤ Real.log w :=
        Real.log_le_log (by positivity) (by exact_mod_cast (show s + 1 + 1 ≤ w by omega))
      have logNonneg : 0 ≤ Real.log (s + 1 + 1 : ℕ) := Real.log_nonneg (by exact_mod_cast (show 1 ≤ s + 1 + 1 by omega))
      have squared := pow_le_pow_left₀ logNonneg logLe 2
      have hDelay : (delay (s + 1) : ℝ) ≤ (2 * C) * defectScale w := by
        calc
          _ ≤ C * (↑(s + 1) : ℝ) * Real.log (s + 1 + 1 : ℕ) ^ 2 := bound _ (start_le w hw)
          _ ≤ C * (2 * Real.sqrt w) * Real.log w ^ 2 :=
            mul_le_mul (mul_le_mul_of_nonneg_left kR hC) squared (by positivity) (by positivity)
          _ = _ := by unfold defectScale; ring
      have split : gap w = (s + 1) ^ 2 - w + delay (s + 1) := by
        change (s + 1) ^ 2 + delay (s + 1) - w = _
        omega
      have hBase : (↑((s + 1) ^ 2 - w : ℕ) : ℝ) ≤ 2 * (1 + defectScale w) :=
        (Nat.cast_le.mpr stepBound).trans (square_gap_bound (by omega))
      rw [split, Nat.cast_add]
      nlinarith only [hBase, hDelay, hC]
    apply (scaled_gap_safe_slot_iff_cryptids_RH first gap
      (C := 2 + 2 * C) (by positivity) range).mp
    intro w hw
    let k := Nat.sqrt w + 1
    have addr : w + gap w = k ^ 2 + delay k := by
      have next : w < k ^ 2 := Nat.lt_succ_sqrt' w
      change w + (k ^ 2 + delay k - w) = _
      omega
    refine ⟨gap w, le_rfl, slot, ?_⟩
    rw [addr]
    exact fun bad => (slotAccepts_iff_safe _ _).mp (safe k (start_le w hw))
      ((counterexample_iff_cryptids _).mp bad)
  · intro rh k _
    exact (window_accepts_iff_all_slots_accept _).mp (all_windows_accept_iff_cryptids_RH.mpr rh _) _

/-- The delayed schedule k²+k avoids the square schedule at every
positive index, while retaining the same RH equivalence on any tail
starting at or beyond 2. -/
theorem adjacent_product_window_control (start : ℕ) (late : 2 ≤ start) (slot : Fin 95) :
    ((∀ k ≥ start, slotAccepts (k ^ 2 + k) slot = true) ↔ RiemannHypothesis) ∧
    (∀ k ≥ start, ∀ j : ℕ, k ^ 2 + k ≠ j ^ 2) := by
  constructor
  · apply delayed_square_slot_accepts_iff_cryptids_RH start id slot (C := 1) (by norm_num)
    intro k hk
    have hlog := log_nat_ge_one (show 3 ≤ k + 1 by omega)
    have square : 1 ≤ Real.log (k + 1 : ℕ) ^ 2 := by nlinarith
    simpa only [id_eq, one_mul, mul_one] using
      mul_le_mul_of_nonneg_left square (show (0 : ℝ) ≤ k by positivity)
  · intro k hk j eq
    have high : k ^ 2 + k < (k + 1) ^ 2 := by nlinarith
    by_cases h : j ≤ k
    · have bound := Nat.pow_le_pow_left h 2
      omega
    · have bound := Nat.pow_le_pow_left (show k + 1 ≤ j by omega) 2
      omega


/-- A cofinal schedule with controlled upward jumps suffices even if it
sometimes goes backwards. Only the first crossing of each window matters. -/
theorem cofinal_bounded_upward_slot_accepts_iff_cryptids_RH
    (start : ℕ) (schedule : ℕ → ℕ) {C : ℝ} (hC : 0 ≤ C)
    (positive : ∀ k ≥ start, 1 ≤ schedule k)
    (cofinal : ∀ w, ∃ k ≥ start, w ≤ schedule k)
    (jump : ∀ k ≥ start,
      ((schedule (k + 1) - schedule k : ℕ) : ℝ) ≤ C * (1 + defectScale (schedule k))) :
    (∀ k ≥ start, ∃ slot : Fin 95, slotAccepts (schedule k) slot = true) ↔
      RiemannHypothesis := by
  constructor
  · intro accepted
    let gap (w : ℕ) := ⌈C * (1 + defectScale w)⌉₊
    have nonneg (w : ℕ) : 0 ≤ defectScale w := by unfold defectScale; positivity
    apply (scaled_gap_safe_slot_iff_cryptids_RH (schedule start + 1) gap
      (C := C + 1) (by positivity) ?_).mp
    · intro w hw
      have existsCross : ∃ offset, w ≤ schedule (start + offset) := by
        obtain ⟨k, hk, cross⟩ := cofinal w
        obtain ⟨offset, rfl⟩ := Nat.exists_eq_add_of_le hk
        exact ⟨offset, cross⟩
      obtain ⟨j, first⟩ : ∃ j, Nat.find existsCross = j + 1 := by
        have notZero : Nat.find existsCross ≠ 0 := by
          intro eq
          have spec := Nat.find_spec existsCross
          rw [eq, Nat.add_zero] at spec
          omega
        exact ⟨Nat.find existsCross - 1, by omega⟩
      have past : w ≤ schedule (start + j + 1) := by
        simpa only [first, Nat.add_assoc] using Nat.find_spec existsCross
      have before : schedule (start + j) < w := by
        exact Nat.lt_of_not_ge (Nat.find_min existsCross (by omega : j < Nat.find existsCross))
      have base := Nat.le_add_right start j
      have size : ((schedule (start + j + 1) - w : ℕ) : ℝ) ≤ C * (1 + defectScale w) := by
        calc
          _ ≤ ((schedule (start + j + 1) - schedule (start + j) : ℕ) : ℝ) :=
            Nat.cast_le.mpr (Nat.sub_le_sub_left before.le _)
          _ ≤ _ := (jump _ base).trans (mul_le_mul_of_nonneg_left
            (add_le_add le_rfl (scale_le_scale (positive _ base) before.le)) hC)
      obtain ⟨slot, safe⟩ := accepted (start + j + 1) (by omega)
      refine ⟨schedule (start + j + 1) - w, ?_, slot, ?_⟩
      · exact_mod_cast size.trans (Nat.le_ceil _)
      · rw [Nat.add_sub_of_le past]
        exact fun bad => (slotAccepts_iff_safe _ _).mp safe ((counterexample_iff_cryptids _).mp bad)
    · intro w _
      have ceil := Nat.ceil_lt_add_one (mul_nonneg hC (by linarith [nonneg w]) :
        0 ≤ C * (1 + defectScale w))
      change (↑⌈C * (1 + defectScale w)⌉₊ : ℝ) ≤ _
      nlinarith only [ceil, nonneg w]
  · intro rh k _
    exact ⟨0, (window_accepts_iff_all_slots_accept _).mp (all_windows_accept_iff_cryptids_RH.mpr rh _) _⟩

/-- Implementation soundness and certificate existence remain separate
premises for a cofinal schedule with bounded upward jumps. -/
theorem cryptids_RH_of_cofinal_bounded_upward_certificates {Certificate : Type*}
    (check : ℕ → Fin 95 → Certificate → Bool)
    (sound : ∀ w slot c, check w slot c = true →
      ¬ ShuniaCounterexample (stageArgument (stageOrdinal w slot)))
    (start : ℕ) (schedule : ℕ → ℕ) {C : ℝ} (hC : 0 ≤ C)
    (positive : ∀ k ≥ start, 1 ≤ schedule k)
    (cofinal : ∀ w, ∃ k ≥ start, w ≤ schedule k)
    (jump : ∀ k ≥ start,
      ((schedule (k + 1) - schedule k : ℕ) : ℝ) ≤ C * (1 + defectScale (schedule k)))
    (covered : ∀ k ≥ start, ∃ (slot : Fin 95) (c : Certificate),
      check (schedule k) slot c = true) : RiemannHypothesis := by
  apply (cofinal_bounded_upward_slot_accepts_iff_cryptids_RH start schedule hC positive cofinal jump).mp
  intro k hk
  obtain ⟨slot, certificate, verified⟩ := covered k hk
  exact ⟨slot, (slotAccepts_iff_safe _ _).mpr (sound _ _ certificate verified)⟩

/-- Alternating backward moves do not invalidate the coverage criterion. -/
theorem backward_step_schedule_control :
    let schedule (k : ℕ) := k / 2 + if k % 2 = 0 then 2 else 1
    schedule 1 < schedule 0 ∧
      ((∀ k, ∃ slot : Fin 95, slotAccepts (schedule k) slot = true) ↔ RiemannHypothesis) := by
  let schedule (k : ℕ) := k / 2 + if k % 2 = 0 then 2 else 1
  change schedule 1 < schedule 0 ∧ _
  refine ⟨by decide, ?_⟩
  have criterion := cofinal_bounded_upward_slot_accepts_iff_cryptids_RH 0 schedule
    (C := 2) (by norm_num) ?_ ?_ ?_
  · simpa using criterion
  · intro k _
    dsimp [schedule]
    split <;> omega
  · intro w
    refine ⟨2 * w, Nat.zero_le _, ?_⟩
    dsimp [schedule]
    split <;> omega
  · intro k _
    have h : schedule (k + 1) - schedule k ≤ 2 := by
      dsimp [schedule]
      split <;> split <;> omega
    have scale : 0 ≤ defectScale (schedule k) := by unfold defectScale; positivity
    have hr : ((schedule (k + 1) - schedule k : ℕ) : ℝ) ≤ 2 := by exact_mod_cast h
    linarith

end GRWTSK.NumberTheory.Riemann95StageCertificates
