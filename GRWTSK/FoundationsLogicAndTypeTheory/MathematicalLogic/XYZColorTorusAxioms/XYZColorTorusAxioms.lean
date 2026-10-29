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
