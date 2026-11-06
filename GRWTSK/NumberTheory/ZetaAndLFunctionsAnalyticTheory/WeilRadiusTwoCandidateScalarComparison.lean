/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCandidateSeed
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoReceivingHarmonic
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRemoteScalars

/-!
# Scalar error propagation for the radius-two candidate

The literal and observed seeds use the same constant receiving weight.
Separate reciprocal and squared-reciprocal sums price the two normalized
generators and the diagonal covariance. The remaining terms charge
the signed signal, the shifted physical diagonal, and the two remote
prices. A final comparison against the dyadic generator encodings can
then spend the fixed source allowance in the high-floor return.
Numerical inputs and full pivot replay are separate premises.
Independent mathematical review is pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateScalarComparison

open RadiusTwoCandidateSeed RadiusTwoDisplacement RadiusTwoSeedCovariance
open RadiusTwoWeightedMiddleStructure RadiusTwoReceivingHarmonic
open RadiusTwoWeightedMiddleReturn
open LowSchur OddBoundarySignalBounds RadiusTwoRemoteScalars

/-- Scalar inputs before evaluating the constant-weight covariance and remote charges. -/
structure Observations where
  signal : ℕ → ℝ
  coreDiagonal : Fin 399936 → ℝ
  derivativePrice : ℝ
  remoteDiagonal : Fin 399936 → ℝ

/-- Literal observations with the physical shift and pole normalization fixed. -/
def literal : Observations where
  signal := displacementSignal
  coreDiagonal i := parityCoreEntry (mode 400000 i) (mode 400000 i) - 1/5
  derivativePrice := (149/100 : ℝ)⁻¹ * remoteDerivative 1200000 (1/4)
  remoteDiagonal i := (149/100 : ℝ)⁻¹ * remoteDiag 400000 1200000 (1/4) (mode 400000 i)

private def α : ℝ := (149/100 : ℝ)⁻¹ * remoteFirst 1200000 (1/4)
private def W : ℝ := 100/39

/-- Evaluate a scalar table in the exact gauge of the paid seed. -/
def ofObservations (s : Observations) : Coefficients (Fin 399936) :=
  let m := mode 400000
  let n := receiving 400000 1200000
  let u := s.signal ∘ m
  let U := s.signal ∘ n
  let C := fun i k => cross (m i) (n k) (u i) (U k)
  ⟨fun i => s.coreDiagonal i -
      (∑ k, W * (C i k)^2) - α*(u i)^2 - s.derivativePrice*(m i : ℝ)^2 -
      s.remoteDiagonal i,
    fun i => u i - (∑ k, W * C i k * U k) + s.derivativePrice*(m i : ℝ)^3,
    u,
    fun i => (∑ k, W * normalizedCross (m i) (n k) (u i) (U k)) +
      α * (m i : ℝ) * u i⟩

theorem literal_eq : ofObservations literal = candidateSource := rfl

set_option maxHeartbeats 2000000 in
private theorem mass_le : primeMass 2 ≤ 25 := by
  have h : (primeMassBounds 16).2 ≤ (25 : ℚ) := by decide +kernel
  exact (primeMassBounds_sound 16).2.trans (by exact_mod_cast h)

