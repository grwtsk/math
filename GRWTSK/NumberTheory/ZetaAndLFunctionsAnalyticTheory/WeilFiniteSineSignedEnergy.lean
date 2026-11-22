/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFiniteSineSpatialResidual
import GRWTSK.FunctionalAnalysis.SpatialMixedPairing

/-!
# Signed source energy from the same complete residual table

Restore the arbitrary subtracted sine head EXACTLY before evaluating energy.
The complete residual/input mixed integrals are enclosed by their whole-cell
ranges. The canonical gamma row error is paid separately. Symmetrization
then supplies a rational lower matrix for the unchanged sourceForm on every
real coefficient vector in the original finite-sine trial family.

This supplies the signed trial-energy input of the residual Schur comparison;
it supplies neither a high floor nor a passing matrix nor cofinal existence.
All prime powers, both shifts and the negative odd pole are inherited from
the original correctedColumn. Real odd zeta source, not Dirichlet GRH.
MSC2020: 11M06; supporting 46C05, 65G20, 65D30.
SOURCE_PROOF_CANDIDATE; all Lean execution and certified arithmetic NOT_RUN.
-/
set_option autoImplicit false
open MeasureTheory Set Filter Matrix
open scoped BigOperators Interval

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FiniteSineSignedEnergy

open TranslationCutoffs TranslationEnergyDomain FormDomainDensity
open OddRootProjection OddSineForm OddGammaOutput OddSineParseval OddSineHeadRemoval
open FiniteSineOperator ClosedSourceBilinear FiniteSineGammaQuadrature
open FiniteSineSpatialResidual
open GRWTSK.FunctionalAnalysis.SpatialGramEnclosure
open GRWTSK.FunctionalAnalysis.SpatialMixedPairing
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

variable {ι : Type*} [Fintype ι] [DecidableEq ι] {M K : ℕ}

/-- Exact coefficient overlap; no assumption on the two truncation lengths. -/
def coefficientPair {R : Type*} [CommSemiring R]
    (c : Fin M → R) (d : Fin K → R) : R :=
  ∑ a : Fin K, d a * ∑ b : Fin M, if a.val + 1 = b.val + 1 then c b else 0

def restoredHead {R : Type*} [CommSemiring R]
    (c : ι → Fin M → R) (d : ι → Fin K → R) : Matrix ι ι R :=
  fun i j => coefficientPair (c j) (d i)

theorem restoredHead_cast (c : ι → Fin M → ℚ) (d : ι → Fin K → ℚ) :
    (restoredHead c d).map (Rat.castHom ℝ) =
      restoredHead (fun i a => (c i a : ℝ)) (fun i a => (d i a : ℝ)) := by
  ext i j
  simp [restoredHead, coefficientPair]

/-- Unit-normalized source sines turn the head restoration into exact finite arithmetic. -/
theorem finiteInput_head_pair (T : ℝ) (hT : 0 < T)
    (c : Fin M → ℝ) (d : Fin K → ℝ) :
    inner ℝ (finiteInput T d : Physical) (finiteInput T c : Physical) =
      coefficientPair c d := by
  rw [FiniteSineSpatialResidual.finiteInput_pair]
  unfold coefficientPair
  apply Finset.sum_congr rfl
  intro a _
  have hcoeff : sineCoefficient T (finiteInput T c : Physical) (a.val + 1) =
      sineCoefficient T (finiteSine T c) (a.val + 1) := by
    unfold sineCoefficient
    apply integral_congr_ae
    filter_upwards [finiteInput_ae T c] with t ht
    rw [ht]
  rw [hcoeff, sineCoefficient_finiteSine T hT c (by omega)]

/-- The physical norm is supplied by the original sine normalization. -/
theorem finiteInput_norm_sq (T : ℝ) (hT : 0 < T) (c : Fin M → ℝ) :
    ‖(finiteInput T c : Physical)‖ ^ 2 = ∑ a, (c a) ^ 2 := by
  calc
    _ = inner ℝ (finiteInput T c : Physical) (finiteInput T c : Physical) :=
      (real_inner_self_eq_norm_sq _).symm
    _ = ∫ t : ℝ, (finiteSine T c t) ^ 2 := by
      rw [L2.inner_def]
      apply integral_congr_ae
      filter_upwards [finiteInput_ae T c] with t ht
      simp [ht, RCLike.inner_apply, pow_two]
    _ = _ := integral_finiteSine_sq T hT c

theorem finiteInput_norm_le (T : ℝ) (hT : 0 < T) (c : Fin M → ℝ)
    {n : ℝ} (hn : 0 ≤ n) (hc : (∑ a, (c a) ^ 2) ≤ n ^ 2) :
    ‖(finiteInput T c : Physical)‖ ≤ n := by
  have h := finiteInput_norm_sq T hT c
  nlinarith [norm_nonneg (finiteInput T c : Physical)]

private theorem lift_input_eq (T : ℝ) (hT : 0 < T) (c : Fin M → ℝ) :
    input T (finiteLift T hT c) = (finiteInput T c : Physical) :=
  congrArg (fun f : WindowPhysical T => (f : Physical)) (finiteLift_windowInput T hT c)

/-- Convergence of the mixed integral is proved before its source use. -/
theorem corrected_input_integrable (T β : ℝ) (x : ℕ → ℝ) (N : ℕ)
    (c b : Fin M → ℝ) (d : Fin K → ℝ) :
    Integrable (fun t => spatialColumn T β x N c d t * finiteSine T b t) :=
  (spatialColumn_memLp T β x N c d).integrable_mul (finiteSine_memLp T b)

/-- Complete spatial pairing, including every part of the support. -/
theorem correctedColumn_input_pair (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : ℕ → ℝ) (N : ℕ) (c b : Fin M → ℝ) (d : Fin K → ℝ) :
    inner ℝ (correctedColumn T β x N c d) (finiteInput T b : Physical) =
      ∫ t in (-T)..T, spatialColumn T β x N c d t * finiteSine T b t := by
  rw [L2.inner_def]
  calc
    _ = ∫ t : ℝ, spatialColumn T β x N c d t * finiteSine T b t := by
      apply integral_congr_ae
      filter_upwards [correctedColumn_ae T β x N c d, finiteInput_ae T b] with t hc hb
      simp [hc, hb, RCLike.inner_apply, mul_comm]
    _ = _ := by
      rw [intervalIntegral.integral_of_le (by linarith : -T ≤ T),
        ← integral_Icc_eq_integral_Ioc, ← integral_indicator measurableSet_Icc]
      apply integral_congr_ae
      filter_upwards [] with t
      by_cases ht : t ∈ Icc (-T) T
      · simp [ht]
      · simp [ht, spatialColumn_supported T β x N c d ht]

/-- Omitting the restored head would evaluate a different signed energy. -/
theorem approximate_pair_restored (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : ℕ → ℝ) (N : ℕ) (c b : Fin M → ℝ) (d : Fin K → ℝ) :
    inner ℝ (approximateOutput T β x N c) (finiteInput T b : Physical) =
      coefficientPair b d +
        ∫ t in (-T)..T, spatialColumn T β x N c d t * finiteSine T b t := by
  have h := correctedColumn_input_pair T hT β x N c b d
  rw [correctedColumn, inner_sub_left, finiteInput_head_pair T hT b d] at h
  linarith

/-- A restriction of the canonical sourceForm, not a replacement Weil form. -/
noncomputable def sourceMatrix (T : ℝ) (hT : 0 < T) (β : ℝ)
    (c : ι → Fin M → ℝ) : Matrix ι ι ℝ :=
  fun i j => sourceForm T β (finiteLift T hT (c i)) (finiteLift T hT (c j))

theorem sourceMatrix_symmetric (T : ℝ) (hT : 0 < T) (β : ℝ)
    (c : ι → Fin M → ℝ) (i j : ι) :
    sourceMatrix T hT β c i j = sourceMatrix T hT β c j i :=
  sourceForm_symmetric T β _ _

