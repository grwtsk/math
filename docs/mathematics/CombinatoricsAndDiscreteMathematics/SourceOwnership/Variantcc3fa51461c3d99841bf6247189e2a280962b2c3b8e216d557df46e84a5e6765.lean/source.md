# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SourceOwnership.Variantcc3fa51461c3d99841bf6247189e2a280962b2c3b8e216d557df46e84a5e6765

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40a79ac20ba1473ca95b1a7d2903a3e327511cae` · SHA-256 `cc3fa51461c3d99841bf6247189e2a280962b2c3b8e216d557df46e84a5e6765`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.MathematicalTooling.Coverage.Ownership
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly

/-!
# Exact ownership at the source of the arithmetic estimate

The strict source cutoff, every von Mangoldt weight, the actual normalized
correlation, and the negative coefficient of the prime-power contribution are
retained. Reconstruction changes neither the archimedean term nor the estimate
obligation. It supplies no numerical lower bound on that signed expression.
Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceOwnership

open scoped BigOperators
open FormalResearch.MathematicalTooling.Coverage
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

noncomputable section

/-- Exactly the native strict-cutoff inventory in `primePowerContribution`. -/
def sourceInventory (A : ℝ) : Finset ℕ :=
  (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * A)

/-- The source summand, retaining all prime powers and the normalized correlation. -/
def sourceAtom (g : ℝ → ℝ → ℝ) (A : ℝ) (n : ℕ) : ℝ :=
  ArithmeticFunction.vonMangoldt n / Real.sqrt n * sourceCorrelation g A (Real.log n)

theorem primePowerContribution_reassembled (g : ℝ → ℝ → ℝ) (A : ℝ) {m : ℕ}
    (blocks : Fin m → Finset ℕ) (cover : ∀ n ∈ sourceInventory A, ∃ i, n ∈ blocks i) :
    primePowerContribution g A =
      ∑ i, ∑ n ∈ ownedPiece (sourceInventory A) blocks i, sourceAtom g A n :=
  sum_ownedPieces (sourceInventory A) blocks cover (sourceAtom g A)

/-- Reassembly preserves the complete signed quadratic source readout. -/
theorem sourceQuadraticValue_reassembled (g : ℝ → ℝ → ℝ) (A : ℝ) {m : ℕ}
    (blocks : Fin m → Finset ℕ) (cover : ∀ n ∈ sourceInventory A, ∃ i, n ∈ blocks i) :
    sourceQuadraticValue g A = archimedeanValue g A +
      ∑ i, ∑ n ∈ ownedPiece (sourceInventory A) blocks i, (-2) * sourceAtom g A n := by
  rw [sourceQuadraticValue, primePowerContribution_reassembled g A blocks cover]
  simp_rw [← Finset.mul_sum]
  ring

/-- An actual two-block source implementation with overlap: the second block
contains the full inventory, and the first owns every selected small atom. -/
def thresholdBlocks (A : ℝ) (cut : ℕ) : Fin 2 → Finset ℕ
  | 0 => (sourceInventory A).filter fun n ↦ n ≤ cut
  | 1 => sourceInventory A

theorem thresholdBlocks_cover (A : ℝ) (cut : ℕ) :
    ∀ n ∈ sourceInventory A, ∃ i, n ∈ thresholdBlocks A cut i := by
  intro n hn
  exact ⟨1, hn⟩

/-- The constructed partition applies to the actual family in `EstimateObligation`. -/
theorem explicit_source_reassembled (A : ℝ) (cut : ℕ) :
    sourceQuadraticValue explicitSecondDerivative A =
      archimedeanValue explicitSecondDerivative A +
        ∑ i, ∑ n ∈ ownedPiece (sourceInventory A) (thresholdBlocks A cut) i,
          (-2) * sourceAtom explicitSecondDerivative A n :=
  sourceQuadraticValue_reassembled _ _ _ (thresholdBlocks_cover A cut)

/-- The existing source identity still carries the signed pairing and its
complete endpoint correction after the concrete ownership regrouping. -/
theorem reassembled_eq_signed_pairing (A : ℝ) (hA : 1 ≤ A) (cut : ℕ) :
    archimedeanValue explicitSecondDerivative A +
      (∑ i, ∑ n ∈ ownedPiece (sourceInventory A) (thresholdBlocks A cut) i,
        (-2) * sourceAtom explicitSecondDerivative A n) =
      analyticCorrection explicitSecondDerivative A +
        2 * signedPairing explicitSecondDerivative A := by
  rw [← explicit_source_reassembled A cut]
  exact CorrelationAssembly.source_arithmetic_representation A hA

/-- The exact all-real lower-bound statement is equivalent after regrouping.
This is an equivalence of obligations, never a discharge of the estimate. -/
theorem estimateObligation_iff_reassembled (cut : ℝ → ℕ) :
    CorrelationAssembly.EstimateObligation ↔
      ∃ lower : ℝ, ∀ A : ℝ, 1 ≤ A → lower ≤
        archimedeanValue explicitSecondDerivative A +
          ∑ i, ∑ n ∈ ownedPiece (sourceInventory A) (thresholdBlocks A (cut A)) i,
            (-2) * sourceAtom explicitSecondDerivative A n := by
  unfold CorrelationAssembly.EstimateObligation CorrelationAssembly.UniformLowerBound
  constructor
  · rintro ⟨lower, hbound⟩
    refine ⟨lower, fun A hA ↦ ?_⟩
    rw [← explicit_source_reassembled A (cut A)]
    exact hbound A hA
  · rintro ⟨lower, hbound⟩
    refine ⟨lower, fun A hA ↦ ?_⟩
    rw [explicit_source_reassembled A (cut A)]
    exact hbound A hA

end

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceOwnership
```
