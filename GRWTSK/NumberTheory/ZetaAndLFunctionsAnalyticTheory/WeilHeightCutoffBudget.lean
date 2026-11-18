/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveCofinalStageCriterion
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveHeightTailUniform
import Mathlib.Algebra.Order.Floor.Semiring
import Mathlib.Data.Nat.Log
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Necessary margins for the dyadic height budget

In `DirichletStageChain.smallConductorStages_iff_finiteHeightBounds`, the error
budget is `C * (J + 2) * (1 / 2) ^ J`, where `C` retains the window radius,
zero-count constants and squared derivative cost. The admissible pair obeys
`2 ^ J ≤ 1 + H`. These lemmas bound the budget from below at that height and
rule out arbitrarily accurate certificates for a head that starts nonpositive
and has a uniform negative margin above a fixed height. They apply to any
head with those bounds. The sign bounds for an arithmetic head are separate
hypotheses and must be proved from the actual source.

At each fixed nonnegative height the largest admissible index minimizes the
budget. This eliminates the auxiliary index from the existence statement
while retaining the signed head at its original height.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay (derivativeL1Cost derivativeL1Cost_nonneg)
open GRWTSK.NumberTheory.WeilNegativeWitness
  (CriticalStripZero zeroMultiplicity heightWindow mem_heightWindow
    heightCount heightCount_le_source_bound sourceCountConstant sourceCountConstant_nonneg)
open GRWTSK.NumberTheory.Conditional (DirichletCriticalLine)
open scoped ContDiff

/-- A fixed height imposes a lower bound on the dyadic error budget. -/
theorem dyadicHeightTailBudget_lower_of_cutoff {C H : ℝ} (hC : 0 ≤ C)
    (J : ℕ) (hJ : (2 : ℝ) ^ J ≤ 1 + H) :
    2 * C / (1 + H) ≤ C * ((J : ℝ) + 2) * (1 / 2 : ℝ) ^ J := by
  have hrecip : (1 + H)⁻¹ ≤ (1 / 2 : ℝ) ^ J := by
    simpa only [one_div, inv_pow] using
      one_div_le_one_div_of_le (by positivity : 0 < (2 : ℝ) ^ J) hJ
  have hfactor : 2 * C ≤ C * ((J : ℝ) + 2) := by
    rw [mul_comm 2 C]
    apply mul_le_mul_of_nonneg_left _ hC
    linarith [Nat.cast_nonneg (α := ℝ) J]
  calc
    2 * C / (1 + H) = 2 * C * (1 + H)⁻¹ := div_eq_mul_inv _ _
    _ ≤ 2 * C * (1 / 2 : ℝ) ^ J := mul_le_mul_of_nonneg_left hrecip (by positivity)
    _ ≤ C * ((J : ℝ) + 2) * (1 / 2 : ℝ) ^ J :=
      mul_le_mul_of_nonneg_right hfactor (by positivity)

/-- The lower bound retains the original coefficient of the primitive stage budget. -/
theorem primitiveHeightTailBudget_lower_of_cutoff {D L T H : ℝ} (f : ℝ → ℂ)
    (hD : 0 ≤ D) (hL : 0 ≤ L) (J : ℕ) (hJ : (2 : ℝ) ^ J ≤ 1 + H) :
    2 * (4 * Real.exp T * D * (L + 1) * derivativeL1Cost f 1 ^ 2) / (1 + H) ≤
      primitiveHeightTailBudget D L f T J := by
  apply dyadicHeightTailBudget_lower_of_cutoff _ J hJ
  positivity