/-- The literal signed displacement signal has a uniform bound on the candidate modes. -/
theorem abs_literalSignal_le {n : ℕ} (hn : 65 ≤ n) : |literal.signal n| ≤ 9 := by
  have hnR : (65 : ℝ) ≤ n := by exact_mod_cast hn
  have hn0 : (0 : ℝ) < n := by linarith
  have hg0 := boundarySignal_nonneg 2 (by norm_num) n
  have hg := boundarySignal_le 2 (by norm_num) (show 0 < n by omega)
  have hπ : (4 : ℝ) ≤ Real.pi ^ 2 := by nlinarith [Real.pi_gt_three, Real.pi_pos]
  have hfrac : 4 / (Real.pi ^ 2 * (n : ℝ)^2) ≤ 1 / (n : ℝ)^2 := by
    apply (div_le_div_iff₀ (by positivity) (by positivity)).2
    nlinarith [mul_nonneg (sub_nonneg.mpr hπ) (sq_nonneg (n : ℝ))]
  have hg' : boundarySignal 2 n ≤ 2 / (4 * (n : ℝ)) + 1 / (n : ℝ)^2 :=
    hg.trans (add_le_add le_rfl (by simpa only [show (2 : ℝ)^2 = 4 by norm_num] using hfrac))
  have hScaled : (n : ℝ) * boundarySignal 2 n ≤ 2/3 := by
    refine (mul_le_mul_of_nonneg_left hg' hn0.le).trans ?_
    rw [show (n : ℝ) * (2 / (4 * (n : ℝ)) + 1 / (n : ℝ)^2) =
        1/2 + 1 / (n : ℝ) by field_simp; ring]
    have h := one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 65) hnR
    linarith
  have hp := (abs_primeSignal_le 2 n).trans (div_le_div_of_nonneg_right mass_le (by norm_num))
  have hPi := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 2)
    (by norm_num : (0 : ℝ) < 3) Real.pi_gt_three.le
  have hPrime := mul_le_mul hPi hp (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 2/3)
  change |-(n : ℝ) * boundarySignal 2 n - (2 / Real.pi) * primeSignal 2 n| ≤ _
  refine (abs_sub_le _ 0 _).trans ?_
  simp only [sub_zero, zero_sub, abs_neg, abs_mul, abs_of_nonneg hn0.le, abs_of_nonneg hg0,
    abs_of_nonneg (by positivity : 0 ≤ 2 / Real.pi)]
  linarith

/-- Pointwise source comparisons sufficient before the finite covariance is evaluated. -/
structure ObservationsSound (s : Observations) : Prop where
  signal : ∀ n, 65 ≤ n → n ≤ 1200000 → |literal.signal n - s.signal n| ≤ 1/1000000
  observedMagnitude : ∀ n, 65 ≤ n → n ≤ 1200000 → |s.signal n| ≤ 9
  coreDiagonal : ∀ i, |literal.coreDiagonal i - s.coreDiagonal i| ≤ 7/1000
  derivativePrice : |literal.derivativePrice - s.derivativePrice| ≤ 1/10^21
  remoteDiagonal : ∀ i, |literal.remoteDiagonal i - s.remoteDiagonal i| ≤ 1/1000

/-- Exact arithmetic comparison with the encoded dyadic seed fields. -/
structure ArithmeticSound (s : Observations) (c : Coefficients (Fin 399936)) : Prop where
  diag : ∀ i, |(ofObservations s).diag i - c.diag i| ≤ 1/10000000
  first : ∀ i, |(ofObservations s).first i - c.first i| ≤ 1/10000000
  signal : ∀ i, (ofObservations s).signal i = c.signal i
  normalizedSecond : ∀ i, |(ofObservations s).normalizedSecond i - c.normalizedSecond i| ≤ 1/10000000

private theorem mode_range (i : Fin 399936) : 65 ≤ mode 400000 i ∧ mode 400000 i ≤ 400000 := by
  simp only [mode, middleIndex]
  have hi := i.isLt
  omega

private theorem receiving_range (k : Fin 800000) :
    400001 ≤ receiving 400000 1200000 k ∧ receiving 400000 1200000 k ≤ 1200000 := by
  unfold receiving
  have hk := k.isLt
  omega

