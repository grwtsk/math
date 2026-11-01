/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticPrimeResidueIntegralVariableChangePort
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEllipticFiberKernelComparison
import Mathlib.Tactic

/-!
# Exact invariance of the ORIGINAL Möbius/elliptic signed packet under
# every integral admissible Weierstrass model change

The source is the existing genuine GoodPrimeBank and original endpointIndex,
firstSelectedDivisor, pickupCross and fullSignedResidual. An integral
admissible Mathlib VariableChange transports the ENTIRE finite certified bank
to a bank for the transformed integral model. It preserves the selected
prime set, literal source-integer tags, every selected certified trace, the
full ordered matched elliptic packet and the signed original-minus-elliptic
kernel defect, not just an unsigned positive Gram.

Consequently reparametrizing the elliptic fibers by these integral changes
does not improve the unsupplied signed residual and cannot be counted as
new arithmetic cancellation. The genuine original signed endpoint
remains EXACTLY the same source, including rough/mixed and quarter-unit
boundary sectors.

The first RH-strength independent supplier is still an unconditional
all-positive-rate bound for the full signed source. This file proves
no such estimate and does not identify elliptic L zeros with zeta zeros.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.EllipticIntegralChangeInvariance

open GRWTSK.NumberTheory.OrderedPrimeGroupAddress
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueFiberPort
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueIntegralVariableChangePort
open GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison

/-- Every ORIGINAL good-prime certificate is transported, with the same
prime support, bound, point count and certified good reduction. There is
no free target trace or new prime-coverage hypothesis. -/
def transportedGoodPrimeBank
    {W : WeierstrassCurve ℤ}
    (C : WeierstrassCurve.VariableChange ℤ)
    (B : GoodPrimeBank W) : GoodPrimeBank (C • W) where
  primes := B.primes
  bound := B.bound
  within := B.within
  certificate p hp :=
    integralVariableChangeCertificate C
      { certificate := B.certificate p hp
        source_eq := B.model_eq p hp
        residue := 0
        exponent := 0 }
  model_eq := by
    intro p hp
    rfl

@[simp]
theorem transported_support
    {W : WeierstrassCurve ℤ}
    (C : WeierstrassCurve.VariableChange ℤ)
    (B : GoodPrimeBank W) :
    (transportedGoodPrimeBank C B).support = B.support := rfl

@[simp]
theorem transported_tag
    {W : WeierstrassCurve ℤ}
    (C : WeierstrassCurve.VariableChange ℤ)
    (B : GoodPrimeBank W) (m : ℕ) :
    (transportedGoodPrimeBank C B).tag m = B.tag m := rfl

/-- Thus every exact ORIGINAL matched/unmatched integer index and its
least-selected-prime tag is unchanged by the curve-coordinate change. -/
@[simp]
theorem transported_matched
    {W : WeierstrassCurve ℤ}
    (C : WeierstrassCurve.VariableChange ℤ)
    (B : GoodPrimeBank W) (T : ℝ) :
    (transportedGoodPrimeBank C B).matched T = B.matched T := by
  simp [GoodPrimeBank.matched, transported_tag]

@[simp]
theorem transported_unmatched
    {W : WeierstrassCurve ℤ}
    (C : WeierstrassCurve.VariableChange ℤ)
    (B : GoodPrimeBank W) (T : ℝ) :
    (transportedGoodPrimeBank C B).unmatched T = B.unmatched T := by
  simp [GoodPrimeBank.unmatched, transported_tag]

/-- The certified selected prime itself is uniquely determined by its
numerical value, even if dependent proofs and classical choices differ. -/
theorem transported_selectedPrime
    {W : WeierstrassCurve ℤ}
    (C : WeierstrassCurve.VariableChange ℤ)
    (B : GoodPrimeBank W) (m : ℕ)
    (h : B.tag m ≠ 0) :
    (transportedGoodPrimeBank C B).selectedPrime m
      (by simpa only [transported_tag] using h) =
      B.selectedPrime m h := by
  apply Subtype.ext
  exact ((transportedGoodPrimeBank C B).selectedPrime_val m
    (by simpa only [transported_tag] using h)).trans
      (B.selectedPrime_val m h).symm