/-- A nonpositive head below a fixed height and a uniform negative margin above
it are incompatible with arbitrarily accurate dyadic height certificates. -/
theorem exists_tolerance_rejecting_dyadicHeightCertificates
    (head : ℝ → ℝ) {C b δ : ℝ} (hC : 0 < C) (hb : 0 ≤ b) (hδ : 0 < δ)
    (hbelow : ∀ H ≤ b, head H ≤ 0) (habove : ∀ H > b, head H ≤ -δ) :
    ∃ ε : ℝ, 0 < ε ∧ ∀ (J : ℕ) (H : ℝ), (2 : ℝ) ^ J ≤ 1 + H →
      head H - C * ((J : ℝ) + 2) * (1 / 2 : ℝ) ^ J < -ε := by
  let ε := min (2 * C / (1 + b)) δ / 2
  have hmin : 0 < min (2 * C / (1 + b)) δ := lt_min (by positivity) hδ
  have hεsmall : ε < 2 * C / (1 + b) := by
    dsimp [ε]
    linarith [min_le_left (2 * C / (1 + b)) δ]
  have hεδ : ε < δ := by
    dsimp [ε]
    linarith [min_le_right (2 * C / (1 + b)) δ]
  refine ⟨ε, by dsimp [ε]; positivity, ?_⟩
  intro J H hJ
  by_cases hH : H ≤ b
  · have hHpos := (show 0 < (2 : ℝ) ^ J by positivity).trans_le hJ
    have hshift : 1 + H ≤ 1 + b := by linarith
    have hrecip := one_div_le_one_div_of_le hHpos hshift
    have hbudget := dyadicHeightTailBudget_lower_of_cutoff hC.le J hJ
    have hcomparison : 2 * C / (1 + b) ≤ 2 * C / (1 + H) := by
      simpa only [div_eq_mul_inv, one_div, one_mul] using
        mul_le_mul_of_nonneg_left hrecip (by positivity : 0 ≤ 2 * C)
    linarith [hbelow H hH, hcomparison.trans hbudget]
  · have hbudget : 0 ≤ C * ((J : ℝ) + 2) * (1 / 2 : ℝ) ^ J := by positivity
    linarith [habove H (lt_of_not_ge hH)]

/-- For a fixed test and window, increasing the dyadic index decreases the budget. -/
theorem primitiveHeightTailBudget_antitone {D L : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L)
    (f : ℝ → ℂ) (T : ℝ) : Antitone (primitiveHeightTailBudget D L f T) := by
  apply antitone_nat_of_succ_le
  intro J
  apply sub_nonneg.mp
  calc
    0 ≤ (4 * Real.exp T * D * (L + 1) * derivativeL1Cost f 1 ^ 2) *
        ((J : ℝ) + 1) * (1 / 2 : ℝ) ^ J / 2 := by positivity
    _ = primitiveHeightTailBudget D L f T J - primitiveHeightTailBudget D L f T (J + 1) := by
      simp only [primitiveHeightTailBudget, Nat.cast_add, Nat.cast_one, pow_succ]
      ring

/-- The greatest admissible dyadic index for a nonnegative height. -/
noncomputable def maxDyadicHeightIndex (H : ℝ) : ℕ := Nat.log 2 ⌊1 + H⌋₊

theorem dyadicHeightCutoff_iff_le_maxDyadicHeightIndex {H : ℝ} (hH : 0 ≤ H) (J : ℕ) :
    (2 : ℝ) ^ J ≤ 1 + H ↔ J ≤ maxDyadicHeightIndex H := by
  have hfloor : ⌊(1 : ℝ) + H⌋₊ ≠ 0 := ne_of_gt (Nat.floor_pos.mpr (by linarith))
  have hlog := Nat.le_log_iff_pow_le (by decide : 1 < (2 : ℕ)) (x := J) hfloor
  have hcast := Nat.le_floor_iff (n := (2 : ℕ) ^ J) (show 0 ≤ 1 + H by linarith)
  simpa only [maxDyadicHeightIndex, Nat.cast_pow, Nat.cast_ofNat] using (hlog.trans hcast).symm