theorem source_trial_eq_quadratic (T : ℝ) (hT : 0 < T) (β : ℝ)
    (c : ι → Fin M → ℝ) (v : ι → ℝ) :
    sourceForm T β (trial T hT c v) (trial T hT c v) =
      quadratic (sourceMatrix T hT β c) v := by
  rw [quadratic_eq_double_sum]
  simp only [trial, sourceMatrix, map_sum, map_smul, ContinuousLinearMap.sum_apply,
    ContinuousLinearMap.smul_apply, smul_eq_mul, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- Finite range tables supply signed energy, with the operator error paid
separately from the spatial quadrature error. Every real vector is retained. -/
theorem signedEnergy_lower_of_cells (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : ℕ → ℝ) (N : ℕ) (c : ι → Fin M → ℝ) (d : ι → Fin K → ℝ)
    {eta : ℝ} (hx : Monotone x) (hx0 : 0 < x 0) (hfar : 2 * T ≤ x N)
    (heta : 0 ≤ eta) (hwidth : ∀ k < N, x (k + 1) - x k ≤ eta * x k)
    (y : ℕ → ℝ) (J : ℕ) (p q r s : ℕ → ι → ℝ) (e n : ι → ℝ)
    (hy : Monotone y) (hy0 : y 0 = -T) (hyJ : y J = T)
    (hr : ∀ k < J, ∀ i, 0 ≤ r k i) (hs : ∀ k < J, ∀ i, 0 ≤ s k i)
    (he : ∀ i, 0 ≤ e i) (hn : ∀ i, 0 ≤ n i)
    (hrow : ∀ i, (x 0 + (x 0) ^ 2 + 5 * eta) * slopeBound T (c i) ≤ e i)
    (hnorm : ∀ i, ‖(finiteInput T (c i) : Physical)‖ ≤ n i)
    (hres : ∀ k < J, ∀ i t, t ∈ Icc (y k) (y (k + 1)) →
      |spatialColumn T β x N (c i) (d i) t - p k i| ≤ r k i)
    (hin : ∀ k < J, ∀ i t, t ∈ Icc (y k) (y (k + 1)) →
      |finiteSine T (c i) t - q k i| ≤ s k i)
    (v : ι → ℝ) :
    quadratic (signedLower (restoredHead c d) y p q r s J e n) v ≤
      sourceForm T β (trial T hT c v) (trial T hT c v) := by
  rw [source_trial_eq_quadratic]
  unfold signedLower
  apply quadratic_lower_of_oriented_error _ _ _ (sourceMatrix_symmetric T hT β c)
  · intro i j
    exact add_nonneg (mixedRadii_nonneg y p q r s J hy hr hs i j)
      (mul_nonneg (he i) (hn j))
  · intro i j
    have hsp := mixed_integral_error
      (fun a => spatialColumn T β x N (c a) (d a)) (fun a => finiteSine T (c a))
      y p q r s J hy hr hs
      (fun a b k _ => (corrected_input_integrable T β x N (c a) (c b) (d a)).intervalIntegrable) hres hin i j
    rw [hy0, hyJ] at hsp
    have hop := sourceForm_pairing_error_le T hT β x N (c i)
      hx hx0 hfar heta hwidth (finiteLift T hT (c j))
    rw [lift_input_eq] at hop
    change |sourceMatrix T hT β c i j -
      inner ℝ (approximateOutput T β x N (c i)) (finiteInput T (c j) : Physical)| ≤
        ((x 0 + (x 0) ^ 2 + 5 * eta) * slopeBound T (c i)) *
          ‖(finiteInput T (c j) : Physical)‖ at hop
    have hpaid := hop.trans (mul_le_mul (hrow i) (hnorm j) (norm_nonneg _) (he i))
    rw [approximate_pair_restored T hT β x N (c i) (c j) (d i)] at hpaid
    change |sourceMatrix T hT β c i j -
      (coefficientPair (c j) (d i) + mixedSamples y p q J i j)| ≤
        mixedRadii y p q r s J i j + e i * n j
    calc
      _ ≤ |sourceMatrix T hT β c i j - (coefficientPair (c j) (d i) +
            ∫ t in (-T)..T, spatialColumn T β x N (c i) (d i) t * finiteSine T (c j) t)| +
          |(coefficientPair (c j) (d i) +
            ∫ t in (-T)..T, spatialColumn T β x N (c i) (d i) t * finiteSine T (c j) t) -
            (coefficientPair (c j) (d i) + mixedSamples y p q J i j)| := abs_sub_le _ _ _
      _ ≤ e i * n j + mixedRadii y p q r s J i j :=
        add_le_add hpaid (by simpa only [add_sub_add_left_eq_sub] using hsp)
      _ = _ := add_comm _ _

/-- The original finite sine has a whole-line modulus, including its zero-extension corners. -/
theorem input_midpoint_range (T : ℝ) (hT : 0 < T) (c : Fin M → ℝ)
    {a b p e L : ℝ} (hab : a ≤ b) (hL : (sineLipschitz T c : ℝ) ≤ L)
    (hsample : |finiteSine T c ((a + b) / 2) - p| ≤ e)
    {t : ℝ} (ht : t ∈ Icc a b) :
    |finiteSine T c t - p| ≤ L * (b - a) / 2 + e := by
  have hK0 : (0 : ℝ) ≤ (sineLipschitz T c : ℝ) := by positivity
  apply midpoint_range hab (hK0.trans hL) _ hsample ht
  intro u _
  have h := (finiteSine_lipschitz T hT c).norm_sub_le u ((a + b) / 2)
  simp only [Real.norm_eq_abs] at h
  exact h.trans (mul_le_mul_of_nonneg_right hL (abs_nonneg _))

/-- A rational table supplies all whole-cell and norm premises. Remaining
analytical inputs are finitely many scalar samples and scalar upper bounds. -/
theorem signedEnergy_lower_of_rational_samples (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : ℕ → ℝ) (N : ℕ) (c : ι → Fin M → ℚ) (d : ι → Fin K → ℚ)
    {eta : ℝ} (hx : Monotone x) (hx0 : 0 < x 0) (hfar : 2 * T ≤ x N)
    (heta : 0 ≤ eta) (hwidth : ∀ k < N, x (k + 1) - x k ≤ eta * x k)
    (y : ℕ → ℚ) (J : ℕ) (p q er ef : ℕ → ι → ℚ) (Lr Lf e n : ι → ℚ)
    (hy : Monotone y) (hy0 : (y 0 : ℝ) = -T) (hyJ : (y J : ℝ) = T)
    (her : ∀ k < J, ∀ i, 0 ≤ er k i) (hef : ∀ k < J, ∀ i, 0 ≤ ef k i)
    (he : ∀ i, 0 ≤ e i) (hn : ∀ i, 0 ≤ n i)
    (hLr : ∀ i, spatialSlope T β x N (fun a => (c i a : ℝ))
      (fun a => (d i a : ℝ)) ≤ (Lr i : ℝ))
    (hLf : ∀ i, (sineLipschitz T (fun a => (c i a : ℝ)) : ℝ) ≤ (Lf i : ℝ))
    (hrow : ∀ i, (x 0 + (x 0) ^ 2 + 5 * eta) *
      slopeBound T (fun a => (c i a : ℝ)) ≤ (e i : ℝ))
    (hnorm : ∀ i, (∑ a, (c i a) ^ 2) ≤ (n i) ^ 2)
    (hres : ∀ k < J, ∀ i,
      |spatialColumn T β x N (fun a => (c i a : ℝ)) (fun a => (d i a : ℝ))
        (((y k : ℝ) + (y (k + 1) : ℝ)) / 2) - (p k i : ℝ)| ≤ (er k i : ℝ))
    (hin : ∀ k < J, ∀ i,
      |finiteSine T (fun a => (c i a : ℝ))
        (((y k : ℝ) + (y (k + 1) : ℝ)) / 2) - (q k i : ℝ)| ≤ (ef k i : ℝ))
    (v : ι → ℝ) :
    quadratic ((rationalSignedLower (restoredHead c d) y p q
      (rationalCellRadii y Lr er) (rationalCellRadii y Lf ef) J e n).map (Rat.castHom ℝ)) v ≤
        sourceForm T β (trial T hT (fun i a => (c i a : ℝ)) v)
          (trial T hT (fun i a => (c i a : ℝ)) v) := by
  have hyR : Monotone (fun k => (y k : ℝ)) := by
    intro a b hab
    exact_mod_cast hy hab
  have hLr0 (i : ι) : (0 : ℝ) ≤ (Lr i : ℝ) :=
    (spatialSlope_nonneg T β x N _ _).trans (hLr i)
  have hLf0 (i : ι) : (0 : ℝ) ≤ (Lf i : ℝ) :=
    (show (0 : ℝ) ≤ (sineLipschitz T (fun a => (c i a : ℝ)) : ℝ) by positivity).trans (hLf i)
  have hradius (L : ι → ℚ) (a : ℕ → ι → ℚ)
      (hL : ∀ i, (0 : ℝ) ≤ (L i : ℝ))
      (ha : ∀ k < J, ∀ i, 0 ≤ a k i) :
      ∀ k < J, ∀ i, (0 : ℝ) ≤ (rationalCellRadii y L a k i : ℝ) := by
    intro k hk i
    have hw := sub_nonneg.mpr (hyR (Nat.le_succ k))
    have he' : (0 : ℝ) ≤ (a k i : ℝ) := by exact_mod_cast ha k hk i
    simp only [rationalCellRadii, Rat.cast_add, Rat.cast_div, Rat.cast_mul,
      Rat.cast_sub, Rat.cast_ofNat]
    exact add_nonneg (div_nonneg (mul_nonneg (hL i) hw) (by norm_num)) he'
  rw [rationalSignedLower_cast, restoredHead_cast]
  apply signedEnergy_lower_of_cells T hT β x N _ _ hx hx0 hfar heta hwidth
    (fun k => (y k : ℝ)) J _ _ _ _ (fun i => (e i : ℝ)) (fun i => (n i : ℝ))
    hyR hy0 hyJ (hradius Lr er hLr0 her) (hradius Lf ef hLf0 hef)
    (fun i => by exact_mod_cast he i) (fun i => by exact_mod_cast hn i) hrow
  · intro i
    apply finiteInput_norm_le T hT _ (by exact_mod_cast hn i)
    exact_mod_cast hnorm i
  · intro k hk i u hu
    have ha : -T ≤ (y k : ℝ) := by rw [← hy0]; exact hyR (Nat.zero_le k)
    have hb : (y (k + 1) : ℝ) ≤ T := by rw [← hyJ]; exact hyR (by omega)
    have h := spatialColumn_midpoint_range T hT β x N _ _ ha
      (hyR (Nat.le_succ k)) hb (hres k hk i) hu
    apply h.trans
    simp only [rationalCellRadii, Rat.cast_add, Rat.cast_div, Rat.cast_mul,
      Rat.cast_sub, Rat.cast_ofNat]
    nlinarith [mul_le_mul_of_nonneg_right (hLr i)
      (sub_nonneg.mpr (hyR (Nat.le_succ k)))]
  · intro k hk i u hu
    have h := input_midpoint_range T hT _ (hyR (Nat.le_succ k)) (hLf i) (hin k hk i) hu
    simpa only [rationalCellRadii, Rat.cast_add, Rat.cast_div, Rat.cast_mul,
      Rat.cast_sub, Rat.cast_ofNat] using h

end GRWTSK.NumberTheory.WeilQuadraticForm.FiniteSineSignedEnergy
