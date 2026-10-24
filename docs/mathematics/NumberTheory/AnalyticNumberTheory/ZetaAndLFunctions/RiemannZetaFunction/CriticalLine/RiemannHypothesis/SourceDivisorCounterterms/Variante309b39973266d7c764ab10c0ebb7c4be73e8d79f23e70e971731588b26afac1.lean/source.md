# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceDivisorCounterterms.Variante309b39973266d7c764ab10c0ebb7c4be73e8d79f23e70e971731588b26afac1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a642b90cfbd3a2533d98f2b8bdda427b66213bcf` · SHA-256 `e309b39973266d7c764ab10c0ebb7c4be73e8d79f23e70e971731588b26afac1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceVaughanHankel
import SourceDivisorClassification
import FormalResearch.RiemannHypothesis.SourceScaleVariation

/-!
# Independently aligned global and divisor counterterms

The independently defined retained main term is expanded using its actual
finite arithmetic data. Its centering term is assigned by the same literal
divisor mean as the original centered row; no counterterm is manufactured from
the desired residual. All signed interactions are retained before estimation.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceDivisorCounterterms

open MeasureTheory ArithmeticFunction
open SourcePairing SourceSamplingLedger SourceVaughanHankel
open SourceSamplingCoefficients SourceSamplingPointwise SourceShortSamplingInventory
open SourceDiagonalMainTerm
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensAbel EstimateVaughanSource EstimateVaughanIdentity
open EstimatePlainKernel EstimateBetaCentering EstimateBetaSourceRecombination
open EstimateSourceMobiusKernel
open EstimateVaughanTranslationGate EstimateTypeTwoLogBlocks

noncomputable section

/-- The original normalized diagonal main term minus the retained short Mangoldt source. -/
def globalBaseline (A : ℝ) : ℝ :=
  diagonalMainCoefficient A * A - Real.log (vaughanCutoff A : ℝ) - shortMangoldtSource A

/-- Each counterterm uses the exact finite mean and the proved signed sampling coefficients. -/
def divisorCounterterm (A : ℝ) (d : ℕ) : ℝ :=
  plainTypeTwoOffDiagonal A / (d : ℝ) - sourceLogSamplingMainTerm A d +
    ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
      vonMangoldt m * sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ)

/-- The existing independent main term, expanded without using the ledger or residual. -/
theorem independentMainTerm_eq_baseline_add_divisors (A : ℝ) :
    independentMainTerm A = globalBaseline A +
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d * divisorCounterterm A d := by
  rw [independentMainTerm, coefficientMainTerm_eq_sampling_inventory]
  change alpha (vaughanCutoff A) * plainTypeTwoOffDiagonal A +
      diagonalMainCoefficient A * A - Real.log (vaughanCutoff A : ℝ) -
      shortMangoldtSource A - shortLogMainTerm A (sourceLogSamplingMainTerm A) +
      shortPlainMainTerm A (sourcePlainSamplingMainTerm A) = _
  unfold globalBaseline divisorCounterterm alpha shortLogMainTerm shortPlainMainTerm
  rw [Finset.sum_mul]
  simp_rw [mul_add, mul_sub, Finset.mul_sum]
  rw [Finset.sum_add_distrib, Finset.sum_sub_distrib]
  have hmean : (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
      (moebius d : ℝ) / (d : ℝ) * plainTypeTwoOffDiagonal A) =
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * (plainTypeTwoOffDiagonal A / (d : ℝ)) := by
    apply Finset.sum_congr rfl
    intro d _
    unfold realMoebius
    ring
  rw [hmean]
  have hr (d : ℕ) : realMoebius d * (plainTypeTwoOffDiagonal A / (d : ℝ)) =
      plainTypeTwoOffDiagonal A * realMoebius d * (d : ℝ)⁻¹ := by ring
  simp_rw [hr]
  ring

/-- The literal masked, unequal-index divisor interaction before subtracting its counterterm. -/
def divisorInteraction (A : ℝ) (d : ℕ) : ℝ :=
  SourceDivisorClassification.divisorCovarianceInteraction A d

/-- The coefficient-one source support removes only the product mask, retaining unequal indices. -/
theorem plainTypeTwoOffDiagonal_eq_unmasked (A : ℝ) (hA : 1 ≤ A) :
    plainTypeTwoOffDiagonal A = ∑ m ∈ longInventory A,
      ∑ n ∈ (longInventory A).filter (fun n => n ≠ m),
        vonMangoldt m * sourcePlainWeight A ((m * n : ℕ) : ℝ) := by
  classical
  unfold plainTypeTwoOffDiagonal longOffDiagonalPairs longInventory
  simp only [Finset.sum_filter, Finset.product_eq_sprod, Finset.sum_product]
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hne : n ≠ m
  · by_cases hp : m * n ≤ sourceKernelCutoff A
    · rw [if_pos hne, if_pos ⟨hne, hp⟩]
    · rw [if_pos hne, if_neg (fun h => hp h.2),
        sourcePlainWeight_zero_of_cutoff_lt A hA (m * n) (by omega), mul_zero]
  · rw [if_neg hne, if_neg (fun h => hne h.1)]

