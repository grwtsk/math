/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.MeasureAndIntegration.DerivativeCellBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilZeroQuadratureEvaluation

/-!
# Finite norm budgets returned to the original primitive Weil form

MSC2020: 11M26, 11M41, 65G20. Certified whole-cell derivative bounds supply
both midpoint variation and the derivative L1 norm. Monotone substitution
removes every literal function/derivative norm integral from the error bound.
These are error majorants, not a new arithmetic form or positivity model.
Actual complex zeros, analytic multiplicities and strict source counts remain.

SOURCE_PROOF_CANDIDATE. Parsing, elaboration, exact types, builds, kernel replay,
transitive axiom audit, certified computation and independent review NOT_RUN.
Novelty UNASSESSED. See the adjacent analytical argument and declaration records.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate ContDiff

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation OddRootProjection
open GRWTSK.NumberTheory.WeilNegativeWitness
  (CriticalStripZero zeroMultiplicity spectralCoordinate heightCount heightWindow)
open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay
open GRWTSK.MeasureAndIntegration.FourierDiskEnclosure
open GRWTSK.MeasureAndIntegration.FourierMomentEnclosure
open GRWTSK.MeasureAndIntegration.RawMomentQuadrature
open GRWTSK.MeasureAndIntegration.DerivativeCellBounds

/-- The original tail expression with a certified first-order norm majorant. -/
def finiteNormTailBudget (D L T B₀ B₁ : ℝ) (J : ℕ) : ℝ :=
  (4 * Real.exp T * D * (L + 1) * (2 * (B₀ + B₁)) ^ 2) *
    ((J : ℝ) + 2) * (1 / 2 : ℝ) ^ J

