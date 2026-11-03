/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.AlgebraicTopology.MoebiusBandTwoBitGramBridge
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEllipticFiberKernelComparison
import Mathlib.Tactic

/-!
# Exact convergence of physical two-bit, elliptic and dyadic RH criteria

The idealized, complete two-bit physical observer has exactly the original
ordered signed Möbius cross-energy. The elliptic routing identity splits
that same cross-energy into a matched elliptic packet and the COMPLETE
signed residual. On fixed dyadic logarithmic scales, the source's
quarter-unit endpoint error makes an all-positive-rate upper bound for
either representation EQUIVALENT to DyadicEndpointBound and the already
named dyadic birth-sum obligation.

No new arithmetic estimate is supplied: all RH-facing results in this
file are explicitly CONDITIONAL upon one of these equivalent all-rate
bounds. The user-supplied audio is not a source of a new arithmetic axiom.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.MoebiusBandPhysicalEllipticEndpointCriterion

open GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity

/-- The ideal, source-faithful two-bit observation of the original
ordered cross-energy, at the same original integer cutoff and time. -/
def physicalGram (p : Parameters) (chart T : ℝ) : ℝ :=
  observedPacket p chart T (encodedStream p)

/-- This holds for all times, not only dyadic scales. The elliptic
matched packet does NOT absorb or redefine the residual. -/
theorem physicalGram_eq_elliptic_add_complete_residual
    {W : WeierstrassCurve ℤ} (B : GoodPrimeBank W)
    (p : Parameters) (chart T : ℝ) :
    physicalGram p chart T =
      matchedEllipticPacket B T + fullSignedResidual B T := by
  unfold physicalGram
  rw [observedPacket_encoded_eq_pickupCross]
  exact pickupCross_eq_elliptic_add_full_residual B T

/-- Exact endpoint formula, still retaining the signed chord correction. -/
theorem endpoint_eq_physicalGram_add_signed_correction
    (p : Parameters) (chart T : ℝ) :
    endpointSum T = physicalGram p chart T + signedEndpointCorrection T := by
  unfold physicalGram signedEndpointCorrection
  rw [observedPacket_encoded_eq_pickupCross]
  ring

/-- The source's quarter-unit error is the only paid difference between
ideal physical Gram and the original dyadic endpoint. -/
theorem endpoint_physicalGram_abs_error
    (p : Parameters) (chart T : ℝ) (hT : 0 ≤ T) :
    |endpointSum T - physicalGram p chart T| ≤ (1 / 4 : ℝ) := by
  simpa only [physicalGram, observedPacket_encoded_eq_pickupCross] using
    (endpointSum_error hT)

/-- Upper subexponential rate for the same original signed Gram.
The quantifier order is fixed: scales j are specified before delta. -/
def PhysicalDyadicGramBound (p : Parameters) (chart : ℝ) : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      physicalGram p chart (dyadicTime j) ≤
        C * (2 : ℝ) ^ (δ * (j : ℝ))

/-- All-positive-rate estimate for the same matched elliptic packet PLUS
its FULL original-source signed residual, not an elliptic-only bound. -/
def EllipticCompleteDyadicBound {W : WeierstrassCurve ℤ}
    (B : GoodPrimeBank W) : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      matchedEllipticPacket B (dyadicTime j) +
        fullSignedResidual B (dyadicTime j) ≤
          C * (2 : ℝ) ^ (δ * (j : ℝ))

/-- Algebraically exact equivalence, with no loss and no auxiliary
assumptions about matched elliptic primes. -/
theorem physicalBound_iff_completeEllipticBound
    {W : WeierstrassCurve ℤ} (B : GoodPrimeBank W)
    (p : Parameters) (chart : ℝ) :
    PhysicalDyadicGramBound p chart ↔ EllipticCompleteDyadicBound B := by
  constructor
  · intro h δ hδ
    obtain ⟨C, hC, hb⟩ := h δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    have hj := hb j
    rw [physicalGram_eq_elliptic_add_complete_residual B p chart (dyadicTime j)] at hj
    exact hj
  · intro h δ hδ
    obtain ⟨C, hC, hb⟩ := h δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [physicalGram_eq_elliptic_add_complete_residual B p chart (dyadicTime j)]
    exact hb j

/-- The dyadic exponential factor can pay any fixed additive constant. -/
theorem dyadic_rate_factor_ge_one {δ : ℝ} (hδ : 0 < δ) (j : ℕ) :
    (1 : ℝ) ≤ (2 : ℝ) ^ (δ * (j : ℝ)) := by
  rw [← dyadic_rate δ j]
  exact Real.one_le_exp (mul_nonneg hδ.le (dyadicTime_nonnegative j))

/-- The ORIGINAL endpoint bound and the ideal signed physical-Gram
bound are logically equivalent at every positive exponent. Both ways
pay precisely 1/4 with a constant inflation independent of scale. -/
theorem physicalBound_iff_originalEndpointBound
    (p : Parameters) (chart : ℝ) :
    PhysicalDyadicGramBound p chart ↔ DyadicEndpointBound := by
  constructor
  · intro h δ hδ
    obtain ⟨C, hC, hb⟩ := h δ hδ
    refine ⟨C + (1 / 4 : ℝ), by linarith, ?_⟩
    intro j
    have hj := hb j
    have herr := (abs_le.mp
      (endpoint_physicalGram_abs_error p chart (dyadicTime j)
        (dyadicTime_nonnegative j))).2
    have hfactor := dyadic_rate_factor_ge_one hδ j
    nlinarith
  · intro h δ hδ
    obtain ⟨C, hC, hb⟩ := h δ hδ
    refine ⟨C + (1 / 4 : ℝ), by linarith, ?_⟩
    intro j
    have hj := hb j
    have herr := (abs_le.mp
      (endpoint_physicalGram_abs_error p chart (dyadicTime j)
        (dyadicTime_nonnegative j))).1
    have hfactor := dyadic_rate_factor_ge_one hδ j
    nlinarith

/-- Equivalence to the existing explicit five-moment dyadic birth-sum
problem; this does not supply the missing birth-sum inequality. -/
theorem physicalBound_iff_originalBirthBound
    (p : Parameters) (chart : ℝ) :
    PhysicalDyadicGramBound p chart ↔ DyadicBirthBound :=
  (physicalBound_iff_originalEndpointBound p chart).trans
    dyadicBirthBound_iff_endpoint.symm

/-- A CONDITIONAL application of the unchanged canonical Mathlib RH
consumer. The displayed hBound is the missing mathematical theorem. -/
theorem canonical_RH_of_complete_physical_bound
    (p : Parameters) (chart : ℝ)
    (hBound : PhysicalDyadicGramBound p chart) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_dyadicBirthBound
    ((physicalBound_iff_originalBirthBound p chart).mp hBound)

/-- Equivalent conditional return, retaining the full signed elliptic
residual. No statement here estimates that residual separately. -/
theorem canonical_RH_of_complete_elliptic_bound
    {W : WeierstrassCurve ℤ} (B : GoodPrimeBank W)
    (p : Parameters) (chart : ℝ)
    (hBound : EllipticCompleteDyadicBound B) :
    _root_.RiemannHypothesis :=
  canonical_RH_of_complete_physical_bound p chart
    ((physicalBound_iff_completeEllipticBound B p chart).mpr hBound)

end GRWTSK.Topology.AlgebraicTopology.MoebiusBandPhysicalEllipticEndpointCriterion