/-- Literal and arithmetic comparisons imply the source allowance of the rounded return. -/
theorem seedComparison {s : Observations} {c : Coefficients (Fin 399936)}
    (hs : ObservationsSound s) (hc : ArithmeticSound s c) : SeedComparison c := by
  let n := receiving 400000 1200000
  let U := literal.signal ∘ n
  let U' := s.signal ∘ n
  have hU (k : Fin 800000) : |U k| ≤ 9 :=
    abs_literalSignal_le ((by decide : 65 ≤ 400001).trans (receiving_range k).1)
  have hU' (k : Fin 800000) : |U' k| ≤ 9 :=
    hs.observedMagnitude _ ((by decide : 65 ≤ 400001).trans (receiving_range k).1) (receiving_range k).2
  have hUE (k : Fin 800000) : |U k - U' k| ≤ 1/1000000 :=
    hs.signal _ ((by decide : 65 ≤ 400001).trans (receiving_range k).1) (receiving_range k).2
  have hα0 : 0 ≤ α := by norm_num [α, remoteFirst]
  have hα : α ≤ 1/500000 := by norm_num [α, remoteFirst]
  have hrow (i : Fin 399936) :
      |candidateSource.diag i - (ofObservations s).diag i| ≤ 9/1000 ∧
      |candidateSource.first i - (ofObservations s).first i| ≤ 85/100000 ∧
      |candidateSource.normalizedSecond i - (ofObservations s).normalizedSecond i| ≤ 43/1000000 ∧
      |candidateSource.normalizedSecond i| ≤ 440 := by
    let m := mode 400000 i
    let u := literal.signal m
    let u' := s.signal m
    have hm : (0 : ℝ) < m := by exact_mod_cast (show 0 < m by have := (mode_range i).1; omega)
    have hmU : (m : ℝ) ≤ 400000 := by exact_mod_cast (mode_range i).2
    have hn (k : Fin 800000) : (m : ℝ) < n k := by
      have h : m < n k := lt_of_le_of_lt (mode_range i).2
        (lt_of_lt_of_le (by decide : 400000 < 400001) (receiving_range k).1)
      exact_mod_cast h
    have hu := abs_literalSignal_le (mode_range i).1
    have hu' := hs.observedMagnitude m (mode_range i).1 (by have := (mode_range i).2; omega)
    have he := hs.signal m (mode_range i).1 (by have := (mode_range i).2; omega)
    obtain ⟨h1,h2⟩ := receiving400000_bounds hmU
    obtain ⟨hC,hG,hD,hGmag⟩ := covariance_errors m u u' W 9 (1/1000000)
      (fun k => n k) U U' hm hn (by norm_num [W]) hu hu' he hU hU' hUE
    dsimp only at hC hG hD hGmag
    have hCS : |(∑ k, W * cross m (n k) u (U k) * U k) -
        ∑ k, W * cross m (n k) u' (U' k) * U' k| ≤ 3/4000 :=
      hC.trans ((mul_le_mul_of_nonneg_left h1 (by norm_num [W])).trans (by norm_num [W]))
    have hGS : |(∑ k, W * normalizedCross m (n k) u (U k)) -
        ∑ k, W * normalizedCross m (n k) u' (U' k)| ≤ 42/1000000 :=
      hG.trans ((mul_le_mul_of_nonneg_left h1 (by norm_num [W])).trans (by norm_num [W]))
    have hDS : |(∑ k, W * (cross m (n k) u (U k))^2) -
        ∑ k, W * (cross m (n k) u' (U' k))^2| ≤ 1/10000 :=
      hD.trans ((mul_le_mul_of_nonneg_left h2 (by norm_num [W])).trans (by norm_num [W]))
    have hGM : |∑ k, W * normalizedCross m (n k) u (U k)| ≤ 370 :=
      hGmag.trans ((mul_le_mul_of_nonneg_left h1 (by norm_num [W])).trans (by norm_num [W]))
    have hm2 := pow_le_pow_left₀ hm.le hmU 2
    have hm3 := pow_le_pow_left₀ hm.le hmU 3
    have hδ (p : ℕ) (hp : (m : ℝ)^p ≤ (400000 : ℝ)^p) :
        |(literal.derivativePrice - s.derivativePrice) * (m : ℝ)^p| ≤
          (1/10^21 : ℝ) * (400000 : ℝ)^p := by
      rw [abs_mul, abs_of_nonneg (by positivity : 0 ≤ (m : ℝ)^p)]
      exact mul_le_mul hs.derivativePrice hp (by positivity) (by positivity)
    have hαm : α * (m : ℝ) ≤ 4/5 :=
      (mul_le_mul hα hmU hm.le (by norm_num)).trans (by norm_num)
    have hLin : |α * (m : ℝ) * (u-u')| ≤ 8/10000000 := by
      rw [abs_mul, abs_of_nonneg (mul_nonneg hα0 hm.le)]
      exact (mul_le_mul hαm he (abs_nonneg _) (by norm_num)).trans (by norm_num)
    have hLinM : |α * (m : ℝ) * u| ≤ 8 := by
      rw [abs_mul, abs_of_nonneg (mul_nonneg hα0 hm.le)]
      exact (mul_le_mul hαm hu (abs_nonneg _) (by norm_num)).trans (by norm_num)
    have hsq : |u^2-u'^2| ≤ 18/1000000 := by
      rw [show u^2-u'^2 = (u-u')*(u+u') by ring, abs_mul]
      have hsum := (abs_add_le u u').trans (add_le_add hu hu')
      exact (mul_le_mul he hsum (abs_nonneg _) (by norm_num)).trans (by norm_num)
    have hαsq : |α * (u^2-u'^2)| ≤ 1/1000000 := by
      rw [abs_mul, abs_of_nonneg hα0]
      exact (mul_le_mul hα hsq (abs_nonneg _) (by norm_num)).trans (by norm_num)
    rw [← literal_eq]
    change |literal.coreDiagonal i - (∑ k, W * (cross m (n k) u (U k))^2) -
        α*u^2 - literal.derivativePrice*(m : ℝ)^2 - literal.remoteDiagonal i -
        (s.coreDiagonal i - (∑ k, W * (cross m (n k) u' (U' k))^2) -
          α*u'^2 - s.derivativePrice*(m : ℝ)^2 - s.remoteDiagonal i)| ≤ 9/1000 ∧
      |u - (∑ k, W * cross m (n k) u (U k) * U k) + literal.derivativePrice*(m : ℝ)^3 -
        (u' - (∑ k, W * cross m (n k) u' (U' k) * U' k) + s.derivativePrice*(m : ℝ)^3)| ≤ 85/100000 ∧
      |((∑ k, W * normalizedCross m (n k) u (U k)) + α*(m : ℝ)*u) -
        ((∑ k, W * normalizedCross m (n k) u' (U' k)) + α*(m : ℝ)*u')| ≤ 43/1000000 ∧
      |(∑ k, W * normalizedCross m (n k) u (U k)) + α*(m : ℝ)*u| ≤ 440
    refine ⟨?_, ?_, ?_, ?_⟩
    · have ⟨hlo,hhi⟩ := abs_le.mp (hs.coreDiagonal i)
      have ⟨hclo,hchi⟩ := abs_le.mp hDS
      have ⟨hrlo,hrhi⟩ := abs_le.mp (hs.remoteDiagonal i)
      have ⟨hδlo,hδhi⟩ := abs_le.mp (hδ 2 hm2)
      have ⟨halo,hahi⟩ := abs_le.mp hαsq
      rw [abs_le]
      constructor <;> linarith only [hlo,hhi,hclo,hchi,hrlo,hrhi,hδlo,hδhi,halo,hahi]
    · have ⟨hulo,huhi⟩ := abs_le.mp he
      have ⟨hclo,hchi⟩ := abs_le.mp hCS
      have ⟨hδlo,hδhi⟩ := abs_le.mp (hδ 3 hm3)
      rw [abs_le]
      constructor <;> linarith only [hulo,huhi,hclo,hchi,hδlo,hδhi]
    · have ⟨hglo,hghi⟩ := abs_le.mp hGS
      have ⟨halo,hahi⟩ := abs_le.mp hLin
      rw [abs_le]
      constructor <;> linarith only [hglo,hghi,halo,hahi]
    · exact (abs_add_le _ _).trans ((add_le_add hGM hLinM).trans (by norm_num))
  refine ⟨?_,?_,?_,?_,?_,fun i => (hrow i).2.2.2⟩
  · intro i
    exact (abs_sub_le _ _ _).trans ((add_le_add (hrow i).1 (hc.diag i)).trans (by norm_num))
  · intro i
    exact (abs_sub_le _ _ _).trans ((add_le_add (hrow i).2.1 (hc.first i)).trans (by norm_num))
  · intro i
    rw [← hc.signal i]
    exact hs.signal _ (mode_range i).1 (by have := (mode_range i).2; omega)
  · intro i
    exact (abs_sub_le _ _ _).trans
      ((add_le_add (hrow i).2.2.1 (hc.normalizedSecond i)).trans (by norm_num))
  · intro i
    exact abs_literalSignal_le (mode_range i).1

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateScalarComparison
