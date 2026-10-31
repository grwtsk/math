/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvillePrimeDelayObstruction
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleGrowingPrimeBandIdentity
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory
open GRWTSK.NumberTheory.LiouvillePrimeDelayObstruction
open GRWTSK.NumberTheory.LiouvilleGrowingPrimeBandIdentity

/-!
# Signed prime-band contraction cannot center the exact residual

A proposed escape from the nonnegative prime-band obstruction is to allow
signed weights.  This source keeps the exact delayed Liouville-style identity
and separates three quantities:

* `bandMass`: the coefficient of the unshifted waveform;
* `signedBandRadius`: the absolute L2 delay-operator radius;
* `signedBandReciprocal`: the first-density correction in the finite-prime
  completely multiplicative countermodel.

The elementary scalar theorems prove that a contractive band cannot make the
countermodel residual mean vanish.  The companion review constructs the exact
finite-prime completely multiplicative source and proves that its unchanged
causal residual has positive exponential energy.

The countermodel is not the actual Liouville function and does not refute RH.
It eliminates a universal signed-weight contraction bootstrap based only on a
finite collection of exact prime delays.  No actual-Liouville cancellation or
uniform-energy theorem is asserted.
-/

namespace GRWTSK.NumberTheory.LiouvilleSignedPrimeBandContractionObstruction

/-- Absolute radius of the signed delayed operator on finite-horizon L2. -/
def signedBandRadius (P : Finset ℕ) (w : ℕ → ℝ) : ℝ :=
  ∑ p ∈ P, |w p| / Real.sqrt (p : ℝ)

/-- Reciprocal-density correction appearing in the finite-prime sign model. -/
def signedBandReciprocal (P : Finset ℕ) (w : ℕ → ℝ) : ℝ :=
  ∑ p ∈ P, w p / (p : ℝ)

/-- Euler mean of the completely multiplicative sign which is negative exactly
at the selected finite prime set. -/
def finitePrimeMeanConstant (P : Finset ℕ) : ℝ :=
  ∏ p ∈ P, ((p : ℝ) - 1) / ((p : ℝ) + 1)

/-- Mean factor of the exact residual `f(n) * (W - sum_{p|n} w_p)`. -/
def countermodelMeanFactor (P : Finset ℕ) (w : ℕ → ℝ) : ℝ :=
  bandMass P w + signedBandReciprocal P w

/-- The complete coefficient residual in the unchanged causal waveform. -/
def signedBandResidual
    (P : Finset ℕ) (w : ℕ → ℝ) (a : ℕ → ℝ) (n : ℕ) : ℝ :=
  a n * (bandMass P w - selectedDivisorWeight P w n)

/-- The elementary reciprocal/radius comparison.  The mathematically sharper
constant `1/sqrt 2` is recorded separately below. -/
def PrimeReciprocalRadiusBound : Prop :=
  ∀ (P : Finset ℕ) (w : ℕ → ℝ),
    (∀ p ∈ P, Nat.Prime p) →
      |signedBandReciprocal P w| ≤ signedBandRadius P w

/-- Sharp finite-prime comparison, using `p >= 2` term by term. -/
def SharpPrimeReciprocalRadiusBound : Prop :=
  ∀ (P : Finset ℕ) (w : ℕ → ℝ),
    (∀ p ∈ P, Nat.Prime p) →
      |signedBandReciprocal P w| ≤
        signedBandRadius P w / Real.sqrt 2

/-- A contractive delayed operator leaves a strictly positive countermodel
mean factor.  No positivity of the individual weights is assumed. -/
theorem countermodelMeanFactor_pos_of_contractive
    {P : Finset ℕ} {w : ℕ → ℝ}
    (hrecip : |signedBandReciprocal P w| ≤ signedBandRadius P w)
    (hW : 0 < bandMass P w)
    (hcontract : signedBandRadius P w < bandMass P w) :
    0 < countermodelMeanFactor P w := by
  have hq : -signedBandRadius P w ≤ signedBandReciprocal P w :=
    (abs_le.mp hrecip).1
  unfold countermodelMeanFactor
  linarith

/-- Exact centering forces loss of the strict contraction margin. -/
theorem centered_meanFactor_forces_no_contraction
    {P : Finset ℕ} {w : ℕ → ℝ}
    (hrecip : |signedBandReciprocal P w| ≤ signedBandRadius P w)
    (hcenter : countermodelMeanFactor P w = 0) :
    bandMass P w ≤ signedBandRadius P w := by
  have hq : -signedBandRadius P w ≤ signedBandReciprocal P w :=
    (abs_le.mp hrecip).1
  unfold countermodelMeanFactor at hcenter
  linarith

/-- The centering equation and a strict Neumann/contraction margin are
incompatible. -/
theorem contractive_signed_band_cannot_center
    {P : Finset ℕ} {w : ℕ → ℝ}
    (hrecip : |signedBandReciprocal P w| ≤ signedBandRadius P w)
    (hcontract : signedBandRadius P w < bandMass P w) :
    countermodelMeanFactor P w ≠ 0 := by
  intro hzero
  have hle := centered_meanFactor_forces_no_contraction hrecip hzero
  linarith

/-- The finite Euler mean is positive for a genuine finite prime set. -/
theorem finitePrimeMeanConstant_pos
    {P : Finset ℕ} (hP : ∀ p ∈ P, Nat.Prime p) :
    0 < finitePrimeMeanConstant P := by
  unfold finitePrimeMeanConstant
  apply Finset.prod_pos
  intro p hp
  have hp2 : 2 ≤ p := (hP p hp).two_le
  have hpR : (1 : ℝ) < (p : ℝ) := by exact_mod_cast (lt_of_lt_of_le Nat.one_lt_two hp2)
  exact div_pos (sub_pos.mpr hpR) (by positivity)

/-- Positive residual mean once the reciprocal comparison and contraction
margin are available. -/
theorem countermodelResidualMean_pos
    {P : Finset ℕ} {w : ℕ → ℝ}
    (hP : ∀ p ∈ P, Nat.Prime p)
    (hrecip : |signedBandReciprocal P w| ≤ signedBandRadius P w)
    (hW : 0 < bandMass P w)
    (hcontract : signedBandRadius P w < bandMass P w) :
    0 < finitePrimeMeanConstant P * countermodelMeanFactor P w := by
  exact mul_pos (finitePrimeMeanConstant_pos hP)
    (countermodelMeanFactor_pos_of_contractive hrecip hW hcontract)

/-- Exact prefix identity for the finite-prime countermodel.  This is a named
formalization target: the companion review proves it by reindexing multiples
of each selected prime and using `f(p*n) = -f(n)`. -/
def FinitePrimeResidualPrefixIdentity : Prop :=
  ∀ (P : Finset ℕ) (w : ℕ → ℝ),
    (∀ p ∈ P, Nat.Prime p) →
    ∃ a : ℕ → ℝ,
      ExactPrimeDelaysOn a (↑P : Set ℕ) ∧
      ∀ x : ℕ,
        (∑ n ∈ Finset.Icc 1 x, signedBandResidual P w a n) =
          bandMass P w * (∑ n ∈ Finset.Icc 1 x, a n) +
            ∑ p ∈ P, w p *
              (∑ n ∈ Finset.Icc 1 (x / p), a n)

/-- Complete programme-specific obstruction proved analytically in the review.
For every contractive signed finite prime band, an arithmetic-realizable source
satisfies every selected exact negative delay while its exact residual has a
positive linear mean and positive exponential causal energy. -/
def ContractiveSignedBandResidualEnergyObstruction : Prop :=
  ∀ (P : Finset ℕ) (w : ℕ → ℝ),
    (∀ p ∈ P, Nat.Prime p) →
    0 < bandMass P w →
    signedBandRadius P w < bandMass P w →
      ∃ a : ℕ → ℝ,
        ExactPrimeDelaysOn a (↑P : Set ℕ) ∧
        PositiveMeanWithPowerError (signedBandResidual P w a) (1 / 4 : ℝ) ∧
        ExponentialCausalEnergyLowerBound (signedBandResidual P w a)

/-- Source disposition.  Proving the actual uniform-energy target still
requires arithmetic information beyond every finite signed contractive band. -/
def SignedPrimeBandContractionDisposition : Prop :=
  PrimeReciprocalRadiusBound ∧
    SharpPrimeReciprocalRadiusBound ∧
      FinitePrimeResidualPrefixIdentity ∧
        ContractiveSignedBandResidualEnergyObstruction

end GRWTSK.NumberTheory.LiouvilleSignedPrimeBandContractionObstruction
