/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilWindowRowRecovery
import Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension
import Mathlib.Tactic

/-!
# Isolating one positive delay on the original Weil test domain

Two disjoint identical smooth bumps of opposite relative signs produce
equal-energy tests. With sufficiently small support, their difference
of correlations at a supplied finite set of positive delays vanishes
except at the selected delay. The remaining complex difference has any
prescribed phase, with an explicit positive scalar from the bump integral.
-/

set_option autoImplicit false
noncomputable section
open Set MeasureTheory
open scoped BigOperators ComplexConjugate ContDiff

namespace GRWTSK.NumberTheory.WeilQuadraticForm.WindowCorrelationDeletion

open FirstPrimeWindow SourcePrimeCorrelation WindowRowRecovery LowSchur

private theorem small_radius (delays : Finset ℝ) (r margin : ℝ)
    (hr : 0 < r) (hm : 0 < margin) :
    ∃ δ : ℝ, 0 < δ ∧ δ < margin ∧ 2 * δ < r ∧
      ∀ s ∈ delays, s ≠ r → 2 * δ < |s - r| := by
  classical
  induction delays using Finset.induction_on with
  | empty =>
    let δ := min (margin / 2) (r / 4)
    refine ⟨δ, lt_min (by positivity) (by positivity), ?_, ?_, by simp⟩
    · have := min_le_left (margin / 2) (r / 4)
      change δ ≤ margin / 2 at this
      linarith
    · have := min_le_right (margin / 2) (r / 4)
      change δ ≤ r / 4 at this
      linarith
  | @insert a D _ ih =>
    obtain ⟨δ, hδ, hmδ, hrδ, sep⟩ := ih
    by_cases equal : a = r
    · exact ⟨δ, hδ, hmδ, hrδ, fun s hs hsr => by
        rcases Finset.mem_insert.mp hs with h | h
        · exact (hsr (h.trans equal)).elim
        · exact sep s h hsr⟩
    · have ha : 0 < |a - r| := abs_pos.mpr (sub_ne_zero.mpr equal)
      let ε := min δ (|a - r| / 4)
      have hεδ : ε ≤ δ := min_le_left _ _
      have hεa : ε ≤ |a - r| / 4 := min_le_right _ _
      refine ⟨ε, lt_min hδ (by positivity), hεδ.trans_lt hmδ, by linarith, ?_⟩
      intro s hs hsr
      rcases Finset.mem_insert.mp hs with rfl | hs
      · linarith
      · have := sep s hs hsr
        linarith

