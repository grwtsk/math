# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.8fe853bdd01485e0eaa9EstimateBetaSourceRecombination.Variant54468f20047ae5e053efea989206c116318c3d37a78aa5f648b256fdf9889764

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `278175786eca81b1d156f02c9088f4c39161f75a` · SHA-256 `0223d4e1fc43ebcd148b66f7d8badad5fe607001a6681c1c5a045bdcdb92883e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.CenteredTypeTwoOffDiagonal.Variant8fe853bdd01485e0eaa954e5cedac776e7702148f4fc481a1caa59b4dbd7b10a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8fe853bdd01485e0eaa954e5cedac776e7702148f4fc481a1caa59b4dbd7b10a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.CenteredTypeTwoOffDiagonal.Variant8fe853bdd01485e0eaa954e5cedac776e7702148f4fc481a1caa59b4dbd7b10a","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"8fe853bdd01485e0eaa954e5cedac776e7702148f4fc481a1caa59b4dbd7b10a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/8fe853bdd01485e0eaa9-EstimateBetaSourceRecombination.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateBetaCentering
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTypeTwoLogBlocks

/-!
# Exact source ledger after beta centering

The centered sum retains the literal long triangle, unequal indices and source
weight. Its mean contribution is subtracted explicitly. These identities do not
bound either the centered covariance or the signed beta-main ledger.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.CenteredTypeTwoOffDiagonal.Variant8fe853bdd01485e0eaa954e5cedac776e7702148f4fc481a1caa59b4dbd7b10a

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateBetaSourceRecombination

open ArithmeticFunction
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization EstimateVaughanSource EstimateVaughanIdentity EstimateSourceMobiusKernel
open EstimatePlainKernel EstimateMertensResidual EstimateVaughanTranslationGate
open EstimateVaughanDiagonalArithmetic EstimateTypeTwoLogBlocks EstimateBetaCentering

noncomputable section

/-- Actual centered covariance with the original closed product and off-diagonal support. -/
def centeredTypeTwoOffDiagonal (A : ℝ) : ℝ :=
  ∑ q ∈ longOffDiagonalPairs A,
    vonMangoldt q.1 * centeredBeta (vaughanCutoff A) q.2 *
      sourcePlainWeight A ((q.1*q.2 : ℕ) : ℝ)

/-- The literal coefficient-one mean sum; no positivity is presumed. -/
def plainTypeTwoOffDiagonal (A : ℝ) : ℝ :=
  ∑ q ∈ longOffDiagonalPairs A,
    vonMangoldt q.1 * sourcePlainWeight A ((q.1*q.2 : ℕ) : ℝ)

/-- The signed mean ledger retains the actual diagonal and every short counterterm. -/
def betaMainLedger (A : ℝ) : ℝ :=
  typeTwoDiagonal A + shortMangoldtSource A + shortLogSource A - shortPlainSource A -
    alpha (vaughanCutoff A) * plainTypeTwoOffDiagonal A

/-- Centering changes the long coefficient only by its explicitly retained finite mean. -/
theorem typeTwoOffDiagonal_eq_centered_sub_mean (A : ℝ) (hA : 1 ≤ A) :
    typeTwoOffDiagonal A = centeredTypeTwoOffDiagonal A -
      alpha (vaughanCutoff A) * plainTypeTwoOffDiagonal A := by
  rw [typeTwoOffDiagonal_eq_pair_sum A hA]
  unfold centeredTypeTwoOffDiagonal plainTypeTwoOffDiagonal
  rw [Finset.mul_sum, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro q hq
  unfold typeTwoPairTerm centeredBeta
  ring

/-- Complete signed residual identity; neither component of the ledger is estimated. -/
theorem mertensResidual_eq_centered_add_betaMain (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = centeredTypeTwoOffDiagonal A + betaMainLedger A := by
  rw [mertensResidual_eq_coupledOffDiagonalRemainder A hA]
  unfold coupledOffDiagonalRemainder betaMainLedger
  rw [typeTwoOffDiagonal_eq_centered_sub_mean A hA]
  ring

/-- An actual finite logarithmic block of the centered covariance. -/
def centeredTypeTwoLogBlock (A : ℝ) (c : ℕ × ℕ) : ℝ :=
  ∑ q ∈ logBlockPairs A c,
    vonMangoldt q.1 * centeredBeta (vaughanCutoff A) q.2 *
      sourcePlainWeight A ((q.1*q.2 : ℕ) : ℝ)

/-- Centered covariance partitions into the same literal source rectangles. -/
theorem centeredTypeTwoOffDiagonal_eq_logBlocks (A : ℝ) (hA : 1 ≤ A) :
    centeredTypeTwoOffDiagonal A = ∑ c ∈ logCells A, centeredTypeTwoLogBlock A c := by
  exact (Finset.sum_fiberwise_of_maps_to (logPairIndex_mem_logCells A hA)
    (fun q ↦ vonMangoldt q.1 * centeredBeta (vaughanCutoff A) q.2 *
      sourcePlainWeight A ((q.1*q.2 : ℕ) : ℝ))).symm

/-- Exact finite block-ledger identity is below the terminal tail equivalence. -/
theorem mertensResidual_eq_centered_blocks_add_betaMain (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = (∑ c ∈ logCells A, centeredTypeTwoLogBlock A c) +
      betaMainLedger A := by
  rw [mertensResidual_eq_centered_add_betaMain A hA,
    centeredTypeTwoOffDiagonal_eq_logBlocks A hA]

/-- A long unequal-index pair cannot have prime-square product. -/
theorem prime_square_offDiagonal_filter_empty (A : ℝ) (hA : 1 ≤ A)
    (p : ℕ) (hp : p.Prime) :
    (longOffDiagonalPairs A).filter (fun q ↦ q.1*q.2 = p^2) = ∅ := by
  classical
  apply Finset.eq_empty_iff_forall_notMem.mpr
  intro q hq
  obtain ⟨hlong, hprod⟩ := Finset.mem_filter.mp hq
  have hm := (Finset.mem_product.mp (Finset.mem_filter.mp hlong).1).1
  have hn := (Finset.mem_product.mp (Finset.mem_filter.mp hlong).1).2
  have hU := vaughanCutoff_pos A hA
  have hm1 : q.1 ≠ 1 := by have := (Finset.mem_Ioc.mp hm).1; omega
  have hn1 : q.2 ≠ 1 := by have := (Finset.mem_Ioc.mp hn).1; omega
  obtain ⟨hmp, hnp⟩ := (hp.mul_eq_prime_sq_iff hm1 hn1).mp hprod
  exact (Finset.mem_filter.mp hlong).2.1 (hnp.trans hmp.symm)

/-- Consequently every prime-square atom of the coefficient-one mean sum is zero. -/
theorem plainTypeTwoOffDiagonal_prime_square_atom_zero (A : ℝ) (hA : 1 ≤ A)
    (p : ℕ) (hp : p.Prime) :
    (∑ q ∈ (longOffDiagonalPairs A).filter (fun q ↦ q.1*q.2 = p^2),
      vonMangoldt q.1 * sourcePlainWeight A ((q.1*q.2 : ℕ) : ℝ)) = 0 := by
  rw [prime_square_offDiagonal_filter_empty A hA p hp, Finset.sum_empty]

/-- The retained mean correction leaves the actual prime-square counterterm atom intact. -/
theorem prime_square_betaMain_atom (A : ℝ) (hA : 1 ≤ A) (p : ℕ) (hp : p.Prime)
    (hUp : vaughanCutoff A < p) (hpN : p ^ 2 ≤ sourceKernelCutoff A) :
    p^2 ∈ Finset.Icc 1 (sourceKernelCutoff A) ∧
      shortVaughanCoefficient (vaughanCutoff A) (p^2) *
          sourcePlainWeight A ((p^2 : ℕ) : ℝ) +
        (vonMangoldt p * beta (vaughanCutoff A) p) *
          sourcePlainWeight A ((p^2 : ℕ) : ℝ) -
        alpha (vaughanCutoff A) *
          (∑ q ∈ (longOffDiagonalPairs A).filter (fun q ↦ q.1*q.2 = p^2),
            vonMangoldt q.1 * sourcePlainWeight A ((q.1*q.2 : ℕ) : ℝ)) =
      Real.log (p : ℝ) / (p : ℝ) *
        sourceCorrelation explicitSecondDerivative A (2*Real.log p) := by
  obtain ⟨hi, he⟩ := prime_square_counterterm_atom A hA p hp hUp hpN
  refine ⟨hi, ?_⟩
  rw [plainTypeTwoOffDiagonal_prime_square_atom_zero A hA p hp, mul_zero, sub_zero]
  exact he

end
end EstimateBetaSourceRecombination
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
