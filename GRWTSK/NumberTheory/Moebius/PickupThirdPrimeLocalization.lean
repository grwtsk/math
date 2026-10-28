/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib sources retain their upstream licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupGrowingPrimeBlocks

/-!
# The first negative prime block lives in an explicit moving cofactor annulus

The new p=5 negative part after P=[2,3] vanishes outside exp(u)/16<m<exp(u)/9.
An exact Abel return centers the remaining rough Mobius prefixes at the left
edge of that annulus. No pointwise or averaged cancellation bound is assumed.
The resulting weighted prefix bound is a new source-specific quantitative
consumer; it does not assert an exponent improvement without its supplier.
SOURCE_PROOF_CANDIDATE / compilation, kernel replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupThirdPrimeLocalization

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.Analysis.FiniteSums.PrimeBlockKernel
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockExtraction
open GRWTSK.NumberTheory.Moebius.PickupTwoPrimeBound
open GRWTSK.NumberTheory.Moebius.PickupGrowingPrimeBlocks

def threeHinge (t : ℝ) : ℝ :=
  hinge 1 t-hinge (Real.sqrt 2)⁻¹ t-hinge (Real.sqrt 3)⁻¹ t-hinge (Real.sqrt 5)⁻¹ t+
    hinge (Real.sqrt 6)⁻¹ t+hinge (Real.sqrt 10)⁻¹ t+hinge (Real.sqrt 15)⁻¹ t-
      hinge (Real.sqrt 30)⁻¹ t

theorem third_block_scaled {m : ℕ} (hm : 1 ≤ m) (u : ℝ) :
    block [5,2,3] (fun n => pickupResponse n u) m =
      2*(Real.sqrt m)⁻¹*threeHinge (Real.sqrt m*Real.exp (-u/2)) := by
  simp only [block_cons, block_nil, ← Nat.mul_assoc]
  norm_num only [Nat.reduceMul]
  have h0 := response_scaled (d:=1) (m:=m) (by norm_num) hm u
  simp only [one_mul, Nat.cast_one, Real.sqrt_one, inv_one] at h0
  rw [h0, response_scaled (d:=2) (by norm_num) hm,
    response_scaled (d:=3) (by norm_num) hm, response_scaled (d:=5) (by norm_num) hm,
    response_scaled (d:=6) (by norm_num) hm, response_scaled (d:=10) (by norm_num) hm,
    response_scaled (d:=15) (by norm_num) hm, response_scaled (d:=30) (by norm_num) hm]
  unfold threeHinge
  ring

/-- All root bounds used in the localization are exact rational certificates. -/
set_option maxHeartbeats 2000000 in
theorem threeHinge_nonnegative_outside (t : ℝ) (ht : t ≤ 1/4 ∨ 1/3 ≤ t) :
    0 ≤ threeHinge t := by
  have h2l := inv_sqrt_lower (n:=2) (a:=707106/1000000) (by norm_num) (by norm_num) (by norm_num)
  have h2u := inv_sqrt_upper (n:=2) (a:=707107/1000000) (by norm_num) (by norm_num) (by norm_num)
  have h3l := inv_sqrt_lower (n:=3) (a:=577350/1000000) (by norm_num) (by norm_num) (by norm_num)
  have h3u := inv_sqrt_upper (n:=3) (a:=577351/1000000) (by norm_num) (by norm_num) (by norm_num)
  have h5l := inv_sqrt_lower (n:=5) (a:=447213/1000000) (by norm_num) (by norm_num) (by norm_num)
  have h5u := inv_sqrt_upper (n:=5) (a:=447214/1000000) (by norm_num) (by norm_num) (by norm_num)
  have h6l := inv_sqrt_lower (n:=6) (a:=408248/1000000) (by norm_num) (by norm_num) (by norm_num)
  have h6u := inv_sqrt_upper (n:=6) (a:=408249/1000000) (by norm_num) (by norm_num) (by norm_num)
  have h10l := inv_sqrt_lower (n:=10) (a:=316227/1000000) (by norm_num) (by norm_num) (by norm_num)
  have h10u := inv_sqrt_upper (n:=10) (a:=316228/1000000) (by norm_num) (by norm_num) (by norm_num)
  have h15l := inv_sqrt_lower (n:=15) (a:=258198/1000000) (by norm_num) (by norm_num) (by norm_num)
  have h15u := inv_sqrt_upper (n:=15) (a:=258199/1000000) (by norm_num) (by norm_num) (by norm_num)
  have h30l := inv_sqrt_lower (n:=30) (a:=182574/1000000) (by norm_num) (by norm_num) (by norm_num)
  have h30u := inv_sqrt_upper (n:=30) (a:=182575/1000000) (by norm_num) (by norm_num) (by norm_num)
  unfold threeHinge hinge
  simp only [max_def]
  rcases ht with ht | ht <;> split_ifs <;> linarith