/-- The native signed correlation difference can isolate any active positive
delay against any finite family of other positive delays. -/
theorem exists_equal_energy_isolated_correlation
    (A r : ℝ) (hr : 0 < r) (hcut : r < 2 * A)
    (delays : Finset ℝ) (positive : ∀ s ∈ delays, 0 < s) (u : ℂ) :
    ∃ (f g : WindowTest A) (gain : ℝ), 0 < gain ∧
      energy f.1 = energy g.1 ∧
      (∀ s ∈ delays, s ≠ r → correlation f.1 s = correlation g.1 s) ∧
      correlation f.1 r - correlation g.1 r = (gain : ℂ) * u := by
  obtain ⟨δ, hδ, room, separated, gap⟩ :=
    small_radius delays r (A - r / 2) hr (by linarith)
  let b : ContDiffBump (0 : ℝ) := ⟨δ / 2, δ, by positivity, by linarith⟩
  let left : ℝ → ℂ := fun t => (b (t + r / 2) : ℂ)
  let right : ℝ → ℂ := fun t => u * (b (t - r / 2) : ℂ)
  let plus : ℝ → ℂ := fun t => left t + right t
  let minus : ℝ → ℂ := fun t => left t - right t
  have abs_of_b_ne {t : ℝ} (h : b t ≠ 0) : |t| < δ := by
    by_contra! large
    exact h (b.zero_of_le_dist (by simpa [b, Real.dist_eq] using large))
  have leftNear {t : ℝ} (h : left t ≠ 0) : |t + r / 2| < δ :=
    abs_of_b_ne (fun hz => h (by simp [left, hz]))
  have rightNear {t : ℝ} (h : right t ≠ 0) : |t - r / 2| < δ :=
    abs_of_b_ne (fun hz => h (by simp [right, hz]))
  have left_inside {t : ℝ} (h : left t ≠ 0) : t ∈ Icc (-A) A := by
    obtain ⟨hl,hh⟩ := abs_lt.mp (leftNear h)
    exact ⟨by linarith, by linarith⟩
  have right_inside {t : ℝ} (h : right t ≠ 0) : t ∈ Icc (-A) A := by
    obtain ⟨hl,hh⟩ := abs_lt.mp (rightNear h)
    exact ⟨by linarith, by linarith⟩
  have both_zero {t : ℝ} (h : t ∉ Icc (-A) A) : left t = 0 ∧ right t = 0 :=
    ⟨not_not.mp (fun h' => h (left_inside h')), not_not.mp (fun h' => h (right_inside h'))⟩
  have smoothLeft : ContDiff ℝ ∞ left := by
    change ContDiff ℝ ∞ (fun t : ℝ => Complex.ofRealCLM (b (t + r / 2)))
    exact Complex.ofRealCLM.contDiff.comp
      (b.contDiff.comp (contDiff_id.add contDiff_const))
  have smoothRight : ContDiff ℝ ∞ right := by
    change ContDiff ℝ ∞ (fun t : ℝ => u * Complex.ofRealCLM (b (t - r / 2)))
    exact contDiff_const.mul (Complex.ofRealCLM.contDiff.comp
      (b.contDiff.comp (contDiff_id.sub contDiff_const)))
  have supportPlus : tsupport plus ⊆ Icc (-A) A := by
    apply closure_minimal _ isClosed_Icc
    intro t ht
    by_contra h
    have z := both_zero h
    exact ht (by simp [plus, z])
  have supportMinus : tsupport minus ⊆ Icc (-A) A := by
    apply closure_minimal _ isClosed_Icc
    intro t ht
    by_contra h
    have z := both_zero h
    exact ht (by simp [minus, z])
  let f : WindowTest A :=
    ⟨plus, smoothLeft.add smoothRight,
      isCompact_Icc.of_isClosed_subset isClosed_closure supportPlus, supportPlus⟩
  let g : WindowTest A :=
    ⟨minus, smoothLeft.sub smoothRight,
      isCompact_Icc.of_isClosed_subset isClosed_closure supportMinus, supportMinus⟩
  have hf : MemLp plus 2 volume := f.property.1.continuous.memLp_of_hasCompactSupport f.property.2.1
  have hg : MemLp minus 2 volume := g.property.1.continuous.memLp_of_hasCompactSupport g.property.2.1
  have rightLeftZero (s : ℝ) (hs : 0 ≤ s) (t : ℝ) :
      right t = 0 ∨ left (t + s) = 0 := by
    by_contra! both
    obtain ⟨hl, _⟩ := abs_lt.mp (rightNear both.1)
    obtain ⟨_, hright⟩ := abs_lt.mp (leftNear both.2)
    linarith
  have leftRightZero (s : ℝ) (hs : 2 * δ ≤ |s - r|) (t : ℝ) :
      left t = 0 ∨ right (t + s) = 0 := by
    by_contra! both
    obtain ⟨hl, hr'⟩ := abs_lt.mp (leftNear both.1)
    obtain ⟨hl', hr''⟩ := abs_lt.mp (rightNear both.2)
    have : |s - r| < 2 * δ := abs_lt.mpr ⟨by linarith, by linarith⟩
    linarith
  have equalEnergy : energy plus = energy minus := by
    unfold energy
    apply integral_congr_ae
    filter_upwards with t
    have h := rightLeftZero 0 le_rfl t
    rcases h with h | h
    · simp [plus, minus, h]
    · have hz : left t = 0 := by simpa using h
      simp [plus, minus, hz, norm_neg]
  have diff (s : ℝ) (hs : 0 ≤ s) :
      correlation plus s - correlation minus s =
        ∫ t : ℝ, 2 * (conj (left t) * right (t + s)) := by
    unfold correlation
    rw [← integral_sub (integrable_correlation_integrand hf s)
      (integrable_correlation_integrand hg s)]
    apply integral_congr_ae
    filter_upwards with t
    have hcross : conj (right t) * left (t + s) = 0 := by
      rcases rightLeftZero s hs t with h | h
      · simp [h]
      · rw [h, mul_zero]
    calc
      _ = 2 * (conj (left t) * right (t + s) + conj (right t) * left (t + s)) := by
        simp only [plus, minus, map_add, map_sub]
        ring
      _ = _ := by rw [hcross, add_zero]
  let sqB : ℝ → ℝ := fun t => b t ^ 2
  let mass : ℝ := ∫ t : ℝ, sqB t
  have mass_pos : 0 < mass := by
    have supportSq : HasCompactSupport sqB := by
      apply b.hasCompactSupport.mono
      intro t ht
      exact fun hb => ht (by simp [sqB, hb])
    have hb0 : b 0 = 1 := b.one_of_mem_closedBall (by
      rw [Metric.mem_closedBall, dist_self]
      exact b.rIn_pos.le)
    exact (b.continuous.pow 2).integral_pos_of_hasCompactSupport_nonneg_nonzero
      (x := (0 : ℝ)) supportSq (fun _ => sq_nonneg _) (by simp [sqB, hb0])
  refine ⟨f, g, 2 * mass, by positivity, equalEnergy, ?_, ?_⟩
  · intro s hs hne
    apply sub_eq_zero.mp
    change correlation plus s - correlation minus s = 0
    rw [diff s (positive s hs).le]
    have pointwise (t : ℝ) : (2 : ℂ) * (conj (left t) * right (t + s)) = 0 := by
      rcases leftRightZero s (gap s hs hne).le t with h | h
      · simp [h]
      · rw [h, mul_zero, mul_zero]
    simp only [pointwise, integral_zero]
  · change correlation plus r - correlation minus r = _
    rw [diff r hr.le]
    calc
      (∫ t : ℝ, 2 * (conj (left t) * right (t + r))) =
          ∫ t : ℝ, (2 * u) * (sqB (t + r / 2) : ℂ) := by
        apply integral_congr_ae
        filter_upwards with t
        simp only [left, right, sqB, show t + r - r / 2 = t + r / 2 by ring,
          Complex.conj_ofReal, Complex.ofReal_pow]
        ring
      _ = (2 * u) * (mass : ℂ) := by
        rw [integral_const_mul]
        congr 1
        calc
          (∫ t : ℝ, (sqB (t + r / 2) : ℂ)) =
              (((∫ t : ℝ, sqB (t + r / 2)) : ℝ) : ℂ) := integral_ofReal
          _ = (mass : ℂ) :=
            congrArg (fun x : ℝ => (x : ℂ)) (integral_add_right_eq_self sqB (r / 2))
      _ = ((2 * mass : ℝ) : ℂ) * u := by push_cast; ring

