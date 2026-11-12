/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.FunctionsOfAComplexVariable.CompactDiskLogDerivative
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletHorizontalZeroAvoidance
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletLFunctionRightBounds

/-!
# Original-source logarithmic-derivative bounds on simultaneous horizontal heights

MSC2020: 11M06, 11M26, 11M41, 30C80.
The radius-8 modulus ceiling is derived from the existing source circle bound
and maximum modulus. The lower anchor is the actual Euler estimate at 2+it.
Nonreal zeros of the repaired source return to the original strip-zero subtype;
possible real zeros, including the inserted nonprincipal zero at 1, are handled
separately. The previous height-selection theorem supplies the distance floor.

The resulting fourth-power estimate is for BOTH the repaired source and the
ORIGINAL continued LFunction. No growth/counting, local factorization,
normalized-logarithm, or logarithmic-derivative magnitude supplier is assumed
in the final existence theorem. Both edge signs use the same height sequence.

This does not encode the remaining gamma logarithmic-derivative estimate,
finite rectangular residue theorem, Fourier inversion, compensated gamma
integrals, or infinite explicit formula. Those remain distinct formal tasks.
No arithmetic positivity or RH/GRH conclusion follows.

SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom
audit and independent review NOT_RUN. Novelty UNASSESSED. Issue math#1801.
The prior inverse-character correction and both zeta poles are unchanged.
Individual declaration records and the full analytical argument are adjacent.
-/

set_option autoImplicit false
noncomputable section
open Set Metric Filter
open scoped Topology BigOperators
open GRWTSK.Analysis.ComplexAnalysis.CompactDiskLogDerivative
open GRWTSK.NumberTheory.DirichletRightBounds

namespace GRWTSK.NumberTheory.WeilNegativeWitness

variable {N : ℕ} [NeZero N]

/-- Both actual gamma parities are nonzero at every nonreal point.
The assigned values at their real poles play no role. -/
theorem gammaFactor_ne_zero_of_nonreal (chi : DirichletCharacter ℂ N)
    {s : ℂ} (him : s.im ≠ 0) : DirichletCharacter.gammaFactor chi s ≠ 0 := by
  classical
  have hG (w : ℂ) (hw : w.im ≠ 0) : Complex.Gammaℝ w ≠ 0 := by
    intro hz
    obtain ⟨n, hn⟩ := Complex.Gammaℝ_eq_zero_iff.mp hz
    apply hw
    rw [hn]
    simp
  unfold DirichletCharacter.gammaFactor
  split_ifs
  · exact hG s him
  · exact hG (s + 1) (by simpa using him)

/-- Global uncompletion is rearranged only after nonvanishing of the actual
gamma factor and exclusion of the conductor-one exception have been proved. -/
theorem completedLFunction_eq_mul_of_nonreal (chi : DirichletCharacter ℂ N)
    {s : ℂ} (him : s.im ≠ 0) :
    DirichletCharacter.completedLFunction chi s =
      DirichletCharacter.LFunction chi s * DirichletCharacter.gammaFactor chi s := by
  have hs0 : s ≠ 0 := by intro h; apply him; simp [h]
  exact ((eq_div_iff (gammaFactor_ne_zero_of_nonreal chi him)).mp
    (chi.LFunction_eq_completed_div_gammaFactor s (.inl hs0))).symm

/-- Every nonreal zero of the repaired entire source is an original open-strip
zero. No claim is made about equality of the real divisors. -/
theorem poleCleared_nonreal_zero_mem_strip (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) {s : ℂ} (him : s.im ≠ 0)
    (hz : poleClearedLFunction chi s = 0) :
    ∃ rho : CriticalStripZero chi, rho.1 = s := by
  have hs1 : s ≠ 1 := by intro h; apply him; simp [h]
  have hL : DirichletCharacter.LFunction chi s = 0 :=
    (poleClearedLFunction_zero_iff chi hs1).mp hz
  have hu : s.re < 1 := by
    apply lt_of_not_ge
    intro h
    exact chi.LFunction_ne_zero_of_one_le_re (.inr hs1) h hL
  have hl : 0 < s.re := by
    apply lt_of_not_ge
    intro h
    have hn := completedLFunction_ne_zero_of_nonreal_avoiding_strip_zeros chi hprim him
      (fun rho he => by
        have hr := congrArg Complex.re he
        linarith [rho.2.2.1])
    apply hn
    rw [completedLFunction_eq_mul_of_nonreal chi him, hL, zero_mul]
  exact ⟨⟨s, hL, hl, hu⟩, rfl⟩

