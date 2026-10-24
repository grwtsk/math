# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceOuterPsiFubini.Variant7f42ad9acc820c66717ccf13844a9d470ecb3d7ee18f51e14407ba247a52516b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `275531729b68a573081599656479fa768cfdc2ee` · SHA-256 `7f42ad9acc820c66717ccf13844a9d470ecb3d7ee18f51e14407ba247a52516b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourcePrimitiveInnerKernel
import SourceFullXiCesaroConsumer
import Mathlib.MeasureTheory.Integral.Prod

/-!
Exact outer finite-box interchange for the independently defined arithmetic
second primitive. No arithmetic signed budget is asserted. Research direction:
grwtsk contributors. AI formal construction: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceOuterPsiFubini

open MeasureTheory Set RH16PrimitiveInnerKernel RH16CesaroKernel RH16ActualPsiNegativeBlock
open scoped Interval
open SourceActualPsiInverseSquare SourceRawPsiPrimitiveAdapter SourceActualPrimitiveFiniteConsumer
open SourcePositiveSampling
open SourceFirstAtomSignedWork SourceFirstPrimeAbel
open RH16CesaroPrimitive RH16CurvatureFollowthrough
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

private def finiteDensity (A : ℝ) (p : ℝ × ℝ) : ℝ :=
  if p.2 ≤ Real.exp p.1 then
    shiftedActualChebyshev p.2 * literalXiWeight p.1 p.2 *
      deriv (deriv (cesaroWeight A)) p.1 else 0

private theorem threshold_order (A : ℝ) (hA : 1 ≤ A) : Real.log 2 ≤ 2 * A := by
  linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]