private theorem power_bounds {A : ℝ} (i : Power A) :
    2 ≤ i.val ∧ (i.val : ℝ) < Real.exp (2 * A) := by
  have ha : i.val ∈ activePrimePowers A :=
    (Finset.mem_filter.mp (Finset.mem_filter.mp i.property).1).1
  exact (Finset.mem_filter.mp ha).2

/-- The equal-energy correlation differences include a nonzero complex
direction on each individual active prime-power coordinate. -/
theorem exists_samples_difference_at_power (A : ℝ) (i : Power A) (u : ℂ) :
    ∃ (f g : WindowTest A) (gain : ℝ), 0 < gain ∧ energy f.1 = energy g.1 ∧
      samples A f.1 - samples A g.1 = Pi.single i ((gain : ℂ) * u) := by
  classical
  let shift (j : Power A) : ℝ := Real.log (j.val : ℝ)
  have realPositive (j : Power A) : 0 < (j.val : ℝ) := by
    exact_mod_cast (show 0 < j.val by have := (power_bounds j).1; omega)
  have shiftPositive (j : Power A) : 0 < shift j := by
    apply Real.log_pos
    exact_mod_cast (show 1 < j.val by have := (power_bounds j).1; omega)
  have shift_injective : Function.Injective shift := by
    intro j k same
    apply Subtype.ext
    have hc := Real.log_injOn_pos (realPositive j) (realPositive k) same
    exact_mod_cast hc
  have active : shift i < 2 * A :=
    (Real.log_lt_iff_lt_exp (realPositive i)).2 (power_bounds i).2
  let delays := (Finset.univ : Finset (Power A)).image shift
  have positive : ∀ r ∈ delays, 0 < r := by
    intro r hr
    obtain ⟨j, _, rfl⟩ := Finset.mem_image.mp hr
    exact shiftPositive j
  obtain ⟨f, g, gain, hg, sameEnergy, equalElsewhere, atPower⟩ :=
    exists_equal_energy_isolated_correlation A (shift i) (shiftPositive i) active delays positive u
  refine ⟨f, g, gain, hg, sameEnergy, ?_⟩
  funext j
  by_cases same : j = i
  · subst j
    rw [Pi.single_eq_same]
    exact atPower
  · rw [Pi.single_eq_of_ne same]
    apply sub_eq_zero.mpr
    exact equalElsewhere (shift j) (Finset.mem_image.mpr ⟨j, Finset.mem_univ j, rfl⟩)
      (fun eq => same (shift_injective eq))