/-- The square of the normalized cofactor coordinate keeps the original exponential scale. -/
theorem coordinate_square {m : ℕ} (u : ℝ) :
    (Real.sqrt m*Real.exp (-u/2))^2=(m:ℝ)/Real.exp u := by
  rw [mul_pow, Real.sq_sqrt (Nat.cast_nonneg m),
    GRWTSK.Analysis.ErrorBounds.ExponentialQuadraticIntegral.exp_half_sq, Real.exp_neg]
  ring

/-- The negative budget is zero off this genuine cofactor annulus. -/
theorem negative_step_zero_outside {m : ℕ} (hm : 1 ≤ m) (u : ℝ)
    (hout : (m:ℝ) ≤ Real.exp u/16 ∨ Real.exp u/9 ≤ (m:ℝ)) :
    negativeStep [2,3] 5 (fun n => pickupResponse n u) m=0 := by
  let t := Real.sqrt m*Real.exp (-u/2)
  have ht0 : 0 ≤ t := by dsimp [t]; positivity
  have ht : t ≤ 1/4 ∨ 1/3 ≤ t := by
    rcases hout with h | h
    · left
      have hs : t^2 ≤ 1/16 := by
        rw [show t^2=(m:ℝ)/Real.exp u from coordinate_square u]
        apply (div_le_iff₀ (Real.exp_pos u)).mpr
        linarith
      nlinarith
    · right
      have hs : 1/9 ≤ t^2 := by
        rw [show t^2=(m:ℝ)/Real.exp u from coordinate_square u]
        apply (le_div_iff₀ (Real.exp_pos u)).mpr
        linarith
      nlinarith
  have hk : 0 ≤ block [5,2,3] (fun n => pickupResponse n u) m := by
    rw [third_block_scaled hm]
    exact mul_nonneg (by positivity) (threeHinge_nonnegative_outside t ht)
  have he : block [2,3] (fun n => pickupResponse n u) (5*m)-
      block [2,3] (fun n => pickupResponse n u) m =
      -block [5,2,3] (fun n => pickupResponse n u) m := by
    simp only [block_cons]
    ring
  unfold negativeStep
  rw [he]
  exact max_eq_right (neg_nonpos.mpr hk)

theorem negative_step_support {m : ℕ} (hm : 1 ≤ m) (u : ℝ)
    (hpos : 0 < negativeStep [2,3] 5 (fun n => pickupResponse n u) m) :
    Real.exp u/16 < (m:ℝ) ∧ (m:ℝ)<Real.exp u/9 := by
  constructor
  · by_contra h
    rw [negative_step_zero_outside hm u (Or.inl (le_of_not_gt h))] at hpos
    exact (lt_irrefl 0) hpos
  · by_contra h
    rw [negative_step_zero_outside hm u (Or.inr (le_of_not_gt h))] at hpos
    exact (lt_irrefl 0) hpos

/-- Both the arithmetic and unsigned negative channels have exactly this support. -/
theorem negativeCorrelation_localized (u : ℝ) :
    negativeCorrelation [2,3] 5 u =
      ∑ m ∈ active [5,2,3] ⌊Real.exp u⌋₊,
        if Real.exp u/16 < (m:ℝ) ∧ (m:ℝ)<Real.exp u/9 then
          moebiusReal m*negativeStep [2,3] 5 (fun n => pickupResponse n u) m else 0 := by
  unfold negativeCorrelation
  apply Finset.sum_congr rfl
  intro m hm
  have hmpos := (Finset.mem_Icc.mp (Finset.mem_filter.mp hm).1).1
  by_cases h : Real.exp u/16 < (m:ℝ) ∧ (m:ℝ)<Real.exp u/9
  · rw [if_pos h]
  · rw [if_neg h]
    have hout : (m:ℝ) ≤ Real.exp u/16 ∨ Real.exp u/9 ≤ (m:ℝ) := by
      by_cases hl : Real.exp u/16 < (m:ℝ)
      · exact Or.inr (le_of_not_gt (fun hh => h ⟨hl,hh⟩))
      · exact Or.inl (le_of_not_gt hl)
    rw [negative_step_zero_outside hmpos u hout, mul_zero]

