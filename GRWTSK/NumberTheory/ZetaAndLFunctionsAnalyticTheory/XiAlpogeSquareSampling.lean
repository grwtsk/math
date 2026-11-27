/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAlpogeSampleProductTransport
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAlpogeRampLogSlope

/-!
# Full three-halves power windows sampled only at squares

The window starts at K² and ends at K³. Samples j² in this window suffice for
any observation whose variation over one square gap costs at most x^s,
eventually for every s>1/2. There is an explicit endpoint payment for the
single square below the start of an incoming real window.
-/

noncomputable section
namespace GRWTSK.XiAlpogeSquareSampling
open XiAlpogeOrdinaryRamp XiAlpogeFiniteWindowCriterion

/-- A real power ceiling tested only at integer squares j² in [K²,K³]. -/
def SquareCeilings (G : ℝ → ℝ) : Prop :=
  ∀ θ : ℝ, 1/2 < θ → ∀ L : ℕ, ∃ M ≥ L, ∀ j : ℕ, M ≤ j → j^2 ≤ M^3 →
    G ((j^2 : ℕ):ℝ) ≤ ((j^2 : ℕ):ℝ)^θ

private theorem three_halves_square (n : ℕ) :
    ((n:ℝ)^2)^(3/2:ℝ) = (n:ℝ)^3 := by
  rw [← Real.rpow_natCast (n:ℝ) 2, ← Real.rpow_mul (Nat.cast_nonneg n)]
  norm_num

private theorem floor_root {x : ℝ} (hx : 0 ≤ x) :
    (⌊Real.sqrt x⌋₊ : ℝ)^2 ≤ x ∧ x < ((⌊Real.sqrt x⌋₊ : ℝ)+1)^2 ∧
      x - (⌊Real.sqrt x⌋₊ : ℝ)^2 ≤ 3*Real.sqrt x := by
  have hi := Nat.floor_le (Real.sqrt_nonneg x)
  have hlo := Nat.lt_floor_add_one (Real.sqrt x)
  have hx2 := Real.sq_sqrt hx
  have h0 := Nat.cast_nonneg (α := ℝ) ⌊Real.sqrt x⌋₊
  have hprod := mul_le_mul_of_nonneg_right (show Real.sqrt x - (⌊Real.sqrt x⌋₊ : ℝ) ≤ 1 by linarith)
    (add_nonneg (Real.sqrt_nonneg x) h0)
  exact ⟨by nlinarith [sq_le_sq₀ h0 (Real.sqrt_nonneg x) |>.mpr hi],
    by nlinarith [sq_lt_sq₀ (Real.sqrt_nonneg x) (by linarith : 0 ≤ (⌊Real.sqrt x⌋₊:ℝ)+1) |>.mpr hlo],
    by nlinarith [Real.sqrt_nonneg x]⟩

/-- A two-sided oscillation allowance over a distance at most 3√x at scale x. -/
def SquareGapControl (G : ℝ → ℝ) : Prop :=
  ∀ s : ℝ, 1/2 < s → ∃ T : ℝ, ∀ {a b : ℝ}, T ≤ b → 1 ≤ a → a ≤ b →
    b-a ≤ 3*Real.sqrt b → |G b-G a| ≤ b^s

