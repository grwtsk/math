# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceCriticalRelativeKernelSignAttempt03.Variant833dd6f57b54c771a9aed503212a91e7989cdb57a4d6c776a54c8b0630b57afd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1504e05693cf18d6747b74c58aa33853aef7d48` · SHA-256 `833dd6f57b54c771a9aed503212a91e7989cdb57a4d6c776a54c8b0630b57afd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import CriticalRelativePairing
import FormalResearch.RiemannHypothesis.SourceCorrelationSignChange

/-!
Sign challenge for the actual critical-relative weight C_A/2-C_A'.
It differs from the primitive work kernel C_A'+C_A/2. Both signs below concern
only the unchanged source kernel. No arithmetic error is substituted and no
signed arithmetic tail bound is asserted.
Direction: grwtsk contributors. Formal construction: OpenAI Codex issue ingestion.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalRelativeKernelSign
open Set
open SourcePairing SourceMangoldtInteraction SourceCorrelationSignChange
open OmegaResearch.CriticalRelativePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- The unchanged exponentially damped source correlation. -/
def dampedCorrelation (A t : ℝ) : ℝ :=
  Real.exp (-t / 2) * sourceCorrelation explicitSecondDerivative A t

theorem dampedCorrelation_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (dampedCorrelation A) := by
  exact (Real.contDiff_exp.comp (contDiff_id.neg.div_const 2)).mul
    (sourceCorrelation_contDiff A hA)

theorem dampedCorrelation_deriv {A : ℝ} (hA : 0 < A) (t : ℝ) :
    deriv (dampedCorrelation A) t = -Real.exp (-t / 2) * criticalWeight A t := by
  have he := ((hasDerivAt_id t).neg.div_const 2).exp
  have hc := ((contDiff_one_iff_deriv.mp (sourceCorrelation_contDiff A hA)).1 t).hasDerivAt
  have hd : HasDerivAt (dampedCorrelation A)
      (-Real.exp (-t / 2) * criticalWeight A t) t :=
    (he.mul hc).congr_deriv (by dsimp only [id_eq]; unfold criticalWeight; ring)
  exact hd.deriv

/-- Both signs occur in the strict physical half-support at every actual real scale. -/
theorem actual_criticalWeight_both_signs (A : ℝ) (hA : 1 ≤ A) :
    (∃ t ∈ Ioo (0 : ℝ) (2 * A), 0 < criticalWeight A t) ∧
      (∃ t ∈ Ioo (0 : ℝ) (2 * A), criticalWeight A t < 0) := by
  have hp : 0 < A := by linarith
  obtain ⟨s, hs0, hsA, hcs⟩ := sourceCorrelation_exists_neg_in_half_support hp
  have hfs : dampedCorrelation A s < 0 :=
    mul_neg_of_pos_of_neg (Real.exp_pos _) hcs
  have hf0 : dampedCorrelation A 0 = 1 := by
    simp [dampedCorrelation, sourceCorrelation_zero hp]
  have hfA : dampedCorrelation A (2 * A) = 0 := by
    unfold dampedCorrelation
    rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A (2 * A) hp
      (by rw [abs_of_nonneg (by linarith : 0 ≤ 2 * A)])]
    ring
  have hf := dampedCorrelation_contDiff hp
  obtain ⟨t, ht, hd⟩ := exists_deriv_eq_slope (dampedCorrelation A) hs0
    hf.continuous.continuousOn (hf.differentiable (by norm_num)).differentiableOn
  obtain ⟨u, hu, he⟩ := exists_deriv_eq_slope (dampedCorrelation A) hsA
    hf.continuous.continuousOn (hf.differentiable (by norm_num)).differentiableOn
  have hdt : deriv (dampedCorrelation A) t < 0 := by
    rw [hd, hf0]
    exact div_neg_of_neg_of_pos (by linarith) (by linarith)
  have hdu : 0 < deriv (dampedCorrelation A) u := by
    rw [he, hfA]
    exact div_pos (by linarith) (sub_pos.mpr hsA)
  rw [dampedCorrelation_deriv hp] at hdt hdu
  constructor
  · refine ⟨t, ⟨ht.1, ht.2.trans hsA⟩, ?_⟩
    nlinarith [Real.exp_pos (-t / 2)]
  · refine ⟨u, ⟨hs0.trans hu.1, hu.2⟩, ?_⟩
    nlinarith [Real.exp_pos (-u / 2)]

end FormalResearch.RiemannHypothesis.SourceCriticalRelativeKernelSign
```
