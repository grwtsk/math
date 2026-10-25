# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WangZahlCorrelationSquare.Variant4b89116712cf46402c5434e0de0c5a7a112943cab1740066605d3dc5fa5005a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09de5e9ce6d34973388edba82ea29b804e2d0e72` · SHA-256 `3b17ec25901e798ba19286a99fa9f1b1def9e5ff40cf1df6fc5fc9eb0bbb0c48`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HyperbolicSurgeryPlanNodePacketAtoms.Variant7bebde2c39bb44de232082026b23e30fd4f775660df82127261047005da5c9e1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7bebde2c39bb44de232082026b23e30fd4f775660df82127261047005da5c9e1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.HyperbolicSurgeryPlanNodePacketAtoms.Variant7bebde2c39bb44de232082026b23e30fd4f775660df82127261047005da5c9e1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7bebde2c39bb44de232082026b23e30fd4f775660df82127261047005da5c9e1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/TypeII/WangZahlCorrelationSquare.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.TransverseSquare
public import Surface.Core.TypeII.WangZahlDiffuse
import Mathlib.Tactic

/-!
# Signed Wang--Zahl correlation square interface

The Wang--Zahl input is unsigned geometry.  The conductor-three endpoint is a
separate signed, coefficient-specific square estimate.  Keeping the two
propositions separate prevents a union-volume certificate from silently
acquiring arithmetic cancellation authority.

No implication from unsigned admissibility to the signed estimate is proved
here; that implication is one of the open analytic tasks.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HyperbolicSurgeryPlanNodePacketAtoms.Variant7bebde2c39bb44de232082026b23e30fd4f775660df82127261047005da5c9e1

public section

namespace Surface.Core.TypeII

noncomputable section

/-- Packet labels used by one predetermined node.  This depends only on the
plan's supports and packet incidence, never on the evaluated coefficients. -/
@[expose]
def HyperbolicSurgeryPlan.nodePacketAtoms
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    (plan : HyperbolicSurgeryPlan N q B) (node : plan.tree.Node) :
    Finset plan.packetGeometry.PacketAtom :=
  (plan.tree.leftSupport node).biUnion plan.packetGeometry.leftPackets ∪
    (plan.tree.rightSupport node).biUnion plan.packetGeometry.rightPackets

/-- Non-vacuous unsigned Wang--Zahl geometry for exactly the packet labels
active at one coefficient-blind node. -/
@[expose]
def WangZahlNodeAdmissible
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    (plan : HyperbolicSurgeryPlan N q B) (node : plan.tree.Node) : Prop :=
  ∃ certificate :
      UnsignedWangZahlDiffuseCertificate plan.packetGeometry.PacketAtom,
    certificate.family.tubes = plan.nodePacketAtoms node

/-- Signed square-function estimate required after the unsigned Wang--Zahl
volume theorem and packet-energy argument have been combined with a genuine
coefficient-correlation theorem.

This is intentionally not implied by `WangZahlNodeAdmissible` in this module.
-/
@[expose]
def LocalWangZahlCorrelationSquareEstimate
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (evaluated : EvaluatedSurgeryTree plan) (node : plan.tree.Node)
    (ε C : ℝ) : Prop :=
  0 < ε ∧ 0 ≤ C ∧
    evaluated.nodeIntervalSquareSum node ≤
      (C * (N + 1 : ℝ) ^ ε * evaluated.nodeMass node) ^ 2

end

end Surface.Core.TypeII

end
```