/-- Actual Xi times the complete smooth kernel is integrable on the finite physical triangle. -/
theorem finiteDensity_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (finiteDensity A)
      ((volume.restrict (Ioc (Real.log 2) (2 * A))).prod
        (volume.restrict (Ioc 2 (Real.exp (2 * A))))) := by
  let μt := volume.restrict (Ioc (Real.log 2) (2 * A))
  let μy := volume.restrict (Ioc 2 (Real.exp (2 * A)))
  let clamp : ℝ → ℝ := fun y => max 2 y
  let g : ℝ × ℝ → ℝ := fun p => literalXiWeight p.1 (clamp p.2) *
    deriv (deriv (cesaroWeight A)) p.1
  have hAp : 0 < A := by linarith
  have hX : 2 ≤ Real.exp (2 * A) := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 2)] using
      Real.exp_le_exp.mpr (threshold_order A hA)
  have hcl : Continuous clamp := continuous_const.max continuous_id
  have hcp (y : ℝ) : 0 < clamp y := by dsimp only [clamp]; linarith [le_max_left (2 : ℝ) y]
  have hg : Continuous g := by
    have hp : Continuous (fun p : ℝ × ℝ => clamp p.2) := hcl.comp continuous_snd
    have hl : Continuous (fun p : ℝ × ℝ => Real.log (clamp p.2)) := hp.log (fun p => (hcp p.2).ne')
    have hr : Continuous (fun p : ℝ × ℝ => clamp p.2 ^ (3 / 2 : ℝ)) :=
      hp.rpow_const (fun p => Or.inl (hcp p.2).ne')
    have he : Continuous (fun p : ℝ × ℝ => 4 * Real.exp (p.1 / 2)) := by fun_prop
    unfold g literalXiWeight
    exact ((he.div (hp.pow 2)
      (fun p => pow_ne_zero 2 (hcp p.2).ne')).sub
        (((continuous_fst.sub hl).add continuous_const).div hr
          (fun p => (Real.rpow_pos_of_pos (hcp p.2) _).ne'))).mul
      ((cesaroWeight_second_deriv_continuous A hAp).comp continuous_fst)
  have hXi : Integrable shiftedActualChebyshev μy := by
    have hi := shiftedActualChebyshev_mul_intervalIntegrable (Real.exp (2 * A)) hX
      (fun _ => (1 : ℝ)) continuousOn_const
    simpa only [mul_one, IntegrableOn, μy] using hi.1
  let box := Icc (Real.log 2) (2 * A) ×ˢ Icc 2 (Real.exp (2 * A))
  obtain ⟨C, hC⟩ := (isCompact_Icc.prod isCompact_Icc).exists_bound_of_continuousOn
    (show ContinuousOn g box from hg.continuousOn)
  have hcarrier : ∀ᵐ p ∂μt.prod μy,
      p ∈ Ioc (Real.log 2) (2 * A) ×ˢ Ioc 2 (Real.exp (2 * A)) := by
    dsimp only [μt, μy]
    rw [Measure.prod_restrict]
    exact ae_restrict_mem (measurableSet_Ioc.prod measurableSet_Ioc)
  have hb : ∀ᵐ p ∂μt.prod μy, ‖g p‖ ≤ C := by
    filter_upwards [hcarrier] with p hp
    exact hC p ⟨⟨hp.1.1.le, hp.1.2⟩, ⟨hp.2.1.le, hp.2.2⟩⟩
  have hi := (hXi.comp_snd μt).mul_bdd hg.aestronglyMeasurable hb
  have hm : MeasurableSet {p : ℝ × ℝ | p.2 ≤ Real.exp p.1} :=
    (isClosed_le continuous_snd (Real.continuous_exp.comp continuous_fst)).measurableSet
  apply (hi.indicator hm).congr
  filter_upwards [hcarrier] with p hp
  have hc : clamp p.2 = p.2 := max_eq_right hp.2.1.le
  by_cases hd : p.2 ≤ Real.exp p.1
  · rw [Set.indicator_of_mem (show p ∈ {p : ℝ × ℝ | p.2 ≤ Real.exp p.1} from hd)]
    simp only [g, hc, finiteDensity, if_pos hd]
    ring
  · rw [Set.indicator_of_notMem (show p ∉ {p : ℝ × ℝ | p.2 ≤ Real.exp p.1} from hd)]
    simp only [finiteDensity, if_neg hd]

private theorem density_left_slice (A t : ℝ) (_hA : 1 ≤ A)
    (ht : t ∈ Ioc (Real.log 2) (2 * A)) :
    (∫ y in Ioc 2 (Real.exp (2 * A)), finiteDensity A (t, y)) =
      shiftedPsiFullPrimitive t * deriv (deriv (cesaroWeight A)) t := by
  have hlow : 2 ≤ Real.exp t := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 2)] using Real.exp_le_exp.mpr ht.1.le
  have hup : Real.exp t ≤ Real.exp (2 * A) := Real.exp_le_exp.mpr ht.2
  have he : Ioc (2 : ℝ) (Real.exp (2 * A)) ∩ Iic (Real.exp t) = Ioc 2 (Real.exp t) := by
    ext y
    simp only [mem_inter_iff, mem_Ioc, mem_Iic]
    constructor
    · intro h; exact ⟨h.1.1, h.2⟩
    · intro h; exact ⟨⟨h.1, h.2.trans hup⟩, h.2⟩
  have hf : (fun y => finiteDensity A (t, y)) = (Iic (Real.exp t)).indicator
      (fun y => shiftedActualChebyshev y * literalXiWeight t y *
        deriv (deriv (cesaroWeight A)) t) := by
    funext y
    rfl
  rw [hf, setIntegral_indicator measurableSet_Iic, he, ← intervalIntegral.integral_of_le hlow,
    intervalIntegral.integral_mul_const]
  rfl

private theorem density_right_slice (A y : ℝ) (hA : 1 ≤ A)
    (hy : y ∈ Ioc (2 : ℝ) (Real.exp (2 * A))) :
    (∫ t in Ioc (Real.log 2) (2 * A), finiteDensity A (t, y)) =
      shiftedActualChebyshev y * deriv (plainProfile A 1) y := by
  have hyp : 0 < y := by linarith [hy.1]
  have hl : Real.log 2 < Real.log y :=
    (Real.log_lt_log_iff (by norm_num : (0 : ℝ) < 2) hyp).mpr hy.1
  have hu : Real.log y ≤ 2 * A := (Real.log_le_iff_le_exp hyp).mpr hy.2
  have he : Ioc (Real.log 2) (2 * A) ∩ Ici (Real.log y) = Icc (Real.log y) (2 * A) := by
    ext t
    simp only [mem_inter_iff, mem_Ioc, mem_Ici, mem_Icc]
    constructor
    · intro h; exact ⟨h.2, h.1.2⟩
    · intro h; exact ⟨⟨hl.trans_le h.1, h.2⟩, h.1⟩
  have hf : (fun t => finiteDensity A (t, y)) = (Ici (Real.log y)).indicator
      (fun t => shiftedActualChebyshev y * (literalXiWeight t y *
        deriv (deriv (cesaroWeight A)) t)) := by
    funext t
    unfold finiteDensity
    simp only [indicator_apply, mem_Ici, (Real.log_le_iff_le_exp hyp)]
    split_ifs <;> ring
  rw [hf, setIntegral_indicator measurableSet_Ici, he, integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le hu, intervalIntegral.integral_const_mul,
    inner_kernel_eq_actual_plain_derivative A y (by linarith) hyp]

/-- Complete original finite row contracts to the original plain-profile derivative, PLUS sign. -/
theorem actualFiniteSecondReadout_outer_fubini (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in Real.log 2..2 * A,
      actualFiniteSecondReadout t * deriv (deriv (cesaroWeight A)) t) =
      ∫ y in 2..Real.exp (2 * A), shiftedActualChebyshev y * deriv (plainProfile A 1) y := by
  have hL := threshold_order A hA
  have hX : 2 ≤ Real.exp (2 * A) := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 2)] using Real.exp_le_exp.mpr hL
  have hs := integral_integral_swap
    (f := fun t y => finiteDensity A (t, y)) (finiteDensity_integrable A hA)
  rw [intervalIntegral.integral_of_le hL, intervalIntegral.integral_of_le hX]
  calc
    _ = ∫ t in Ioc (Real.log 2) (2 * A),
        ∫ y in Ioc 2 (Real.exp (2 * A)), finiteDensity A (t, y) := by
      apply integral_congr_ae
      filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
      rw [density_left_slice A t hA ht,
        shiftedPsiFullPrimitive_eq_actualFiniteSecondReadout t ht.1.le]
    _ = ∫ y in Ioc 2 (Real.exp (2 * A)),
        ∫ t in Ioc (Real.log 2) (2 * A), finiteDensity A (t, y) := hs
    _ = _ := by
      apply integral_congr_ae
      filter_upwards [ae_restrict_mem measurableSet_Ioc] with y hy
      exact density_right_slice A y hA hy

/-- The complete original signed pairing has the exact contracted Xi source. -/
theorem signedCesaroPairing_eq_actual_Xi_plain_pairing (A : ℝ) (hA : 1 ≤ A) :
    RH16CesaroSignedPairing.signedCesaroPairing A =
      ∫ y in 2..Real.exp (2 * A), shiftedActualChebyshev y * deriv (plainProfile A 1) y := by
  rw [signed_pairing_eq_actual_finite_row A hA, actualFiniteSecondReadout_outer_fubini A hA]

/-- The original first-atom gamma boundary remains outside the complete signed contraction. -/
theorem remainingAtomWork_eq_actual_Xi_plain_pairing (A : ℝ) (hA : 1 ≤ A) :
    remainingAtomWork A = Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) +
      ∫ y in 2..Real.exp (2 * A), shiftedActualChebyshev y * deriv (plainProfile A 1) y := by
  calc
    _ = Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) +
        RH16CesaroSignedPairing.signedCesaroPairing A :=
      remainingAtomWork_eq_cesaro_integral A hA
    _ = _ := by rw [signedCesaroPairing_eq_actual_Xi_plain_pairing A hA]

/-- A future complete signed Xi pairing bound uses the existing finite-prefix consumer. -/
theorem estimate_of_actual_Xi_plain_pairing (J : ℝ)
    (hpair : ∀ A : ℝ, 91 ≤ A → -J ≤
      ∫ y in 2..Real.exp (2 * A), shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    CorrelationAssembly.EstimateObligation := by
  apply RH16CesaroSignedPairing.estimate_of_signed_pairing J
  intro A hA
  rw [signedCesaroPairing_eq_actual_Xi_plain_pairing A (by linarith)]
  exact hpair A hA

end FormalResearch.RiemannHypothesis.SourceOuterPsiFubini
```
