/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointGramYoungClosure
import Mathlib

/-!
# Quadratic sparse-gap endpoint transfer with exact dense signed complement

The complete Möbius endpoint packet and its literal Gram are unchanged.
The numerical diagonal bound is an explicitly named input, because the
inspected MertensPrimitive.cross_poly_iff_energy_poly source also takes it
as a hypothesis. This file does not claim to have kernel-verified it.

Every-positive-rate sparse-family control is obtained by an explicit
half-exponent split, retaining the complete signed complementary packet.
No independent dense-core arithmetic gain or RH theorem is asserted.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.MoebiusEndpointGramYoungClosure
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.LiouvilleRoughSignedConsumerTransfer

namespace GRWTSK.NumberTheory.MoebiusEndpointSparseGapAllRate

/-- Exact source-identified numerical diagonal supplier, not a hidden axiom.
MertensPrimitive currently uses this estimate as hdiagonal. -/
def OriginalDiagonalQuadraticUpper : Prop :=
  ∀ T : ℝ, 0 ≤ T → pickupDiagonal T ≤ 2 * T ^ 2

/-- Close the predecessor PutnamGapQuadraticBound once the precise
original-diagonal inequality is supplied. The rest is the actual
Gram-Young and degree-counting source proof, not an additional premise. -/
theorem putnamGapQuadraticBound_of_diagonal
    (hdiag : OriginalDiagonalQuadraticUpper) :
    PutnamGapQuadraticBound := by
  intro _
  intro A T hT
  have hpair := putnamGapEnergyBound
    (endpointMobiusGramYoung) (gapSetNeighbourCount)
    A T hT
  have hd := hdiag T hT
  have hcard : 0 ≤ (A.card : ℝ) := Nat.cast_nonneg _
  nlinarith [mul_nonneg hcard (sub_nonneg.mpr hd)]

/-- Every-positive-rate quantitative cardinality criterion for a
predetermined, arbitrary finite family of additive distance sets.
The constants at rate δ are uniform over T, but the actual sets can be
noncontiguous and depend on time. -/
def SubexponentialGapCardinality (A : ℝ → Finset ℕ) : Prop :=
  ∀ δ : ℝ, 0 < δ →
    ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
      ∀ T : ℝ, R ≤ T →
        (A T).card ≤ C * Real.exp (δ * T)

/-- The elementary polynomial/half-rate cost, stated explicitly until
its exact pinned Mathlib exponential proof is elaborated. This supplier
contains no arithmetic coefficients or signed covariance. -/
def QuadraticExponentialAbsorption : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ K : ℝ, 0 ≤ K ∧
      ∀ T : ℝ, 0 ≤ T →
        T ^ 2 ≤ K * Real.exp ((ε / 2) * T)

/-- The actual signed endpoint packet of arbitrary sparse gap families is
subexponential, conditional only on the already isolated diagonal and
elementary polynomial-absorption interfaces. No dense pair is estimated. -/
theorem sparse_family_endpoint_allRate
    (A : ℝ → Finset ℕ)
    (hcard : SubexponentialGapCardinality A)
    (hdiag : OriginalDiagonalQuadraticUpper)
    (hpoly : QuadraticExponentialAbsorption) :
    EventualAllRateUpper
      (fun T : ℝ => |endpointGapSetCross (A T) T|) := by
  intro ε hε
  have hhalf : 0 < ε / 2 := by linarith
  obtain ⟨C, R, hC, hR, hcardT⟩ := hcard (ε / 2) hhalf
  obtain ⟨K, hK, hpolyT⟩ := hpoly ε hε
  refine ⟨4 * C * K, R, by positivity, hR, ?_⟩
  intro T hT
  have hT0 : 0 ≤ T := le_trans hR hT
  have hg := (putnamGapQuadraticBound_of_diagonal hdiag)
    (putnamGapEnergyBound) (A T) T hT0
  have hc := hcardT T hT
  have hp := hpolyT T hT0
  have he : 0 ≤ Real.exp ((ε / 2) * T) := (Real.exp_pos _).le
  have hbase : ε * T = (ε / 2) * T + (ε / 2) * T := by ring
  rw [hbase, Real.exp_add]
  have hm : (A T).card * T ^ 2 ≤
      C * Real.exp ((ε / 2) * T) *
        (K * Real.exp ((ε / 2) * T)) :=
    mul_le_mul (by exact_mod_cast hc) hp (sq_nonneg _) (by positivity)
  nlinarith [hm]

/-- The dense signed complementary packet is defined by exact subtraction.
No absolute value or supremum is imposed on the complement. -/
def signedGapComplement (A : Finset ℕ) (T : ℝ) : ℝ :=
  pickupCross T - endpointGapSetCross A T

theorem pickupCross_eq_sparse_add_signedComplement
    (A : Finset ℕ) (T : ℝ) :
    pickupCross T = endpointGapSetCross A T + signedGapComplement A T := by
  unfold signedGapComplement
  ring

/-- The exact endpoint comparison leaves the dense signed complement
unestimated. It is the remaining arithmetic obligation. -/
theorem endpointSum_le_sparse_and_signedComplement
    (A : Finset ℕ) (T : ℝ) (hT : 0 ≤ T) :
    endpointSum T ≤
      |endpointGapSetCross A T| +
      signedGapComplement A T + 1 / 4 := by
  have he := (abs_le.mp (endpointSum_error hT)).2
  rw [pickupCross_eq_sparse_add_signedComplement A T] at he
  exact le_trans he (by linarith [le_abs_self (endpointGapSetCross A T)])

end GRWTSK.NumberTheory.MoebiusEndpointSparseGapAllRate