/-- Maximum modulus extends the established circle bound to the full closed disk. -/
theorem poleClearedLFunction_norm_le_jensen_disk (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (H : ℝ) (hH : 2 ≤ H) {s : ℂ}
    (hs : s ∈ closedBall (2 : ℂ) (2 * (H + 2))) :
    ‖poleClearedLFunction chi s‖ ≤ Real.exp
      ((centralStripGrowthConstant N + farLeftGrowthConstant chi + 8) *
        H * (Real.log H + 2)) := by
  have hR : 0 < 2 * (H + 2) := by linarith
  have hd := differentiable_poleClearedLFunction chi
  have hdc : DiffContOnCl ℂ (poleClearedLFunction chi)
      (ball (2 : ℂ) (2 * (H + 2))) :=
    DiffContOnCl.mk_ball hd.differentiableOn hd.continuous.continuousOn
  apply Complex.norm_le_of_forall_mem_frontier_norm_le isBounded_ball hdc
    (fun w hw => poleClearedLFunction_circle_growth chi hprim H hH
      (frontier_ball_subset_sphere hw))
  simpa only [closure_ball (2 : ℂ) hR.ne'] using hs

/-- One all-point local disk ceiling, uniform in both edge signs and every T>=2.
There is no sequence of unrelated compact maxima. -/
theorem poleClearedLFunction_norm_le_horizontal_disk
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (T epsilon : ℝ) (hT : 2 ≤ T) (he : epsilon = -1 ∨ epsilon = 1)
    {s : ℂ}
    (hs : s ∈ closedBall ((2 : ℂ) + Complex.I * ((epsilon * T : ℝ) : ℂ)) 8) :
    ‖poleClearedLFunction chi s‖ ≤ Real.exp
      (2 * (centralStripGrowthConstant N + farLeftGrowthConstant chi + 8) *
        (1 + T) ^ 2) := by
  let U : ℝ := (T + 4) / 2
  let G : ℝ := centralStripGrowthConstant N + farLeftGrowthConstant chi + 8
  have hG : 0 ≤ G := by
    dsimp [G]
    linarith [centralStripGrowthConstant_nonneg N, farLeftGrowthConstant_ge_four chi]
  have hU : 2 ≤ U := by dsimp [U]; linarith
  have hU0 : 0 < U := by linarith
  have hUle : U ≤ 1 + T := by dsimp [U]; linarith
  have hUlog : 0 ≤ Real.log U + 2 := by
    have := Real.log_nonneg (by linarith : 1 ≤ U)
    linarith
  have hlogle : Real.log U + 2 ≤ 2 * (1 + T) := by
    linarith [Real.log_le_sub_one_of_pos hU0]
  have heT : |epsilon * T| = T := by
    rcases he with rfl | rfl <;> simp [abs_of_nonneg (by linarith : 0 ≤ T)]
  have hcn : ‖((2 : ℂ) + Complex.I * ((epsilon * T : ℝ) : ℂ)) - 2‖ = T := by
    rw [show ((2 : ℂ) + Complex.I * ((epsilon * T : ℝ) : ℂ)) - 2 =
      Complex.I * ((epsilon * T : ℝ) : ℂ) by ring, norm_mul, Complex.norm_I,
      one_mul, Complex.norm_real, Real.norm_eq_abs, heT]
  have hdist : ‖s - ((2 : ℂ) + Complex.I * ((epsilon * T : ℝ) : ℂ))‖ ≤ 8 := by
    simpa only [mem_closedBall, dist_eq_norm] using hs
  have hglobal : s ∈ closedBall (2 : ℂ) (2 * (U + 2)) := by
    rw [mem_closedBall, dist_eq_norm]
    have htri : ‖s - 2‖ ≤
        ‖s - ((2 : ℂ) + Complex.I * ((epsilon * T : ℝ) : ℂ))‖ +
          ‖((2 : ℂ) + Complex.I * ((epsilon * T : ℝ) : ℂ)) - 2‖ := by
      calc
        _ = ‖(s - ((2 : ℂ) + Complex.I * ((epsilon * T : ℝ) : ℂ))) +
            (((2 : ℂ) + Complex.I * ((epsilon * T : ℝ) : ℂ)) - 2)‖ := by
          congr 1
          ring
        _ ≤ _ := norm_add_le _ _
    rw [hcn] at htri
    dsimp [U]
    linarith
  apply (poleClearedLFunction_norm_le_jensen_disk chi hprim U hU hglobal).trans
  apply Real.exp_le_exp.mpr
  change G * U * (Real.log U + 2) ≤ 2 * G * (1 + T) ^ 2
  have hp := mul_le_mul hUle hlogle hUlog (by linarith : 0 ≤ 1 + T)
  have hpG := mul_le_mul_of_nonneg_left hp hG
  nlinarith [hpG]

/-- The original Euler lower bound supplies the nonzero center amplitude. -/
theorem poleClearedLFunction_horizontal_anchor (chi : DirichletCharacter ℂ N)
    (t : ℝ) :
    1 / 4 ≤ ‖poleClearedLFunction chi ((2 : ℂ) + Complex.I * (t : ℂ))‖ := by
  let c : ℂ := 2 + Complex.I * (t : ℂ)
  have hc : c.re = 2 := by simp [c]
  have hc1 : c ≠ 1 := by
    intro he
    have hr := congrArg Complex.re he
    simp only [hc, Complex.one_re] at hr
    norm_num at hr
  have hL := (norm_LFunction_bounds chi (s := c) (by rw [hc])).1
  have hcn : 1 ≤ ‖c - 1‖ := by
    have h := Complex.abs_re_le_norm (c - 1)
    simpa only [Complex.sub_re, hc, Complex.one_re,
      show |(2 : ℝ) - 1| = 1 by norm_num] using h
  change 1 / 4 ≤ ‖poleClearedLFunction chi c‖
  rw [poleClearedLFunction_of_ne chi hc1, norm_mul]
  have hp := mul_le_mul hcn hL (by norm_num : (0 : ℝ) ≤ 1 / 4) (norm_nonneg _)
  simpa only [one_mul] using hp

/-- The real-axis zeros are farther away than this positive selection radius. -/
theorem horizontalSeparationRadius_le_one (chi : DirichletCharacter ℂ N) (n : ℕ) :
    horizontalSeparationRadius chi n ≤ 1 := by
  have hD := sourceCountConstant_nonneg chi
  have hn : 1 ≤ ((n : ℝ) + 4) ^ 2 := by nlinarith [Nat.cast_nonneg (α := ℝ) n]
  have ha : 1 ≤ 2 * sourceCountConstant chi + 1 := by linarith
  have hp := mul_le_mul ha hn (by norm_num : (0 : ℝ) ≤ 1)
    (by linarith : 0 ≤ 2 * sourceCountConstant chi + 1)
  unfold horizontalSeparationRadius
  apply (div_le_one (by positivity)).mpr
  nlinarith [hp]

/-- Explicit source-dependent coefficient, independent of height and test function. -/
def horizontalLogDerivativeConstant (chi : DirichletCharacter ℂ N) : ℝ :=
  (1 + 2 * (centralStripGrowthConstant N + farLeftGrowthConstant chi + 8) + Real.log 4) *
    (80 + (16 * (2 * sourceCountConstant chi + 1) + 1) / Real.log (16 / 11 : ℝ))

theorem horizontalLogDerivativeConstant_pos (chi : DirichletCharacter ℂ N) :
    0 < horizontalLogDerivativeConstant chi := by
  have hc := centralStripGrowthConstant_nonneg N
  have hk := farLeftGrowthConstant_ge_four chi
  have hD := sourceCountConstant_nonneg chi
  have hl4 : 0 < Real.log 4 := Real.log_pos (by norm_num)
  have hell : 0 < Real.log (16 / 11 : ℝ) := Real.log_pos (by norm_num)
  unfold horizontalLogDerivativeConstant
  apply mul_pos
  · linarith
  · positivity

/-- The source-derived disk estimate and the selected distance floor pay for
the ENTIRE logarithmic derivative, not only a finite sum of principal parts. -/
theorem norm_logDeriv_poleCleared_on_separated_height
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (n : ℕ) (T sigma epsilon : ℝ)
    (hT : (n : ℝ) + 2 < T) (hslo : -1 ≤ sigma) (hshi : sigma ≤ 2)
    (he : epsilon = -1 ∨ epsilon = 1)
    (hsep : ∀ rho : CriticalStripZero chi,
      horizontalSeparationRadius chi n ≤
        ‖(sigma : ℂ) + Complex.I * ((epsilon * T : ℝ) : ℂ) - rho.1‖) :
    poleClearedLFunction chi
        ((sigma : ℂ) + Complex.I * ((epsilon * T : ℝ) : ℂ)) ≠ 0 ∧
      ‖logDeriv (poleClearedLFunction chi)
        ((sigma : ℂ) + Complex.I * ((epsilon * T : ℝ) : ℂ))‖ ≤
          horizontalLogDerivativeConstant chi * (1 + T) ^ 4 := by
  let z : ℂ := (sigma : ℂ) + Complex.I * ((epsilon * T : ℝ) : ℂ)
  let c : ℂ := (2 : ℂ) + Complex.I * ((epsilon * T : ℝ) : ℂ)
  let G : ℝ := centralStripGrowthConstant N + farLeftGrowthConstant chi + 8
  let X : ℝ := (1 + T) ^ 2
  let B : ℝ := 1 + 2 * G + Real.log 4
  let K : ℝ := 80 + (16 * (2 * sourceCountConstant chi + 1) + 1) /
    Real.log (16 / 11 : ℝ)
  let delta : ℝ := horizontalSeparationRadius chi n
  let M : ℝ := Real.exp (2 * G * X)
  have hT2 : 2 ≤ T := by linarith [Nat.cast_nonneg (α := ℝ) n]
  have hG : 0 ≤ G := by
    dsimp [G]
    linarith [centralStripGrowthConstant_nonneg N, farLeftGrowthConstant_ge_four chi]
  have hD := sourceCountConstant_nonneg chi
  have hX : 1 ≤ X := by dsimp [X]; nlinarith
  have hX0 : 0 ≤ X := le_trans (by norm_num) hX
  have hB : 0 ≤ B := by
    dsimp [B]
    linarith [Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 4)]
  have hell : 0 < Real.log (16 / 11 : ℝ) := Real.log_pos (by norm_num)
  have hK : 0 ≤ K := by dsimp [K]; positivity
  have hdelta : 0 < delta := horizontalSeparationRadius_pos chi n
  have hM : 1 ≤ M := Real.one_le_exp_iff.mpr (by dsimp [M]; positivity)
  have hz : ‖z - c‖ ≤ 3 := by
    have heq : z - c = ((sigma - 2 : ℝ) : ℂ) := by dsimp [z, c]; push_cast; ring
    rw [heq, Complex.norm_real, Real.norm_eq_abs]
    exact abs_le.mpr ⟨by linarith, by linarith⟩
  have hall : ∀ a ∈ closedBall c (11 / 2 : ℝ),
      poleClearedLFunction chi a = 0 → delta ≤ ‖z - a‖ := by
    intro a _ha ha0
    by_cases haim : a.im = 0
    · have hei : |epsilon * T| = T := by
        rcases he with rfl | rfl <;> simp [abs_of_nonneg (by linarith : 0 ≤ T)]
      have htN : T ≤ ‖z - a‖ := by
        have hi := Complex.abs_im_le_norm (z - a)
        simpa [z, haim, hei] using hi
      exact (horizontalSeparationRadius_le_one chi n).trans
        ((by linarith : (1 : ℝ) ≤ T).trans htN)
    · obtain ⟨rho, hrho⟩ := poleCleared_nonreal_zero_mem_strip chi hprim haim ha0
      simpa only [hrho] using hsep rho
  have hf : AnalyticOnNhd ℂ (poleClearedLFunction chi) (closedBall c (8 : ℝ)) :=
    ((differentiable_poleClearedLFunction chi).differentiableOn.analyticOnNhd
      isOpen_univ).mono (subset_univ _)
  obtain ⟨hn, hb⟩ := norm_logDeriv_le_of_disk_data_centered
    (poleClearedLFunction chi) c z M (1 / 4) delta hM (by norm_num) hdelta hf
    (fun w hw => poleClearedLFunction_norm_le_horizontal_disk chi hprim T epsilon hT2 he hw)
    (poleClearedLFunction_horizontal_anchor chi (epsilon * T)) hz hall
  have hlog : 1 + Real.log (M / (1 / 4)) ≤ B * X := by
    dsimp [M]
    rw [Real.log_div (Real.exp_ne_zero _) (by norm_num : (1 / 4 : ℝ) ≠ 0), Real.log_exp]
    have he4 : Real.log (1 / 4 : ℝ) = -Real.log 4 := by
      rw [one_div, Real.log_inv]
    rw [he4]
    dsimp [B]
    have hconst : 0 ≤ 1 + Real.log 4 := by
      linarith [Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 4)]
    nlinarith [mul_le_mul_of_nonneg_left hX hconst]
  have hinv : 2 / delta ≤ 16 * (2 * sourceCountConstant chi + 1) * X := by
    have hn4 : (n : ℝ) + 4 ≤ 2 * (1 + T) := by linarith
    have hn40 : 0 ≤ (n : ℝ) + 4 := by positivity
    have hsquare : ((n : ℝ) + 4) ^ 2 ≤ 4 * X := by
      have hp := mul_le_mul hn4 hn4 hn40 (by linarith : 0 ≤ 2 * (1 + T))
      dsimp [X]
      nlinarith [hp]
    have heq : 2 / delta =
        4 * (2 * sourceCountConstant chi + 1) * ((n : ℝ) + 4) ^ 2 := by
      have hden : 2 * (2 * sourceCountConstant chi + 1) * ((n : ℝ) + 4) ^ 2 ≠ 0 := by
        positivity
      dsimp [delta, horizontalSeparationRadius]
      field_simp [hden]
      <;> ring
    rw [heq]
    have hp := mul_le_mul_of_nonneg_left hsquare
      (by positivity : 0 ≤ 4 * (2 * sourceCountConstant chi + 1))
    nlinarith [hp]
  have hbracket : 80 + (2 / delta + 1) / Real.log (16 / 11 : ℝ) ≤ K * X := by
    have hp : 2 / delta + 1 ≤
        (16 * (2 * sourceCountConstant chi + 1) + 1) * X := by nlinarith
    have hdiv := div_le_div_of_nonneg_right hp hell.le
    dsimp [K]
    have heq :
        ((16 * (2 * sourceCountConstant chi + 1) + 1) * X) /
            Real.log (16 / 11 : ℝ) =
          ((16 * (2 * sourceCountConstant chi + 1) + 1) /
            Real.log (16 / 11 : ℝ)) * X := by ring
    rw [heq] at hdiv
    nlinarith
  refine ⟨hn, hb.trans ?_⟩
  calc
    _ ≤ (B * X) * (K * X) :=
      mul_le_mul hlog hbracket (by positivity) (mul_nonneg hB hX0)
    _ = horizontalLogDerivativeConstant chi * (1 + T) ^ 4 := by
      dsimp [horizontalLogDerivativeConstant, B, K, G, X]
      ring

