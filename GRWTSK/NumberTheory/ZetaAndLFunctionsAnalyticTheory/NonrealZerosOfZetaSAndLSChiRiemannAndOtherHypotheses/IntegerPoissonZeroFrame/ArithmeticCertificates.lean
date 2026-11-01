/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.IntegerPoissonZeroFrame.NearestFrame
import Mathlib

/-! # Arithmetic consumers of the integer Poisson frame -/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.IntegerPoissonZeroFrame

open CanonicalZeroDivisor
open PositiveHeightCountDeficit
open CofinalTwoUnitEffectiveRateBridge
open GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedPairBudget
open GRWTSK.NumberTheory.PadicMobiusPrimeWindowSeam
open PadicMobiusCofinalTwoUnitBridge

/-- Squared energy of an arbitrary arithmetic sample family on the same grid. -/
def arithmeticSampleEnergy (Z : ℕ) (sample : ℕ → ℝ) : ℝ :=
  ∑ k ∈ Finset.range (Z + 1), sample k ^ 2

/-- Once an arithmetic family dominates the zero samples, energy below
`128/289` has absolute one-zero resolution. -/
theorem unknownDeficit_le_one_of_dominated_energy
    (Z : ℕ) (known : Finset ZeroPoint) (sample : ℕ → ℝ)
    (hdom : integerPoissonEnergy Z known ≤ arithmeticSampleEnergy Z sample)
    (hsmall : arithmeticSampleEnergy Z sample < (128 / 289 : ℝ)) :
    unknownMultiplicityDeficit Z known ≤ 1 := by
  have hframe := integerPoisson_zero_side_lower_frame_nearest Z known
  have hdom289 := mul_le_mul_of_nonneg_left hdom (by norm_num : (0 : ℝ) ≤ 289)
  have hlt : (unknownMultiplicityDeficit Z known : ℝ) < 2 := by
    nlinarith
  have hltNat : unknownMultiplicityDeficit Z known < 2 := by
    exact_mod_cast hlt
  omega

/-- Finite exact certificate separating the now-proved zero frame from the
still-independent zero-to-arithmetic comparison and arithmetic upper bound. -/
def IntegerPoissonArithmeticCertificateAt
    (Z : ℕ) (known : Finset ZeroPoint) (sample : ℕ → ℝ) : Prop :=
  known ⊆ positiveHeightHead (Z : ℝ) ∧
    (∀ z ∈ known, z.1.re = 1 / 2) ∧
    positiveHeightCount (Z : ℝ) =
      mass known multiplicity + unknownMultiplicityDeficit Z known ∧
    integerPoissonEnergy Z known ≤ arithmeticSampleEnergy Z sample ∧
    arithmeticSampleEnergy Z sample < (128 / 289 : ℝ)

theorem integerPoissonArithmeticCertificateAt_to_oneUnit
    (Z : ℕ) (known : Finset ZeroPoint) (sample : ℕ → ℝ)
    (hcert : IntegerPoissonArithmeticCertificateAt Z known sample) :
    positiveHeightCount (Z : ℝ) ≤ mass known multiplicity + 1 := by
  rcases hcert with ⟨_hsub, _hline, hcount, hdom, hsmall⟩
  have hdef := unknownDeficit_le_one_of_dominated_energy
    Z known sample hdom hsmall
  rw [hcount]
  omega

def CofinalIntegerPoissonArithmeticCertificate : Prop :=
  ∀ B : ℕ, ∃ (Z : ℕ) (known : Finset ZeroPoint) (sample : ℕ → ℝ),
    B ≤ Z ∧ IntegerPoissonArithmeticCertificateAt Z known sample

theorem cofinalAbsoluteOneUnit_of_integerPoissonArithmetic
    (h : CofinalIntegerPoissonArithmeticCertificate) :
    CofinalAbsoluteOneUnitResidual := by
  intro B
  obtain ⟨Z, known, sample, hBZ, hcert⟩ := h B
  rcases hcert with ⟨hsub, hline, hcount, hdom, hsmall⟩
  refine ⟨Z, hBZ, known, hsub, hline, ?_⟩
  exact integerPoissonArithmeticCertificateAt_to_oneUnit
    Z known sample ⟨hsub, hline, hcount, hdom, hsmall⟩

theorem riemannHypothesis_of_cofinalIntegerPoissonArithmetic
    (h : CofinalIntegerPoissonArithmeticCertificate) :
    _root_.RiemannHypothesis :=
  absolute_one_unit_iff_riemannHypothesis.mp
    (cofinalAbsoluteOneUnit_of_integerPoissonArithmetic h)

/-- Energy of a finite family of literal prime-window residuals. -/

end GRWTSK.RiemannHypothesis.IntegerPoissonZeroFrame