def roughCoefficient (P : List ℕ) (n : ℕ) : ℝ := if Rough P n then moebiusReal n else 0

def roughPrefix (P : List ℕ) (n : ℕ) : ℝ := prefix (roughCoefficient P) n

def negativeWeight (u : ℝ) (m : ℕ) : ℝ :=
  negativeStep [2,3] 5 (fun n => pickupResponse n u) m

/-- The upper endpoint is the literal zero causal value, not an omitted term. -/
theorem negativeWeight_terminal (u : ℝ) : negativeWeight u (⌊Real.exp u⌋₊+1)=0 := by
  have hP : ∀ p ∈ ([2,3]:List ℕ), 1 ≤ p := by
    intro p hp; simp at hp; rcases hp with rfl|rfl <;> omega
  have hs := block_support [2,3] hP (fun n => pickupResponse n u)
    ⌊Real.exp u⌋₊ (response_support u)
  unfold negativeWeight negativeStep
  rw [hs _ (by omega), hs _ (by omega)]
  norm_num

/-- For x>=16 the source at cofactor one is outside the negative annulus. -/
theorem negativeWeight_one {u : ℝ} (hu : 16 ≤ Real.exp u) : negativeWeight u 1=0 :=
  negative_step_zero_outside (by omega) u (Or.inl (by norm_num; linarith))

/-- Exact centering at a real source prefix. No empirical midpoint or density is used. -/
theorem negativeCorrelation_centered_abel {u : ℝ} (hu : 16 ≤ Real.exp u) (anchor : ℕ) :
    negativeCorrelation [2,3] 5 u =
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊,
        (roughPrefix [5,2,3] n-roughPrefix [5,2,3] anchor)*
          (negativeWeight u n-negativeWeight u (n+1)) := by
  have he : negativeCorrelation [2,3] 5 u =
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, roughCoefficient [5,2,3] n*negativeWeight u n := by
    unfold negativeCorrelation active
    rw [Finset.sum_filter]
    apply Finset.sum_congr rfl
    intro n _
    by_cases h : Rough [5,2,3] n <;> simp [roughCoefficient, negativeWeight, h]
  rw [he, abel_centered _ _ _ (roughPrefix [5,2,3] anchor) (negativeWeight_terminal u),
    negativeWeight_one hu, mul_zero, zero_add]
  rfl

/-- A quantitative local-prefix price for the previously uncontrolled negative channel. -/
theorem negativeCorrelation_prefix_budget {u : ℝ} (hu : 16 ≤ Real.exp u) :
    |negativeCorrelation [2,3] 5 u| ≤
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊,
        |roughPrefix [5,2,3] n-roughPrefix [5,2,3] ⌊Real.exp u/16⌋₊|*
          |negativeWeight u n-negativeWeight u (n+1)| := by
  rw [negativeCorrelation_centered_abel hu ⌊Real.exp u/16⌋₊]
  simpa only [abs_mul] using Finset.abs_sum_le_sum_abs
    (fun n => (roughPrefix [5,2,3] n-roughPrefix [5,2,3] ⌊Real.exp u/16⌋₊)*
      (negativeWeight u n-negativeWeight u (n+1))) (Finset.Icc 1 ⌊Real.exp u⌋₊)

/-- The Abel difference is supported in the annulus with its one-index boundary paid. -/
theorem negativeWeight_difference_zero {n : ℕ} (hn : 1 ≤ n) (u : ℝ)
    (hout : ((n+1:ℕ):ℝ) ≤ Real.exp u/16 ∨ Real.exp u/9 ≤ (n:ℝ)) :
    negativeWeight u n-negativeWeight u (n+1)=0 := by
  have hnat : (n:ℝ) ≤ (n+1:ℕ) := by exact_mod_cast Nat.le_succ n
  rcases hout with h | h
  · rw [show negativeWeight u n=0 from negative_step_zero_outside hn u (Or.inl (hnat.trans h)),
      show negativeWeight u (n+1)=0 from negative_step_zero_outside (by omega) u (Or.inl h)]
    ring
  · rw [show negativeWeight u n=0 from negative_step_zero_outside hn u (Or.inr h),
      show negativeWeight u (n+1)=0 from negative_step_zero_outside (by omega) u (Or.inr (h.trans hnat))]
    ring

end GRWTSK.NumberTheory.Moebius.PickupThirdPrimeLocalization