/-- The unresolved multiples sector retains the literal product and deleted-diagonal conventions. -/
def divisorMultiplesInteraction (A : ℝ) (d : ℕ) : ℝ :=
  ∑ m ∈ longInventory A, ∑ n ∈ (longInventory A).filter (fun n => n ≠ m),
    if d ∣ n then vonMangoldt m * sourcePlainWeight A ((m * n : ℕ) : ℝ) else 0

/-- The independent mean contribution is exact, with its sign and off-diagonal source intact. -/
theorem divisorInteraction_eq_mean_sub_multiples (A : ℝ) (hA : 1 ≤ A) (d : ℕ) :
    divisorInteraction A d = plainTypeTwoOffDiagonal A / (d : ℝ) -
      divisorMultiplesInteraction A d := by
  classical
  rw [plainTypeTwoOffDiagonal_eq_unmasked A hA]
  unfold divisorInteraction SourceDivisorClassification.divisorCovarianceInteraction
    divisorMultiplesInteraction
  simp_rw [Finset.sum_div]
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m _
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n _
  split_ifs <;> ring

/-- The remaining divisor term is defined from the actual interactions and independent
counterterms. -/
def divisorRemainder (A : ℝ) (d : ℕ) : ℝ :=
  -divisorMultiplesInteraction A d + sourceLogSamplingMainTerm A d -
    ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
      vonMangoldt m * sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ)

/-- Only the corresponding independent divisor means cancel; both signed source sectors remain. -/
theorem divisorInteraction_sub_counterterm (A : ℝ) (hA : 1 ≤ A) (d : ℕ) :
    divisorInteraction A d - divisorCounterterm A d = divisorRemainder A d := by
  rw [divisorInteraction_eq_mean_sub_multiples A hA]
  unfold divisorCounterterm divisorRemainder
  ring

/-- The full remaining target, defined using the actual reflected source and original
counterterms. -/
def jointSignedRemainder (A : ℝ) : ℝ :=
  sourceHankelPairing A - centeredDeletedDiagonal A - independentMainTerm A

/-- The literal spatial remainder is the existing exact centered operator target. -/
theorem jointSignedRemainder_eq_covariance (A : ℝ) (hA : 1 ≤ A) :
    jointSignedRemainder A = VaughanOperatorReview.covarianceOperatorValue A / 2 -
      independentMainTerm A := by
  unfold jointSignedRemainder
  rw [covarianceOperator_half_eq_pairing_sub_diagonal A hA]

/-- Exact signed reconstruction pairs independently defined divisor counterterms before
estimating. -/
theorem jointSignedRemainder_eq_aligned_divisors (A : ℝ) (hA : 1 ≤ A) :
    jointSignedRemainder A = -globalBaseline A +
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        realMoebius d * (divisorInteraction A d - divisorCounterterm A d) := by
  rw [jointSignedRemainder_eq_covariance A hA,
    SourceDivisorClassification.covarianceOperator_half_eq_divisor_interactions A hA,
    independentMainTerm_eq_baseline_add_divisors]
  unfold divisorInteraction realMoebius
  simp_rw [mul_sub, Finset.sum_sub_distrib]
  ring

/-- The independent centering means cancel exactly, leaving the global baseline and full
covariance. -/
theorem jointSignedRemainder_eq_divisor_remainders (A : ℝ) (hA : 1 ≤ A) :
    jointSignedRemainder A = -globalBaseline A +
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d * divisorRemainder A d := by
  rw [jointSignedRemainder_eq_aligned_divisors A hA]
  simp_rw [divisorInteraction_sub_counterterm A hA]

/-- The unit divisor's actual discrepancy interaction vanishes, without deleting its counterterm. -/
theorem divisorInteraction_one (A : ℝ) : divisorInteraction A 1 = 0 := by
  simp [divisorInteraction, SourceDivisorClassification.divisorCovarianceInteraction]

/-- A zero discrepancy interaction still retains its independent counterterm in the signed
remainder. -/
theorem divisorRemainder_one (A : ℝ) (hA : 1 ≤ A) :
    divisorRemainder A 1 = -divisorCounterterm A 1 := by
  rw [← divisorInteraction_sub_counterterm A hA, divisorInteraction_one]
  ring

