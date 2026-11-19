/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRationalGammaConstant
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRationalPrimeWeights
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilExponentialBumpScalarEvaluation

/-!
# Signed scalar uncertainty in the original bump arithmetic value

MSC2020: 11M26, 11M41, 65G20.
Reuse the genuine prime-weight generator and rational gamma-constant supplier.
Keep the complex phase in the central sum, rather than replacing it by its norm.
The cross effect of gamma uncertainty and mass uncertainty is explicitly paid.
The original finite inventory is identified, not truncated or replaced silently.

WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Lean parsing, elaboration, exact types, builds, kernel replay, transitive axiom
audit, certified source computation and independent review NOT_RUN.
Novelty UNASSESSED. No arithmetic sign, conductor-one transfer or universal
certificate family is asserted. See the adjacent individual provenance.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RoundedCoefficients

/-- The central coefficient retains the conjugate of the actual phase approximation. -/
def coefficient (n L D : ℕ) (z : ℂ) : ℂ :=
  ((RationalPrimeWeights.center n L D : ℝ) : ℂ) * conj z

def coefficientRadius (n L D : ℕ) (e : ℝ) : ℝ :=
  (RationalPrimeWeights.radius n L D : ℝ) +
    |(RationalPrimeWeights.center n L D : ℝ)| * e

/-- RBC-1. A full-complex phase enclosure plus the existing actual weight supplier.
There is no assumption that chi(n) is real or that n is a first prime power. -/
theorem coefficient_error {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    {n D : ℕ} (hn : 1 ≤ n) (hD : 0 < D) (L : ℕ) (z : ℂ) (e : ℝ)
    (hphase : ‖χ n - z‖ ≤ e) :
    ‖(primeWeight n : ℂ) * conj (χ n) - coefficient n L D z‖ ≤
      coefficientRadius n L D e := by
  let w : ℝ := RationalPrimeWeights.center n L D
  have hw := RationalPrimeWeights.center_error hn hD L
  have hid : (primeWeight n : ℂ) * conj (χ n) - coefficient n L D z =
      ((primeWeight n - w : ℝ) : ℂ) * conj (χ n) + (w : ℂ) * conj (χ n - z) := by
    simp only [coefficient, w, Complex.ofReal_sub, map_sub]
    ring
  rw [hid]
  calc
    _ ≤ ‖((primeWeight n - w : ℝ) : ℂ) * conj (χ n)‖ +
        ‖(w : ℂ) * conj (χ n - z)‖ := norm_add_le _ _
    _ = |primeWeight n - w| * ‖χ n‖ + |w| * ‖χ n - z‖ := by
      simp only [norm_mul, Complex.norm_conj, Complex.norm_real, Real.norm_eq_abs]
    _ ≤ |primeWeight n - w| * 1 + |w| * e :=
      add_le_add (mul_le_mul_of_nonneg_left (norm_character_le_one χ n) (abs_nonneg _))
        (mul_le_mul_of_nonneg_left hphase (abs_nonneg _))
    _ ≤ coefficientRadius n L D e := by
      simpa only [coefficientRadius, w, mul_one] using add_le_add_right hw (|w| * e)

/-- RBC-2. Only the uncertainty is majorized. The finite mixed complex central sum
remains signed, including labels whose actual von Mangoldt weight is zero. -/
theorem abs_twistedPrime_sub_coefficients_le
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (T : ℝ)
    (A d : ℕ → ℂ) (e : ℕ → ℝ)
    (hcoeff : ∀ n ∈ activePrimePowers T,
      ‖(primeWeight n : ℂ) * conj (χ n) - d n‖ ≤ e n) :
    |twistedPrime T χ A - 2 * ∑ n ∈ activePrimePowers T, (d n * A n).re| ≤
      2 * ∑ n ∈ activePrimePowers T, e n * ‖A n‖ := by
  have hterm (n : ℕ) (hn : n ∈ activePrimePowers T) :
      |primeWeight n * (conj (χ n) * A n).re - (d n * A n).re| ≤ e n * ‖A n‖ := by
    have hid : primeWeight n * (conj (χ n) * A n).re - (d n * A n).re =
        (((primeWeight n : ℂ) * conj (χ n) - d n) * A n).re := by
      simp only [sub_mul, Complex.sub_re, Complex.mul_re, Complex.mul_im,
        Complex.ofReal_re, Complex.ofReal_im]
      ring
    rw [hid]
    exact (Complex.abs_re_le_norm _).trans
      ((le_of_eq (norm_mul _ _)).trans
        (mul_le_mul_of_nonneg_right (hcoeff n hn) (norm_nonneg _)))
  calc
    _ = 2 * |∑ n ∈ activePrimePowers T,
        (primeWeight n * (conj (χ n) * A n).re - (d n * A n).re)| := by
      rw [twistedPrime, ← mul_sub, ← Finset.sum_sub_distrib, abs_mul]
      norm_num
    _ ≤ 2 * ∑ n ∈ activePrimePowers T,
        |primeWeight n * (conj (χ n) * A n).re - (d n * A n).re| :=
      mul_le_mul_of_nonneg_left (Finset.abs_sum_le_sum_abs _ _) (by norm_num)
    _ ≤ _ := mul_le_mul_of_nonneg_left (Finset.sum_le_sum hterm) (by norm_num)

end GRWTSK.NumberTheory.WeilQuadraticForm.RoundedCoefficients

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation OddRootProjection CharacterWindow LowSchur
open CorrelationCells GammaCells BinomialScalars RoundedCoefficients
open GRWTSK.MeasureAndIntegration.ExponentialBumpCells

/-- EBR-1. The unchanged primitive-nonprincipal source has fully scalar-enclosed
endpoints. Inventory equality and actual phase certificates remain explicit.
No numerical evaluation or sign is inferred merely from this theorem. -/
theorem primitiveArithmeticValue_oddExpBump_rounded_enclosure
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hprim : χ.IsPrimitive) (hnon : χ ≠ 1)
    {T : ℝ} (hT : 0 < T) (m : ℕ) (hm : 0 < m)
    (S : Finset ℕ) (hS : S = activePrimePowers T)
    (x : ℕ → ℝ) (p : ℕ → ℕ) (wp : ℕ → ℕ → ℕ) (N : ℕ)
    (l u : ℕ → ℝ) (b : ℕ → ℕ)
    (hx0 : x 0 = -T) (hxN : x N = T)
    (hgeom : ∀ i < N, -T ≤ x i ∧ x i ≤ x (i + 1) ∧ x (i + 1) ≤ T)
    (hp : ∀ i < N, |(x i + x (i + 1)) / 2| < T →
      0 < p i ∧ (T ^ 2 - ((x i + x (i + 1)) / 2) ^ 2)⁻¹ ≤ (p i : ℝ))
    (hwp : ∀ n ∈ S, ∀ i < N,
      |(x i + x (i + 1)) / 2 + (l n + u n) / 2| < T →
      0 < wp n i ∧
        (T ^ 2 - ((x i + x (i + 1)) / 2 + (l n + u n) / 2) ^ 2)⁻¹ ≤ (wp n i : ℝ))
    (hchecks : ∀ n ∈ S,
      0 ≤ l n ∧ l n ≤ u n ∧ 0 < b n ∧ u n ≤ (b n : ℝ) ∧
        1 ≤ (n : ℝ) * expNegBinomialLower (l n) (b n) ∧
        (n : ℝ) * expNegBinomialUpper (u n) (b n) ≤ 1)
    (wg : ℕ → ℕ → ℕ) (y : ℕ → ℝ) (k : ℕ → ℕ) (M : ℕ)
    (hy0 : y 0 = (1 / 2 : ℝ) ^ m) (hyM : y M = 2 * (m : ℝ))
    (hy : ∀ j < M, 0 < y j ∧ y j ≤ y (j + 1))
    (hwg : ∀ j < M, ∀ i < N,
      |(x i + x (i + 1)) / 2 + (y j + y (j + 1)) / 2| < T →
      0 < wg j i ∧
        (T ^ 2 - ((x i + x (i + 1)) / 2 + (y j + y (j + 1)) / 2) ^ 2)⁻¹ ≤ (wg j i : ℝ))
    (hk : ∀ j < M, 0 < k j ∧
      ((gammaParity χ : ℝ) + (1 / 2 : ℝ)) * y (j + 1) ≤ (k j : ℝ) ∧
        2 * y (j + 1) ≤ (k j : ℝ))
    (h NG : ℕ) (hh : 0 < h) (pL pU : ℚ) (hpL : 1 ≤ pL)
    (hpiL : (pL : ℝ) ≤ Real.pi) (hpiU : Real.pi ≤ (pU : ℝ))
    (LW DW : ℕ → ℕ) (hDW : ∀ n ∈ S, 0 < DW n)
    (z : ℕ → ℂ) (ez : ℕ → ℝ) (hphase : ∀ n ∈ S, ‖χ n - z n‖ ≤ ez n) :
    let A := fun n => bumpCorrelationEstimate T x p (wp n) N ((l n + u n) / 2)
    let e := fun n => bumpCorrelationBudget T x p (wp n) N ((l n + u n) / 2) ((u n - l n) / 2)
    let a₀ := bumpCorrelationEstimate T x p p N 0
    let e₀ := bumpCorrelationBudget T x p p N 0 0
    let c₀ : ℝ := RationalGammaConstant.center q (gammaParity χ) h NG pL pU
    let ec : ℝ := RationalGammaConstant.radius q (gammaParity χ) h NG pL pU
    let d := fun n => coefficient n (LW n) (DW n) (z n)
    let ed := fun n => coefficientRadius n (LW n) (DW n) (ez n)
    let W := fun n => (RationalPrimeWeights.upper n (LW n) (DW n) : ℝ)
    let P := 2 * ∑ n ∈ S, (d n * A n).re
    let E := ec * |a₀.re| + (|c₀| + ec) * e₀ +
      2 * ∑ n ∈ S, (W n * e n + ed n * ‖A n‖)
    let Glo := lagCellSum y (bumpGammaLowerRow (gammaParity χ) T x p wg N y k) M
    let Gup := lagCellSum y (bumpGammaUpperRow (gammaParity χ) T x p wg N y k) M
    c₀ * a₀.re + Glo - P - E ≤
        primitiveArithmeticValue χ hprim hnon T (liftReal (oddExpBump T)) ∧
      primitiveArithmeticValue χ hprim hnon T (liftReal (oddExpBump T)) ≤
        c₀ * a₀.re + Gup - P + dyadicGammaBudget T m + E := by
  classical
  subst S
  intro A e a₀ e₀ c₀ ec d ed W P E Glo Gup
  have hq : 0 < q := Nat.pos_of_ne_zero (NeZero.ne q)
  have hc := (RationalGammaConstant.center_error hq (gammaParity_le_one χ)
    hh NG hpL hpiL hpiU).2
  change |gammaConstant q (gammaParity χ) - c₀| ≤ ec at hc
  have hweight (n : ℕ) (hn : n ∈ activePrimePowers T) : primeWeight n ≤ W n := by
    have hn2 := (Finset.mem_filter.mp hn).2.1
    exact (RationalPrimeWeights.weight_enclosure (by omega : 1 ≤ n) (hDW n hn) (LW n)).2.2
  have hd (n : ℕ) (hn : n ∈ activePrimePowers T) :
      ‖(primeWeight n : ℂ) * conj (χ n) - d n‖ ≤ ed n := by
    have hn2 := (Finset.mem_filter.mp hn).2.1
    exact coefficient_error χ (by omega : 1 ≤ n) (hDW n hn) (LW n) (z n) (ez n) (hphase n hn)
  have hpErr := abs_twistedPrime_sub_coefficients_le χ T A d ed hd
  change |twistedPrime T χ A - P| ≤
    2 * ∑ n ∈ activePrimePowers T, ed n * ‖A n‖ at hpErr
  have hzero := norm_correlation_oddExpBump_sub_cells_le T hT.le x p p N hx0 hxN hgeom
    0 0 0 (by norm_num) hp (by simpa only [add_zero] using hp)
  have he₀ : 0 ≤ e₀ := (norm_nonneg _).trans hzero
  have he (n : ℕ) (hn : n ∈ activePrimePowers T) : 0 ≤ e n := by
    rcases hchecks n hn with ⟨hl, hlu, hb, hu, hleft, hright⟩
    have hn2 := (Finset.mem_filter.mp hn).2.1
    have hnR : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
    have hlog := (log_midpoint_error_of_binomial_checks hnR hl hlu hb hu hleft hright).2
    have hc' := norm_correlation_oddExpBump_sub_cells_le T hT.le x p (wp n) N
      hx0 hxN hgeom (Real.log (n : ℝ)) ((l n + u n) / 2) ((u n - l n) / 2)
      hlog hp (hwp n hn)
    exact (norm_nonneg _).trans hc'
  have hcAbs : |gammaConstant q (gammaParity χ)| ≤ |c₀| + ec := by
    have h := abs_add (gammaConstant q (gammaParity χ) - c₀) c₀
    rw [sub_add_cancel] at h
    linarith
  have hmass : |gammaConstant q (gammaParity χ) * a₀.re - c₀ * a₀.re| ≤ ec * |a₀.re| := by
    rw [← sub_mul, abs_mul]
    exact mul_le_mul_of_nonneg_right hc (abs_nonneg _)
  have hOldError : |gammaConstant q (gammaParity χ)| * e₀ + primeCorrelationError T e ≤
      (|c₀| + ec) * e₀ + 2 * ∑ n ∈ activePrimePowers T, W n * e n := by
    apply add_le_add (mul_le_mul_of_nonneg_right hcAbs he₀)
    unfold primeCorrelationError
    apply mul_le_mul_of_nonneg_left _ (by norm_num)
    exact Finset.sum_le_sum (fun n hn => mul_le_mul_of_nonneg_right (hweight n hn) (he n hn))
  have hbase := primitiveArithmeticValue_oddExpBump_binomialScalars_enclosure χ hprim hnon
    hT m hm x p wp N l u b hx0 hxN hgeom hp hwp hchecks wg y k M hy0 hyM hy hwg hk
  change
    gammaConstant q (gammaParity χ) * a₀.re + Glo - twistedPrime T χ A -
        (|gammaConstant q (gammaParity χ)| * e₀ + primeCorrelationError T e) ≤
      primitiveArithmeticValue χ hprim hnon T (liftReal (oddExpBump T)) ∧
    primitiveArithmeticValue χ hprim hnon T (liftReal (oddExpBump T)) ≤
      gammaConstant q (gammaParity χ) * a₀.re + Gup - twistedPrime T χ A +
        dyadicGammaBudget T m + (|gammaConstant q (gammaParity χ)| * e₀ + primeCorrelationError T e)
    at hbase
  have hmBounds := abs_le.mp hmass
  have hpBounds := abs_le.mp hpErr
  have hE : E = ec * |a₀.re| + (|c₀| + ec) * e₀ +
      2 * (∑ n ∈ activePrimePowers T, W n * e n) +
      2 * (∑ n ∈ activePrimePowers T, ed n * ‖A n‖) := by
    dsimp only [E]
    rw [Finset.sum_add_distrib]
    ring
  rw [hE]
  constructor <;> linarith [hbase.1, hbase.2, hmBounds.1, hmBounds.2, hpBounds.1, hpBounds.2]

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