/-- An admissible index attains the signed margin exactly when the greatest
admissible index attains it at the same height and for the same original head. -/
theorem exists_primitiveHeightCertificateIndex_iff
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive)
    {D L : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L) (f : ℝ → ℂ) (T H ε : ℝ) :
    (∃ J : ℕ, (2 : ℝ) ^ J ≤ 1 + H ∧
      -ε ≤ primitiveHeightContribution χ hp f H - primitiveHeightTailBudget D L f T J) ↔
    0 ≤ H ∧ -ε ≤ primitiveHeightContribution χ hp f H -
      primitiveHeightTailBudget D L f T (maxDyadicHeightIndex H) := by
  constructor
  · rintro ⟨J, hcutoff, hmargin⟩
    have hpow : (1 : ℝ) ≤ 2 ^ J := one_le_pow₀ (by norm_num)
    have hH : 0 ≤ H := by linarith
    have hindex := (dyadicHeightCutoff_iff_le_maxDyadicHeightIndex hH J).mp hcutoff
    have hbudget := primitiveHeightTailBudget_antitone hD hL f T hindex
    exact ⟨hH, hmargin.trans (sub_le_sub_left hbudget _)⟩
  · rintro ⟨hH, hmargin⟩
    have hcutoff := (dyadicHeightCutoff_iff_le_maxDyadicHeightIndex hH _).mpr (le_refl _)
    exact ⟨maxDyadicHeightIndex H, hcutoff, hmargin⟩

/-- The canonical stage criterion can use a single height parameter. Its signed
head keeps the strict cutoff and actual zero multiplicities. -/
theorem smallConductorStages_iff_maximalDyadicHeightBounds
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {D L : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ U : ℝ, 2 ≤ U → (heightCount χ hp U : ℝ) ≤ D * U * (Real.log U + L)) :
    SmallConductorStages χ hp hn ↔
      ∀ (T : ℝ) (f : ℝ → ℝ), Admissible χ T f → ContDiff ℝ ∞ f →
        ∀ ε : ℝ, 0 < ε → ∃ H : ℝ, 0 ≤ H ∧
          -ε ≤ primitiveHeightContribution χ hp (liftReal f) H -
            primitiveHeightTailBudget D L (liftReal f) T (maxDyadicHeightIndex H) := by
  rw [smallConductorStages_iff_finiteHeightBounds χ hp hn hD hL hcount]
  constructor
  · intro h T f hf hsmooth ε hε
    obtain ⟨J, H, hcutoff, hmargin⟩ := h T f hf hsmooth ε hε
    exact ⟨H, (exists_primitiveHeightCertificateIndex_iff χ hp hD hL (liftReal f) T H ε).mp
      ⟨J, hcutoff, hmargin⟩⟩
  · intro h T f hf hsmooth ε hε
    obtain ⟨H, hmargin⟩ := h T f hf hsmooth ε hε
    obtain ⟨J, hcutoff, hcert⟩ :=
      (exists_primitiveHeightCertificateIndex_iff χ hp hD hL (liftReal f) T H ε).mpr hmargin
    exact ⟨J, H, hcutoff, hcert⟩

/-- Beyond one height the optimized signed margin approximates the original
arithmetic value from below, uniformly over all larger heights for this test. -/
theorem exists_height_primitiveOptimizedMargin_bounds
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {D L : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ U : ℝ, 2 ≤ U → (heightCount χ hp U : ℝ) ≤ D * U * (Real.log U + L))
    {T : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) (hsmooth : ContDiff ℝ ∞ f)
    {ε : ℝ} (hε : 0 < ε) :
    ∃ H₀ : ℝ, 0 ≤ H₀ ∧ ∀ H : ℝ, H₀ ≤ H →
      primitiveArithmeticValue χ hp hn T (liftReal f) - ε ≤
          primitiveHeightContribution χ hp (liftReal f) H -
            primitiveHeightTailBudget D L (liftReal f) T (maxDyadicHeightIndex H) ∧
      primitiveHeightContribution χ hp (liftReal f) H -
          primitiveHeightTailBudget D L (liftReal f) T (maxDyadicHeightIndex H) ≤
        primitiveArithmeticValue χ hp hn T (liftReal f) := by
  obtain ⟨J, hJ⟩ := exists_uniform_primitiveHeightTailBudget_and_error_le_of_heightCount
    χ hp hn hD hL hcount (T := T) (derivativeL1Cost_nonneg (liftReal f) 1)
    (ε / 2) (by positivity)
  have hsmall := (hJ f hf hsmooth le_rfl).1
  refine ⟨(2 : ℝ) ^ J, by positivity, ?_⟩
  intro H hH
  have hnonneg : 0 ≤ H := (by positivity : 0 ≤ (2 : ℝ) ^ J).trans hH
  have hcutoff : (2 : ℝ) ^ J ≤ 1 + H := by linarith
  have hindex := (dyadicHeightCutoff_iff_le_maxDyadicHeightIndex hnonneg J).mp hcutoff
  have hbudget := (primitiveHeightTailBudget_antitone hD hL (liftReal f) T hindex).trans hsmall
  have hmax := (dyadicHeightCutoff_iff_le_maxDyadicHeightIndex hnonneg _).mpr (le_refl _)
  have habs := abs_le.mp (abs_primitiveArithmeticValue_sub_heightContribution_le
    χ hp hn hD hL hcount hf hsmooth (maxDyadicHeightIndex H) hmax)
  exact ⟨by linarith [habs.2], by linarith [habs.1]⟩

/-- The original stage chain is equivalent to certificates at every sufficiently
large height for each admissible smooth test and positive tolerance. -/
theorem smallConductorStages_iff_cofinalOptimizedHeightBounds
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {D L : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ U : ℝ, 2 ≤ U → (heightCount χ hp U : ℝ) ≤ D * U * (Real.log U + L)) :
    SmallConductorStages χ hp hn ↔
      ∀ (T : ℝ) (f : ℝ → ℝ), Admissible χ T f → ContDiff ℝ ∞ f →
        ∀ ε : ℝ, 0 < ε → ∃ H₀ : ℝ, 0 ≤ H₀ ∧ ∀ H : ℝ, H₀ ≤ H →
          -ε ≤ primitiveHeightContribution χ hp (liftReal f) H -
            primitiveHeightTailBudget D L (liftReal f) T (maxDyadicHeightIndex H) := by
  constructor
  · intro h T f hf hsmooth ε hε
    have hnonneg := primitive_nonneg_of_small_stages χ hp hn h hf
    obtain ⟨H₀, hH₀, hmargin⟩ :=
      exists_height_primitiveOptimizedMargin_bounds χ hp hn hD hL hcount hf hsmooth hε
    exact ⟨H₀, hH₀, fun H hH => (by linarith : -ε ≤
      primitiveArithmeticValue χ hp hn T (liftReal f) - ε).trans (hmargin H hH).1⟩
  · intro h
    apply (smallConductorStages_iff_maximalDyadicHeightBounds χ hp hn hD hL hcount).mpr
    intro T f hf hsmooth ε hε
    obtain ⟨H₀, hH₀, hmargin⟩ := h T f hf hsmooth ε hε
    exact ⟨H₀, hH₀, hmargin H₀ le_rfl⟩

/-- The original primitive stage condition is equivalent to the raw signed
heads meeting each tolerance along arbitrarily late dyadic heights. The
native zero count and derivative tail estimates supply the error internally. -/
theorem smallConductorStages_iff_dyadicRawHeightBounds
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1) :
    SmallConductorStages χ hp hn ↔
      ∀ (T : ℝ) (f : ℝ → ℝ), Admissible χ T f → ContDiff ℝ ∞ f →
        ∀ ε : ℝ, 0 < ε → ∀ N : ℕ, ∃ J : ℕ, N ≤ J ∧
          -ε ≤ primitiveHeightContribution χ hp (liftReal f) ((2 : ℝ) ^ J - 1) := by
  constructor
  · intro h T f hf hsmooth ε hε N
    obtain ⟨K, hK⟩ := exists_uniform_primitiveHeightTailBudget_and_error_le
      χ hp hn (T := T) (derivativeL1Cost_nonneg (liftReal f) 1) hε
    let J := max N K
    have hpow : (2 : ℝ) ^ K ≤ (2 : ℝ) ^ J :=
      pow_le_pow_right₀ (by norm_num) (le_max_right N K)
    have herror := (hK f hf hsmooth le_rfl).2 ((2 : ℝ) ^ J - 1) (by linarith)
    have hvalue := primitive_nonneg_of_small_stages χ hp hn h hf
    exact ⟨J, le_max_left N K, by linarith [(abs_le.mp herror).2]⟩
  · intro h
    apply (smallConductorStages_iff_finiteHeightBounds χ hp hn
      (sourceCountConstant_nonneg χ) (by norm_num : (0 : ℝ) ≤ 3)
      (heightCount_le_source_bound χ hp)).mpr
    intro T f hf hsmooth ε hε
    obtain ⟨K, hK⟩ := exists_uniform_primitiveHeightTailBudget_and_error_le
      χ hp hn (T := T) (derivativeL1Cost_nonneg (liftReal f) 1)
      (show 0 < ε / 2 by positivity)
    obtain ⟨J, hJ, hhead⟩ := h T f hf hsmooth (ε / 2) (by positivity) K
    have hpow : (2 : ℝ) ^ K ≤ (2 : ℝ) ^ J := pow_le_pow_right₀ (by norm_num) hJ
    have hbudget := (hK f hf hsmooth le_rfl).1
    exact ⟨K, (2 : ℝ) ^ J - 1, by linarith, by linarith⟩

