/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAlpogeRoundedWindowCriterion
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAlpogeFourthPowerMesh
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAlpogeRampSecant
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAlpogeSampleProductTransport
import Mathlib.Data.Nat.Sqrt

/-!
# Fourth-power sampling inside the full three-halves windows

An integer window retains its two boundary tests and all fourth powers
strictly between them. Rounding introduces no shift of either endpoint.
The centered prime ramp can be recovered between these samples through a
secant upper bound. Exponent slack absorbs the error of order sqrt(n).
-/

namespace GRWTSK.XiAlpogeFourthPowerWindowCriterion
open XiAlpogeFiniteWindowCriterion XiAlpogeRoundedWindowCriterion
open XiAlpogeFiniteRampScore XiAlpogeRationalRampWindow XiAlpogeRationalRampCenter
open XiAlpogeOrdinaryRamp XiAlpogeRoundedProduct XiAlpogeIntegerWindows

/-- The actual right boundary is the last integer whose square is at most M³. -/
def Guard (M n : ℕ) : Prop := n = M ∨ n = Nat.sqrt (M^3) ∨ ∃ k : ℕ, n = k^4

/-- The same rounded-product tests as on the integer windows, now restricted
to fourth powers and the two boundary integers. -/
def FourthPowerWindows : Prop :=
  ∀ a b : ℕ, 0 < b → b < 2*a → ∀ L : ℕ, ∃ M ≥ L,
    ∀ n : ℕ, M ≤ n → n^2 ≤ M^3 → Guard M n → roundedTest n (powerCutoff n a b)

private def GuardCeilings (t : ℝ) : Prop :=
  ∀ L : ℕ, ∃ M ≥ L, ∀ n : ℕ, M ≤ n → n^2 ≤ M^3 → Guard M n →
    centeredRamp n ≤ (n:ℝ)^t

