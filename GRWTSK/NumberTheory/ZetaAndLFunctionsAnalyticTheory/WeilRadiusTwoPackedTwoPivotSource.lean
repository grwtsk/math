/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import PackedTwoCanonicalInitial

/-!
# Exact archived checkpoints for the radius-two two-pivot certificate

The minimal local carrier and the original archived checkpoint at offset
398336 have exactly the same 1600 rows, physical modes 398401 through
400000. The first two rows are compared in the five signed integer
coordinates and returned through the injective grid projection. The
remaining 1598 rows use the previously checked original input aliases;
their index is shifted by two. In particular the second initial row is
its pre-elimination value, not the updated second pivot anchor. The
endpoint is the same five-coordinate endpoint definition as before.

These exact identities qualify the checkpoint used by the separate
canonical-tape certificate. Keeping this source return separate avoids
loading the legacy and full canonical archives into one checking process.
It does not prove that the preceding 398336 pivots produce the archived
state, the remaining recurrence, any literal seed comparison, or a high
floor. Native readback is a hostile boundary check sharing the archive,
not an independent analytic proof. Novelty and independent mathematical
review are not assessed. Automated assistance constructed the proof;
source-bound kernel checking supplies the stated formal assurance.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPackedTwoPivotCertificate

/-- Every initial row is the original archived row, including both eliminated rows. -/
theorem archivedInitial (i : Fin 1600) :
    PackedTwoCanonicalData.initial i = RadiusTwoNextPredecessorData.initial i :=
  PackedTwoCanonicalInitial.initialBinding i

/-- Every endpoint row uses the original checked five-coordinate endpoint. -/
theorem archivedEndpoint (i : Fin 1600) :
    PackedTwoCanonicalData.expected i = PackedFullTwoSource.expectedGrid i :=
  PackedTwoCanonicalInitial.expectedBinding i

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPackedTwoPivotCertificate
