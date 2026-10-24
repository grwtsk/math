# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.E2dd8a5b4659SourceActualSignedZeroDyadicShell.Variant4549242e616bab6691ad69a790a6ef5fdd15e2c2392eb4318874b77c74dd9964

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `008a5074e1b88821788ed4273a48dad3211a0bcb` · SHA-256 `4549242e616bab6691ad69a790a6ef5fdd15e2c2392eb4318874b77c74dd9964`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualCriticalZeroHead
import ActualCompletedHorizontalIntegrability

/-!
The literal all-zero shell retains actual analytic multiplicities and ordinary
complex bump-square phases. The signed completed vertical annulus is kept in
its exact contour compensation; only the separate good-height horizontals are
estimated. The critical shell is retained when stating the off-axis identity.
No uniform lower bound for the signed off-axis or vertical contribution follows.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualSignedZeroDyadicShell
open Complex MeasureTheory Set Finset Zeta23 Zeta23.WeilEF
open SourcePairing SourceActualInitialPrimeContour SourceActualGoodHeightContour
open SourceActualFullZeroContour SourceActualZeroTailBudget SourceActualCriticalZeroHead
open SourceActualPrimeBumpDictionary SourceActualBumpMovingHeight SourceActualBumpTransform
open ActualCorrelationOppositeHalf ActualMovingHorizontalCompletedBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

/-- Literal closed-lower/open-upper shell of the actual zero carrier. -/
def actualSignedZeroHeightShell (A R1 R2 : ℝ) : ℂ :=
  ∑ rho ∈ (actualZeroHeightHead_finite R2).toFinset.filter
      (fun rho : (zetaZeros zetaSeam).carrier => R1 ≤ |(rho : ℂ).im|),
    ((zetaZeros zetaSeam).mult rho : ℂ) * actualInitialPrimeMellin A rho

/-- The normalized signed completed right vertical, without taking a norm. -/
def actualCompletedVerticalHead (A c R : ℝ) : ℂ :=
  (1 / (Real.pi : ℂ)) * ∫ t in -R..R,
    actualInitialPrimeMellin A ((c : ℂ) + (t : ℂ) * I) *
      logDeriv completedRiemannZeta ((c : ℂ) + (t : ℂ) * I)

/-- The exact bottom-minus-top horizontal correction with original orientation. -/
def actualFiniteHorizontalCorrection (A c R : ℝ) : ℂ :=
  (1 / (2 * (Real.pi : ℂ) * I)) *
    (HIntegral (fun s => actualInitialPrimeMellin A s *
      logDeriv completedRiemannZeta s) (1-c) c (-R) -
    HIntegral (fun s => actualInitialPrimeMellin A s *
      logDeriv completedRiemannZeta s) (1-c) c R)

/-- The source shell equals the difference of complete open-height heads. -/
theorem actualSignedZeroHeightShell_eq_head_sub (A R1 R2 : ℝ) (hR : R1 ≤ R2) :
    actualSignedZeroHeightShell A R1 R2 =
      actualZeroHeightHead A R2 - actualZeroHeightHead A R1 := by
  classical
  let F := (actualZeroHeightHead_finite R2).toFinset
  have hf : F.filter (fun rho : (zetaZeros zetaSeam).carrier => |(rho : ℂ).im| < R1) =
      (actualZeroHeightHead_finite R1).toFinset := by
    ext rho
    simp only [F, mem_filter, Set.Finite.mem_toFinset, Set.mem_ofPred_eq]
    constructor
    · exact fun h => h.2
    · exact fun h => ⟨h.trans_le hR, h⟩
  have hs := Finset.sum_filter_add_sum_filter_not F
    (fun rho => |(rho : ℂ).im| < R1)
    (fun rho => ((zetaZeros zetaSeam).mult rho : ℂ) * actualInitialPrimeMellin A rho)
  simp only [not_lt, hf] at hs
  change actualZeroHeightHead A R1 + actualSignedZeroHeightShell A R1 R2 =
    actualZeroHeightHead A R2 at hs
  linear_combination hs

private theorem actual_head_eq_complex_finset (A R : ℝ) (Z : Finset ℂ)
    (hZ : (Z : Set ℂ) = {rho : ℂ | IsNontrivialZero rho ∧ -R < rho.im ∧ rho.im < R}) :
    actualZeroHeightHead A R = ∑ rho ∈ Z, (zeroMult rho : ℂ) *
      actualInitialPrimeMellin A rho := by
  classical
  have hmem (rho : ℂ) : rho ∈ Z ↔ IsNontrivialZero rho ∧ |rho.im| < R := by
    rw [← Finset.mem_coe, hZ]
    simp only [Set.mem_ofPred_eq, abs_lt]
  unfold actualZeroHeightHead
  apply Finset.sum_bij (fun (rho : (zetaZeros zetaSeam).carrier) _ => (rho : ℂ))
  · intro rho hrho
    apply (hmem rho).mpr
    exact ⟨rho.2, by
      simpa only [Set.Finite.mem_toFinset, Set.mem_ofPred_eq] using hrho⟩
  · intro rho hrho eta heta he
    exact Subtype.val_injective he
  · intro rho hrho
    have hh := (hmem rho).mp hrho
    refine ⟨⟨rho, hh.1⟩, ?_, rfl⟩
    simpa only [Set.Finite.mem_toFinset, Set.mem_ofPred_eq] using hh.2
  · intro rho hrho
    rfl

private theorem actual_initialMellin_bilateral {A : ℝ} (hA : 1 ≤ A) (s : ℂ) :
    actualInitialPrimeMellin A s = actualBilateralCorrelationTransform A (s - 1 / 2) := by
  rw [actualInitialPrimeMellin_eq_bumpMellinWeight hA,
    actualBilateralCorrelationTransform_eq_bump hA]
  rfl

/-- The actual weighted argument principle folds the verticals by addition. -/
theorem actualZeroHeightHead_eq_completedVertical_add_horizontal (A c R : ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) (hc2 : c ≤ 3 / 2) (hR : 7 ≤ R)
    (hgood : ∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1 / 2 ≤ s.re → s.re ≤ 2 →
      riemannZeta s ≠ 0) :
    actualZeroHeightHead A R = actualCompletedVerticalHead A c R +
      actualFiniteHorizontalCorrection A c R := by
  have hcomplete := completedZeta_ne_zero_on_horizontals hc hc2 hgood
  obtain ⟨Z,hZ,hrect⟩ := rectangle_identity
    (actualInitialPrimeKernel_contDiff A hA) (actualInitialPrimeKernel_hasCompactSupport A hA)
    hc hc2 hR hcomplete
  simp_rw [← actualInitialPrimeMellin_eq_Hfn A] at hrect
  have hzero := actualInitialPrimeMellin_poles_zero A hA
  rw [hzero.1, hzero.2, sub_zero, sub_zero,
    ← actual_head_eq_complex_finset A R Z hZ] at hrect
  have hv := verticals_eq (actualInitialPrimeKernel_contDiff A hA)
    (actualInitialPrimeKernel_hasCompactSupport A hA) hc hc2 R
  simp_rw [← actualInitialPrimeMellin_eq_Hfn A] at hv
  have he : (fun t : ℝ => Fline (fun t =>
      (sourceCorrelation explicitSecondDerivative A t : ℂ)) c t) =
      (fun t : ℝ => 2 * (actualInitialPrimeMellin A
        ((c : ℂ) + (t : ℂ) * I) *
        logDeriv completedRiemannZeta ((c : ℂ) + (t : ℂ) * I))) := by
    funext t
    unfold Fline
    rw [← actualInitialPrimeMellin_eq_Hfn, ← actualInitialPrimeMellin_eq_Hfn,
      show (1 : ℂ) - c - t * I = 1 - ((c : ℂ) + (t : ℂ) * I) by ring,
      actualInitialPrimeMellin_one_sub A hA]
    ring
  rw [he, intervalIntegral.integral_const_mul] at hv
  unfold RectangleIntegral' RectangleIntegral at hrect
  have hzre : (((1-c : ℝ) : ℂ) - (R : ℂ) * I).re = 1-c := by simp
  have hzim : (((1-c : ℝ) : ℂ) - (R : ℂ) * I).im = -R := by simp
  have hwre : ((c : ℂ) + (R : ℂ) * I).re = c := by simp
  have hwim : ((c : ℂ) + (R : ℂ) * I).im = R := by simp
  simp only [hzre,hzim,hwre,hwim,smul_eq_mul] at hrect
  simp only [smul_eq_mul] at hv
  have hp : (Real.pi : ℂ) ≠ 0 := by exact_mod_cast Real.pi_ne_zero
  rw [← hrect]
  unfold actualCompletedVerticalHead actualFiniteHorizontalCorrection
  rw [show HIntegral (fun s => actualInitialPrimeMellin A s *
      logDeriv completedRiemannZeta s) (1-c) c (-R) -
      HIntegral (fun s => actualInitialPrimeMellin A s *
      logDeriv completedRiemannZeta s) (1-c) c R +
      VIntegral (fun s => actualInitialPrimeMellin A s *
      logDeriv completedRiemannZeta s) c (-R) R -
      VIntegral (fun s => actualInitialPrimeMellin A s *
      logDeriv completedRiemannZeta s) (1-c) (-R) R =
      (HIntegral (fun s => actualInitialPrimeMellin A s *
      logDeriv completedRiemannZeta s) (1-c) c (-R) -
      HIntegral (fun s => actualInitialPrimeMellin A s *
      logDeriv completedRiemannZeta s) (1-c) c R) +
      (VIntegral (fun s => actualInitialPrimeMellin A s *
      logDeriv completedRiemannZeta s) c (-R) R -
      VIntegral (fun s => actualInitialPrimeMellin A s *
      logDeriv completedRiemannZeta s) (1-c) (-R) R) by ring, hv]
  field_simp
  ring

