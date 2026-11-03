/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.IntegerPoissonZeroFrame.ArithmeticCertificates
import Mathlib

/-! # P-adic prime-window consumers of the integer Poisson frame -/

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

def primeWindowFamilyEnergy
    (Z : ℕ) (X H : ℕ → ℕ) : ℝ :=
  ∑ k ∈ Finset.range (Z + 1),
    primeWindowResidual (X k) (H k) ^ 2

/-- Energy of the corresponding centered p-adic large-prime packets. -/
def centeredPacketFamilyEnergy
    (Z : ℕ) (X H : ℕ → ℕ)
    (u v : ℕ → ℕ → ℝ) : ℝ :=
  ∑ k ∈ Finset.range (Z + 1),
    centeredLargePrimePacket (X k) (H k) (u k) (v k) ^ 2

/-- Exact family reconstruction: the literal prime-window energy is four
times the complete centered rough-prime packet energy. -/
theorem primeWindowFamilyEnergy_eq_four_centered
    (Z : ℕ) (X H : ℕ → ℕ) (u v : ℕ → ℕ → ℝ)
    (hsource : ∀ k ∈ Finset.range (Z + 1),
      pntWindow (X k) (H k) =
        divisorLogWindow (X k) (H k)
          (fun n => u k n - 2 * v k n)) :
    primeWindowFamilyEnergy Z X H =
      4 * centeredPacketFamilyEnergy Z X H u v := by
  unfold primeWindowFamilyEnergy centeredPacketFamilyEnergy
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro k hk
  exact primeWindowResidual_sq_eq_four_centered
    (X k) (H k) (u k) (v k) (hsource k hk)

/-- Source-preserving p-adic specialization.  The zero-side lower frame is
now a theorem.  The comparison from the finite Poisson zero energy to this
particular prime-window family, and the centered arithmetic upper bound,
remain explicit premises. -/
def PadicPrimeWindowPoissonCertificateAt
    (Z : ℕ) (known : Finset ZeroPoint)
    (X H : ℕ → ℕ) (u v : ℕ → ℕ → ℝ) : Prop :=
  known ⊆ positiveHeightHead (Z : ℝ) ∧
    (∀ z ∈ known, z.1.re = 1 / 2) ∧
    positiveHeightCount (Z : ℝ) =
      mass known multiplicity + unknownMultiplicityDeficit Z known ∧
    (∀ k ∈ Finset.range (Z + 1),
      pntWindow (X k) (H k) =
        divisorLogWindow (X k) (H k)
          (fun n => u k n - 2 * v k n)) ∧
    integerPoissonEnergy Z known ≤ primeWindowFamilyEnergy Z X H ∧
    centeredPacketFamilyEnergy Z X H u v < (32 / 289 : ℝ)

theorem padicPrimeWindowPoissonCertificateAt_to_oneUnit
    (Z : ℕ) (known : Finset ZeroPoint)
    (X H : ℕ → ℕ) (u v : ℕ → ℕ → ℝ)
    (hcert : PadicPrimeWindowPoissonCertificateAt Z known X H u v) :
    positiveHeightCount (Z : ℝ) ≤ mass known multiplicity + 1 := by
  rcases hcert with
    ⟨hsub, hline, hcount, hsource, hdom, hcenter⟩
  have henergy :=
    primeWindowFamilyEnergy_eq_four_centered Z X H u v hsource
  have hsmall : primeWindowFamilyEnergy Z X H < (128 / 289 : ℝ) := by
    rw [henergy]
    nlinarith
  exact integerPoissonArithmeticCertificateAt_to_oneUnit
    Z known (fun k => primeWindowResidual (X k) (H k))
    ⟨hsub, hline, hcount, hdom, by
      simpa [arithmeticSampleEnergy, primeWindowFamilyEnergy] using hsmall⟩

def CofinalPadicPrimeWindowPoissonCertificate : Prop :=
  ∀ B : ℕ, ∃ (Z : ℕ) (known : Finset ZeroPoint)
      (X H : ℕ → ℕ) (u v : ℕ → ℕ → ℝ),
    B ≤ Z ∧ PadicPrimeWindowPoissonCertificateAt Z known X H u v

theorem riemannHypothesis_of_cofinalPadicPrimeWindowPoisson
    (h : CofinalPadicPrimeWindowPoissonCertificate) :
    _root_.RiemannHypothesis := by
  apply absolute_one_unit_iff_riemannHypothesis.mp
  intro B
  obtain ⟨Z, known, X, H, u, v, hBZ, hcert⟩ := h B
  rcases hcert with
    ⟨hsub, hline, hcount, hsource, hdom, hcenter⟩
  refine ⟨Z, hBZ, known, hsub, hline, ?_⟩
  exact padicPrimeWindowPoissonCertificateAt_to_oneUnit
    Z known X H u v
    ⟨hsub, hline, hcount, hsource, hdom, hcenter⟩


end GRWTSK.RiemannHypothesis.IntegerPoissonZeroFrame