/-- A negative upper certificate at one dyadic height refutes the original
critical-line condition for this character. -/
theorem not_dirichletCriticalLine_of_negativeDyadicHeightCertificate
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {T : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) (hsmooth : ContDiff ℝ ∞ f)
    (J : ℕ) (hcert : primitiveHeightContribution χ hp (liftReal f) ((2 : ℝ) ^ J - 1) +
      primitiveHeightTailBudget (sourceCountConstant χ) 3 (liftReal f) T J < 0) :
    ¬ DirichletCriticalLine χ := by
  intro hline
  have hnonneg := primitiveArithmeticValue_nonneg_of_criticalLine_smooth χ hp hn hline hf hsmooth
  have herror := abs_primitiveArithmeticValue_sub_heightContribution_le χ hp hn
    (sourceCountConstant_nonneg χ) (by norm_num : (0 : ℝ) ≤ 3)
    (heightCount_le_source_bound χ hp) hf hsmooth (H := (2 : ℝ) ^ J - 1) J (by linarith)
  linarith [(abs_le.mp herror).2]

/-- An off-line zero yields one smooth odd test and one positive deficit that
persist in the upper certificates at all sufficiently late dyadic heights. -/
theorem not_dirichletCriticalLine_iff_eventually_negativeDyadicHeightCertificates
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1) :
    ¬ DirichletCriticalLine χ ↔
      ∃ (T : ℝ) (f : ℝ → ℝ) (δ : ℝ), Admissible χ T f ∧ ContDiff ℝ ∞ f ∧ 0 < δ ∧
        ∃ K : ℕ, ∀ J : ℕ, K ≤ J →
          primitiveHeightContribution χ hp (liftReal f) ((2 : ℝ) ^ J - 1) +
            primitiveHeightTailBudget (sourceCountConstant χ) 3 (liftReal f) T J ≤ -δ := by
  constructor
  · intro hoff
    unfold DirichletCriticalLine at hoff
    push Not at hoff
    obtain ⟨s, hpos, hstrip, hz, hs⟩ := hoff
    obtain ⟨T, g, hg, hneg⟩ := primitiveNegativeWitness q χ hp hn s hpos hstrip hs hz
    obtain ⟨f, hsmooth, hf, hvalue⟩ :=
      exists_smooth_negative_primitiveArithmeticValue χ hp hn hg (U := T + 1) (by linarith) hneg
    let δ := -primitiveArithmeticValue χ hp hn (T + 1) (liftReal f) / 2
    have hδ : 0 < δ := by dsimp [δ]; linarith
    obtain ⟨K, hK⟩ := exists_uniform_primitiveHeightTailBudget_and_error_le
      χ hp hn (T := T + 1) (derivativeL1Cost_nonneg (liftReal f) 1)
      (show 0 < δ / 2 by positivity)
    refine ⟨T + 1, f, δ, hf, hsmooth, hδ, K, ?_⟩
    intro J hJ
    have hpow : (2 : ℝ) ^ K ≤ (2 : ℝ) ^ J := pow_le_pow_right₀ (by norm_num) hJ
    have htail := hK f hf hsmooth le_rfl
    have hbudget := (primitiveHeightTailBudget_antitone
      (sourceCountConstant_nonneg χ) (by norm_num : (0 : ℝ) ≤ 3) (liftReal f) (T + 1) hJ).trans htail.1
    have herror := htail.2 ((2 : ℝ) ^ J - 1) (by linarith)
    dsimp [δ] at hbudget herror ⊢
    linarith [(abs_le.mp herror).1]
  · rintro ⟨T, f, δ, hf, hsmooth, hδ, K, hK⟩
    exact not_dirichletCriticalLine_of_negativeDyadicHeightCertificate χ hp hn hf hsmooth K
      ((hK K le_rfl).trans_lt (neg_lt_zero.mpr hδ))

