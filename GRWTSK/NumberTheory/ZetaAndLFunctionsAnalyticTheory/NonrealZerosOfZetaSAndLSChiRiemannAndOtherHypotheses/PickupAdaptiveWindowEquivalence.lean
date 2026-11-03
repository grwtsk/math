/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupPhysicalSoficWindowRH
import Mathlib.Tactic

/-!
# Exact RH arithmetic frontier across adaptive windows and physical sofic codecs

The adaptive good-index condition is an apparently weaker *sampling form* of the
old all-index dyadic signed endpoint obligation. However, for the ACTUAL pickup
source, the nonnegative monotone square energy, the diagonal bound and the
signed quarter-unit quadrature show that the two conditions are EQUIVALENT.

The physical two-bit stream criterion is also equivalent: one direction pays
all missing and mislabeled signed-readout error; the other uses the canonical
encoding and the empty certified shift word. Thus physical representation and
route optimization cannot create the missing arithmetic cancellation.

These comparisons preserve quantifiers in the same rate-independent arithmetic
source. They are Lean SOURCE CANDIDATES, not native checked proofs and not RH.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.PickupAdaptiveWindowEquivalence

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupAdaptiveDyadicWindow
open GRWTSK.NumberTheory.Moebius.PickupPhysicalSoficWindowRH
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn
open GRWTSK.NumberTheory.Moebius.MoebiusSoficDefectLanguage
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity

/-- The apparent weakening of the sampling quantifier does NOT weaken the
ACTUAL arithmetic growth obligation: monotone square energy propagates the
favorable window bound back to every earlier dyadic time. -/
theorem dyadicWindow_iff_original_dyadic :
    DyadicWindowBirthBound ↔ DyadicBirthBound := by
  constructor
  · intro h
    have henergy : PickupEnergySubexp :=
      pickupEnergySubexp_of_adaptiveEndpointWindow (3 * Real.log 2)
        (adaptiveEndpointWindow_of_dyadicWindow h)
    have hcross : PickupCrossSubexp :=
      pickupCrossSubexp_iff_pickupEnergySubexp.mpr henergy
    have hendpoint : SubexponentialOn endpointSum dyadicScales :=
      endpoint_subexponential_iff.mpr (on_of_global hcross dyadicScales)
    exact dyadicBirthBound_iff_endpoint.mpr
      (dyadicEndpointBound_iff_good_scales.mpr hendpoint)
  · exact dyadicWindow_of_all_dyadic

/-- The adaptive-window endpoint criterion is equivalent to the original
square-energy all-positive-rate condition, not an independent estimate. -/
theorem dyadicWindow_iff_energy_subexponential :
    DyadicWindowBirthBound ↔ PickupEnergySubexp := by
  constructor
  · intro h
    exact pickupEnergySubexp_of_adaptiveEndpointWindow (3 * Real.log 2)
      (adaptiveEndpointWindow_of_dyadicWindow h)
  · intro h
    apply dyadicWindow_iff_original_dyadic.mpr
    apply dyadicBirthBound_iff_endpoint.mpr
    apply dyadicEndpointBound_iff_good_scales.mpr
    have hcross : PickupCrossSubexp :=
      pickupCrossSubexp_iff_pickupEnergySubexp.mpr h
    exact endpoint_subexponential_iff.mpr
      (on_of_global hcross dyadicScales)

/-- The actual cumulative-energy convergence-abscissa zero is the same open
arithmetic obligation. This does not claim convergence AT damping zero. -/
theorem dyadicWindow_iff_energy_abscissa_zero :
    DyadicWindowBirthBound ↔ pickupEnergyAbscissa = 0 := by
  constructor
  · exact energyAbscissa_zero_of_dyadicWindowBirthBound
  · intro hzero
    have hcross : PickupCrossSubexp :=
      pickupEnergyAbscissa_zero_iff_crossSubexp.mp hzero
    apply dyadicWindow_iff_original_dyadic.mpr
    apply dyadicBirthBound_iff_endpoint.mpr
    apply dyadicEndpointBound_iff_good_scales.mpr
    exact endpoint_subexponential_iff.mpr
      (on_of_global hcross dyadicScales)

