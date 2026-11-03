/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PadicMobiusPrimeWindowSeam
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CofinalTwoUnitEffectiveRateBridge
import Mathlib

/-!
# Prime-window energy at one-zero resolution

The exact Möbius--PNT window seam writes the original prime-window
residual as a small-prime surrogate minus twice the signed large-prime
packet.  The cofinal two-unit count criterion says that at most one
uncredited analytic-multiplicity unit may remain.

This module connects the two statements through a visible zero-side
energy premise.  If every uncredited multiplicity unit costs at least
`kappa` in the selected prime-window energy, and the complete source
energy is strictly less than `2*kappa`, then the uncredited deficit is
at most one.  The source identity shows that the arithmetic condition is
not smallness of the large-prime packet itself: it is centering that
packet at one half of the surrogate-minus-main term.

No explicit-formula lower frame, cofinal numerical inventory, prime-window
cancellation estimate, unconditional RH conclusion, compilation, or kernel audit is supplied.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.PadicMobiusCofinalTwoUnitBridge

open CanonicalZeroDivisor
open PositiveHeightCountDeficit
open GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedPairBudget
open GRWTSK.NumberTheory.PadicMobiusPrimeWindowSeam
open CofinalTwoUnitNumericalReflectionGap
open CofinalTwoUnitEffectiveRateBridge

/-- The literal centered prime-window residual. -/
def primeWindowResidual (X H : ℕ) : ℝ :=
  pntWindow X H - (H : ℝ)

/-- The same residual after a source-preserving coefficient split `u - 2*v`. -/
def divisorSeamResidual (X H : ℕ) (u v : ℕ → ℝ) : ℝ :=
  divisorLogWindow X H u - 2 * divisorLogWindow X H v - (H : ℝ)

/-- The large-prime packet must be centered at half of the
small-prime surrogate minus the expected prime-window main term. -/
def centeredLargePrimePacket (X H : ℕ) (u v : ℕ → ℝ) : ℝ :=
  divisorLogWindow X H v -
    (divisorLogWindow X H u - (H : ℝ)) / 2

/-- Pure source algebra: the divisor seam is minus twice the centered
large-prime packet. -/
theorem divisorSeamResidual_eq_neg_two_centered
    (X H : ℕ) (u v : ℕ → ℝ) :
    divisorSeamResidual X H u v =
      -2 * centeredLargePrimePacket X H u v := by
  unfold divisorSeamResidual centeredLargePrimePacket
  ring

/-- If the actual prime window is identified with the complete divisor
packet of `u - 2*v`, then the centered residual is exactly the divisor seam. -/
theorem primeWindowResidual_eq_divisorSeam_of_source
    (X H : ℕ) (u v : ℕ → ℝ)
    (hsource : pntWindow X H =
      divisorLogWindow X H (fun n => u n - 2 * v n)) :
    primeWindowResidual X H = divisorSeamResidual X H u v := by
  unfold primeWindowResidual divisorSeamResidual
  rw [hsource, divisorLogWindow_sub_two]

/-- The nonnegative prime-window energy is four times the square of the
centered large-prime packet. -/
theorem primeWindowResidual_sq_eq_four_centered
    (X H : ℕ) (u v : ℕ → ℝ)
    (hsource : pntWindow X H =
      divisorLogWindow X H (fun n => u n - 2 * v n)) :
    primeWindowResidual X H ^ 2 =
      4 * centeredLargePrimePacket X H u v ^ 2 := by
  rw [primeWindowResidual_eq_divisorSeam_of_source X H u v hsource,
    divisorSeamResidual_eq_neg_two_centered]
  ring

/-- Count-energy form of the strict two-unit principle.  If each
uncredited multiplicity unit costs at least `kappa`, total energy below
`2*kappa` leaves at most one such unit. -/
theorem deficit_le_one_of_energy_gap
    (deficit : ℕ) (kappa energy : ℝ)
    (hkappa : 0 < kappa)
    (hlower : (deficit : ℝ) * kappa ≤ energy)
    (hupper : energy < 2 * kappa) :
    deficit ≤ 1 := by
  by_contra hnot
  have htwoNat : 2 ≤ deficit := by omega
  have htwoReal : (2 : ℝ) ≤ (deficit : ℝ) := by
    exact_mod_cast htwoNat
  have hmul : 2 * kappa ≤ (deficit : ℝ) * kappa :=
    mul_le_mul_of_nonneg_right htwoReal (le_of_lt hkappa)
  linarith

