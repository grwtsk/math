# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CoreTailFullAudit.Variantb2c57fb7f72309d9d04c08a33240820feae6ef4733e04060c0d2c2f26433d510

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5479321e0633ba93b840306904389e8593a4c811` · SHA-256 `a03e8d283fa4fcc821df48c1a4f4b226bda5d361b7362d3cab85d99cc8ae0649`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FullResidualVector.Variante74c3488ce7f9322acadc5675bec6eb5d4088823ad1ef84f46a05698701c5800","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e74c3488ce7f9322acadc5675bec6eb5d4088823ad1ef84f46a05698701c5800","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.FullResidualVector.Variante74c3488ce7f9322acadc5675bec6eb5d4088823ad1ef84f46a05698701c5800","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"e74c3488ce7f9322acadc5675bec6eb5d4088823ad1ef84f46a05698701c5800","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/signed-covariance-core/core-tail-full-audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidualTail
import FormalResearch.RiemannHypothesis.SourceComparison.SourceWeightedMultiplier

/-! The expanding logarithmic core is cut before application of the exact source multiplier. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FullResidualVector.Variante74c3488ce7f9322acadc5675bec6eb5d4088823ad1ef84f46a05698701c5800

set_option autoImplicit false
namespace CoreTailSplitScratch
open MeasureTheory Set Complex
open FormalResearch.RiemannHypothesis.SourceComparison
open LogarithmicResidual LogarithmicResidualTail SourceWeightedMultiplier
open HalfLineExtension MobiusFractionalResidual MobiusPoleNumerator MobiusEndpointBudget
noncomputable section

/-- The complete signed logarithmic residual admitted in full-line L2. -/
def fullResidualVector (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) : FullH :=
  (logResidual_memLp X ε hX).toLp (logResidual X ε)

/-- The actual core is restricted in logarithmic time before the source multiplier acts. -/
def coreResidualVector (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (Y : ℝ) : FullH :=
  ((logResidual_memLp X ε hX).indicator measurableSet_Icc).toLp
    ((Icc (0 : ℝ) (Real.log Y)).indicator (logResidual X ε))

/-- The full residual vector keeps the complete original signed function almost everywhere. -/
theorem fullResidualVector_ae (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) :
    fullResidualVector X ε hX =ᵐ[volume] logResidual X ε :=
  (logResidual_memLp X ε hX).coeFn_toLp

/-- The core vector keeps both finite endpoints in the original time cutoff. -/
theorem coreResidualVector_ae (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (Y : ℝ) :
    coreResidualVector X ε hX Y =ᵐ[volume]
      (Icc (0 : ℝ) (Real.log Y)).indicator (logResidual X ε) :=
  ((logResidual_memLp X ε hX).indicator measurableSet_Icc).coeFn_toLp

/-- The admitted full vector is exactly its negative tail, expanding core, and positive tail. -/
theorem fullResidualVector_decomposition (X : ℕ) (ε : ℝ) (hX : 1 ≤ X)
    (Y : ℝ) (hY : 1 ≤ Y) :
    fullResidualVector X ε hX =
      ((logResidual_memLp X ε hX).indicator measurableSet_Iio).toLp
        ((Iio (0 : ℝ)).indicator (logResidual X ε)) + coreResidualVector X ε hX Y +
      ((logResidual_memLp X ε hX).indicator measurableSet_Ioi).toLp
        ((Ioi (Real.log Y)).indicator (logResidual X ε)) := by
  let n : FullH := ((logResidual_memLp X ε hX).indicator measurableSet_Iio).toLp
    ((Iio (0 : ℝ)).indicator (logResidual X ε))
  let p : FullH := ((logResidual_memLp X ε hX).indicator measurableSet_Ioi).toLp
    ((Ioi (Real.log Y)).indicator (logResidual X ε))
  have hn : n =ᵐ[volume] (Iio (0 : ℝ)).indicator (logResidual X ε) :=
    ((logResidual_memLp X ε hX).indicator measurableSet_Iio).coeFn_toLp
  have hp : p =ᵐ[volume] (Ioi (Real.log Y)).indicator (logResidual X ε) :=
    ((logResidual_memLp X ε hX).indicator measurableSet_Ioi).coeFn_toLp
  have hlog : 0 ≤ Real.log Y := Real.log_nonneg hY
  change fullResidualVector X ε hX = n + coreResidualVector X ε hX Y + p
  apply Lp.ext
  filter_upwards [fullResidualVector_ae X ε hX, coreResidualVector_ae X ε hX Y,
    hn, hp, Lp.coeFn_add (n + coreResidualVector X ε hX Y) p,
    Lp.coeFn_add n (coreResidualVector X ε hX Y)] with u hfull hcore hn hp hsum hnc
  simp only [Pi.add_apply] at hsum hnc
  rw [hfull, hsum, hnc, hn, hcore, hp]
  by_cases hu : u < 0
  · have hin : u ∈ Iio (0 : ℝ) := hu
    have hc : u ∉ Icc (0 : ℝ) (Real.log Y) := fun hc => not_le_of_gt hu hc.1
    have hp : u ∉ Ioi (Real.log Y) := not_lt.mpr (hu.le.trans hlog)
    simp only [indicator_of_mem hin, indicator_of_notMem hc, indicator_of_notMem hp, add_zero]
  · have hnonneg : 0 ≤ u := le_of_not_gt hu
    have hout : u ∉ Iio (0 : ℝ) := hu
    by_cases hp : Real.log Y < u
    · have hip : u ∈ Ioi (Real.log Y) := hp
      have hc : u ∉ Icc (0 : ℝ) (Real.log Y) := fun hc => not_le_of_gt hp hc.2
      simp only [indicator_of_notMem hout, indicator_of_notMem hc, indicator_of_mem hip,
        zero_add]
    · have hc : u ∈ Icc (0 : ℝ) (Real.log Y) := ⟨hnonneg, le_of_not_gt hp⟩
      have hpout : u ∉ Ioi (Real.log Y) := hp
      simp only [indicator_of_notMem hout, indicator_of_mem hc, indicator_of_notMem hpout,
        zero_add, add_zero]

/-- Only the two tails are bounded absolutely; the expanding core retains its filtered norm. -/
theorem filtered_full_norm_le_core_tails (X : ℕ) (ε : ℝ) (hX : 1 ≤ X)
    (h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h)
    (Y : ℝ) (hY : 1 ≤ Y) :
    ‖sourceMultiplier ε h hε hsmall hh (fullResidualVector X ε hX)‖ ≤
      ‖sourceMultiplier ε h hε hsmall hh (coreResidualVector X ε hX Y)‖ +
        ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
          ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ +
        ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
          (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) / Real.sqrt Y := by
  let n : FullH := ((logResidual_memLp X ε hX).indicator measurableSet_Iio).toLp
    ((Iio (0 : ℝ)).indicator (logResidual X ε))
  let p : FullH := ((logResidual_memLp X ε hX).indicator measurableSet_Ioi).toLp
    ((Ioi (Real.log Y)).indicator (logResidual X ε))
  let M : FullH →L[ℂ] FullH := sourceMultiplier ε h hε hsmall hh
  let B : ℝ := (4 / 3 : ℝ) * Real.exp (1 / 4)
  have hn : ‖M n‖ ≤ B * ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ := by
    have he := sourceMultiplier_norm_le ε h hε hsmall hh n
    rw [show ‖n‖ = ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ from
      logResidual_negative_norm X ε hX] at he
    exact he
  have hp : ‖M p‖ ≤ B *
      ((1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) / Real.sqrt Y) :=
    (sourceMultiplier_norm_le ε h hε hsmall hh p).trans
      (mul_le_mul_of_nonneg_left (logResidual_positive_norm_le X ε hX Y hY) (by positivity))
  have he : fullResidualVector X ε hX = n + coreResidualVector X ε hX Y + p :=
    fullResidualVector_decomposition X ε hX Y hY
  change ‖M (fullResidualVector X ε hX)‖ ≤ _
  rw [he, map_add, map_add]
  calc
    ‖M n + M (coreResidualVector X ε hX Y) + M p‖ ≤
        ‖M n‖ + ‖M (coreResidualVector X ε hX Y)‖ + ‖M p‖ :=
      (norm_add_le _ _).trans (add_le_add (norm_add_le _ _) le_rfl)
    _ ≤ B * ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ +
        ‖M (coreResidualVector X ε hX Y)‖ +
        B * ((1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) / Real.sqrt Y) :=
      add_le_add (add_le_add hn le_rfl) hp
    _ = _ := by dsimp only [M, B]; ring

end
end CoreTailSplitScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @CoreTailSplitScratch.fullResidualVector
#print CoreTailSplitScratch.fullResidualVector
#print axioms CoreTailSplitScratch.fullResidualVector
#check @CoreTailSplitScratch.coreResidualVector
#print CoreTailSplitScratch.coreResidualVector
#print axioms CoreTailSplitScratch.coreResidualVector
#check @CoreTailSplitScratch.fullResidualVector_ae
#print CoreTailSplitScratch.fullResidualVector_ae
#print axioms CoreTailSplitScratch.fullResidualVector_ae
#check @CoreTailSplitScratch.coreResidualVector_ae
#print CoreTailSplitScratch.coreResidualVector_ae
#print axioms CoreTailSplitScratch.coreResidualVector_ae
#check @CoreTailSplitScratch.fullResidualVector_decomposition
#print CoreTailSplitScratch.fullResidualVector_decomposition
#print axioms CoreTailSplitScratch.fullResidualVector_decomposition
#check @CoreTailSplitScratch.filtered_full_norm_le_core_tails
#print CoreTailSplitScratch.filtered_full_norm_le_core_tails
#print axioms CoreTailSplitScratch.filtered_full_norm_le_core_tails
```
