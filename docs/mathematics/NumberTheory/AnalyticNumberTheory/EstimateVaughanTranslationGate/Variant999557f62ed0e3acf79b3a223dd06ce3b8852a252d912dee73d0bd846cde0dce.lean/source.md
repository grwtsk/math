# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.EstimateVaughanTranslationGate.Variant999557f62ed0e3acf79b3a223dd06ce3b8852a252d912dee73d0bd846cde0dce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b22f9ff26cc6793015e79735324638d19ee07ccc` · SHA-256 `999557f62ed0e3acf79b3a223dd06ce3b8852a252d912dee73d0bd846cde0dce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelationTranslation
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanDiagonalArithmetic

/-!
# The actual signed Type-II diagonal

Rectangle completion has already been justified by the literal correlation's
support. Its equality-of-indices diagonal has displacement `2 * log m`, not
displacement zero. The three short Vaughan terms stay coupled to this diagonal.
No mean-value estimate or cancellation premise is introduced.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateVaughanTranslationGate

open MeasureTheory ArithmeticFunction
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity
open EstimateVaughanSource EstimateVaughanIdentity EstimateSourceMobiusKernel
open EstimatePlainKernel EstimateMertensResidual
open EstimateCorrelationTranslation
open EstimateVaughanDiagonalArithmetic

noncomputable section

/-- Rectangle completion gives the literal opposite-translation Type-II product. -/
theorem typeTwoSource_eq_translate_product (A : ℝ) (hA : 1 ≤ A) :
    typeTwoSource A = ∫ u,
      (∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        (vonMangoldt m / Real.sqrt (m : ℝ)) *
          normalizedTest explicitSecondDerivative A (u - Real.log (m : ℝ))) *
      (∑ n ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        (beta (vaughanCutoff A) n / Real.sqrt (n : ℝ)) *
          normalizedTest explicitSecondDerivative A (u + Real.log (n : ℝ))) := by
  rw [typeTwoSource_eq_rectangle A hA,
    ← finite_opposite_translate_factorization A (by linarith)]
  apply Finset.sum_congr rfl
  intro m hm
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  have hmpos : 0 < (m : ℝ) := by
    exact_mod_cast (Nat.zero_le _).trans_lt (Finset.mem_Ioc.mp hm).1
  have hnpos : 0 < (n : ℝ) := by
    exact_mod_cast (Nat.zero_le _).trans_lt (Finset.mem_Ioc.mp hn).1
  dsimp [sourcePlainWeight]
  rw [Nat.cast_mul, Real.log_mul hmpos.ne' hnpos.ne', Real.sqrt_mul hmpos.le]
  ring

/-- The actual Type-II spectral representation uses equal signs, not a square. -/
theorem typeTwoSource_eq_spectral_product (A : ℝ) (hA : 1 ≤ A) :
    (typeTwoSource A : ℂ) = ∫ ξ, (spectralWeight A ξ : ℂ) *
      dirichletPolynomial (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A))
        (fun m ↦ vonMangoldt m / Real.sqrt (m : ℝ)) ξ *
      dirichletPolynomial (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A))
        (fun n ↦ beta (vaughanCutoff A) n / Real.sqrt (n : ℝ)) ξ := by
  rw [← finite_spectral_factorization A hA]
  congr 1
  rw [typeTwoSource_eq_rectangle A hA]
  apply Finset.sum_congr rfl
  intro m hm
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  have hmpos : 0 < (m : ℝ) := by
    exact_mod_cast (Nat.zero_le _).trans_lt (Finset.mem_Ioc.mp hm).1
  have hnpos : 0 < (n : ℝ) := by
    exact_mod_cast (Nat.zero_le _).trans_lt (Finset.mem_Ioc.mp hn).1
  dsimp [sourcePlainWeight]
  rw [Nat.cast_mul, Real.log_mul hmpos.ne' hnpos.ne', Real.sqrt_mul hmpos.le]
  ring

/-- Equality of the two original long indices, with its actual sum-log shift. -/
def typeTwoDiagonal (A : ℝ) : ℝ :=
  ∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
    vonMangoldt m * beta (vaughanCutoff A) m * sourcePlainWeight A ((m*m : ℕ) : ℝ)