/-- The genuine assigned Frobenius trace of every original integer m is
unchanged, including the zero readout for an unmatched original source. -/
theorem assignedTrace_transport
    {W : WeierstrassCurve ℤ}
    (C : WeierstrassCurve.VariableChange ℤ)
    (B : GoodPrimeBank W) (m : ℕ) :
    assignedTrace (transportedGoodPrimeBank C B) m = assignedTrace B m := by
  classical
  by_cases h : B.tag m = 0
  · have ht : (transportedGoodPrimeBank C B).tag m = 0 := by
      simpa only [transported_tag] using h
    rw [assignedTrace_zero_of_unmatched _ m ht,
      assignedTrace_zero_of_unmatched B m h]
  · have ht : (transportedGoodPrimeBank C B).tag m ≠ 0 := by
      simpa only [transported_tag] using h
    rw [assignedTrace_of_matched _ m ht, assignedTrace_of_matched B m h]
    have hp : (transportedGoodPrimeBank C B).selectedPrime m ht =
        B.selectedPrime m h :=
      transported_selectedPrime C B m h
    simp only [GoodPrimeBank.channel, trace, pointCount]
    simp [transportedGoodPrimeBank, integralVariableChangeCertificate, hp]

/-- The real rank-one elliptic readout of every ORIGINAL ordered integer
pair is invariant, with the original signed product orientation retained. -/
theorem ellipticKernel_transport
    {W : WeierstrassCurve ℤ}
    (C : WeierstrassCurve.VariableChange ℤ)
    (B : GoodPrimeBank W) (m n : ℕ) :
    ellipticKernel (transportedGoodPrimeBank C B) m n =
      ellipticKernel B m n := by
  rw [ellipticKernel_eq_mul_assigned,
    ellipticKernel_eq_mul_assigned,
    assignedTrace_transport C B m,
    assignedTrace_transport C B n]

/-- Complete matched trace packet: same source-integer inventory, both
orientations, diagonal exclusion and signed trace correlations. -/
theorem matchedEllipticPacket_transport
    {W : WeierstrassCurve ℤ}
    (C : WeierstrassCurve.VariableChange ℤ)
    (B : GoodPrimeBank W) (T : ℝ) :
    matchedEllipticPacket (transportedGoodPrimeBank C B) T =
      matchedEllipticPacket B T := by
  rw [matchedEllipticPacket_eq_square_sub_diagonal,
      matchedEllipticPacket_eq_square_sub_diagonal]
  simp only [assignedTrace_transport C B]

/-- The ORIGINAL signed Möbius kernel minus the transported elliptic
trace kernel remains equal term by term. In particular no squareful
or exceptional pair defect is made small by changing elliptic coordinates. -/
theorem signedDefect_transport
    {W : WeierstrassCurve ℤ}
    (C : WeierstrassCurve.VariableChange ℤ)
    (B : GoodPrimeBank W) (T : ℝ) :
    matchedSignedDefect (transportedGoodPrimeBank C B) T =
      matchedSignedDefect B T := by
  unfold matchedSignedDefect
  simp only [transported_tag, ellipticKernel_transport]

/-- All unmatched/rough, two mixed orientations and signed kernel defects
are EXACTLY retained. The original RH endpoint is unchanged. -/
theorem fullSignedResidual_transport
    {W : WeierstrassCurve ℤ}
    (C : WeierstrassCurve.VariableChange ℤ)
    (B : GoodPrimeBank W) (T : ℝ) :
    fullSignedResidual (transportedGoodPrimeBank C B) T =
      fullSignedResidual B T := by
  unfold fullSignedResidual
  simp only [transported_support, signedDefect_transport C B T]

/-- The entire ORIGINAL Möbius endpoint decomposition is invariant under
the actual integral elliptic curve change. This is a rigorous obstruction
to deriving new arithmetic cancellation from coordinate invariance alone. -/
theorem signedEndpoint_decomposition_invariant
    {W : WeierstrassCurve ℤ}
    (C : WeierstrassCurve.VariableChange ℤ)
    (B : GoodPrimeBank W) (T : ℝ) :
    matchedEllipticPacket (transportedGoodPrimeBank C B) T +
        fullSignedResidual (transportedGoodPrimeBank C B) T +
          signedEndpointCorrection T =
      matchedEllipticPacket B T + fullSignedResidual B T +
        signedEndpointCorrection T := by
  rw [matchedEllipticPacket_transport C B T,
      fullSignedResidual_transport C B T]

end GRWTSK.NumberTheory.Moebius.EllipticIntegralChangeInvariance