/-- Exact return of the logarithmic derivative to the original continued source.
The repaired value at 1 is not differentiated through a false global product. -/
theorem LFunction_logDeriv_eq_poleCleared_sub
    (chi : DirichletCharacter ℂ N) {s : ℂ} (hs : s ≠ 1)
    (hn : poleClearedLFunction chi s ≠ 0) :
    logDeriv (DirichletCharacter.LFunction chi) s =
      logDeriv (poleClearedLFunction chi) s - 1 / (s - 1) := by
  have hs0 : s - 1 ≠ 0 := sub_ne_zero.mpr hs
  have hL : DirichletCharacter.LFunction chi s ≠ 0 := by
    intro hz
    apply hn
    rw [poleClearedLFunction_of_ne chi hs, hz, mul_zero]
  have he : poleClearedLFunction chi =ᶠ[𝓝 s]
      fun w => (w - 1) * DirichletCharacter.LFunction chi w := by
    filter_upwards [eventually_ne_nhds hs] with w hw
    exact poleClearedLFunction_of_ne chi hw
  have hlin : logDeriv (fun w : ℂ => w - 1) s = 1 / (s - 1) := by
    rw [logDeriv_apply, ((hasDerivAt_id s).sub_const 1).deriv]
  have hd := (logDeriv_congr_nhds he).self_of_nhds
  rw [logDeriv_fun_mul s hs0 hL (differentiableAt_id.sub_const 1)
    (chi.differentiableAt_LFunction s (.inl hs)), hlin] at hd
  rw [hd]
  ring