/-- Both actual vertical and horizontal differences are retained in the source shell. -/
theorem actualSignedZeroHeightShell_eq_contour_difference (A c R1 R2 : ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) (hc2 : c ≤ 3 / 2)
    (hR1 : 7 ≤ R1) (hR12 : R1 ≤ R2)
    (hgood1 : ∀ s : ℂ, (s.im = R1 ∨ s.im = -R1) → 1 / 2 ≤ s.re → s.re ≤ 2 →
      riemannZeta s ≠ 0)
    (hgood2 : ∀ s : ℂ, (s.im = R2 ∨ s.im = -R2) → 1 / 2 ≤ s.re → s.re ≤ 2 →
      riemannZeta s ≠ 0) :
    actualSignedZeroHeightShell A R1 R2 =
      (actualCompletedVerticalHead A c R2 - actualCompletedVerticalHead A c R1) +
      (actualFiniteHorizontalCorrection A c R2 - actualFiniteHorizontalCorrection A c R1) := by
  rw [actualSignedZeroHeightShell_eq_head_sub A R1 R2 hR12,
    actualZeroHeightHead_eq_completedVertical_add_horizontal A c R2 hA hc hc2
      (hR1.trans hR12) hgood2,
    actualZeroHeightHead_eq_completedVertical_add_horizontal A c R1 hA hc hc2 hR1 hgood1]
  ring

private theorem actual_horizontal_correction_norm_le (A c R D : ℝ) (hA : 1 ≤ A)
    (hb : ∀ y : ℝ, (y = R ∨ y = -R) → ‖actualCompletedHorizontalIntegral A c y‖ ≤ D) :
    ‖actualFiniteHorizontalCorrection A c R‖ ≤ D / Real.pi := by
  unfold actualFiniteHorizontalCorrection
  simp_rw [actual_initialMellin_bilateral hA]
  change ‖(1 / (2 * (Real.pi : ℂ) * I)) *
    (actualCompletedHorizontalIntegral A c (-R) - actualCompletedHorizontalIntegral A c R)‖ ≤ _
  have hn : ‖(1 / (2 * (Real.pi : ℂ) * I))‖ = 1 / (2 * Real.pi) := by
    norm_num [norm_div, norm_mul, Complex.norm_real, Real.norm_eq_abs,
      abs_of_pos Real.pi_pos]
  rw [norm_mul,hn]
  calc
    _ ≤ (1 / (2 * Real.pi)) * (‖actualCompletedHorizontalIntegral A c (-R)‖ +
        ‖actualCompletedHorizontalIntegral A c R‖) :=
      mul_le_mul_of_nonneg_left (norm_sub_le _ _) (by positivity)
    _ ≤ (1 / (2 * Real.pi)) * (D+D) :=
      mul_le_mul_of_nonneg_left (add_le_add (hb (-R) (Or.inr rfl))
        (hb R (Or.inl rfl))) (by positivity)
    _ = _ := by ring

