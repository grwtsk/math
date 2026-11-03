/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionLocalEuler
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalGramCauchy
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# Complex Hermitian physical-time Möbius response for L-function families

For a normalized coefficient family a_L, let mu_L=a_L^(-1)
be the ACTUAL Dirichlet inverse, not the original real mu.
The cumulative prefix is M_L(x)=sum_(n<=x)mu_L(n).
Define
  v_L(u)=exp(-u/2)*M_L(exp u),
  W_L(T)=integral_0^T v_L(u)du,
  E_L(T)=integral_0^T |W_L(u)|^2 du.

For any finite original endpoint inventory use the SAME original
birth-gated pickupResponse n u, weighted by the new complex mu_L(n).
The right L-family Gram is HERMITIAN:
  mu_L(m)*conj(mu_L(n))*pickupResponseGram(T,m,n),
NOT mu_L(m)*mu_L(n) for non-real Dirichlet characters.
The full ordered Hermitian sum is real and nonnegative
mathematically because it is a squared-response integral.

The finite-square/integral identity and the reconstruction
from the ORIGINAL integrated Mertens-family prefix are marked
as separate explicit unproved Lean interfaces, even though
the underlying finite algebra is elementary.

IMPORTANT: the old source absolute/high-gcd bill 16*T*N/D
uses |mu(n)|<=1. It does NOT automatically hold for
elliptic, Artin, modular or product L-series coefficients.
The family coefficient majorant and analytic zero-free return
therefore remain explicit family-specific targets.
No global GRH/RH implication is claimed here.
-/

namespace GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionLocalEuler
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII

/-- Actual finite prefix of the family's own reciprocal Dirichlet
coefficients. ζ recovers the original real Möbius prefix after
the separately required real-to-complex source identification. -/
def familyMobiusPrefix (F : NormalizedCoefficients) (x : ℝ) : ℂ :=
  ∑ n ∈ Finset.Icc 1 ⌊x⌋₊, F.mobius n

def familyPickupVelocity (F : NormalizedCoefficients) (u : ℝ) : ℂ :=
  (Real.exp (-u/2) : ℂ) * familyMobiusPrefix F (Real.exp u)

def familyWholePickup (F : NormalizedCoefficients) (T : ℝ) : ℂ :=
  ∫ u in (0 : ℝ)..T, familyPickupVelocity F u

