/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.MeasureAndIntegration.RawMomentQuadrature
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilZeroMomentEvaluation

/-!
# Finite quadrature data returned to the original primitive Weil enclosure

MSC2020: 11M26, 11M41, 65D30, 65G20.
The raw-moment enclosures and global L1 bound are derived from midpoint samples
and certified within-cell variation of the SAME original admissible test.
Exact finite moment arithmetic can be rounded with an explicit extra charge.
No root, count, variation, outward-arithmetic or universal sign certificate is
created merely by this implication. Conductor-one pole-inclusive return is open.

SOURCE_PROOF_CANDIDATE. Elaboration, exact-type checks, kernel replay,
transitive axiom audit, certified computation and independent review NOT_RUN.
Novelty UNASSESSED. See the adjacent source-local argument and provenance.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate ContDiff

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation OddRootProjection
open GRWTSK.NumberTheory.WeilNegativeWitness
  (CriticalStripZero zeroMultiplicity spectralCoordinate heightCount heightWindow)
open GRWTSK.MeasureAndIntegration.FourierMomentEnclosure
open GRWTSK.MeasureAndIntegration.RawMomentQuadrature

/-- Original same-character arithmetic enclosure from finite sampled cell data.
The raw-moment and global L1 integral bounds are conclusions, not premises.
All subsequent finite arithmetic and the full infinite-source errors remain. -/
theorem abs_primitiveArithmeticValue_sub_quadrature_estimate_le
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {D L : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ U : ℝ, 2 ≤ U → (heightCount χ hp U : ℝ) ≤ D * U * (Real.log U + L))
    {T H : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) (hsmooth : ContDiff ℝ ∞ f)
    (J : ℕ) (hJ : (2 : ℝ) ^ J ≤ 1 + H)
    (S : Finset (CriticalStripZero χ)) (M : ℕ)
    (hS : S ⊆ heightWindow χ hp H) (hM : heightCount χ hp H ≤ M)
    (c a b : CriticalStripZero χ → ℂ) (δ r₊ r₋ : CriticalStripZero χ → ℝ)
    (hδ : ∀ ρ ∈ S, 0 ≤ δ ρ)
    (hloc : ∀ ρ ∈ S, ‖spectralCoordinate ρ.1 - c ρ‖ ≤ δ ρ)
    (C : ℝ) (hC : 0 ≤ C) (hc : ∀ ρ ∈ S, ‖c ρ‖ ≤ C)
    (x : ℕ → ℝ) (w : ℕ → ℂ) (K s : ℕ → ℝ) (N : ℕ)
    (hx0 : x 0 = -T) (hxN : x N = T)
    (hgeom : ∀ j < N, -T ≤ x j ∧ x j ≤ x (j + 1) ∧ x (j + 1) ≤ T)
    (hK : ∀ j < N, 0 ≤ K j) (hsampleError : ∀ j < N, 0 ≤ s j)
    (hvariation : ∀ j < N, ∀ t ∈ Icc (x j) (x (j + 1)),
      ‖liftReal f t - liftReal f ((x j + x (j + 1)) / 2)‖ ≤
        K j * |t - (x j + x (j + 1)) / 2|)
    (hsample : ∀ j < N,
      ‖liftReal f ((x j + x (j + 1)) / 2) - w j‖ ≤ s j)
    (n : ℕ) (horder : T * C / (n + 1 : ℕ) ≤ (1 / 2 : ℝ))
    (μ : ℕ → ℂ) (τ : ℕ → ℝ)
    (hmround : ∀ k < n, ‖quadratureMoment x w N k - μ k‖ ≤ τ k)
    (ha : ∀ ρ ∈ S, ‖momentPolynomial (c ρ) n μ - a ρ‖ ≤ r₊ ρ)
    (hb : ∀ ρ ∈ S, ‖momentPolynomial (conj (c ρ)) n μ - b ρ‖ ≤ r₋ ρ)
    (v r : ℝ) (hround : |zeroDiskEstimate χ S a b - v| ≤ r) :
    let ε := midpointCellError x K s
    let B := cellL1Budget x w ε N
    let η := fun k : ℕ => T ^ k * cellVariationBudget x ε N + τ k
    |primitiveArithmeticValue χ hp hn T (liftReal f) - v| ≤
      primitiveHeightTailBudget D L (liftReal f) T J +
        partialHeightMissingBudget χ (liftReal f) T S M +
        (zeroDiskEvaluationBudget χ (liftReal f) T S c a b δ
          (fun ρ => momentEvaluationBudget T C B n η + r₊ ρ)
          (fun ρ => momentEvaluationBudget T C B n η + r₋ ρ) + r) := by
  dsimp only
  have hi : Integrable (liftReal f) volume :=
    (Complex.ofRealCLM.contDiff.comp hsmooth).continuous.integrable_of_hasCompactSupport
      (hf.2.2.1.comp_left Complex.ofReal_zero)
  have hs : ∀ t : ℝ, T < |t| → liftReal f t = 0 := by
    intro t ht
    apply hf.2.2.2.2.2.1 t
    intro hmemb
    exact (not_le_of_gt ht) (abs_le.mpr hmemb)
  obtain ⟨hm, hB⟩ := moment_and_l1_bounds_of_midpoint (liftReal f) T hf.1.le hi hs
    x w K s N hx0 hxN hgeom hK hsampleError hvariation hsample
  exact abs_primitiveArithmeticValue_sub_moment_estimate_le χ hp hn hD hL hcount
    hf hsmooth J hJ S M hS hM c a b δ r₊ r₋ hδ hloc
    C (cellL1Budget x w (midpointCellError x K s) N) hC hc hB n horder μ
    (fun k => T ^ k * cellVariationBudget x (midpointCellError x K s) N + τ k)
    (fun k hk => norm_rawMoment_sub_roundedQuadrature_le (liftReal f) x w N k
      _ (τ k) (μ k) (hm k) (hmround k hk)) ha hb v r hround

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
