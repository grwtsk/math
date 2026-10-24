# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceRationalFiniteHead.Variantcd024c19a33fb7e3ac7d6260675742bd7e28e5686b038ab049d10282b542e519

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f19a1af4341bb3b113e433f85590f71b4685d6ae` · SHA-256 `9475faf0672133f979f7dd8b8b7d21092338b7f7ee037ad900ab2f6375810999`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RationalKernelHeadMass.Variantaf246a495a82b8027c4efcaa7aea10ab9148bcdc4678f295b6d19778976c909a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"af246a495a82b8027c4efcaa7aea10ab9148bcdc4678f295b6d19778976c909a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.RationalKernelHeadMass.Variantaf246a495a82b8027c4efcaa7aea10ab9148bcdc4678f295b6d19778976c909a","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"af246a495a82b8027c4efcaa7aea10ab9148bcdc4678f295b6d19778976c909a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/root/independent-SourceRationalFiniteHead-1791346337289440000/SourceRationalFiniteHead.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceRationalCompensation

/-!
# Complete finite rational head with both actual source mass defects

The original native tail constant is retained without an H-only tail premise.
All arithmetic signed-head control remains an ordinary open input.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RationalKernelHeadMass.Variantaf246a495a82b8027c4efcaa7aea10ab9148bcdc4678f295b6d19778976c909a

namespace FormalResearch.RiemannHypothesis.SourceRationalFiniteHead

open MeasureTheory Set
open SourceNativeMellin SourceNativeDirichlet SourceNativeDirichletMoments
open SourceNativeAngularTail SourceNativeMertensTransfer SourceNativeConstantCompensation
open SourceRationalContinuousHalf SourceRationalCompensation
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

noncomputable section

/-- Literal finite rational-kernel mass, distinct from its whole-line pole half. -/
def rationalKernelHeadMass (A T : ℝ) : ℂ :=
  (1 / (2 * Real.pi) : ℝ) *
    ∫ t : ℝ in Icc (-T) T,
      nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
        (1 + Complex.I * (t : ℂ))

/-- The complete signed finite rational multiplier remainder. -/
def rationalRemainderHead (A T : ℝ) : ℂ :=
  (1 / (2 * Real.pi) : ℝ) * ∫ t : ℝ in Icc (-T) T, rationalRemainderIntegrand A t

/-- Both finite source mass defects are part of the corrected head. -/
def correctedRationalHead (A T : ℝ) : ℂ :=
  rationalRemainderHead A T +
    (rightLineMajorant 2 - dirichletMoment 1 : ℝ) * (nativeHeadMass A T - 1) +
    (dirichletMoment 1 : ℂ) *
      (rationalKernelHeadMass A T - (continuousPoleHalf A : ℂ))

theorem angularHead_eq_rational_masses (A T : ℝ) (hA : 1 ≤ A) :
    angularHead A T =
      (rightLineMajorant 2 - dirichletMoment 1 : ℝ) * nativeHeadMass A T +
        (dirichletMoment 1 : ℂ) * rationalKernelHeadMass A T + rationalRemainderHead A T := by
  have hD := (angularIntegrand_integrable A hA).integrableOn (s := Icc (-T) T)
  have hH := (SourceNativeReadout.nativeMellin_two_integrable A hA).integrableOn
    (s := Icc (-T) T)
  have hQ := (native_rational_integrable A hA).integrableOn (s := Icc (-T) T)
  have hf : rationalRemainderIntegrand A = fun t : ℝ ↦ angularIntegrand A t -
      ((rightLineMajorant 2 - dirichletMoment 1 : ℝ) : ℂ) *
        nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) -
      (dirichletMoment 1 : ℂ) *
        (nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
          (1 + Complex.I * (t : ℂ))) := by
    funext t
    unfold rationalRemainderIntegrand rationalRemainderMultiplier rationalCompensator
      angularIntegrand
    ring
  have hi : (∫ t : ℝ in Icc (-T) T, rationalRemainderIntegrand A t) =
      (∫ t : ℝ in Icc (-T) T, angularIntegrand A t) -
        ((rightLineMajorant 2 - dirichletMoment 1 : ℝ) : ℂ) *
          (∫ t : ℝ in Icc (-T) T,
            nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))) -
        (dirichletMoment 1 : ℂ) *
          (∫ t : ℝ in Icc (-T) T,
            nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
              (1 + Complex.I * (t : ℂ))) := by
    rw [hf]
    dsimp only
    rw [integral_sub
      (f := fun t : ℝ ↦ angularIntegrand A t -
        ((rightLineMajorant 2 - dirichletMoment 1 : ℝ) : ℂ) *
          nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)))
      (g := fun t : ℝ ↦ (dirichletMoment 1 : ℂ) *
        (nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
          (1 + Complex.I * (t : ℂ))))
      (hD.sub (hH.const_mul _)) (hQ.const_mul _),
      integral_sub hD (hH.const_mul _), integral_const_mul, integral_const_mul]
  unfold angularHead rationalRemainderHead nativeHeadMass rationalKernelHeadMass
  rw [hi]
  ring

theorem correctedRationalHead_eq_head_sub_baseline (A T : ℝ) (hA : 1 ≤ A) :
    correctedRationalHead A T = angularHead A T - (rationalBaseline A : ℂ) := by
  rw [angularHead_eq_rational_masses A T hA]
  unfold correctedRationalHead rationalBaseline
  simp only [Complex.ofReal_add, Complex.ofReal_sub, Complex.ofReal_mul]
  ring

theorem correctedRationalHead_real_readout (A T : ℝ) (hA : 1 ≤ A) :
    (angularHead A T).re = rationalBaseline A + (correctedRationalHead A T).re := by
  have h := congr_arg Complex.re (correctedRationalHead_eq_head_sub_baseline A T hA)
  simp only [Complex.sub_re, Complex.ofReal_re] at h
  linarith

theorem residual_sub_correctedRationalHead_norm_bound (A T : ℝ)
    (hA : 1 ≤ A) (hT : 1 ≤ T) :
    ‖((mertensResidual A - rationalBaseline A : ℝ) : ℂ) - correctedRationalHead A T‖ ≤
      twoLineTailConstant * Real.exp (3 * A) / (A ^ 9 * T ^ 5) := by
  rw [correctedRationalHead_eq_head_sub_baseline A T hA, Complex.ofReal_sub]
  convert mertensResidual_sub_head_norm_bound A T hA hT using 1
  congr 1
  ring

theorem residual_sub_correctedRationalHead_growing_norm_bound (A : ℝ) (hA : 1 ≤ A) :
    ‖((mertensResidual A - rationalBaseline A : ℝ) : ℂ) -
      correctedRationalHead A (growingHeight A)‖ ≤ twoLineTailConstant / A ^ 9 := by
  rw [correctedRationalHead_eq_head_sub_baseline A (growingHeight A) hA,
    Complex.ofReal_sub]
  convert mertensResidual_growing_tail_bound A hA using 1
  congr 1
  ring

theorem residual_sub_correctedRationalHead_growing_abs_bound (A : ℝ) (hA : 1 ≤ A) :
    |(mertensResidual A - rationalBaseline A) -
      (correctedRationalHead A (growingHeight A)).re| ≤ twoLineTailConstant / A ^ 9 := by
  have h := residual_sub_correctedRationalHead_growing_norm_bound A hA
  have hr := Complex.abs_re_le_norm
    (((mertensResidual A - rationalBaseline A : ℝ) : ℂ) -
      correctedRationalHead A (growingHeight A))
  simpa only [Complex.sub_re, Complex.ofReal_re] using le_trans hr h

theorem residual_upper_of_correctedRationalHead_with_baseline {B K R : ℝ} (hR : 1 ≤ R)
    (hbase : ∀ A : ℝ, R ≤ A → rationalBaseline A ≤ B)
    (hhead : ∀ A : ℝ, R ≤ A → (correctedRationalHead A (growingHeight A)).re ≤ K)
    (A : ℝ) (hA : R ≤ A) :
    mertensResidual A ≤ B + K + twoLineTailConstant / R ^ 9 := by
  apply mertensResidual_upper_of_signed_head hR (K := B + K) ?_ A hA
  intro A hA
  rw [correctedRationalHead_real_readout A (growingHeight A) (le_trans hR hA)]
  exact add_le_add (hbase A hA) (hhead A hA)

theorem residual_upper_of_correctedRationalHead {K R : ℝ} (hR : 1 ≤ R)
    (hhead : ∀ A : ℝ, R ≤ A → (correctedRationalHead A (growingHeight A)).re ≤ K)
    (A : ℝ) (hA : R ≤ A) :
    mertensResidual A ≤ rightLineMajorant 2 + dirichletMoment 1 + K +
      twoLineTailConstant / R ^ 9 := by
  exact residual_upper_of_correctedRationalHead_with_baseline hR
    (fun A hA ↦ rationalBaseline_upper A (le_trans hR hA)) hhead A hA

/-- Only this complete corrected signed head is the witness; both masses stay inside it. -/
def CorrectedRationalHeadTailUpperBound : Prop :=
  ∃ K : ℝ, ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → (correctedRationalHead A (growingHeight A)).re ≤ K

theorem native_signed_head_of_corrected_rational (h : CorrectedRationalHeadTailUpperBound) :
    SignedNativeHeadTailUpperBound := by
  obtain ⟨K, R, hR, hhead⟩ := h
  refine ⟨rightLineMajorant 2 + dirichletMoment 1 + K, R, hR, ?_⟩
  intro A hA
  rw [correctedRationalHead_real_readout A (growingHeight A) (le_trans hR hA)]
  exact add_le_add (rationalBaseline_upper A (le_trans hR hA)) (hhead A hA)

theorem estimate_of_corrected_rational_head (h : CorrectedRationalHeadTailUpperBound) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_signed_native_head (native_signed_head_of_corrected_rational h)

end
end FormalResearch.RiemannHypothesis.SourceRationalFiniteHead
```