/-- Genuine nonnegative complex-square cumulative energy. -/
def familyCumulativeEnergy (F : NormalizedCoefficients) (T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, ‖familyWholePickup F u‖^2

theorem familyCumulativeEnergy_nonneg
    (F : NormalizedCoefficients) {T : ℝ} (hT : 0 ≤ T) :
    0 ≤ familyCumulativeEnergy F T := by
  unfold familyCumulativeEnergy
  exact intervalIntegral.integral_nonneg hT
    (fun u _ => sq_nonneg (‖familyWholePickup F u‖))

/-- Same ORIGINAL finite endpoint inventory and real causal response,
with only the true generalized Möbius coefficient replaced. -/
def familyFiniteResponse
    (F : NormalizedCoefficients) (T u : ℝ) : ℂ :=
  ∑ n ∈ endpointIndex T, F.mobius n * (pickupResponse n u : ℂ)

def familyFiniteResponseEnergy
    (F : NormalizedCoefficients) (T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, ‖familyFiniteResponse F T u‖^2

theorem familyFiniteResponseEnergy_nonneg
    (F : NormalizedCoefficients) {T : ℝ} (hT : 0 ≤ T) :
    0 ≤ familyFiniteResponseEnergy F T := by
  unfold familyFiniteResponseEnergy
  exact intervalIntegral.integral_nonneg hT
    (fun u _ => sq_nonneg (‖familyFiniteResponse F T u‖))

/-- Complex Hermitian coefficient, not an un-conjugated product.
The original real causal Gram is kept completely unchanged. -/
def familyHermitianKernel (F : NormalizedCoefficients)
    (T : ℝ) (m n : ℕ) : ℂ :=
  F.mobius m * star (F.mobius n) *
    (pickupResponseGram T m n : ℂ)

/-- The full ordered original response Gram in ℂ. Its real part
is the nonnegative square energy after finite Gram closure. -/
def familyFullGram (F : NormalizedCoefficients) (T : ℝ) : ℂ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    familyHermitianKernel F T m n

/-- One-sided L-family diagonal: the original TRUE source diagonal
is weighted by the squared magnitude of the family coefficients. -/
def familyDiagonal (F : NormalizedCoefficients) (T : ℝ) : ℝ :=
  ∑ n ∈ endpointIndex T,
    (‖F.mobius n‖^2)*pickupResponseGram T n n

/-- The unordered positive amount is NOT a signed source. This
definition keeps both original orders and removes the diagonal. -/
def familyCross (F : NormalizedCoefficients) (T : ℝ) : ℝ :=
  (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n then familyHermitianKernel F T m n else 0).re

/-- Fixed family low-gcd source, retaining the original gcd only
and the correctly conjugated complex character coefficients. -/
def familyLowGcdCross
    (F : NormalizedCoefficients) (D : ℕ) (T : ℝ) : ℝ :=
  (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ Nat.gcd m n ≤ D
    then familyHermitianKernel F T m n else 0).re

/-- Absolute family weight is a GENUINE family-dependent input.
It is <=1 for degree-one Dirichlet-character reciprocals;
NOT generally for products or normalized GL2 Euler factors. -/
def familyCoefficientRootMass
    (F : NormalizedCoefficients) (T : ℝ) : ℝ :=
  ∑ n ∈ endpointIndex T,
    ‖F.mobius n‖ * (Real.sqrt (n : ℝ))⁻¹

/-- Explicit source-level finite square-integral identity to
verify in pinned Lean for the complex Hermitian family.
The previous real finite-gram proof is not type-correct when
the coefficient has an imaginary part without conjugation. -/
def FamilyHermitianFiniteGramTarget : Prop :=
  ∀ (F : NormalizedCoefficients) (T : ℝ), 0 ≤ T →
    (familyFullGram F T).re = familyFiniteResponseEnergy F T

/-- Causal reconstruction from the ACTUAL family prefix and
the already defined real birth gate. This is independent of
Euler factorization but needs its own finite-integral proof. -/
def FamilyPrefixResponseReconstructionTarget : Prop :=
  ∀ (F : NormalizedCoefficients) (T u : ℝ),
    0 ≤ u → u ≤ T →
    familyWholePickup F u = familyFiniteResponse F T u

/-- Actual positive weighted high-gcd original-source cost.
This has the true family-dependent coefficient magnitudes. -/
def familyWeightedHighGcdCost
    (F : NormalizedCoefficients) (D : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ D < Nat.gcd m n
    then ‖F.mobius m‖ * ‖F.mobius n‖ *
      |pickupResponseGram T m n|
    else 0

/-- Meaningful SOURCE-specific requested envelope. The positive
cost must satisfy the SUPPLIED bound, not merely have some
finite unspecified B (which would be vacuous). -/
def FamilyWeightedHighGcdTailTarget
    (F : NormalizedCoefficients) (bill : ℕ → ℝ → ℝ) : Prop :=
  ∀ (D : ℕ) (T : ℝ), 0 ≤ T → 1 ≤ D →
    familyWeightedHighGcdCost F D T ≤ bill D T

/-- The actual all-positive-rate requirement at one chosen fixed
cutoff. For non-Dirichlet families this requires new coefficient
majorants; it is NOT inherited from the ordinary Mobius bound. -/
def FamilyWeightedHighGcdEveryRate
    (F : NormalizedCoefficients) (cutoff : ℝ → ℕ) : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
      ∀ T : ℝ, R ≤ T →
        familyWeightedHighGcdCost F (cutoff T) T ≤
          C*Real.exp (ε*T)

/-- The correct missing arithmetic input for each family must
bound its own signed HERMITIAN low-gcd packet on fixed scales.
This is not implied by the ordinary RH proof candidate. -/
def FamilyLowGcdEveryRateDyadic
    (F : NormalizedCoefficients) (cutoff : ℝ → ℕ) : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
      familyLowGcdCross F (cutoff ((j : ℝ)*Real.log 2))
        ((j : ℝ)*Real.log 2) ≤
      C*Real.exp (ε*((j : ℝ)*Real.log 2))

/-- Family analytic return needs the actual analytic continuation,
functional equation, pole removal, gamma factors and zero definition.
No zero claim is built into the coefficient model. -/
structure FamilyAnalyticInterface (F : NormalizedCoefficients) where
  continuedL : ℂ → ℂ
  completedL : ℂ → ℂ
  conductor : ℝ
  conductor_pos : 0 < conductor
  /-- Center in the CURRENT chosen analytic s-variable.
  Ordinary zeta/Dirichlet center at 1/2; classical elliptic
  L(E,s) centers at 1 and its unitary translate at 1/2. -/
  centerLine : ℝ
  continued_matches_series :
    ∀ s : ℂ, 1 < s.re → continuedL s = F.rawLSeries s
  zeroSet : Set ℂ
  zeroSet_correct : ∀ s : ℂ, s ∈ zeroSet ↔ continuedL s = 0
  /- Conductor, completion and zero set are not enough to
     deduce any symmetric functional equation or GRH. -/

/-- The critical line is parameterized by the ACTUAL
analytic normalization. For the unitary variable centerLine=1/2
this is the familiar 0<Re(s)<1 strip; for classical elliptic
L(E,s) centerLine=1 and the corresponding strip is (1/2,3/2).
No family-specific zero theorem is inserted into this definition. -/
def FamilyCriticalLineZeroTarget
    (F : NormalizedCoefficients)
    (A : FamilyAnalyticInterface F) : Prop :=
  ∀ s : ℂ, s ∈ A.zeroSet →
    A.centerLine - 1/2 < s.re →
      s.re < A.centerLine + 1/2 →
        s.re = A.centerLine

end GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
