# Complete source: GRWTSK.Algebra.LinearAlgebra.QuantitativeGapSourceCertificate.Variantdce60165761c5c3a9daf94f69df733451fc8eebf7da3eca6c8197e6bc20a212f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5127da06105e6326b0860bfc2825aefc008ea8fd` · SHA-256 `dce60165761c5c3a9daf94f69df733451fc8eebf7da3eca6c8197e6bc20a212f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.QuantitativeGapSourceSchur
import FormalResearch.PositiveAtlas.FiniteQuadraticCertificate

/-!
# A supplied certificate for the literal two-state source Gram matrix

At `A=2`, the actual canonical source Gram restriction has real mixed entry
`0<C<1`. Its residual at the sharper constant `1-C` is the rank-one Gram matrix
of a row whose two entries are `sqrt C`. Empty constraint families make every
coefficient vector admissible. This is a real supplied-certificate soundness
application, not an executable rational search or a uniform/signed/physical gap.

Originating direction and evaluation: grwtsk contributors.
Proof construction: OpenAI Codex, reusing the exact PR267 quadratic checker.
-/

noncomputable section
set_option autoImplicit false

namespace FormalResearch.PositiveAtlas.QuantitativeGap.Source

open Matrix FiniteQuadraticCertificate
open scoped InnerProductSpace

/-- Exactly the two retained original-channel source indices at scale two. -/
abbrev Two := Fin 1 ⊕ Fin 1

/-- The realification of the literal canonical source Gram restriction. -/
def realSourceGram : Matrix Two Two ℝ := fun i j => (twoSourceGram i j).re

/-- The sharper lower constant for this fixed real two-state coefficient packet. -/
def actualSourceSharpGap : ℝ := 1 - actualSourceCoupling

theorem actualSourceSharpGap_pos : 0 < actualSourceSharpGap := by
  unfold actualSourceSharpGap
  linarith [actualSourceCoupling_lt_one]

theorem actualSourceGap_eq_sharp_div :
    actualSourceGap = actualSourceSharpGap / (1 + actualSourceCoupling) := by
  unfold actualSourceGap actualSourceSharpGap
  have hd : 1 + actualSourceCoupling ≠ 0 := by
    linarith [actualSourceCoupling_pos]
  field_simp [hd]
  ring

theorem actualSourceSharpGap_improves : actualSourceGap < actualSourceSharpGap := by
  rw [actualSourceGap_eq_sharp_div]
  apply (div_lt_iff₀ (by linarith [actualSourceCoupling_pos])).2
  nlinarith [mul_pos actualSourceSharpGap_pos actualSourceCoupling_pos]

/-- The certificate supplies this actual real row, rather than assuming a square root. -/
def realSourceFactor : Matrix (Fin 1) Two ℝ := fun _ _ => Real.sqrt actualSourceCoupling

/-- All entries, including the mixed source entry, are retained in this exact identity. -/
theorem realSourceGram_residual :
    realSourceGram - actualSourceSharpGap • (1 : Matrix Two Two ℝ) =
      realSourceFactor.transpose * realSourceFactor := by
  ext i j
  cases i <;> cases j <;> rename_i i j <;> fin_cases i <;> fin_cases j
  all_goals
    simp [realSourceGram, twoSourceGram_eq_block, actualSourceCross,
      actualSourceSharpGap, realSourceFactor, Matrix.mul_apply, Matrix.fromBlocks,
      smul_eq_mul, Real.mul_self_sqrt actualSourceCoupling_pos.le]

/-- The actual homogeneous quadratic target has no additional constraints. -/
def actualSourceCertificateProblem : Problem ℝ Two Empty Empty where
  target := realSourceGram - actualSourceSharpGap • (1 : Matrix Two Two ℝ)
  equalities := Empty.elim
  inequalities := Empty.elim

/-- The explicit row factor and the two empty multiplier families. -/
def actualSourceCertificate : Certificate ℝ Two Empty Empty (Fin 1) where
  gram := realSourceFactor
  equalityMultipliers := Empty.elim
  inequalityMultipliers := Empty.elim

theorem actualSourceCertificate_valid :
    Valid actualSourceCertificateProblem actualSourceCertificate := by
  refine ⟨fun g => g.elim, ?_⟩
  simpa [actualSourceCertificateProblem, actualSourceCertificate] using
    realSourceGram_residual

theorem actualSourceCertificate_admissible (x : Two → ℝ) :
    actualSourceCertificateProblem.Admissible x :=
  ⟨fun e => e.elim, fun g => g.elim⟩

/-- This Boolean equality follows from validity; no real-arithmetic execution is claimed. -/
theorem actualSourceCertificate_checked :
    check actualSourceCertificateProblem actualSourceCertificate = true := by
  exact decide_eq_true actualSourceCertificate_valid

/-- The existing checker consumer gives the sharper actual real coefficient bound. -/
theorem actual_real_source_certificate_coercive (x : Two → ℝ) :
    actualSourceSharpGap * (x ⬝ᵥ x) ≤ quadratic realSourceGram x := by
  have h := check_sound actualSourceCertificateProblem actualSourceCertificate
    actualSourceCertificate_checked x (actualSourceCertificate_admissible x)
  simp only [actualSourceCertificateProblem, quadratic, Matrix.sub_mulVec,
    Matrix.smul_mulVec, dotProduct_sub, dotProduct_smul, smul_eq_mul,
    Matrix.one_mulVec] at h ⊢
  linarith

/-- The same supplied row viewed in complex source coordinates. -/
def complexSourceFactor : Matrix (Fin 1) Two ℂ :=
  fun _ _ => (Real.sqrt actualSourceCoupling : ℂ)

theorem twoSourceGram_residual :
    twoSourceGram - actualSourceSharpGap • (1 : Matrix Two Two ℂ) =
      complexSourceFactorᴴ * complexSourceFactor := by
  ext i j
  cases i <;> cases j <;> rename_i i j <;> fin_cases i <;> fin_cases j
  all_goals
    simp [twoSourceGram_eq_block, actualSourceCross, actualSourceSharpGap,
      complexSourceFactor, Matrix.mul_apply, Matrix.fromBlocks, Complex.real_smul,
      ← Complex.ofReal_mul, Real.mul_self_sqrt actualSourceCoupling_pos.le]

/-- Conjugate Gram positivity gives the same bound on every complex coefficient vector. -/
theorem actual_complex_source_sharp_coercive (z : Two → ℂ) :
    actualSourceSharpGap * ‖WithLp.toLp 2 z‖ ^ 2 ≤ hermitianEnergy twoSourceGram z := by
  have hn : 0 ≤ hermitianEnergy (complexSourceFactorᴴ * complexSourceFactor) z := by
    rw [show complexSourceFactorᴴ * complexSourceFactor =
      complexSourceFactorᴴ * (1 : Matrix (Fin 1) (Fin 1) ℂ) * complexSourceFactor by simp,
      hermitianEnergy_congruence, hermitianEnergy_one]
    exact sq_nonneg _
  rw [← twoSourceGram_residual] at hn
  simp only [hermitianEnergy, Matrix.sub_mulVec, dotProduct_sub, Complex.sub_re] at hn
  rw [Matrix.smul_mulVec, Matrix.one_mulVec,
    dotProduct_smul actualSourceSharpGap (star z) z, Complex.smul_re, smul_eq_mul] at hn
  have hz := hermitianEnergy_one z
  simp only [hermitianEnergy, Matrix.one_mulVec] at hz
  rw [hz] at hn
  simp only [hermitianEnergy]
  linarith

end FormalResearch.PositiveAtlas.QuantitativeGap.Source
```