private theorem row_positive_on_own_coordinate {A : ℝ}
    (row : Power A → ℂ) (i : Power A) {gain : ℝ} (positive : 0 < gain) (nonzero : row i ≠ 0) :
    0 < realRow row (Pi.single i ((gain : ℂ) * conj (row i))) := by
  rw [realRow_single]
  let a := row i
  change 0 < (a * ((gain : ℂ) * conj a)).re
  rw [show a * ((gain : ℂ) * conj a) = (gain : ℂ) * (a * conj a) by ring,
    Complex.mul_conj, ← Complex.ofReal_mul, Complex.ofReal_re]
  exact mul_pos positive (Complex.normSq_pos.mpr nonzero)

/-- An actual omitted prime-power coordinate of nonzero source weight creates
a collision on the smooth test domain, even if test energy is also observed. -/
theorem no_energy_decoder_of_omitted_power {J : Type*} [Fintype J] {q : ℕ}
    (χ : DirichletCharacter ℂ q) (A : ℝ) (rows : J → Power A → ℂ) (i : Power A)
    (omitted : ∀ j, rows j i = 0) (nonzero : sourceRow χ A i ≠ 0) :
    ¬ ∃ recover : ℝ × (J → ℝ) → ℝ, ∀ f : WindowTest A,
      recover (energy f.1, observe rows (samples A f.1)) = signedWindowValue χ A f.1 := by
  classical
  let a := sourceRow χ A i
  obtain ⟨f, g, gain, hg, sameEnergy, diff⟩ :=
    exists_samples_difference_at_power A i (conj a)
  have sameObservation : observe rows (samples A f.1) = observe rows (samples A g.1) := by
    apply sub_eq_zero.mp
    rw [← map_sub, diff]
    funext j
    change realRow (rows j) (Pi.single i ((gain : ℂ) * conj a)) = 0
    rw [realRow_single, omitted j, zero_mul, Complex.zero_re]
  have positiveDifference :
      0 < realRow (sourceRow χ A) (samples A f.1 - samples A g.1) := by
    rw [diff]
    exact row_positive_on_own_coordinate (sourceRow χ A) i hg nonzero
  rintro ⟨recover, exactRead⟩
  have equal : signedWindowValue χ A f.1 = signedWindowValue χ A g.1 := by
    rw [← exactRead f, ← exactRead g, sameEnergy, sameObservation]
  rw [map_sub, realRow_sourceRow, realRow_sourceRow, equal, sub_self] at positiveDifference
  exact (lt_irrefl 0) positiveDifference

/-- The row certificate is necessary as well as sufficient for a real-linear
decoder on the actual smooth compactly supported Weil tests. -/
theorem linear_decoder_on_tests_iff {J : Type*} [Fintype J] {q : ℕ}
    (χ : DirichletCharacter ℂ q) (A : ℝ) (rows : J → Power A → ℂ) (weights : J → ℝ) :
    (∀ f : WindowTest A,
      decode weights (observe rows (samples A f.1)) = signedWindowValue χ A f.1) ↔
      effectiveRow rows weights = sourceRow χ A := by
  constructor
  · intro exactRead
    funext i
    by_contra notEqual
    let residual := effectiveRow rows weights - sourceRow χ A
    have nz : residual i ≠ 0 := sub_ne_zero.mpr notEqual
    obtain ⟨f, g, gain, hg, _, diff⟩ :=
      exists_samples_difference_at_power A i (conj (residual i))
    have positive : 0 < realRow residual (samples A f.1 - samples A g.1) := by
      rw [diff]
      exact row_positive_on_own_coordinate residual i hg nz
    have zeroRow (h : WindowTest A) : realRow residual (samples A h.1) = 0 := by
      change realRow (effectiveRow rows weights - sourceRow χ A) (samples A h.1) = 0
      rw [realRow_sub_apply, ← decode_observe, realRow_sourceRow, exactRead, sub_self]
    rw [map_sub, zeroRow f, zeroRow g, sub_self] at positive
    exact (lt_irrefl 0) positive
  · intro certificate f
    exact exact_source_decode χ A rows weights certificate f.1

theorem exists_linear_decoder_on_tests_iff_kernel {J : Type*} [Fintype J] {q : ℕ}
    (χ : DirichletCharacter ℂ q) (A : ℝ) (rows : J → Power A → ℂ) :
    (∃ weights : J → ℝ, ∀ f : WindowTest A,
      decode weights (observe rows (samples A f.1)) = signedWindowValue χ A f.1) ↔
      (observe rows).ker ≤ (realRow (sourceRow χ A)).ker := by
  simp only [linear_decoder_on_tests_iff]
  exact exists_effectiveRow_eq_iff rows (sourceRow χ A)

