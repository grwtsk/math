/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveCofinalInverseOrbitStages
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveCompactOddCanonicalWitness
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveSmoothWitnessTransfer

/-!
# The critical-line condition for cofinal primitive Weil stages

On the critical line the actual complex spectral product is a norm square.
The inverse-character formula, real-test inverse invariance, and smooth odd
approximation transfer nonnegativity to the original stage tests. Conversely
cofinal stage bounds imply positivity on those same tests, so the canonical
negative witness excludes every off-line zero.
-/

set_option autoImplicit false
noncomputable section

open Filter MeasureTheory Set
open scoped BigOperators ComplexConjugate ContDiff Topology

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation OddRootProjection
open GRWTSK.NumberTheory.Conditional
open GRWTSK.NumberTheory.WeilNegativeWitness (CriticalStripZero zeroMultiplicity spectralCoordinate
  heightCount heightWindow mem_heightWindow gammaParity_inverse)
open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay (derivativeL1Cost)

private theorem contourWeight_re_nonneg_of_criticalLine
    (f : ℝ → ℂ) (T : ℝ) (hi : Integrable f volume)
    (hs : ∀ t, T < |t| → f t = 0) (s : ℂ) (hline : s.re = 1 / 2) :
    0 ≤ (∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))).re := by
  rw [correlation_contour_weight_eq_reflected_product f T hi hs]
  have hre : conj (spectralCoordinate s) = spectralCoordinate s := by
    apply Complex.ext
    · simp
    · have him : (spectralCoordinate s).im = 0 := by
        simp [spectralCoordinate, Complex.mul_im, hline]
      simp [him]
  rw [hre, Complex.mul_conj, Complex.ofReal_re]
  exact Complex.normSq_nonneg _