/-- The complementary finite signed rectangle. -/
def typeTwoOffDiagonal (A : ℝ) : ℝ :=
  ∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
    ∑ n ∈ (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter (fun n ↦ n ≠ m),
      vonMangoldt m * beta (vaughanCutoff A) n * sourcePlainWeight A ((m*n : ℕ) : ℝ)

/-- Finite diagonal/off-diagonal separation; no integral interchange is needed. -/
theorem typeTwoSource_eq_diagonal_add_offDiagonal (A : ℝ) (hA : 1 ≤ A) :
    typeTwoSource A = typeTwoDiagonal A + typeTwoOffDiagonal A := by
  classical
  rw [typeTwoSource_eq_rectangle A hA]
  unfold typeTwoDiagonal typeTwoOffDiagonal
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [Finset.mul_sum]
  have h := Finset.sum_filter_add_sum_filter_not
    (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A))
    (fun n ↦ n = m)
    (fun n ↦ vonMangoldt m * beta (vaughanCutoff A) n *
      sourcePlainWeight A ((m*n : ℕ) : ℝ))
  have heq : (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter
      (fun n ↦ n = m) = {m} := by
    ext n
    simp only [Finset.mem_filter, Finset.mem_singleton]
    constructor
    · exact fun hn ↦ hn.2
    · intro hn
      subst n
      exact ⟨hm, rfl⟩
  simpa only [heq, Finset.sum_singleton, mul_assoc] using h.symm

/-- The literal diagonal coefficient is divided by `m`, with displacement `2 log m`. -/
theorem typeTwoDiagonal_eq_sum (A : ℝ) :
    typeTwoDiagonal A =
      ∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        vonMangoldt m * beta (vaughanCutoff A) m / (m : ℝ) *
          sourceCorrelation explicitSecondDerivative A (2 * Real.log m) := by
  unfold typeTwoDiagonal
  apply Finset.sum_congr rfl
  intro m hm
  have hmpos : 0 < (m : ℝ) := by
    exact_mod_cast (Nat.zero_le _).trans_lt (Finset.mem_Ioc.mp hm).1
  dsimp [sourcePlainWeight]
  rw [Nat.cast_mul, Real.log_mul hmpos.ne' hmpos.ne', ← pow_two,
    Real.sqrt_sq hmpos.le]
  rw [show Real.log (m : ℝ) + Real.log (m : ℝ) = 2 * Real.log m by ring]
  ring

/-- The elementary diagonal estimate is kept separate from off-diagonal cancellation. -/
theorem typeTwoDiagonal_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |typeTwoDiagonal A| ≤
      ∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        vonMangoldt m * |beta (vaughanCutoff A) m| / (m : ℝ) := by
  rw [typeTwoDiagonal_eq_sum]
  refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
  apply Finset.sum_le_sum
  intro m hm
  have hmpos : 0 < (m : ℝ) := by
    exact_mod_cast (Nat.zero_le _).trans_lt (Finset.mem_Ioc.mp hm).1
  rw [abs_mul, abs_div, abs_mul, abs_of_nonneg vonMangoldt_nonneg,
    abs_of_pos hmpos]
  have h := EstimateCorrelation.actual_correlation_abs_le_one A (2 * Real.log m) hA
  exact (mul_le_mul_of_nonneg_left h (by positivity)).trans_eq (mul_one _)

/-- Prime-power support removes the long-divisor coefficient from the diagonal budget. -/
theorem typeTwoDiagonal_abs_le_mangoldt_sum (A : ℝ) (hA : 1 ≤ A) :
    |typeTwoDiagonal A| ≤
      ∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        vonMangoldt m / (m : ℝ) := by
  refine (typeTwoDiagonal_abs_le A hA).trans ?_
  apply Finset.sum_le_sum
  intro m hm
  have hmpos : 0 < (m : ℝ) := by
    exact_mod_cast (Nat.zero_le _).trans_lt (Finset.mem_Ioc.mp hm).1
  have hb := mangoldt_mul_beta_abs_le (vaughanCutoff A) m (vaughanCutoff_pos A hA)
  rw [abs_mul, abs_of_nonneg vonMangoldt_nonneg] at hb
  exact div_le_div_of_nonneg_right hb hmpos.le

/-- The equal-index sector is exactly a negative long-prime-base weight sum.
The correlation itself remains signed. -/
theorem typeTwoDiagonal_eq_longBase_sum (A : ℝ) (hA : 1 ≤ A) :
    typeTwoDiagonal A = -
      ∑ m ∈ (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter
          (fun m ↦ vaughanCutoff A < m.minFac),
        vonMangoldt m / (m : ℝ) *
          sourceCorrelation explicitSecondDerivative A (2 * Real.log m) := by
  classical
  rw [typeTwoDiagonal_eq_sum, Finset.sum_filter, ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [mangoldt_mul_beta _ _ (vaughanCutoff_pos A hA)]
  split_ifs <;> ring

/-- Inside the actual inventory, a long prime square leaves this exact weighted atom. -/
theorem prime_square_counterterm_atom (A : ℝ) (hA : 1 ≤ A) (p : ℕ) (hp : p.Prime)
    (hUp : vaughanCutoff A < p) (hpN : p ^ 2 ≤ sourceKernelCutoff A) :
    p ^ 2 ∈ Finset.Icc 1 (sourceKernelCutoff A) ∧
      shortVaughanCoefficient (vaughanCutoff A) (p ^ 2) *
          sourcePlainWeight A ((p ^ 2 : ℕ) : ℝ) +
        (vonMangoldt p * beta (vaughanCutoff A) p) *
          sourcePlainWeight A ((p ^ 2 : ℕ) : ℝ) =
        Real.log (p : ℝ) / (p : ℝ) *
          sourceCorrelation explicitSecondDerivative A (2 * Real.log p) := by
  constructor
  · exact Finset.mem_Icc.mpr ⟨Nat.one_le_iff_ne_zero.mpr (pow_ne_zero _ hp.ne_zero), hpN⟩
  · rw [prime_square_short_diagonal_remainder _ _ (vaughanCutoff_pos A hA) hp hUp]
    have hp0 : 0 < (p : ℝ) := by exact_mod_cast hp.pos
    dsimp [sourcePlainWeight]
    rw [Nat.cast_pow, Real.log_pow, Real.sqrt_sq hp0.le]
    norm_num only [Nat.cast_ofNat]
    ring

/-- The sum-log diagonal vanishes beyond `exp A`; the square-norm diagonal is one. -/
theorem diagonal_correlation_ne_square_mass (A t : ℝ) (hA : 1 ≤ A) (ht : A ≤ t) :
    sourceCorrelation explicitSecondDerivative A (2*t) = 0 ∧
      sourceCorrelation explicitSecondDerivative A 0 = 1 := by
  constructor
  · apply sourceCorrelation_eq_zero_of_two_mul_le_abs A _ (by linarith)
    exact (by linarith : 2*A ≤ 2*t).trans (le_abs_self _)
  · exact EstimateCorrelation.actual_correlation_at_zero A hA

/-- Exact coupled remainder, including every short term and the actual diagonal. -/
def coupledOffDiagonalRemainder (A : ℝ) : ℝ :=
  typeTwoOffDiagonal A + typeTwoDiagonal A + shortMangoldtSource A +
    shortLogSource A - shortPlainSource A

theorem mertensResidual_eq_coupledOffDiagonalRemainder (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = coupledOffDiagonalRemainder A := by
  rw [mertensResidual_eq_vaughan A hA, typeTwoSource_eq_diagonal_add_offDiagonal A hA]
  unfold coupledOffDiagonalRemainder
  ring

/-- The closing premise keeps the unmatched diagonal and short terms signed. -/
theorem mertens_residual_tail_iff_coupled_offDiagonal_tail :
    MertensResidualTailUpperBound ↔
      ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
        typeTwoOffDiagonal A ≤ D - typeTwoDiagonal A - shortMangoldtSource A -
          shortLogSource A + shortPlainSource A := by
  unfold MertensResidualTailUpperBound
  constructor <;> rintro ⟨D, hD, R, hR, h⟩ <;> refine ⟨D, hD, R, hR, ?_⟩ <;>
    intro A hRA
  · have hb := h A hRA
    rw [mertensResidual_eq_coupledOffDiagonalRemainder A (hR.trans hRA)] at hb
    unfold coupledOffDiagonalRemainder at hb
    linarith
  · rw [mertensResidual_eq_coupledOffDiagonalRemainder A (hR.trans hRA)]
    unfold coupledOffDiagonalRemainder
    have hb := h A hRA
    linarith

end
end EstimateVaughanTranslationGate
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