/-- Every physical proof-carrying window is a real arithmetic window:
the original source-minus-recording defect and path budget are paid. -/
theorem physicalWindow_to_dyadicWindow (p : Parameters)
    (h : PhysicalWindowCertificate p) : DyadicWindowBirthBound := by
  intro ε hε
  obtain ⟨C, hC, hwin⟩ := h ε hε
  refine ⟨C, hC, ?_⟩
  intro j
  obtain ⟨k, hjk, hk, stream, target, word, d, b, trace, hcost⟩ := hwin j
  refine ⟨k, hjk, hk, ?_⟩
  rw [← endpoint_dyadic_eq_birthSum]
  exact (endpoint_le_physicalCertifiedPacket p
    (dyadicTime_nonnegative k) stream trace).trans hcost

/-- Conversely the IDEAL actual-index two-bit encoder already has a certified
empty path and zero original readout defect. The quarter-unit error is paid,
not treated as free cancellation. The new physical statement is not stronger. -/
theorem physicalWindow_of_original_dyadic (p : Parameters)
    (h : DyadicBirthBound) : PhysicalWindowCertificate p := by
  intro ε hε
  obtain ⟨C, hC, hb⟩ := h ε hε
  refine ⟨C + 1 / 2, by linarith, ?_⟩
  intro j
  refine ⟨j, le_rfl, by omega, encodedStream p,
    (0, encodedStream p), [], 0, 0,
    CertifiedTrace.nil (0, encodedStream p), ?_⟩
  have hpacket :
      observedPacket p 0 (dyadicTime j) (encodedStream p) =
        pickupCross (dyadicTime j) :=
    observedPacket_encoded_eq_pickupCross p 0 (dyadicTime j)
  have hdefect :
      signedReadoutDefect p 0 (dyadicTime j) (encodedStream p) = 0 :=
    signedReadoutDefect_encoded_zero p 0 (dyadicTime j)
  have hcross : pickupCross (dyadicTime j) ≤ dyadicBirthSum j + 1 / 4 := by
    have he := (abs_le.mp (endpointSum_error (dyadicTime_nonnegative j))).1
    rw [endpoint_dyadic_eq_birthSum] at he
    linarith
  have hExp : (1 : ℝ) ≤ Real.exp (ε * dyadicTime j) :=
    Real.one_le_exp_iff.mpr (mul_nonneg hε.le (dyadicTime_nonnegative j))
  change observedPacket p 0 (dyadicTime j) (encodedStream p) +
    |signedReadoutDefect p 0 (dyadicTime j) (encodedStream p)| +
    0 + 1 / 4 ≤ (C + 1 / 2) * Real.exp (ε * dyadicTime j)
  rw [hpacket, hdefect]
  simp only [abs_zero, add_zero, zero_add]
  nlinarith [hb j]

/-- All three representations have exactly the same UNPROVED arithmetic
strength when the physical stream is the canonical real source encoding.
Noe's graph certificate by itself does not create an RH supplier. -/
theorem physicalWindow_iff_original_dyadic (p : Parameters) :
    PhysicalWindowCertificate p ↔ DyadicBirthBound := by
  constructor
  · intro h
    exact dyadicWindow_iff_original_dyadic.mp
      (physicalWindow_to_dyadicWindow p h)
  · exact physicalWindow_of_original_dyadic p

/-- The physical representation therefore does not change the required
zero-abscissa condition for the ORIGINAL signed Möbius square energy. -/
theorem physicalWindow_iff_energy_abscissa_zero (p : Parameters) :
    PhysicalWindowCertificate p ↔ pickupEnergyAbscissa = 0 := by
  exact (physicalWindow_iff_original_dyadic p).trans
    (dyadicWindow_iff_original_dyadic.symm.trans
      dyadicWindow_iff_energy_abscissa_zero)

end GRWTSK.NumberTheory.Moebius.PickupAdaptiveWindowEquivalence