/-- Exact preservation of the 3/2 exponent on both sides. -/
theorem windows_iff_squareCeilings {G : ℝ → ℝ} (hg : SquareGapControl G) :
    WindowCeilings G (3/2) ↔ SquareCeilings G := by
  constructor
  · intro hw θ hθ L
    let s := (θ+1/2)/2
    have hs : 1/2 < s := by dsimp [s]; linarith
    have hs0 : 0 ≤ s := by linarith
    have hst : s < θ := by dsimp [s]; linarith
    obtain ⟨T,hT⟩ := hg s hs
    obtain ⟨A,hA⟩ := eventually_scaled_le hst (2*(4:ℝ)^s)
    let N := max (max L 1) (max ⌈T⌉₊ ⌈A⌉₊)
    obtain ⟨Y,hY,hwY⟩ := hw s hs ((N:ℝ)^2)
    have hY0 : 0 ≤ Y := (sq_nonneg _).trans hY
    let M := ⌊Real.sqrt Y⌋₊
    have hNM : N ≤ M := Nat.le_floor ((Real.le_sqrt (Nat.cast_nonneg _) hY0).mpr hY)
    have hLM : L ≤ M := ((Nat.le_max_left _ _).trans (Nat.le_max_left _ _)).trans hNM
    have h1M : 1 ≤ M := ((Nat.le_max_right _ _).trans (Nat.le_max_left _ _)).trans hNM
    have hTM : ⌈T⌉₊ ≤ M := ((Nat.le_max_left _ _).trans (Nat.le_max_right _ _)).trans hNM
    have hAM : ⌈A⌉₊ ≤ M := ((Nat.le_max_right _ _).trans (Nat.le_max_right _ _)).trans hNM
    have hM1 : 1 ≤ (M:ℝ) := by exact_mod_cast h1M
    have hMs : (M:ℝ) ≤ (M:ℝ)^2 := by nlinarith
    obtain ⟨hMY,hYn,hgap⟩ := floor_root hY0
    change (M:ℝ)^2 ≤ Y at hMY
    change Y < ((M:ℝ)+1)^2 at hYn
    have hY1 : 1 ≤ Y := (hM1.trans hMs).trans hMY
    refine ⟨M,hLM,?_⟩
    intro j hMj hend
    push_cast
    rcases eq_or_lt_of_le hMj with hj | hj
    · subst j
      have hTY := ((Nat.le_ceil T).trans (show (⌈T⌉₊:ℝ) ≤ M by exact_mod_cast hTM)).trans
        (hMs.trans hMY)
      have hdiff := (abs_le.mp (hT hTY (hM1.trans hMs) hMY hgap)).1
      have hYY : Y ≤ Y^(3/2:ℝ) := by
        simpa using Real.rpow_le_rpow_of_exponent_le hY1 (by norm_num : (1:ℝ) ≤ 3/2)
      have hYv := hwY Y le_rfl hYY
      have hpow : Y^s ≤ (4:ℝ)^s*((M:ℝ)^2)^s := by
        rw [← Real.mul_rpow (by norm_num) (sq_nonneg _)]
        apply Real.rpow_le_rpow hY0 _ hs0
        nlinarith [(sq_nonneg ((M:ℝ)-1)), hYn]
      have ha := hA ((M:ℝ)^2)
         (((Nat.le_ceil A).trans (show (⌈A⌉₊:ℝ) ≤ M by exact_mod_cast hAM)).trans hMs)
      linarith
    · have h1j : (M:ℝ)+1 ≤ j := by exact_mod_cast Nat.succ_le_of_lt hj
      have hYj : Y ≤ (j:ℝ)^2 := hYn.le.trans ((sq_le_sq₀ (by positivity) (Nat.cast_nonneg j)).mpr h1j)
      have hR := Real.rpow_le_rpow (sq_nonneg (M:ℝ)) hMY (by norm_num : (0:ℝ) ≤ 3/2)
      rw [three_halves_square] at hR
      exact (hwY _ hYj ((show (j:ℝ)^2 ≤ (M:ℝ)^3 by exact_mod_cast hend).trans hR)).trans
        (Real.rpow_le_rpow_of_exponent_le (hY1.trans hYj) hst.le)
  · intro h θ hθ L
    let s := (θ+1/2)/2
    have hs : 1/2 < s := by dsimp [s]; linarith
    have hst : s < θ := by dsimp [s]; linarith
    obtain ⟨T,hT⟩ := hg s hs
    obtain ⟨A,hA⟩ := eventually_scaled_le hst 2
    obtain ⟨M,hM,hgrid⟩ := h s hs (max (max ⌈L⌉₊ 1) (max ⌈T⌉₊ ⌈A⌉₊))
    have hLM : ⌈L⌉₊ ≤ M := ((Nat.le_max_left _ _).trans (Nat.le_max_left _ _)).trans hM
    have h1M : 1 ≤ M := ((Nat.le_max_right _ _).trans (Nat.le_max_left _ _)).trans hM
    have hTM : ⌈T⌉₊ ≤ M := ((Nat.le_max_left _ _).trans (Nat.le_max_right _ _)).trans hM
    have hAM : ⌈A⌉₊ ≤ M := ((Nat.le_max_right _ _).trans (Nat.le_max_right _ _)).trans hM
    have hM1 : 1 ≤ (M:ℝ) := by exact_mod_cast h1M
    have hMs : (M:ℝ) ≤ (M:ℝ)^2 := by nlinarith
    refine ⟨(M:ℝ)^2, ((Nat.le_ceil L).trans (by exact_mod_cast hLM)).trans hMs, ?_⟩
    intro x hMx hx
    rw [three_halves_square] at hx
    have hx0 := (sq_nonneg _).trans hMx
    let j := ⌊Real.sqrt x⌋₊
    have hMj : M ≤ j := Nat.le_floor ((Real.le_sqrt (Nat.cast_nonneg _) hx0).mpr hMx)
    obtain ⟨hjx,_,hgap⟩ := floor_root hx0
    change (j:ℝ)^2 ≤ x at hjx
    have hend : j^2 ≤ M^3 := by exact_mod_cast hjx.trans hx
    have hg0 := hgrid j hMj hend
    push_cast at hg0
    have hj1 : 1 ≤ (j:ℝ) := hM1.trans (by exact_mod_cast hMj)
    have hj2 : 1 ≤ (j:ℝ)^2 := by nlinarith
    have hTx := (((Nat.le_ceil T).trans (show (⌈T⌉₊:ℝ) ≤ M by exact_mod_cast hTM)).trans hMs).trans hMx
    have hAx := (((Nat.le_ceil A).trans (show (⌈A⌉₊:ℝ) ≤ M by exact_mod_cast hAM)).trans hMs).trans hMx
    have hd := (abs_le.mp (hT hTx hj2 hjx hgap)).2
    have hxs := Real.rpow_le_rpow (sq_nonneg _) hjx (by linarith : 0 ≤ s)
    have hu := hA x hAx
    linarith

