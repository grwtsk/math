# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualSignedZeroDyadicShellNative02.Varianta710369dbd9b1b3a6d53350d956a4c60d7cc2b3eacf87ca750706dd55f0d660a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a65f995aaa3502a38f5ffb606c57e5746a36e371` · SHA-256 `afa9b38e7545430ee960e2f8ac853a1e282f572c4eae55717d9f09978aadd9c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualSignedZeroHeightShell.Variant1cbfb576e8732a7f38bd8267b6c1d23626de153238bf7908a55096b8a84c46d0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1cbfb576e8732a7f38bd8267b6c1d23626de153238bf7908a55096b8a84c46d0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualSignedZeroHeightShell.Variant1cbfb576e8732a7f38bd8267b6c1d23626de153238bf7908a55096b8a84c46d0","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"1cbfb576e8732a7f38bd8267b6c1d23626de153238bf7908a55096b8a84c46d0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-signed-zero-dyadic-shell/SourceActualSignedZeroDyadicShell-native02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualSignedZeroHeightShell.Variant1cbfb576e8732a7f38bd8267b6c1d23626de153238bf7908a55096b8a84c46d0

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

end FormalResearch.RiemannHypothesis.SourceActualSignedZeroDyadicShell
```