/-- Actual off-axis phase compensation has an unconditional analytic boundary budget.
The actual critical shell and completed vertical annulus remain signed and explicit. -/
theorem actualOffAxisShell_compensated_norm_bound {Cg : ℝ} (hCg : 0 < Cg) :
    ∃ K : ℝ, 0 < K ∧ ∀ (A c R1 R2 : ℝ) (j1 j2 : ℕ),
      1 ≤ A → 1 < c → c ≤ 3 / 2 → 7 ≤ j1 → 7 ≤ j2 →
      (j1 : ℝ) ≤ R1 → R1 ≤ (j1 : ℝ)+1 →
      (j2 : ℝ) ≤ R2 → R2 ≤ (j2 : ℝ)+1 → R1 ≤ R2 →
      (∀ s : ℂ, (s.im = R1 ∨ s.im = -R1) → 1/2 ≤ s.re → s.re ≤ 2 →
        riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤ Cg*(Real.log ((j1 : ℝ)+3))^2) →
      (∀ s : ℂ, (s.im = R2 ∨ s.im = -R2) → 1/2 ≤ s.re → s.re ≤ 2 →
        riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤ Cg*(Real.log ((j2 : ℝ)+3))^2) →
      actualBumpMovingHeight A c ≤ R1 → actualBumpMovingHeight A c ≤ R2 →
      ‖(actualOffAxisZeroHeightHead A R2 - actualOffAxisZeroHeightHead A R1) +
        (actualCriticalZeroHeightHead A R2 - actualCriticalZeroHeightHead A R1) -
        (actualCompletedVerticalHead A c R2 - actualCompletedVerticalHead A c R1)‖ ≤
      (actualHorizontalSourceConstant K c/A^9 * Real.exp (-((2*c-1)*A)/5)) *
        ((Real.log ((j1 : ℝ)+3))^2 + (Real.log ((j2 : ℝ)+3))^2) / Real.pi := by
  obtain ⟨K,hK,hb⟩ := actual_horizontal_moving_height_norm_le hCg
  refine ⟨K,hK,?_⟩
  intro A c R1 R2 j1 j2 hA hc hc2 hj1 hj2 hjR1 hR1j hjR2 hR2j hR12 hg1 hg2 hh1 hh2
  have hR1 : 7 ≤ R1 := by exact_mod_cast (show (7 : ℝ) ≤ R1 by
    have hi : (7 : ℝ) ≤ j1 := by exact_mod_cast hj1
    exact hi.trans hjR1)
  let D1 := actualHorizontalSourceConstant K c*(Real.log ((j1 : ℝ)+3))^2/A^9 *
    Real.exp (-((2*c-1)*A)/5)
  let D2 := actualHorizontalSourceConstant K c*(Real.log ((j2 : ℝ)+3))^2/A^9 *
    Real.exp (-((2*c-1)*A)/5)
  have hc1 := actual_horizontal_correction_norm_le A c R1 D1 hA
    (fun y hy => hb A c R1 y j1 hA hc hc2 hj1 hjR1 hR1j hg1 hh1 hy)
  have hc2b := actual_horizontal_correction_norm_le A c R2 D2 hA
    (fun y hy => hb A c R2 y j2 hA hc hc2 hj2 hjR2 hR2j hg2 hh2 hy)
  have he : (actualOffAxisZeroHeightHead A R2 - actualOffAxisZeroHeightHead A R1) +
      (actualCriticalZeroHeightHead A R2 - actualCriticalZeroHeightHead A R1) =
      actualSignedZeroHeightShell A R1 R2 := by
    rw [actualSignedZeroHeightShell_eq_head_sub A R1 R2 hR12,
      actualZeroHeightHead_eq_critical_add_offAxis A R1,
      actualZeroHeightHead_eq_critical_add_offAxis A R2]
    ring
  rw [he, actualSignedZeroHeightShell_eq_contour_difference A c R1 R2
    hA hc hc2 hR1 hR12 (fun s him hrl hru => (hg1 s him hrl hru).1)
      (fun s him hrl hru => (hg2 s him hrl hru).1), add_sub_cancel_left]
  calc
    _ ≤ ‖actualFiniteHorizontalCorrection A c R2‖ +
        ‖actualFiniteHorizontalCorrection A c R1‖ := norm_sub_le _ _
    _ ≤ D2 / Real.pi + D1 / Real.pi := add_le_add hc2b hc1
    _ = _ := by dsimp [D1,D2]; ring

/-- Two separate genuine good heights select a dyadic shell and its phase budget.
No equality of independent existential heights and no signed vertical cap is used. -/
theorem actual_good_dyadic_offAxis_shell_compensation :
    ∃ Cg K : ℝ, 0 < Cg ∧ 0 < K ∧ ∀ A c : ℝ,
      1 ≤ A → 1 < c → c ≤ 3 / 2 → ∃ R1 R2 : ℝ,
      max 7 (actualBumpMovingHeight A c) ≤ R1 ∧
      R1 < max 7 (actualBumpMovingHeight A c)+2 ∧
      2*R1 ≤ R2 ∧ R2 ≤ 2*R1+3 ∧
      (∀ s : ℂ, (s.im = R1 ∨ s.im = -R1) → 1/2 ≤ s.re → s.re ≤ 2 →
        riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤
          Cg*(Real.log ((actualGoodHeightIndex A c : ℝ)+3))^2) ∧
      (∀ s : ℂ, (s.im = R2 ∨ s.im = -R2) → 1/2 ≤ s.re → s.re ≤ 2 →
        riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤
          Cg*(Real.log (((2*actualGoodHeightIndex A c+2 : ℕ) : ℝ)+3))^2) ∧
      ‖(actualOffAxisZeroHeightHead A R2 - actualOffAxisZeroHeightHead A R1) +
        (actualCriticalZeroHeightHead A R2 - actualCriticalZeroHeightHead A R1) -
        (actualCompletedVerticalHead A c R2 - actualCompletedVerticalHead A c R1)‖ ≤
      (actualHorizontalSourceConstant K c/A^9 * Real.exp (-((2*c-1)*A)/5)) *
        ((Real.log ((actualGoodHeightIndex A c : ℝ)+3))^2 +
          (Real.log (((2*actualGoodHeightIndex A c+2 : ℕ) : ℝ)+3))^2) / Real.pi := by
  obtain ⟨Cg,hCg,hgood⟩ := good_heights_at
  obtain ⟨K,hK,hbudget⟩ := actualOffAxisShell_compensated_norm_bound hCg
  refine ⟨Cg,K,hCg,hK,?_⟩
  intro A c hA hc hc2
  let j := actualGoodHeightIndex A c
  have hi := actualGoodHeightIndex_bounds A c
  have hj : 7 ≤ j := hi.1
  have hj2 : 7 ≤ 2*j+2 := by omega
  obtain ⟨R1,hjR1,hR1j,hg1⟩ := hgood j hj
  obtain ⟨R2,hjR2,hR2j,hg2⟩ := hgood (2*j+2) hj2
  have hcj : ((2*j+2 : ℕ) : ℝ) = 2*(j : ℝ)+2 := by norm_num
  have hlo : max 7 (actualBumpMovingHeight A c) ≤ R1 := hi.2.1.trans hjR1
  have hR1 : 7 ≤ R1 := (le_max_left _ _).trans hlo
  have hbase1 : actualBumpMovingHeight A c ≤ R1 := (le_max_right _ _).trans hlo
  have hdyad : 2*R1 ≤ R2 := by rw [hcj] at hjR2; linarith
  have hR12 : R1 ≤ R2 := by linarith
  refine ⟨R1,R2,hlo,by linarith [hi.2.2],hdyad,?_,hg1,hg2,?_⟩
  · rw [hcj] at hR2j
    linarith
  · exact hbudget A c R1 R2 j (2*j+2) hA hc hc2 hj hj2
      hjR1 hR1j hjR2 hR2j hR12 hg1 hg2 hbase1 (hbase1.trans hR12)

end FormalResearch.RiemannHypothesis.SourceActualSignedZeroDyadicShell
```