/-- To characterize arbitrary decoders on the original domain, it suffices
to realize hidden directions by equal-energy differences of actual tests.
The one-coordinate theorem supplies that premise for an omitted coordinate. -/
theorem energy_decoder_iff_kernel_of_hidden_differences {J : Type*} [Fintype J] {q : ℕ}
    (χ : DirichletCharacter ℂ q) (A : ℝ) (rows : J → Power A → ℂ)
    (realizes : ∀ x : Power A → ℂ, observe rows x = 0 →
      ∃ (f g : WindowTest A) (gain : ℝ), 0 < gain ∧ energy f.1 = energy g.1 ∧
        samples A f.1 - samples A g.1 = gain • x) :
    (∃ recover : ℝ × (J → ℝ) → ℝ, ∀ f : WindowTest A,
      recover (energy f.1, observe rows (samples A f.1)) = signedWindowValue χ A f.1) ↔
      (observe rows).ker ≤ (realRow (sourceRow χ A)).ker := by
  constructor
  · rintro ⟨recover, exactRead⟩ x inKernel
    have hidden := LinearMap.mem_ker.mp inKernel
    obtain ⟨f, g, gain, positive, sameEnergy, diff⟩ := realizes x hidden
    have sameObservation : observe rows (samples A f.1) = observe rows (samples A g.1) := by
      apply sub_eq_zero.mp
      rw [← map_sub, diff, map_smul, hidden, smul_zero]
    have equal : signedWindowValue χ A f.1 = signedWindowValue χ A g.1 := by
      rw [← exactRead f, ← exactRead g, sameEnergy, sameObservation]
    have zero : realRow (sourceRow χ A) (samples A f.1 - samples A g.1) = 0 := by
      rw [map_sub, realRow_sourceRow, realRow_sourceRow, equal, sub_self]
    rw [diff, map_smul, smul_eq_mul] at zero
    exact LinearMap.mem_ker.mpr ((mul_eq_zero.mp zero).resolve_left (ne_of_gt positive))
  · intro kernel
    obtain ⟨weights, cert⟩ := (exists_effectiveRow_eq_iff rows (sourceRow χ A)).2 kernel
    exact ⟨fun y => decode weights y.2, fun f => exact_source_decode χ A rows weights cert f.1⟩

/-- At the strict cutoff 500 the original first window includes 2^8. -/
def zetaPower256 : Power (Real.log 500 / 2) := by
  refine ⟨256, ?_⟩
  have cut : Real.exp (2 * (Real.log 500 / 2)) = 500 := by
    rw [show 2 * (Real.log 500 / 2) = Real.log 500 by ring, Real.exp_log (by norm_num)]
  have power := (pow_mem_firstPowers_iff (A := Real.log 500 / 2)
    Nat.prime_two (by decide : 0 < 8)).2 ⟨by decide, by rw [cut]; norm_num⟩
  exact power

/-- The original zeta signed source at cutoff 500 cannot be read from
measurements that omit the 2^8 coordinate, even with the energy retained. -/
theorem no_zeta_decoder_if_256_omitted {J : Type*} [Fintype J]
    (rows : J → Power (Real.log 500 / 2) → ℂ)
    (omitted : ∀ j, rows j zetaPower256 = 0) :
    ¬ ∃ recover : ℝ × (J → ℝ) → ℝ, ∀ f : WindowTest (Real.log 500 / 2),
      recover (energy f.1, observe rows (samples (Real.log 500 / 2) f.1)) =
        signedWindowValue (1 : DirichletCharacter ℂ 1) (Real.log 500 / 2) f.1 := by
  apply no_energy_decoder_of_omitted_power _ _ rows zetaPower256 omitted
  have hm : ArithmeticFunction.vonMangoldt 256 = Real.log 2 := by
    rw [show (256 : ℕ) = (2 : ℕ)^8 by decide, ArithmeticFunction.vonMangoldt_apply_pow
      (by decide : (8 : ℕ) ≠ 0), ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two]
    norm_num
  have hweight : 0 < primeWeight 256 := by
    rw [primeWeight, hm]
    exact div_pos (Real.log_pos (by norm_num)) (Real.sqrt_pos.mpr (by norm_num))
  have hchar : ((1 : DirichletCharacter ℂ 1)⁻¹) (256 : ℕ) = 1 := by
    rw [inv_one]
    exact MulChar.one_apply (isUnit_of_subsingleton _)
  change (2 : ℂ) * (primeWeight 256 : ℂ) * conj (((1 : DirichletCharacter ℂ 1)⁻¹) (256 : ℕ)) ≠ 0
  rw [hchar, map_one, mul_one]
  exact mul_ne_zero (by norm_num) (by exact_mod_cast hweight.ne')

end GRWTSK.NumberTheory.WeilQuadraticForm.WindowCorrelationDeletion