/-- A source-exact certificate at one zero-height cutoff.  The zero-side
lower inequality is the missing explicit-formula/frame input; the final
source equality prevents replacing the original Möbius/PNT packet. -/
def PrimeWindowEnergyCertificateAt
    (Z X H : ℕ) (known : Finset ZeroPoint)
    (u v : ℕ → ℝ) (deficit : ℕ) (kappa : ℝ) : Prop :=
  known ⊆ positiveHeightHead (Z : ℝ) ∧
    (∀ z ∈ known, z.1.re = 1 / 2) ∧
    positiveHeightCount (Z : ℝ) = mass known multiplicity + deficit ∧
    0 < kappa ∧
    pntWindow X H =
      divisorLogWindow X H (fun n => u n - 2 * v n) ∧
    (deficit : ℝ) * kappa ≤ primeWindowResidual X H ^ 2 ∧
    primeWindowResidual X H ^ 2 < 2 * kappa

/-- Any such finite certificate leaves at most one uncredited unit. -/
theorem primeWindowEnergyCertificateAt_to_oneUnit
    (Z X H : ℕ) (known : Finset ZeroPoint)
    (u v : ℕ → ℝ) (deficit : ℕ) (kappa : ℝ)
    (hcert : PrimeWindowEnergyCertificateAt
      Z X H known u v deficit kappa) :
    positiveHeightCount (Z : ℝ) ≤ mass known multiplicity + 1 := by
  rcases hcert with
    ⟨_hsubset, _honline, hcount, hkappa, _hsource, hlower, hupper⟩
  have hdeficit : deficit ≤ 1 :=
    deficit_le_one_of_energy_gap deficit kappa
      (primeWindowResidual X H ^ 2) hkappa hlower hupper
  rw [hcount]
  omega

/-- Cofinal source-bound prime-window energy certificates. -/
def CofinalPrimeWindowEnergyCertificate : Prop :=
  ∀ B : ℕ, ∃ (Z X H : ℕ) (known : Finset ZeroPoint)
      (u v : ℕ → ℝ) (deficit : ℕ) (kappa : ℝ),
    B ≤ Z ∧ PrimeWindowEnergyCertificateAt
      Z X H known u v deficit kappa

/-- The prime-window energy certificate constructs the exact one-unit
residual formulation of the numerical zero witness. -/
theorem cofinalAbsoluteOneUnit_of_primeWindowEnergy
    (h : CofinalPrimeWindowEnergyCertificate) :
    CofinalAbsoluteOneUnitResidual := by
  intro B
  obtain ⟨Z, X, H, known, u, v, deficit, kappa, hBZ, hcert⟩ := h B
  rcases hcert with
    ⟨hsubset, honline, hcount, hkappa, hsource, hlower, hupper⟩
  refine ⟨Z, hBZ, known, hsubset, honline, ?_⟩
  exact primeWindowEnergyCertificateAt_to_oneUnit
    Z X H known u v deficit kappa
    ⟨hsubset, honline, hcount, hkappa, hsource, hlower, hupper⟩

/-- Therefore a genuine cofinal prime-window energy certificate implies
canonical RH through the already-published two-unit count return. -/
theorem riemannHypothesis_of_cofinalPrimeWindowEnergy
    (h : CofinalPrimeWindowEnergyCertificate) :
    _root_.RiemannHypothesis :=
  absolute_one_unit_iff_riemannHypothesis.mp
    (cofinalAbsoluteOneUnit_of_primeWindowEnergy h)

