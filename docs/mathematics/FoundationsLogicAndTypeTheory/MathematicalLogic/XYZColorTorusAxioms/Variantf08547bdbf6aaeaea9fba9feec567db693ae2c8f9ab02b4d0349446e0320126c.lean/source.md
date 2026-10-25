# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.XYZColorTorusAxioms.Variantf08547bdbf6aaeaea9fba9feec567db693ae2c8f9ab02b4d0349446e0320126c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba88af18237f5b9f7475d73afb9456f411a473ce` · SHA-256 `f08547bdbf6aaeaea9fba9feec567db693ae2c8f9ab02b4d0349446e0320126c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Core.XYZ
import Presentation.XYZColorTorus
import Generated.XYZColorTorusFixture

/-!
# XYZ color-torus axiom audit

This audit keeps the canonical XYZ transport results visible beside the
downstream presentation results.  Import direction remains one way:
`Presentation.XYZColorTorus` imports the finite core; the core does not import
Presentation or generated evidence.
-/

/-! ## Canonical transport package -/

#print axioms Surface.Core.XYZ.orderedRoute_deterministic
#print axioms Surface.Core.XYZ.orderedRoute_edges_declared
#print axioms Surface.Core.XYZ.expectedUpdate_preserves_channelBounds
#print axioms Surface.Core.XYZ.expectedUpdate_preserves_revision
#print axioms Surface.Core.XYZ.expectedUpdate_preserves_colorInvariant
#print axioms Surface.Core.XYZ.verifyProposal_sound
#print axioms Presentation.XYZDomModel.rejectedProposal_leavesDomModelUnchanged
#print axioms Surface.Core.XYZ.staleRevision_rejected
#print axioms Surface.Core.XYZ.equalRevision_conflict_rejected
#print axioms Surface.Core.XYZ.eventual_convergence_to_latestAdmitted
#print axioms Surface.Core.XYZ.finiteXYZTransport_has_no_analytic_authority
#print axioms Generated.XYZRouteFixture.rustExpectedUpdate_eq_leanExpectedUpdate

/-! ## Presentation adapter -/

#print axioms Presentation.XYZColorTorus.flatColorTorusEmbedding_continuous
#print axioms Presentation.XYZColorTorus.flatColorTorusEmbedding_periodic_u
#print axioms Presentation.XYZColorTorus.flatColorTorusEmbedding_periodic_v
#print axioms Presentation.XYZColorTorus.colorTorusView_preserves_xyz_revision
#print axioms Presentation.XYZColorTorus.colorTorusView_preserves_xyz_payload
#print axioms Presentation.XYZColorTorus.colorTorusRenderFrame_is_presentation_only
#print axioms Presentation.XYZColorTorus.colorTorusRejectedProposal_preserves_admitted_view
#print axioms Presentation.XYZColorTorus.colorTorusView_has_no_torsion_authority
#print axioms Presentation.XYZColorTorus.colorTorusView_has_no_classical_hecke_authority
#print axioms Presentation.XYZColorTorus.colorTorusView_has_no_grh_authority
#print axioms Presentation.XYZColorTorus.colorTorusPresentation_has_no_analytic_authority

/-! ## Finite fixture -/

#print axioms Generated.XYZColorTorusFixture.equalEnergyColorTorusView_preserves_source
#print axioms Generated.XYZColorTorusFixture.equalEnergyColorTorusFrame_preserves_source
#print axioms Generated.XYZColorTorusFixture.equalEnergyColorTorus_has_no_torsion_authority
```