/-- Cutoff events are separated from fixed-A divisor-classification refinement. -/
theorem cutoffs_eventually_eq {A : ℝ}
    (hU : (vaughanCutoff A : ℝ) < A ^ 2)
    (hN : (sourceKernelCutoff A : ℝ) < Real.exp (2 * A)) :
    ∀ᶠ B in nhds A,
      vaughanCutoff B = vaughanCutoff A ∧ sourceKernelCutoff B = sourceKernelCutoff A := by
  have hu := SourceScaleVariation.floor_eventually_eq_of_strict_lower
    (f := fun B : ℝ => B ^ 2) (by fun_prop) hU
  have hn := SourceScaleVariation.floor_eventually_eq_of_strict_lower
    (f := fun B : ℝ => Real.exp (2 * B)) (by fun_prop) hN
  filter_upwards [hu, hn] with B hB hB'
  exact ⟨hB, hB'⟩

/-- Between actual cutoff events the complete forward arithmetic state has C¹ source variation. -/
theorem mangoldtProfile_contDiffAt_between_cutoffs {A : ℝ} (hA : 1 ≤ A)
    (hU : (vaughanCutoff A : ℝ) < A ^ 2)
    (hN : (sourceKernelCutoff A : ℝ) < Real.exp (2 * A)) (x : ℝ) :
    ContDiffAt ℝ 1 (fun B : ℝ => mangoldtForwardProfile B x) A := by
  apply (SourceScaleVariation.forwardProfile_contDiffAt_scale
    (by linarith : 0 < A) (longInventory A)
    (fun m => vonMangoldt m / Real.sqrt (m : ℝ)) x).congr_of_eventuallyEq
  filter_upwards [cutoffs_eventually_eq hU hN] with B hB
  simp only [mangoldtForwardProfile, longInventory, hB.1, hB.2]

/-- The original centered reflected state preserves the same C¹ variation between actual events. -/
theorem centeredProfile_contDiffAt_between_cutoffs {A : ℝ} (hA : 1 ≤ A)
    (hU : (vaughanCutoff A : ℝ) < A ^ 2)
    (hN : (sourceKernelCutoff A : ℝ) < Real.exp (2 * A)) (x : ℝ) :
    ContDiffAt ℝ 1 (fun B : ℝ => centeredMobiusReflectedProfile B x) A := by
  apply (SourceScaleVariation.reflectedProfile_contDiffAt_scale
    (by linarith : 0 < A) (longInventory A)
    (fun n => centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ)) x).congr_of_eventuallyEq
  filter_upwards [cutoffs_eventually_eq hU hN] with B hB
  simp only [centeredMobiusReflectedProfile, longInventory, hB.1, hB.2]

/-- Complete signed pointwise interaction variation, with neither arithmetic row separated. -/
theorem jointProfileProduct_contDiffAt_between_cutoffs {A : ℝ} (hA : 1 ≤ A)
    (hU : (vaughanCutoff A : ℝ) < A ^ 2)
    (hN : (sourceKernelCutoff A : ℝ) < Real.exp (2 * A)) (x : ℝ) :
    ContDiffAt ℝ 1 (fun B : ℝ => mangoldtForwardProfile B x *
      centeredMobiusReflectedProfile B x) A :=
  (mangoldtProfile_contDiffAt_between_cutoffs hA hU hN x).mul
    (centeredProfile_contDiffAt_between_cutoffs hA hU hN x)

/-- The exact unresolved divisor inequality, retaining the full independent global baseline. -/
def DivisorRemainderTailUpperBound : Prop :=
  ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
    -globalBaseline A + ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
      realMoebius d * divisorRemainder A d ≤ D

/-- This exact signed reconstruction preserves, rather than weakens, the original tail target. -/
theorem divisorRemainder_tail_iff_original_target :
    DivisorRemainderTailUpperBound ↔
      VaughanOperatorReview.JointMainTermTailUpperBound independentMainTerm := by
  constructor
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D, hD, R, hR, ?_⟩
    intro A hRA
    have he := jointSignedRemainder_eq_divisor_remainders A (hR.trans hRA)
    rw [jointSignedRemainder_eq_covariance A (hR.trans hRA)] at he
    rw [he]
    exact h A hRA
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D, hD, R, hR, ?_⟩
    intro A hRA
    rw [← jointSignedRemainder_eq_divisor_remainders A (hR.trans hRA),
      jointSignedRemainder_eq_covariance A (hR.trans hRA)]
    exact h A hRA

/-- The existing bounded ledger error supplies the already checked residual-tail equivalence. -/
theorem divisorRemainder_tail_iff_residual_tail :
    DivisorRemainderTailUpperBound ↔ EstimateMertensResidual.MertensResidualTailUpperBound :=
  divisorRemainder_tail_iff_original_target.trans independentMainTerm_tail_iff_mertensResidualTail

end
end FormalResearch.RiemannHypothesis.SourceDivisorCounterterms
```