private theorem smoothLift_admissible {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    {T : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) (hsmooth : ContDiff ℝ ∞ f) :
    WeilNegativeWitness.Admissible (liftReal f) ∧ tsupport (liftReal f) ⊆ Icc (-T) T := by
  refine ⟨⟨Complex.ofRealCLM.contDiff.comp hsmooth, hf.2.2.1.comp_left Complex.ofReal_zero⟩, ?_⟩
  apply closure_minimal _ isClosed_Icc
  intro t ht
  by_contra hout
  exact ht (hf.2.2.2.2.2.1 t hout)

private theorem liftReal_zero_of_lt_abs {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    {T : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) (t : ℝ) (ht : T < |t|) :
    liftReal f t = 0 := by
  apply hf.2.2.2.2.2.1
  intro hm
  exact (not_lt_of_ge (abs_le.mpr ⟨by linarith [hm.1], hm.2⟩)) ht

/-- The exact primitive formula is nonnegative on every smooth odd real test
when the original zero divisor lies on the critical line. -/
theorem primitiveArithmeticValue_nonneg_of_criticalLine_smooth {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    (hline : DirichletCriticalLine χ) {T : ℝ} {f : ℝ → ℝ}
    (hf : Admissible χ T f) (hsmooth : ContDiff ℝ ∞ f) :
    0 ≤ primitiveArithmeticValue χ hp hn T (liftReal f) := by
  obtain ⟨hlift, hs⟩ := smoothLift_admissible hf hsmooth
  have hi : Integrable (liftReal f) volume :=
    hlift.1.continuous.integrable_of_hasCompactSupport hlift.2
  have hterm (ρ : CriticalStripZero χ) : 0 ≤ ((zeroMultiplicity χ ρ : ℂ) *
      ∫ r : ℝ, correlation (liftReal f) r * Complex.exp ((ρ.1 - 1 / 2) * (r : ℂ))).re := by
    rw [Complex.mul_re, Complex.natCast_re, Complex.natCast_im, zero_mul, sub_zero]
    apply mul_nonneg (Nat.cast_nonneg _)
    exact contourWeight_re_nonneg_of_criticalLine (liftReal f) T hi
      (liftReal_zero_of_lt_abs hf) ρ.1 (hline ρ.1 ρ.2.2.1 ρ.2.2.2 ρ.2.1)
  have hsum := primitiveInverseCharacterFormula q χ hp hn (liftReal f) T hf.1.le hlift hs
  have hre := Complex.reCLM.hasSum hsum
  have hnonneg := hre.nonneg hterm
  simpa only [Complex.reCLM_apply, Complex.ofReal_re,
    primitiveArithmeticValue_inverse_liftReal χ hp hn _ _ T f hf.2.2.2.2.1] using hnonneg

private theorem primitiveArithmeticValue_nonneg_of_smooth_nonneg
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    (h : ∀ (T : ℝ) (f : ℝ → ℝ), Admissible χ T f → ContDiff ℝ ∞ f →
      0 ≤ primitiveArithmeticValue χ hp hn T (liftReal f))
    {T : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) :
    0 ≤ primitiveArithmeticValue χ hp hn T (liftReal f) := by
  by_contra hneg
  obtain ⟨g, hgs, hg, hgneg⟩ := exists_smooth_negative_primitiveArithmeticValue χ hp hn
    hf (U := T + 1) (by linarith) (lt_of_not_ge hneg)
  exact (not_lt_of_ge (h (T + 1) g hg hgs)) hgneg

private theorem smallConductorStages_of_smooth_nonneg
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    (h : ∀ (T : ℝ) (f : ℝ → ℝ), Admissible χ T f → ContDiff ℝ ∞ f →
      0 ≤ primitiveArithmeticValue χ hp hn T (liftReal f)) :
    SmallConductorStages χ hp hn := by
  intro j _ f hf
  have he : 0 ≤ energy (liftReal f) := integral_nonneg (fun _ => sq_nonneg _)
  exact (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr (by positivity)) he).trans
    (primitiveArithmeticValue_nonneg_of_smooth_nonneg χ hp hn h hf)

/-- Full small-conductor stages and the critical-line condition for the same
primitive nonprincipal character are equivalent. -/
theorem smallConductorStages_iff_criticalLine {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1) :
    SmallConductorStages χ hp hn ↔ DirichletCriticalLine χ :=
  ⟨primitive_criticalLine primitiveNegativeWitness χ hp hn,
    fun hline => smallConductorStages_of_smooth_nonneg χ hp hn
      (fun _ _ hf hsmooth =>
        primitiveArithmeticValue_nonneg_of_criticalLine_smooth χ hp hn hline hf hsmooth)⟩

/-- The exact inverse-orbit scheduling premise of the cofinal consumer is
equivalent to the critical-line condition for the original representative. -/
theorem cofinalInverseOrbitStages_iff_criticalLine {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1) :
    (∃ index : ℕ → ℕ, (∀ j : ℕ, ∃ n : ℕ, j ≤ index n) ∧
      ((∀ n : ℕ, χ.conductor < conductorFrontier (index n + 1) →
          PrimitiveStageLower χ hp hn (index n)) ∨
       (∀ n : ℕ, (χ⁻¹).conductor < conductorFrontier (index n + 1) →
          PrimitiveStageLower χ⁻¹
            (by simpa only [DirichletCharacter.IsPrimitive, DirichletCharacter.conductor_inv]
              using hp)
            (by simpa only [ne_eq, inv_eq_one] using hn) (index n)))) ↔
      DirichletCriticalLine χ := by
  constructor
  · rintro ⟨index, hcover, hstage | hstage⟩
    · exact (smallConductorStages_iff_criticalLine χ hp hn).mp
        (smallConductorStages_of_cofinal_indices χ hp hn index hcover hstage)
    · exact (smallConductorStages_iff_criticalLine χ hp hn).mp
        (smallConductorStages_of_inverse χ hp hn _ _
          (smallConductorStages_of_cofinal_indices χ⁻¹ _ _ index hcover hstage))
  · intro hline
    exact ⟨id, fun j => ⟨j, le_rfl⟩,
      Or.inl ((smallConductorStages_iff_criticalLine χ hp hn).mpr hline)⟩

/-- The real contribution of the original zeros strictly below the height,
with their actual analytic multiplicities. -/
def primitiveHeightContribution {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (f : ℝ → ℂ) (H : ℝ) : ℝ :=
  (∑ ρ ∈ heightWindow χ hp H, (zeroMultiplicity χ ρ : ℂ) *
    ∫ r : ℝ, correlation f r * Complex.exp ((ρ.1 - 1 / 2) * (r : ℂ))).re

/-- Absolute error budget for a smooth test and height at least `2 ^ J - 1`.
The derivative cost is retained for each test. -/
def primitiveHeightTailBudget (D L : ℝ) (f : ℝ → ℂ) (T : ℝ) (J : ℕ) : ℝ :=
  4 * Real.exp T * D * (L + 1) * derivativeL1Cost f 1 ^ 2 *
    ((J : ℝ) + 2) * (1 / 2 : ℝ) ^ J

/-- The finite sum approximates the actual real arithmetic value, including
the character inversion and the entire gamma correction. -/
theorem abs_primitiveArithmeticValue_sub_heightContribution_le
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {D L : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ U : ℝ, 2 ≤ U → (heightCount χ hp U : ℝ) ≤ D * U * (Real.log U + L))
    {T H : ℝ} {f : ℝ → ℝ}
    (hf : Admissible χ T f) (hsmooth : ContDiff ℝ ∞ f) (J : ℕ)
    (hJ : (2 : ℝ) ^ J ≤ 1 + H) :
    |primitiveArithmeticValue χ hp hn T (liftReal f) -
        primitiveHeightContribution χ hp (liftReal f) H| ≤
      primitiveHeightTailBudget D L (liftReal f) T J := by
  obtain ⟨hlift, hs⟩ := smoothLift_admissible hf hsmooth
  have hq : q ≠ 1 := by
    rintro rfl
    exact hn (Subsingleton.elim _ _)
  have hbound := primitive_heightWindow_error_le_first_order_of_heightCount χ hp hD hL hcount
    (liftReal f) T hf.1.le hlift hs J H hJ
  have heq := (weil_full_line_eq_physical_arithmetic χ hp (liftReal f) T hf.1.le hlift hs).2
  let hpInv : (χ⁻¹).IsPrimitive := by
    simpa only [DirichletCharacter.IsPrimitive, DirichletCharacter.conductor_inv] using hp
  let hnInv : χ⁻¹ ≠ 1 := by simpa only [ne_eq, inv_eq_one] using hn
  have hvalue :
      gammaConstant q (gammaParity χ) * energy (liftReal f) +
        (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity (gammaParity χ) (liftReal f) r) -
        CharacterWindow.twistedPrime T χ⁻¹ (fun n => correlation (liftReal f) (Real.log (n : ℝ))) =
      primitiveArithmeticValue χ hp hn T (liftReal f) := by
    rw [← primitiveArithmeticValue_inverse_liftReal χ hp hn hpInv hnInv T f hf.2.2.2.2.1]
    simp only [primitiveArithmeticValue, gammaParity_inverse]
  dsimp only at hbound heq
  rw [ite_eq_right hq, add_zero, heq, hvalue] at hbound
  refine le_trans ?_ hbound
  unfold primitiveHeightContribution
  simpa only [Complex.sub_re, Complex.ofReal_re] using Complex.abs_re_le_norm
    (((primitiveArithmeticValue χ hp hn T (liftReal f) : ℝ) : ℂ) -
      ∑ ρ ∈ heightWindow χ hp H, (zeroMultiplicity χ ρ : ℂ) *
        ∫ r : ℝ, correlation (liftReal f) r * Complex.exp ((ρ.1 - 1 / 2) * (r : ℂ)))

/-- Nonnegative-height certificates for both members of an inverse pair
give the signed-height certificate for the original character. The real
axis belongs to the direct certificate. -/
theorem criticalLine_below_height_of_nonnegative_inverse_pair
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (H : ℝ)
    (hχ : ∀ ρ : CriticalStripZero χ,
      0 ≤ ρ.1.im → ρ.1.im < H → ρ.1.re = 1 / 2)
    (hInv : ∀ ρ : CriticalStripZero χ⁻¹,
      0 ≤ ρ.1.im → ρ.1.im < H → ρ.1.re = 1 / 2) :
    ∀ ρ : CriticalStripZero χ, |ρ.1.im| < H → ρ.1.re = 1 / 2 := by
  intro ρ hH
  by_cases him : 0 ≤ ρ.1.im
  · exact hχ ρ him ((le_abs_self _).trans_lt hH)
  · have him' : ρ.1.im < 0 := lt_of_not_ge him
    have hr : (1 - ρ.1).re = 1 - ρ.1.re := by simp [Complex.sub_re]
    have hi : (1 - ρ.1).im = -ρ.1.im := by simp [Complex.sub_im]
    let ρInv : CriticalStripZero χ⁻¹ :=
      ⟨1 - ρ.1, LFunction_zero_at_reflected_inverse χ hp hn ρ.2.2.1 ρ.2.2.2 ρ.2.1,
        by rw [hr]; linarith [ρ.2.2.2], by rw [hr]; linarith [ρ.2.2.1]⟩
    have hnonneg : 0 ≤ ρInv.1.im := by change 0 ≤ (1 - ρ.1).im; rw [hi]; linarith
    have hheight : ρInv.1.im < H := by
      change (1 - ρ.1).im < H
      rw [hi, ← abs_of_neg him']
      exact hH
    have hreal := hInv ρInv hnonneg hheight
    change (1 - ρ.1).re = 1 / 2 at hreal
    rw [hr] at hreal
    linarith

/-- A head verified up to a fixed height gives a lower bound for this test
with the full derivative-dependent tail charge. -/
theorem primitiveArithmeticValue_lower_of_heightWindowCriticalLine
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {D L : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ U : ℝ, 2 ≤ U → (heightCount χ hp U : ℝ) ≤ D * U * (Real.log U + L))
    {T H : ℝ} {f : ℝ → ℝ}
    (hf : Admissible χ T f) (hsmooth : ContDiff ℝ ∞ f) (J : ℕ)
    (hJ : (2 : ℝ) ^ J ≤ 1 + H)
    (hline : ∀ ρ : CriticalStripZero χ, |ρ.1.im| < H → ρ.1.re = 1 / 2) :
    -primitiveHeightTailBudget D L (liftReal f) T J ≤
      primitiveArithmeticValue χ hp hn T (liftReal f) := by
  obtain ⟨hlift, _⟩ := smoothLift_admissible hf hsmooth
  have hi : Integrable (liftReal f) volume :=
    hlift.1.continuous.integrable_of_hasCompactSupport hlift.2
  have hhead : 0 ≤ primitiveHeightContribution χ hp (liftReal f) H := by
    unfold primitiveHeightContribution
    rw [Complex.re_sum]
    apply Finset.sum_nonneg
    intro ρ hρ
    rw [Complex.mul_re, Complex.natCast_re, Complex.natCast_im, zero_mul, sub_zero]
    exact mul_nonneg (Nat.cast_nonneg _)
      (contourWeight_re_nonneg_of_criticalLine (liftReal f) T hi
        (liftReal_zero_of_lt_abs hf) ρ.1
        (hline ρ ((mem_heightWindow χ hp H ρ).mp hρ)))
  have herror := abs_primitiveArithmeticValue_sub_heightContribution_le χ hp hn hD hL hcount hf hsmooth J hJ
  linarith [(neg_abs_le _).trans' (neg_le_neg herror)]

private theorem tendsto_primitiveHeightTailBudget (D L : ℝ) (f : ℝ → ℂ) (T : ℝ) :
    Tendsto (primitiveHeightTailBudget D L f T) atTop (𝓝 0) := by
  have h₁ := tendsto_self_mul_const_pow_of_lt_one
    (by norm_num : (0 : ℝ) ≤ 1 / 2) (by norm_num : (1 / 2 : ℝ) < 1)
  have h₂ := (tendsto_pow_atTop_nhds_zero_of_lt_one
    (by norm_num : (0 : ℝ) ≤ 1 / 2) (by norm_num : (1 / 2 : ℝ) < 1)).const_mul (2 : ℝ)
  have h := (h₁.add h₂).const_mul
    (4 * Real.exp T * D * (L + 1) * derivativeL1Cost f 1 ^ 2)
  simp only [mul_zero, add_zero] at h
  convert h using 1
  funext J
  unfold primitiveHeightTailBudget
  ring

/-- Pointwise finite-head certificates with arbitrarily small error suffice
for the original stage chain. The height can depend on the test, window
and tolerance, and the head may retain signed off-line contributions. -/
theorem smallConductorStages_iff_finiteHeightBounds
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {D L : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ U : ℝ, 2 ≤ U → (heightCount χ hp U : ℝ) ≤ D * U * (Real.log U + L)) :
    SmallConductorStages χ hp hn ↔
      ∀ (T : ℝ) (f : ℝ → ℝ), Admissible χ T f → ContDiff ℝ ∞ f →
        ∀ ε : ℝ, 0 < ε → ∃ (J : ℕ) (H : ℝ),
          (2 : ℝ) ^ J ≤ 1 + H ∧
          -ε ≤ primitiveHeightContribution χ hp (liftReal f) H -
            primitiveHeightTailBudget D L (liftReal f) T J := by
  constructor
  · intro hstages T f hf hsmooth ε hε
    have hnonneg := primitive_nonneg_of_small_stages χ hp hn hstages hf
    have hevent := (tendsto_primitiveHeightTailBudget D L (liftReal f) T).eventually
      (eventually_lt_nhds (show (0 : ℝ) < ε / 2 by positivity))
    obtain ⟨J, hJ⟩ := hevent.exists
    let H := (2 : ℝ) ^ J
    have hheight : (2 : ℝ) ^ J ≤ 1 + H := by dsimp [H]; linarith
    have herror := abs_primitiveArithmeticValue_sub_heightContribution_le χ hp hn hD hL hcount hf hsmooth J hheight
    exact ⟨J, H, hheight, by linarith [(le_abs_self _).trans herror]⟩
  · intro hbound
    apply smallConductorStages_of_smooth_nonneg χ hp hn
    intro T f hf hsmooth
    by_contra hneg
    let ε := -(primitiveArithmeticValue χ hp hn T (liftReal f)) / 2
    have hε : 0 < ε := by dsimp [ε]; linarith
    obtain ⟨J, H, hheight, hhead⟩ := hbound T f hf hsmooth ε hε
    have herror := abs_primitiveArithmeticValue_sub_heightContribution_le χ hp hn hD hL hcount hf hsmooth J hheight
    dsimp [ε] at hhead
    linarith [(neg_abs_le _).trans' (neg_le_neg herror)]

/-- Every fixed-height budget can exceed any prescribed multiple of energy
on the original smooth odd tests, even at a fixed positive support radius. -/
theorem exists_primitiveHeightTailBudget_gt_mul_energy
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    {D L : ℝ} (hD : 0 < D) (hL : 0 ≤ L) (T : ℝ) (hT : 0 < T) (J : ℕ) (M : ℝ) :
    ∃ f : ℝ → ℝ, Admissible χ T f ∧ ContDiff ℝ ∞ f ∧
      M * energy (liftReal f) < primitiveHeightTailBudget D L (liftReal f) T J := by
  let B : ContDiffBump (0 : ℝ) := ⟨T / 4, T / 2, by positivity, by linarith⟩
  let g : ℝ → ℝ := fun x => x * B x
  have hg : ContDiff ℝ ∞ g := contDiff_id.mul B.contDiff
  have hgo : Function.Odd g := by
    intro x
    dsimp [g]
    simp [B.neg, neg_mul]
  have hgs (x : ℝ) (hx : x ∉ Icc (-T) T) : g x = 0 := by
    have hxT : T < |x| := lt_of_not_ge (fun h => hx (abs_le.mp h))
    have hb : B x = 0 := B.zero_of_le_dist (by
      dsimp [B]
      rw [Real.dist_eq, sub_zero]
      linarith)
    simp [g, hb]
  have hga := (admissible_iff_smooth_odd_supported χ hT g).mpr
    ⟨hg.of_le (by simp), hgo, hgs⟩
  have hglift := (smoothLift_admissible hga hg).1
  have hB0 : B 0 = 1 := B.one_of_mem_closedBall (Metric.mem_closedBall_self B.rIn_pos.le)
  have hderiv : deriv (liftReal g) 0 = 1 := by
    have hB : HasDerivAt (B : ℝ → ℝ) (deriv (B : ℝ → ℝ) 0) 0 :=
      ((B.contDiff : ContDiff ℝ ∞ B).differentiable (by simp) 0).hasDerivAt
    have hg₀ : HasDerivAt g 1 0 := by
      change HasDerivAt (id * (B : ℝ → ℝ)) 1 0
      simpa only [hB0, mul_one, id_eq, zero_mul, add_zero] using
        (hasDerivAt_id (0 : ℝ)).mul hB
    have hlift : HasDerivAt (liftReal g) 1 0 := by
      change HasDerivAt (fun x => (g x : ℂ)) 1 0
      simpa only [Function.comp_def, Complex.ofRealCLM_apply, Complex.ofReal_one] using
        Complex.ofRealCLM.hasFDerivAt.comp_hasDerivAt 0 hg₀
    exact hlift.deriv
  let V := ∫ x : ℝ, ‖deriv (liftReal g) x‖
  have hV : 0 < V := by
    apply Continuous.integral_pos_of_hasCompactSupport_nonneg_nonzero (x := (0 : ℝ))
    · exact (hglift.1.continuous_deriv (by simp)).norm
    · exact hglift.2.deriv.comp_left norm_zero
    · exact fun _ => norm_nonneg _
    · simp [hderiv]
  let K := 4 * Real.exp T * D * (L + 1) *
    ((J : ℝ) + 2) * (1 / 2 : ℝ) ^ J
  have hK : 0 < K := by dsimp [K]; positivity
  have hKD : 0 < K * (2 * V) ^ 2 := mul_pos hK (sq_pos_of_ne_zero (by positivity : 2 * V ≠ 0))
  obtain ⟨n, hn⟩ := exists_nat_gt (M * energy (liftReal g) / (K * (2 * V) ^ 2))
  let c : ℝ := n + 1
  have hc : 0 < c := by dsimp [c]; positivity
  have hc₁ : 1 ≤ c := by dsimp [c]; linarith [Nat.cast_nonneg (α := ℝ) n]
  let f : ℝ → ℝ := fun x => g (c * x)
  have hfc : ContDiff ℝ ∞ f := hg.comp (contDiff_const.mul contDiff_id)
  have hfo : Function.Odd f := by
    intro x
    change g (c * -x) = -g (c * x)
    rw [mul_neg, hgo]
  have hfs (x : ℝ) (hx : x ∉ Icc (-T) T) : f x = 0 := by
    apply hgs
    intro hcx
    apply hx
    have ha : |c * x| ≤ T := abs_le.mpr hcx
    rw [abs_mul, abs_of_pos hc] at ha
    exact abs_le.mp ((le_mul_of_one_le_left (abs_nonneg _) hc₁).trans ha)
  have hE : energy (liftReal f) = energy (liftReal g) / c := by
    unfold energy
    change (∫ x : ℝ, ‖liftReal g (c * x)‖ ^ 2) = _
    rw [Measure.integral_comp_mul_left (fun x => ‖liftReal g x‖ ^ 2) c,
      abs_of_pos (inv_pos.mpr hc), smul_eq_mul, div_eq_mul_inv, mul_comm]
  have hcost : 2 * V ≤ derivativeL1Cost (liftReal f) 1 := by
    have hfun (x : ℝ) : ‖deriv (liftReal f) x‖ = c * ‖deriv (liftReal g) (c * x)‖ := by
      change ‖deriv ((liftReal g) <| c * ·) x‖ = _
      rw [deriv_comp_mul_left, norm_smul, Real.norm_of_nonneg hc.le]
    have hi : (∫ x : ℝ, ‖deriv (liftReal f) x‖) = V := by
      simp_rw [hfun]
      rw [integral_const_mul, Measure.integral_comp_mul_left (fun x => ‖deriv (liftReal g) x‖) c,
        abs_of_pos (inv_pos.mpr hc), smul_eq_mul, ← mul_assoc, mul_inv_cancel₀ hc.ne', one_mul]
    unfold derivativeL1Cost
    simp only [pow_one, Function.iterate_one, hi]
    linarith [integral_nonneg (μ := volume) (f := fun x : ℝ => ‖liftReal f x‖) fun x => norm_nonneg (liftReal f x)]
  have hm : M * energy (liftReal f) < K * (2 * V) ^ 2 := by
    rw [hE, ← mul_div_assoc]
    exact (div_lt_iff₀ hc).mpr (mul_comm _ c ▸
      (div_lt_iff₀ hKD).mp (hn.trans (by dsimp [c]; linarith)))
  refine ⟨f, (admissible_iff_smooth_odd_supported χ hT f).mpr
    ⟨hfc.of_le (by simp), hfo, hfs⟩, hfc, hm.trans_le ?_⟩
  calc
    _ ≤ K * derivativeL1Cost (liftReal f) 1 ^ 2 :=
      mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (by linarith) hcost 2) hK.le
    _ = _ := by unfold K primitiveHeightTailBudget; ring

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
