/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI GPT-5.6 Sol.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SignedOrientationConnections
import Mathlib.Tactic

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Zeta.Riemann.SignedOrientationConnections.Checks

open GRWTSK.LinearAlgebra.SignedOrientationBridge
open GRWTSK.NumberTheory.Zeta.Riemann.SignedOrientationConnections

/-- Concrete hostile fixture: positive metric energy and signed-consumer sign
can disagree. -/
theorem positive_metric_negative_signed_fixture :
    0 < positiveEnergy negativeSectorFixture ∧
      signedEnergy twoSectorMask negativeSectorFixture < 0 :=
  positive_energy_does_not_force_signed_positive

/-- The generic negative-sector Hodge certificate carries sign -1. -/
theorem hodge_negative_sector_orientation_sign :
    (negativeSectorCertificate twoSectorMask).sign = -1 :=
  rfl

/-- The existing screw-quartic penalty carries the same abstract sign, but
is a distinct mathematical construction. -/
theorem screw_penalty_orientation_sign :
    screwQuarticPenaltyCertificate.sign = -1 :=
  rfl

/-- The current arithmetic quartic probe also carries sign -1. -/
theorem quartic_probe_orientation_sign :
    quarticProbeOrientationCertificate.sign = -1 :=
  rfl

/-- A positive scalar cannot turn the hostile negative signed value positive. -/
theorem positive_scalar_does_not_flip_fixture :
    (2 : ℝ) * signedEnergy twoSectorMask negativeSectorFixture < 0 := by
  apply positiveScalar_preserves_strict_negative (by norm_num)
  rw [negativeSectorFixture_signedEnergy]
  norm_num

/-- Open-conjecture/Hodge registry entries remain explicitly source-review
required rather than proof-bearing. -/
theorem hodge_standard_profile_is_source_review_required :
    hodgeStandardConjectureProfile.evidence =
      ConnectionEvidence.sourceReviewRequired :=
  rfl

/-- Current quartic profile is proof-bearing locally, but its sign-reversing
supplier is still absent. -/
theorem quartic_profile_is_local :
    quarticProbeProfile.evidence = ConnectionEvidence.provedLocal :=
  rfl

/-- Proposed C3 connection remains an interface classification, not a theorem
edge. -/
theorem c3_profile_is_proposed :
    c3SignedScrewProfile.evidence = ConnectionEvidence.proposedInterface :=
  rfl

end GRWTSK.NumberTheory.Zeta.Riemann.SignedOrientationConnections.Checks