/-- Interpolating over the exact discrete window needs only the nearest
fourth powers and clipped endpoints. This estimate uses the arithmetic ramp
secant bound on that interval. -/
private theorem fill_window {M n : ℕ} (hM : 0 < M) (hMn : M ≤ n) (hn : n^2 ≤ M^3)
    {s : ℝ} (hs : 1/2 ≤ s)
    (h : ∀ k : ℕ, M ≤ k → k^2 ≤ M^3 → Guard M k → centeredRamp k ≤ (k:ℝ)^s)
    (hsec : ∀ {a b x : ℝ}, 0 < a → a ≤ x → x ≤ b →
      centeredRamp x ≤ max (centeredRamp a) (centeredRamp b)+(b-a)^2/(8*a)) :
    centeredRamp n ≤ ((16:ℝ)^s+225)*(n:ℝ)^s := by
  let H := Nat.sqrt (M^3)
  have hnH : n ≤ H := Nat.le_sqrt'.2 hn
  obtain ⟨k,u,v,_,hMu,hun,hnv,hvH,hu,hv,hsize,hrem⟩ :=
    XiAlpogeFourthPowerMesh.exists_clipped_fourth M H n hM hMn hnH
  have gu : Guard M u := hu.elim Or.inl (fun he => Or.inr (Or.inr ⟨k,he⟩))
  have gv : Guard M v := hv.elim (fun he => Or.inr (Or.inl he)) (fun he => Or.inr (Or.inr ⟨k+1,he⟩))
  have hgu := h u hMu (Nat.le_sqrt'.1 (hun.trans hnH)) gu
  have hgv := h v (hMu.trans (hun.trans hnv)) (Nat.le_sqrt'.1 hvH) gv
  have huR : 0 < (u:ℝ) := by exact_mod_cast hM.trans_le hMu
  have hun' : (u:ℝ) ≤ n := by exact_mod_cast hun
  have hnv' : (n:ℝ) ≤ v := by exact_mod_cast hnv
  have hprop := hsec huR hun' hnv'
  have hsize' : (v:ℝ) ≤ 16*(n:ℝ) := by exact_mod_cast (hsize.trans (Nat.mul_le_mul_left 16 hun))
  have hs0 : 0 ≤ s := by linarith
  have hfour : (v:ℝ)^s ≤ (16:ℝ)^s*(n:ℝ)^s := by
    rw [← Real.mul_rpow (by norm_num) (Nat.cast_nonneg n)]
    exact Real.rpow_le_rpow (Nat.cast_nonneg _) hsize' hs0
  have hboth : max (centeredRamp u) (centeredRamp v) ≤ (16:ℝ)^s*(n:ℝ)^s := by
    exact max_le ((hgu.trans (Real.rpow_le_rpow (Nat.cast_nonneg _) (hun'.trans hnv') hs0)).trans hfour)
      (hgv.trans hfour)
  have h1n : 1 ≤ (n:ℝ) := by exact_mod_cast (hM.trans_le hMn)
  have hnrt : Real.sqrt (n:ℝ) ≤ (n:ℝ)^s := by
    rw [Real.sqrt_eq_rpow]; exact Real.rpow_le_rpow_of_exponent_le h1n hs
  have hr : ((v:ℝ)-(u:ℝ))^2/(8*(u:ℝ)) ≤ 225*Real.sqrt (n:ℝ) := by
    apply (div_le_iff₀ (by positivity)).2
    nlinarith [mul_nonneg (le_of_lt huR) (Real.sqrt_nonneg (n:ℝ))]
  linarith only [hprop,hboth,hr,hnrt]

/-- Every real window bound with exponent strictly above 1/2 follows from
the fourth-power tests and the two integer endpoints of each window. -/
private theorem real_of_guard_ceilings
    (h : ∀ s : ℝ, 1/2 < s → GuardCeilings s)
    (hsec : ∀ {a b x : ℝ}, 0 < a → a ≤ x → x ≤ b →
      centeredRamp x ≤ max (centeredRamp a) (centeredRamp b)+(b-a)^2/(8*a)) :
    WindowCeilings centeredRamp (3/2) := by
  intro t ht
  let r := (t+1/2)/2
  let s := (r+1/2)/2
  have hr : 1/2 < r := by dsimp [r]; linarith
  have hrt : r < t := by dsimp [r]; linarith
  have hs : 1/2 < s := by dsimp [s]; linarith
  have hsr : s < r := by dsimp [s]; linarith
  obtain ⟨T,hT⟩ := eventually_scaled_le hsr ((16:ℝ)^s+225)
  have hi : ∀ L : ℕ, ∃ M ≥ L, ∀ n : ℕ, M ≤ n → n^2 ≤ M^3 → centeredRamp n ≤ (n:ℝ)^r := by
    intro L
    obtain ⟨M,hM,hgrid⟩ := h s hs (max L (max 2 ⌈T⌉₊))
    have hMs : 2 ≤ M := by omega
    refine ⟨M, (Nat.le_max_left _ _).trans hM, ?_⟩
    intro n hMn hn
    have hnT : T ≤ (n : ℝ) := (Nat.le_ceil T).trans (by exact_mod_cast (show ⌈T⌉₊ ≤ n by omega))
    exact (fill_window (by omega : 0 < M) hMn hn hs.le hgrid hsec).trans (hT n hnT)
  obtain ⟨K,_,hK⟩ := unit_sqrt_absorption (theta := r) (eta := t-r) hr.le (by linarith)
    (by norm_num : 0 ≤ (18:ℝ))
  have hw := real_windows_of_integer_windows centeredRamp (fun x => 18*Real.sqrt x)
    (theta := r) (eta := t-r) (M0 := max K 2) (by linarith) hi
  have hh : ∀ y : ℝ, ∃ M : ℕ, y ≤ M ∧ ∀ x : ℝ, (M:ℝ) ≤ x →
      x ≤ (M:ℝ)^(3/2 : ℝ) → centeredRamp x ≤ x^(r+(t-r)) := by
    apply hw
    · intro n hn x hnx hxn
      have hx2 : 2 ≤ x := (show (2:ℝ) ≤ n by exact_mod_cast (show 2 ≤ n by omega)).trans hnx
      have hb := (abs_le.mp (XiAlpogeRampOscillation.centeredRamp_unit hx2 (y := n) (by
        rw [abs_of_nonneg (sub_nonneg.mpr hnx)]; linarith))).2
      linarith
    · intro x hx
      have hx0 : 0 ≤ x := (Nat.cast_nonneg (max K 2)).trans hx
      have hf := Nat.floor_le hx0
      have hKx : K ≤ ⌊x⌋₊ := (Nat.le_max_left _ _).trans (Nat.le_floor hx)
      have hb := hK ⌊x⌋₊ hKx x hf (Nat.lt_floor_add_one _)
      have hp := Real.rpow_le_rpow (Nat.cast_nonneg _) hf (show 0 ≤ r+(t-r) by linarith)
      linarith
  intro y
  obtain ⟨M,hy,hM⟩ := hh y
  exact ⟨M,hy, by simpa [show r+(t-r)=t by ring] using hM⟩

/-- Decidable arithmetic tests at the fourth powers and both boundary integers
characterize the full real-centered three-halves window property. -/
theorem centeredRamp_windows_iff_fourthPowerWindows :
    WindowCeilings centeredRamp (3/2) ↔ FourthPowerWindows := by
  constructor
  · intro hw a b hb hab L
    obtain ⟨M,hM,hgrid⟩ := (centeredRamp_windows_iff_roundedProducts.mp hw) a b hb hab L
    exact ⟨M,hM,fun n hn hsq _ => hgrid n hn hsq⟩
  · intro hguard
    let f := fun M n : ℕ => M ≤ n ∧ n^2 ≤ M^3 ∧ Guard M n
    have hsample : XiAlpogeSampleProductTransport.RoundedSampleWindows f := by
      intro a b hb hab L
      obtain ⟨M,hM,h⟩ := hguard a b hb hab L
      exact ⟨M,hM,fun n hn => h n hn.1 hn.2.1 hn.2.2⟩
    have hg := (XiAlpogeSampleProductTransport.sampleCeilings_iff_rounded
      (sample := f) (fun _ _ hs => hs.1)).mpr hsample
    apply real_of_guard_ceilings _ (fun ha hab hbx => XiAlpogeRampSecant.centeredRamp_le_secant ha hab hbx)
    intro s hs L
    obtain ⟨M,hM,h⟩ := hg s hs L
    exact ⟨M,hM,fun n hn hi hgu => h n ⟨hn,hi,hgu⟩⟩

end GRWTSK.XiAlpogeFourthPowerWindowCriterion
