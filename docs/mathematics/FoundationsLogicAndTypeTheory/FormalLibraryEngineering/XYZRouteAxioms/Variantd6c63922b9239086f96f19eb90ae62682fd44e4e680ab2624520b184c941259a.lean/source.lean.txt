import Surface.Core.XYZ
import Generated.XYZRouteFixture

/-!
# XYZ transport axiom audit

This file prints the dependency closure of the required canonical transport,
conformance-certificate, and Riemann-sphere theorems.  Presentation modules are
intentionally absent: finite presentation data is not an authority source for
the canonical transport results below.
-/

#print axioms Surface.Core.XYZ.orderedRoute_deterministic
#print axioms Surface.Core.XYZ.orderedRoute_edges_declared
#print axioms Surface.Core.XYZ.expectedUpdate_preserves_channelBounds
#print axioms Surface.Core.XYZ.expectedUpdate_preserves_revision
#print axioms Surface.Core.XYZ.expectedUpdate_preserves_colorInvariant
#print axioms Surface.Core.XYZ.verifyProposal_sound
#print axioms Surface.Core.XYZ.staleRevision_rejected
#print axioms Surface.Core.XYZ.equalRevision_conflict_rejected
#print axioms Surface.Core.XYZ.eventual_convergence_to_latestAdmitted
#print axioms Surface.Core.XYZ.finiteXYZTransport_has_no_analytic_authority
#print axioms Generated.XYZRouteFixture.rustExpectedUpdate_eq_leanExpectedUpdate
#print axioms Surface.Core.XYZ.xyzToAxisSphere_mem_sphere
#print axioms Surface.Core.XYZ.xyzToAxisSphere_components
