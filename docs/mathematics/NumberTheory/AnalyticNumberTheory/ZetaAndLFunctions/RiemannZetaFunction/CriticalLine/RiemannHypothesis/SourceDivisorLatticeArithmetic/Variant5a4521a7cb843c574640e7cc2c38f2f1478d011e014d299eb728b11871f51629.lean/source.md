# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceDivisorLatticeArithmetic.Variant5a4521a7cb843c574640e7cc2c38f2f1478d011e014d299eb728b11871f51629

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ca3172d96ac465d3e963531019f26a115a85a1b` · SHA-256 `5a4521a7cb843c574640e7cc2c38f2f1478d011e014d299eb728b11871f51629`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceDivisorLatticeClassifier
import FormalResearch.RiemannHypothesis.SourceDivisorLatticeKernel
import FormalResearch.PositiveAtlas.QuadraticDefect
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.NumberTheory.ArithmeticFunction.Moebius

/-!
# A negative mixed block of the literal arithmetic source

The short-divisor coefficient is expanded with its original plus centering.
The source is the repository's normalized explicit second derivative, with
original inverse-square-root coefficients and sum-log reflection kernel. The
review bridge proves equality with `weightedAtomInteraction` on the actual long
row. The negative 5,8 block retains the prime power 8 and the physical unequal
index deletion. It excludes unrestricted supermodular selection, and supplies
no upper bound on the complete signed source.

Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceDivisorLatticeArithmetic
open ArithmeticFunction SourcePairing SourceDivisorLatticeKernel
open SourceDivisorLatticeClassifier
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.PositiveAtlas
open scoped BigOperators

/-- The exact expanded coefficient, used only on the long row by its reviewed bridge. -/
def discrepancyCoefficient (U n : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * (1 / (d : ℝ) - if d ∣ n then 1 else 0)

/-- Literal expanded arithmetic atom, retaining both source shifts and root factors. -/
def expandedAtom (A : ℝ) (U m n : ℕ) : ℝ :=
  (vonMangoldt m * discrepancyCoefficient U n /
    (Real.sqrt (m : ℝ) * Real.sqrt (n : ℝ))) *
      sourceCorrelation explicitSecondDerivative A (Real.log (m : ℝ) + Real.log (n : ℝ))

/-- The exact open-closed inventory, with both natural floors. -/
def arithmeticInventory (A : ℝ) : Finset ℕ := Finset.Ioc ⌊A^2⌋₊ ⌊Real.exp (2*A)⌋₊

private theorem moebius_four : moebius 4 = 0 := by
  convert moebius_apply_prime_pow Nat.prime_two (by decide : (2 : ℕ) ≠ 0) using 1 <;> norm_num

/-- The actual centered coefficient of the prime 5 at scale two. -/
theorem discrepancyCoefficient_four_five : discrepancyCoefficient 4 5 = -5/6 := by
  rw [discrepancyCoefficient, show Finset.Icc 1 4 = {1, 2, 3, 4} by decide]
  norm_num [moebius_four, moebius_apply_prime Nat.prime_two,
    moebius_apply_prime Nat.prime_three]

/-- The higher prime power 8 has the opposite centered sign, without removing it. -/
theorem discrepancyCoefficient_four_eight : discrepancyCoefficient 4 8 = 1/6 := by
  rw [discrepancyCoefficient, show Finset.Icc 1 4 = {1, 2, 3, 4} by decide]
  norm_num [moebius_four, moebius_apply_prime Nat.prime_two,
    moebius_apply_prime Nat.prime_three]

/-- The source classifier genuinely places these actual atoms in different parity sectors. -/
theorem five_eight_patterns_distinct : divisorPattern {2} 5 ≠ divisorPattern {2} 8 := by
  intro h
  have hh := Finset.ext_iff.mp h 2
  norm_num [divisorPattern] at hh

/-- Both mixed atoms belong to the actual long inventory at scale two. -/
theorem five_eight_mem_actual_inventory : 5 ∈ arithmeticInventory 2 ∧ 8 ∈ arithmeticInventory 2 := by
  have hf : (8 : ℕ) ≤ ⌊Real.exp (2 * (2 : ℝ))⌋₊ := by
    apply Nat.le_floor
    have he : 40 < Real.exp 4 := (Real.log_lt_iff_lt_exp (by norm_num)).mp log_forty_bounds.2
    norm_num
    linarith
  norm_num [arithmeticInventory, Nat.floor_natCast]
  omega

private theorem mangoldt_eight : vonMangoldt 8 = Real.log 2 := by
  rw [show (8 : ℕ) = 2^3 by norm_num, vonMangoldt_apply_pow (by decide : (3 : ℕ) ≠ 0),
    vonMangoldt_apply_prime Nat.prime_two]

/-- The two directed physical mixed blocks combine with their exact signed coefficients. -/
theorem five_eight_mixed_identity :
    expandedAtom 2 4 5 8 + expandedAtom 2 4 8 5 =
      ((Real.log 5 - 5 * Real.log 2) /
        (6 * Real.sqrt 5 * Real.sqrt 8)) *
          sourceCorrelation explicitSecondDerivative 2 (Real.log 5 + Real.log 8) := by
  unfold expandedAtom
  rw [discrepancyCoefficient_four_eight, discrepancyCoefficient_four_five,
    vonMangoldt_apply_prime (by norm_num : Nat.Prime 5), mangoldt_eight]
  rw [show Real.log (8 : ℝ) + Real.log 5 = Real.log 5 + Real.log 8 by ring]
  ring

/-- The prime-power direction dominates with a negative sign in the genuine mixed block. -/
theorem five_eight_mixed_neg : expandedAtom 2 4 5 8 + expandedAtom 2 4 8 5 < 0 := by
  rw [five_eight_mixed_identity]
  have hl : Real.log 5 - 5 * Real.log 2 < 0 := by
    have h := Real.log_lt_log (by norm_num : (0 : ℝ) < 5) (by norm_num : (5 : ℝ) < 2^5)
    rw [Real.log_pow] at h
    norm_num at h
    linarith
  exact mul_neg_of_neg_of_pos (div_neg_of_neg_of_pos hl (by positivity))
    actual_five_eight_kernel_pos

/-- The physical Hermitian symmetrization keeps the actual unequal-index deletion. -/
def arithmeticMixedMatrix (A : ℝ) (U : ℕ) (I : Finset ℕ) : Matrix ↥I ↥I ℂ :=
  fun i j => if i = j then 0 else
    (((expandedAtom A U i j + expandedAtom A U j i) / 2 : ℝ) : ℂ)

/-- Hermiticity is supplied by the exact symmetrization, rather than a sign premise. -/
theorem arithmeticMixedMatrix_hermitian (A : ℝ) (U : ℕ) (I : Finset ℕ) :
    (arithmeticMixedMatrix A U I).IsHermitian := by
  ext i j
  simp only [Matrix.conjTranspose_apply, arithmeticMixedMatrix]
  by_cases h : i = j
  · simp [h]
  · have hj : j ≠ i := Ne.symm h
    simp only [h, hj, ↓reduceIte, Complex.star_def, Complex.conj_ofReal]
    congr 1
    ring

/-- Explicit actual long-row labels, carrying their original finite membership. -/
def fiveAtom : ↥(arithmeticInventory 2) := ⟨5, five_eight_mem_actual_inventory.1⟩

/-- The second actual atom is the higher prime power 8. -/
def eightAtom : ↥(arithmeticInventory 2) := ⟨8, five_eight_mem_actual_inventory.2⟩

/-- The negative cross block lies in the actual finite source inventory. -/
theorem actual_matrix_negative_cross :
    QuadraticDefect.cross (arithmeticMixedMatrix 2 4 (arithmeticInventory 2))
      ({fiveAtom} \ {eightAtom}) ({eightAtom} \ {fiveAtom}) < 0 := by
  have hne : fiveAtom ≠ eightAtom := by
    intro h
    have hn := congrArg Subtype.val h
    norm_num [fiveAtom, eightAtom] at hn
  simp only [Finset.sdiff_singleton_eq_erase, Finset.erase_singleton hne,
    Finset.erase_singleton (Ne.symm hne)]
  unfold QuadraticDefect.cross
  simp only [Finset.mem_singleton, Finset.sum_ite_irrel, Finset.sum_ite_eq', Finset.mem_univ,
    ↓reduceIte]
  simp [arithmeticMixedMatrix, hne, fiveAtom, eightAtom]
  linarith [five_eight_mixed_neg]

/-- Unrestricted maximal-defect selection fails for this literal source matrix. -/
theorem actual_matrix_not_supermodular :
    ¬ MaximalDefect.Supermodular
      (QuadraticDefect.value (arithmeticMixedMatrix 2 4 (arithmeticInventory 2))) :=
  QuadraticDefect.not_supermodular_of_negative_cross
    (arithmeticMixedMatrix_hermitian 2 4 (arithmeticInventory 2))
    {fiveAtom} {eightAtom} actual_matrix_negative_cross

end FormalResearch.RiemannHypothesis.SourceDivisorLatticeArithmetic
```