/-- Missing analytic multiplicity retains its original factor, with d0 <= 2 B0.
The source inclusion/count hypotheses remain mandatory in arithmetic consumers. -/
def finiteNormMissingBudget {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (T B₀ : ℝ) (S : Finset (CriticalStripZero χ)) (M : ℕ) : ℝ :=
  ((M - partialHeightMultiplicity χ S : ℕ) : ℝ) * (Real.exp T * (2 * B₀) ^ 2)

/-- Full-complex disk transport with no unevaluated test norm. -/
def finiteNormDiskError (T B₀ : ℝ) (c : ℂ) (δ : ℝ) : ℝ :=
  (T * δ) * Real.exp (T * |c.im| + T * δ) * B₀

/-- Both reflected errors and their quadratic cross term are retained. -/
def finiteNormZeroDiskBudget {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (T B₀ : ℝ) (S : Finset (CriticalStripZero χ))
    (c a b : CriticalStripZero χ → ℂ) (δ e₊ e₋ : CriticalStripZero χ → ℝ) : ℝ :=
  ∑ ρ ∈ S, (zeroMultiplicity χ ρ : ℝ) * reflectedProductError (a ρ) (b ρ)
    (finiteNormDiskError T B₀ (c ρ) (δ ρ) + e₊ ρ)
    (finiteNormDiskError T B₀ (c ρ) (δ ρ) + e₋ ρ)

/-- Norm substitution in the entire infinite-height tail; no height is dropped. -/
theorem primitiveHeightTailBudget_le_finiteNorm
    (f : ℝ → ℂ) (D L T B₀ B₁ : ℝ) (J : ℕ) (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hB₀ : (∫ t : ℝ, ‖f t‖) ≤ B₀)
    (hB₁ : (∫ t : ℝ, ‖deriv f t‖) ≤ B₁) :
    primitiveHeightTailBudget D L f T J ≤ finiteNormTailBudget D L T B₀ B₁ J := by
  have hd := derivativeL1Cost_one_le_of_l1 f B₀ B₁ hB₀ hB₁
  have hn := derivativeL1Cost_nonneg f 1
  have hupper : 0 ≤ 2 * (B₀ + B₁) := hn.trans hd
  have hsquare := sq_le_sq' ((neg_nonpos.mpr hupper).trans hn) hd
  unfold primitiveHeightTailBudget finiteNormTailBudget
  exact mul_le_mul_of_nonneg_right
    (mul_le_mul_of_nonneg_right
      (mul_le_mul_of_nonneg_left hsquare (by positivity)) (by positivity)) (by positivity)

/-- The zeroth-order missing-head bound uses twice B0 before squaring. -/
theorem partialHeightMissingBudget_le_finiteNorm
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (f : ℝ → ℂ) (T B₀ : ℝ) (S : Finset (CriticalStripZero χ)) (M : ℕ)
    (hB₀ : (∫ t : ℝ, ‖f t‖) ≤ B₀) :
    partialHeightMissingBudget χ f T S M ≤ finiteNormMissingBudget χ T B₀ S M := by
  have hd := derivativeL1Cost_zero_le_of_l1 f B₀ hB₀
  have hn := derivativeL1Cost_nonneg f 0
  have hupper : 0 ≤ 2 * B₀ := hn.trans hd
  have hsquare := sq_le_sq' ((neg_nonpos.mpr hupper).trans hn) hd
  unfold partialHeightMissingBudget partialHeightUnitBudget finiteNormMissingBudget
  exact mul_le_mul_of_nonneg_left
    (mul_le_mul_of_nonneg_left hsquare (Real.exp_nonneg _)) (Nat.cast_nonneg _)

/-- Disk transport is monotone in a genuine L1 upper bound for nonnegative radii. -/
theorem fourierDiskError_le_finiteNorm
    (f : ℝ → ℂ) (T B₀ : ℝ) (c : ℂ) (δ : ℝ) (hT : 0 ≤ T) (hδ : 0 ≤ δ)
    (hB₀ : (∫ t : ℝ, ‖f t‖) ≤ B₀) :
    fourierDiskError f T c δ ≤ finiteNormDiskError T B₀ c δ := by
  unfold fourierDiskError finiteNormDiskError
  exact mul_le_mul_of_nonneg_left hB₀ (by positivity)

private theorem reflectedProductError_mono_nonneg
    (a b : ℂ) {α β α' β' : ℝ} (hα : 0 ≤ α) (hβ : 0 ≤ β)
    (ha : α ≤ α') (hb : β ≤ β') :
    reflectedProductError a b α β ≤ reflectedProductError a b α' β' := by
  unfold reflectedProductError
  exact add_le_add
    (add_le_add (mul_le_mul_of_nonneg_right ha (norm_nonneg _))
      (mul_le_mul_of_nonneg_right hb (norm_nonneg _)))
    (mul_le_mul ha hb hβ (hα.trans ha))

/-- Monotone substitution in the actual multiplicity-weighted signed-head error.
Center-error nonnegativity is explicit here and derived in the final consumer. -/
theorem zeroDiskEvaluationBudget_le_finiteNorm
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (f : ℝ → ℂ) (T B₀ : ℝ) (hT : 0 ≤ T)
    (hB₀ : (∫ t : ℝ, ‖f t‖) ≤ B₀)
    (S : Finset (CriticalStripZero χ))
    (c a b : CriticalStripZero χ → ℂ) (δ e₊ e₋ : CriticalStripZero χ → ℝ)
    (hδ : ∀ ρ ∈ S, 0 ≤ δ ρ)
    (he₊ : ∀ ρ ∈ S, 0 ≤ e₊ ρ) (he₋ : ∀ ρ ∈ S, 0 ≤ e₋ ρ) :
    zeroDiskEvaluationBudget χ f T S c a b δ e₊ e₋ ≤
      finiteNormZeroDiskBudget χ T B₀ S c a b δ e₊ e₋ := by
  unfold zeroDiskEvaluationBudget finiteNormZeroDiskBudget
  apply Finset.sum_le_sum
  intro ρ hρ
  have hd := fourierDiskError_le_finiteNorm f T B₀ (c ρ) (δ ρ) hT (hδ ρ hρ) hB₀
  have hn := fourierDiskError_nonneg f T (c ρ) (δ ρ) hT (hδ ρ hρ)
  exact mul_le_mul_of_nonneg_left
    (reflectedProductError_mono_nonneg (a ρ) (b ρ)
      (add_nonneg hn (he₊ ρ hρ)) (add_nonneg hn (he₋ ρ hρ))
      (add_le_add_right hd _) (add_le_add_right hd _)) (Nat.cast_nonneg _)

/-- Same-source arithmetic enclosure with no function or derivative integrals
on the error side. Whole-cell derivative ranges replace the variation premise.
The original admissible test, actual zero divisor, counts and all rounding remain. -/
theorem abs_primitiveArithmeticValue_sub_derivativeCell_estimate_le
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
    (hderiv : ∀ j < N, ∀ t ∈ Icc (x j) (x (j + 1)), ‖deriv (liftReal f) t‖ ≤ K j)
    (hsample : ∀ j < N, ‖liftReal f ((x j + x (j + 1)) / 2) - w j‖ ≤ s j)
    (n : ℕ) (horder : T * C / (n + 1 : ℕ) ≤ (1 / 2 : ℝ))
    (μ : ℕ → ℂ) (τ : ℕ → ℝ)
    (hmround : ∀ k < n, ‖quadratureMoment x w N k - μ k‖ ≤ τ k)
    (ha : ∀ ρ ∈ S, ‖momentPolynomial (c ρ) n μ - a ρ‖ ≤ r₊ ρ)
    (hb : ∀ ρ ∈ S, ‖momentPolynomial (conj (c ρ)) n μ - b ρ‖ ≤ r₋ ρ)
    (v r : ℝ) (hround : |zeroDiskEstimate χ S a b - v| ≤ r) :
    let ε := midpointCellError x K s
    let B₀ := cellL1Budget x w ε N
    let B₁ := cellVariationBudget x K N
    let η := fun k : ℕ => T ^ k * cellVariationBudget x ε N + τ k
    let e₊ := fun ρ => momentEvaluationBudget T C B₀ n η + r₊ ρ
    let e₋ := fun ρ => momentEvaluationBudget T C B₀ n η + r₋ ρ
    |primitiveArithmeticValue χ hp hn T (liftReal f) - v| ≤
      finiteNormTailBudget D L T B₀ B₁ J + finiteNormMissingBudget χ T B₀ S M +
        (finiteNormZeroDiskBudget χ T B₀ S c a b δ e₊ e₋ + r) := by
  have hT : 0 ≤ T := hf.1.le
  let ε := midpointCellError x K s
  let B₀ := cellL1Budget x w ε N
  let B₁ := cellVariationBudget x K N
  let η := fun k : ℕ => T ^ k * cellVariationBudget x ε N + τ k
  let e₊ := fun ρ => momentEvaluationBudget T C B₀ n η + r₊ ρ
  let e₋ := fun ρ => momentEvaluationBudget T C B₀ n η + r₋ ρ
  have hsm : ContDiff ℝ 1 (liftReal f) :=
    (Complex.ofRealCLM.contDiff.comp hsmooth).of_le (by simp)
  have hcompact : HasCompactSupport (liftReal f) :=
    hf.2.2.1.comp_left Complex.ofReal_zero
  have hs : ∀ t : ℝ, T < |t| → liftReal f t = 0 := by
    intro t ht
    apply hf.2.2.2.2.2.1 t
    intro hmemb
    exact (not_le_of_gt ht) (abs_le.mpr hmemb)
  have hvariation (j : ℕ) (hj : j < N) (t : ℝ) (ht : t ∈ Icc (x j) (x (j + 1))) :
      ‖liftReal f t - liftReal f ((x j + x (j + 1)) / 2)‖ ≤
        K j * |t - (x j + x (j + 1)) / 2| :=
    norm_sub_midpoint_le_of_deriv_bound (liftReal f) (x j) (x (j + 1)) (K j)
      (hgeom j hj).2.1 (fun u _ => hsm.differentiable one_ne_zero u) (hderiv j hj) t ht
  obtain ⟨hm, hB₀, hB₁⟩ := moment_l1_deriv_bounds_of_deriv_cells (liftReal f) T hf.1.le
    hsm hcompact hs x w K s N hx0 hxN hgeom hK hsampleError hderiv hsample
  have hmdata (k : ℕ) (hk : k < n) : ‖rawMoment (liftReal f) k - μ k‖ ≤ η k :=
    norm_rawMoment_sub_roundedQuadrature_le (liftReal f) x w N k _ (τ k) (μ k)
      (hm k) (hmround k hk)
  have hη (k : ℕ) (hk : k < n) : 0 ≤ η k := (norm_nonneg _).trans (hmdata k hk)
  have hB₀nonneg : 0 ≤ B₀ := (integral_nonneg (fun t => norm_nonneg (liftReal f t))).trans hB₀
  have hE : 0 ≤ momentEvaluationBudget T C B₀ n η := by
    unfold momentEvaluationBudget momentTaylorBudget momentDataBudget
    apply add_nonneg (by positivity)
    apply Finset.sum_nonneg
    intro k hk
    exact mul_nonneg (by positivity) (hη k (Finset.mem_range.mp hk))
  have he₊ (ρ : CriticalStripZero χ) (hρ : ρ ∈ S) : 0 ≤ e₊ ρ :=
    add_nonneg hE ((norm_nonneg _).trans (ha ρ hρ))
  have he₋ (ρ : CriticalStripZero χ) (hρ : ρ ∈ S) : 0 ≤ e₋ ρ :=
    add_nonneg hE ((norm_nonneg _).trans (hb ρ hρ))
  have heval : |primitiveArithmeticValue χ hp hn T (liftReal f) - v| ≤
      primitiveHeightTailBudget D L (liftReal f) T J +
        partialHeightMissingBudget χ (liftReal f) T S M +
        (zeroDiskEvaluationBudget χ (liftReal f) T S c a b δ e₊ e₋ + r) :=
    abs_primitiveArithmeticValue_sub_quadrature_estimate_le χ hp hn hD hL hcount
      hf hsmooth J hJ S M hS hM c a b δ r₊ r₋ hδ hloc C hC hc
      x w K s N hx0 hxN hgeom hK hsampleError hvariation hsample
      n horder μ τ hmround ha hb v r hround
  have htail := primitiveHeightTailBudget_le_finiteNorm (liftReal f) D L T B₀ B₁ J hD hL hB₀ hB₁
  have hmissing := partialHeightMissingBudget_le_finiteNorm χ (liftReal f) T B₀ S M hB₀
  have hdisk := zeroDiskEvaluationBudget_le_finiteNorm χ (liftReal f) T B₀ hf.1.le hB₀
    S c a b δ e₊ e₋ hδ he₊ he₋
  exact heval.trans (add_le_add (add_le_add htail hmissing) (add_le_add_right hdisk r))

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