open MeasureTheory SourcePrimeCorrelation
open scoped ComplexConjugate

private theorem realLiftContourWeight_conj (f : ℝ → ℝ) (s : ℂ) :
    (∫ r : ℝ, correlation (liftReal f) r * Complex.exp ((conj s - 1 / 2) * (r : ℂ))) =
      conj (∫ r : ℝ, correlation (liftReal f) r * Complex.exp ((s - 1 / 2) * (r : ℂ))) := by
  have hc (r : ℝ) : conj (correlation (liftReal f) r) = correlation (liftReal f) r := by
    unfold correlation liftReal
    rw [← integral_conj]
    simp only [map_mul, Complex.conj_ofReal]
  rw [← integral_conj]
  congr 1
  funext r
  rw [map_mul, hc, ← Complex.exp_conj]
  simp only [map_mul, map_sub, map_div₀, map_one, map_ofNat, Complex.conj_ofReal]

/-- On real tests, inverse-character conjugation preserves the complete
signed finite head at every strict height, with the actual multiplicities. -/
theorem primitiveHeightContribution_eq_inverse_liftReal
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hpInv : (χ⁻¹).IsPrimitive) (hn : χ ≠ 1)
    (f : ℝ → ℝ) (H : ℝ) :
    primitiveHeightContribution χ hp (liftReal f) H =
      primitiveHeightContribution χ⁻¹ hpInv (liftReal f) H := by
  unfold primitiveHeightContribution
  simp only [Complex.re_sum]
  refine Finset.sum_bij (fun ρ _ => inverseConjugateZero χ hn ρ) ?_ ?_ ?_ ?_
  · intro ρ hρ
    exact (inverseConjugateZero_mem_heightWindow_iff χ hp hpInv hn H ρ).mpr hρ
  · intro ρ _ σ _ heq
    apply Subtype.ext
    have h := congrArg (fun z : CriticalStripZero χ⁻¹ => conj z.1) heq
    simpa only [inverseConjugateZero, Complex.conj_conj] using h
  · intro σ hσ
    have hnInv : χ⁻¹ ≠ 1 := by simpa only [ne_eq, inv_eq_one] using hn
    let u := inverseConjugateZero χ⁻¹ hnInv σ
    let ρ : CriticalStripZero χ := ⟨u.1, by simpa only [inv_inv] using u.2⟩
    have hρ : ρ ∈ heightWindow χ hp H := by
      simpa only [mem_heightWindow, ρ, u, inverseConjugateZero, Complex.conj_im, abs_neg] using hσ
    exact ⟨ρ, hρ, Subtype.ext (Complex.conj_conj σ.1)⟩
  · intro ρ _
    rw [zeroMultiplicity_inverseConjugateZero]
    change (((zeroMultiplicity χ ρ : ℂ) * _).re =
      ((zeroMultiplicity χ ρ : ℂ) *
        ∫ r : ℝ, correlation (liftReal f) r * Complex.exp ((conj ρ.1 - 1 / 2) * (r : ℂ))).re)
    rw [realLiftContourWeight_conj]
    simp only [Complex.mul_re, Complex.natCast_im, zero_mul, sub_zero, Complex.conj_re]

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