/-- The same certificate written directly in the centered large-prime
packet.  The upper threshold is `2 * packet^2 < kappa`, not smallness of
`W(v)` by itself. -/
def CenteredLargePrimePacketCertificateAt
    (Z X H : ℕ) (known : Finset ZeroPoint)
    (u v : ℕ → ℝ) (deficit : ℕ) (kappa : ℝ) : Prop :=
  known ⊆ positiveHeightHead (Z : ℝ) ∧
    (∀ z ∈ known, z.1.re = 1 / 2) ∧
    positiveHeightCount (Z : ℝ) = mass known multiplicity + deficit ∧
    0 < kappa ∧
    pntWindow X H =
      divisorLogWindow X H (fun n => u n - 2 * v n) ∧
    (deficit : ℝ) * kappa ≤
      4 * centeredLargePrimePacket X H u v ^ 2 ∧
    2 * centeredLargePrimePacket X H u v ^ 2 < kappa

/-- The centered packet threshold is exactly the prime-window energy
threshold after the source identity is applied. -/
theorem centeredLargePrimePacketCertificateAt_to_energy
    (Z X H : ℕ) (known : Finset ZeroPoint)
    (u v : ℕ → ℝ) (deficit : ℕ) (kappa : ℝ)
    (hcert : CenteredLargePrimePacketCertificateAt
      Z X H known u v deficit kappa) :
    PrimeWindowEnergyCertificateAt Z X H known u v deficit kappa := by
  rcases hcert with
    ⟨hsubset, honline, hcount, hkappa, hsource, hlower, hupper⟩
  refine ⟨hsubset, honline, hcount, hkappa, hsource, ?_, ?_⟩
  · rw [primeWindowResidual_sq_eq_four_centered X H u v hsource]
    exact hlower
  · rw [primeWindowResidual_sq_eq_four_centered X H u v hsource]
    nlinarith

/-- Cofinal centered rough-prime packet certificates. -/
def CofinalCenteredLargePrimePacketCertificate : Prop :=
  ∀ B : ℕ, ∃ (Z X H : ℕ) (known : Finset ZeroPoint)
      (u v : ℕ → ℝ) (deficit : ℕ) (kappa : ℝ),
    B ≤ Z ∧ CenteredLargePrimePacketCertificateAt
      Z X H known u v deficit kappa

/-- Direct consumer for the centered large-prime arithmetic packet. -/
theorem cofinalPrimeWindowEnergy_of_centeredLargePrimePacket
    (h : CofinalCenteredLargePrimePacketCertificate) :
    CofinalPrimeWindowEnergyCertificate := by
  intro B
  obtain ⟨Z, X, H, known, u, v, deficit, kappa, hBZ, hcert⟩ := h B
  exact ⟨Z, X, H, known, u, v, deficit, kappa, hBZ,
    centeredLargePrimePacketCertificateAt_to_energy
      Z X H known u v deficit kappa hcert⟩

/-- A cofinal centered large-prime packet certificate therefore implies RH. -/
theorem riemannHypothesis_of_cofinalCenteredLargePrimePacket
    (h : CofinalCenteredLargePrimePacketCertificate) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_cofinalPrimeWindowEnergy
    (cofinalPrimeWindowEnergy_of_centeredLargePrimePacket h)

/-- With unit per-zero cost, the arithmetic one-zero resolution is the
explicit threshold `2 * centeredPacket^2 < 1`. -/
theorem normalized_centered_packet_resolution
    (X H : ℕ) (u v : ℕ → ℝ) (deficit : ℕ)
    (hlower : (deficit : ℝ) ≤
      4 * centeredLargePrimePacket X H u v ^ 2)
    (hupper : 2 * centeredLargePrimePacket X H u v ^ 2 < 1) :
    deficit ≤ 1 := by
  apply deficit_le_one_of_energy_gap deficit 1
    (4 * centeredLargePrimePacket X H u v ^ 2)
  · norm_num
  · simpa using hlower
  · nlinarith

/-- Full research disposition: the exact source seam and the count-energy
threshold are proved as finite algebra, while the zero-side lower frame and
cofinal centered-packet upper estimate remain visible suppliers. -/
def PadicMobiusCofinalTwoUnitDisposition : Prop :=
  CofinalCenteredLargePrimePacketCertificate →
    CofinalPrimeWindowEnergyCertificate ∧
      CofinalAbsoluteOneUnitResidual ∧
        _root_.RiemannHypothesis

end GRWTSK.RiemannHypothesis.PadicMobiusCofinalTwoUnitBridge
