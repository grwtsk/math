# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.XYZRouteAxioms.Variantd6c63922b9239086f96f19eb90ae62682fd44e4e680ab2624520b184c941259a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96a7edd85a0ad3885bdf8e8f213747000f20e9ab` · SHA-256 `d6c63922b9239086f96f19eb90ae62682fd44e4e680ab2624520b184c941259a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