/-- One sequence works for every original zero, both signs and the whole strip.
The ORIGINAL L-function magnitude bound has no analytic supplier hypothesis. -/
theorem exists_horizontal_LFunction_logDeriv_bound
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) :
    ∃ T : ℕ → ℝ,
      (∀ n, (n : ℝ) + 2 < T n ∧ T n < (n : ℝ) + 3) ∧
      (∀ n (sigma epsilon : ℝ), epsilon = -1 ∨ epsilon = 1 →
        DirichletCharacter.completedLFunction chi
          ((sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ)) ≠ 0) ∧
      (∀ n (sigma epsilon : ℝ), -1 ≤ sigma → sigma ≤ 2 →
        epsilon = -1 ∨ epsilon = 1 →
        ‖logDeriv (DirichletCharacter.LFunction chi)
          ((sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ))‖ ≤
            (horizontalLogDerivativeConstant chi + 1) * (1 + T n) ^ 4) := by
  obtain ⟨T, hT, hgap, hn⟩ := exists_zero_avoiding_horizontal_heights chi hprim
  refine ⟨T, hT, hn, ?_⟩
  intro n sigma epsilon hslo hshi he
  let z : ℂ := (sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ)
  have hT2 : 2 ≤ T n := by linarith [(hT n).1, Nat.cast_nonneg (α := ℝ) n]
  obtain ⟨hz0, hb⟩ := norm_logDeriv_poleCleared_on_separated_height chi hprim
    n (T n) sigma epsilon (hT n).1 hslo hshi he (fun rho => hgap n rho sigma epsilon he)
  have heT : |epsilon * T n| = T n := by
    rcases he with rfl | rfl <;> simp [abs_of_nonneg (by linarith : 0 ≤ T n)]
  have hdist : 1 ≤ ‖z - 1‖ := by
    have hi := Complex.abs_im_le_norm (z - 1)
    have ht : T n ≤ ‖z - 1‖ := by simpa [z, heT] using hi
    linarith
  have hz1 : z ≠ 1 := by intro h; simp [h] at hdist
  have hrec : ‖(1 : ℂ) / (z - 1)‖ ≤ 1 := by
    rw [norm_div, norm_one]
    exact (div_le_one (lt_of_lt_of_le (by norm_num) hdist)).mpr hdist
  have hbase : 1 ≤ 1 + T n := by linarith
  have hX2 : 1 ≤ (1 + T n) ^ 2 := by
    nlinarith [mul_le_mul hbase hbase (by norm_num : (0 : ℝ) ≤ 1)
      (by linarith : 0 ≤ 1 + T n)]
  have hX : 1 ≤ (1 + T n) ^ 4 := by
    nlinarith [mul_le_mul hX2 hX2 (by norm_num : (0 : ℝ) ≤ 1) (sq_nonneg (1 + T n))]
  change ‖logDeriv (DirichletCharacter.LFunction chi) z‖ ≤ _
  rw [LFunction_logDeriv_eq_poleCleared_sub chi hz1 hz0]
  calc
    _ ≤ ‖logDeriv (poleClearedLFunction chi) z‖ + ‖(1 : ℂ) / (z - 1)‖ :=
      norm_sub_le _ _
    _ ≤ horizontalLogDerivativeConstant chi * (1 + T n) ^ 4 + 1 :=
      add_le_add hb hrec
    _ ≤ (horizontalLogDerivativeConstant chi + 1) * (1 + T n) ^ 4 := by nlinarith

/-- Literal conductor-one specialization. The completed zeta poles at 0 and 1
remain in the explicit formula; they are simply off the selected boundaries. -/
theorem exists_horizontal_riemannZeta_logDeriv_bound :
    ∃ T : ℕ → ℝ,
      (∀ n, (n : ℝ) + 2 < T n ∧ T n < (n : ℝ) + 3) ∧
      (∀ n (sigma epsilon : ℝ), epsilon = -1 ∨ epsilon = 1 →
        completedRiemannZeta
          ((sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ)) ≠ 0) ∧
      (∀ n (sigma epsilon : ℝ), -1 ≤ sigma → sigma ≤ 2 →
        epsilon = -1 ∨ epsilon = 1 →
        ‖logDeriv riemannZeta
          ((sigma : ℂ) + Complex.I * ((epsilon * T n : ℝ) : ℂ))‖ ≤
            (horizontalLogDerivativeConstant (1 : DirichletCharacter ℂ 1) + 1) *
              (1 + T n) ^ 4) := by
  simpa only [DirichletCharacter.completedLFunction_modOne_eq,
    DirichletCharacter.LFunction_modOne_eq] using
    exists_horizontal_LFunction_logDeriv_bound (1 : DirichletCharacter ℂ 1)
      DirichletCharacter.isPrimitive_one_level_one

end GRWTSK.NumberTheory.WeilNegativeWitness
