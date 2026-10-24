# Complete source: GRWTSK.Algebra.GroupTheory.HeatFlowAction.Variantb6a648cab344d75b22aa9f585ce579008295218caaaa5c954c5267fc7fb04692

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ce9b197c2f529d4dee464d65f4b6994db790d3c` · SHA-256 `780fa4e5bb724cb8de268a3baeb47b628d6bbf313a001920e4b1a893c9c8b01b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.HeatFlowAction.Variant7dde2e51eab6a9d37432d648c0a6d1000f645b87c485deb08050da2d9ed568ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7dde2e51eab6a9d37432d648c0a6d1000f645b87c485deb08050da2d9ed568ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.HeatFlowAction.Variant7dde2e51eab6a9d37432d648c0a6d1000f645b87c485deb08050da2d9ed568ae","mathematical_subject":"Algebra.Groups","original_sha256":"7dde2e51eab6a9d37432d648c0a6d1000f645b87c485deb08050da2d9ed568ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineTensor/HeatFlowAction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineTensor.IntegrableConnection
import Folder.ResearchTopos.RodgersTaoHeat

/-!
# Folder.CrystallineTensor.HeatFlowAction

Radiation role: research-boundary
BinaryMatrix spine: This module records heat-flow action contracts and does not identify them with finite BinaryMatrix heat.
Ontology: crystalline.heat_flow_action
Pivot role: spectral
Zero typology: debruijn-newman
Contract boundary: contract
Composite stack role: crystalline-tensor
-/


namespace GRWTSK.Algebra.GroupTheory.HeatFlowAction.Variant7dde2e51eab6a9d37432d648c0a6d1000f645b87c485deb08050da2d9ed568ae

namespace Folder
namespace CrystallineTensor

/--
Contract-level heat action on crystal sections.

This is not the finite `GraphHeat` operator and not an analytic construction of
Rodgers-Tao heat flow; it only stores the action laws needed by later boundary
contracts.
-/
structure HeatFlowAction
    {C : CrystallineSite}
    (F : Crystal C) where
  Time : Type _
  flow : ∀ X : C.Site.Obj, Time → F.Section X → F.Section X
  identityAtZero : Prop
  identityAtZero_certified : identityAtZero
  semigroupLaw : Prop
  semigroupLaw_certified : semigroupLaw
  sourceLabel : String

theorem heat_flow_identity_at_zero
    {C : CrystallineSite}
    {F : Crystal C}
    (H : HeatFlowAction F) :
    H.identityAtZero :=
  H.identityAtZero_certified

theorem heat_flow_semigroup
    {C : CrystallineSite}
    {F : Crystal C}
    (H : HeatFlowAction F) :
    H.semigroupLaw :=
  H.semigroupLaw_certified

end CrystallineTensor
end Folder
```