open XiAlpogeFiniteRampScore XiAlpogeSampleProductTransport

/-- Exactly the square orders in the window from K² to K³. No extra
endpoints or off-grid observations are required. -/
def SquareMask (K n : ℕ) : Prop :=
  ∃ j : ℕ, K ≤ j ∧ j^2 ≤ K^3 ∧ n = j^2

private theorem square_mask_start {K n : ℕ} (h : SquareMask K n) : K ≤ n := by
  obtain ⟨j,hj,_,rfl⟩ := h
  exact hj.trans (by simpa [pow_two] using Nat.le_mul_self j)

private theorem square_ceilings_eq_mask :
    SquareCeilings centeredRamp ↔ SampleCeilings SquareMask := by
  constructor
  · intro h θ ht L
    obtain ⟨K,hK,hh⟩ := h θ ht L
    refine ⟨K,hK,?_⟩
    rintro n ⟨j,hj,hend,rfl⟩
    exact hh j hj hend
  · intro h θ ht L
    obtain ⟨K,hK,hh⟩ := h θ ht L
    exact ⟨K,hK,fun j hj hend => hh (j^2) ⟨j,hj,hend,rfl⟩⟩

/-- The actual centered ramp has its full windows exactly when the finite
rounded ordinary-prime products satisfy the windows using only j² in
[K²,K³]. The upper endpoint need not itself be a square. -/
theorem centeredRamp_windows_iff_squareProducts :
    WindowCeilings centeredRamp (3/2) ↔ RoundedSampleWindows SquareMask := by
  exact (windows_iff_squareCeilings fun _ hs => XiAlpogeRampLogSlope.centeredRamp_square_error hs).trans
    (square_ceilings_eq_mask.trans (sampleCeilings_iff_rounded fun _ _ h => square_mask_start h))

end GRWTSK.XiAlpogeSquareSampling
