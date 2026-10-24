# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RodgersTaoHeat.Variantea97aedff8c9f9282e1a50762cc12723d64a88ddb091128a96012b3c5b61bc37

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9327103ac8c37230534b9f6fff224dc505440a82` · SHA-256 `fcfed587385751871563d192fcbabb05d24937c1b75ad544c6c5c1a695001661`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RodgersTaoHeatFamily.Variant5ab82eb7882098c2b7dfae6918db2432981c5db86490201c62f8b3d400ae82d1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5ab82eb7882098c2b7dfae6918db2432981c5db86490201c62f8b3d400ae82d1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RodgersTaoHeatFamily.Variant5ab82eb7882098c2b7dfae6918db2432981c5db86490201c62f8b3d400ae82d1","mathematical_subject":"Foundations.Unclassified","original_sha256":"5ab82eb7882098c2b7dfae6918db2432981c5db86490201c62f8b3d400ae82d1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/ResearchTopos/RodgersTaoHeat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Research.DeBruijnNewmanBridge
import Folder.Core.ZeroTypology

/-!
# Folder.ResearchTopos.RodgersTaoHeat

Radiation role: research-boundary
BinaryMatrix spine: This module records Rodgers-Tao heat-flow data as external analytic witness data, not as finite BinaryMatrix or GraphHeat data.
Ontology: research_topos.rodgers_tao_heat
Pivot role: spectral
Zero typology: debruijn-newman
Contract boundary: external-witness
Composite stack role: research-topos
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RodgersTaoHeatFamily.Variant5ab82eb7882098c2b7dfae6918db2432981c5db86490201c62f8b3d400ae82d1

namespace Folder
namespace ResearchTopos

structure RodgersTaoHeatFamily where
  HFunctionFamily : Type _
  Time : Type _
  ZeroIndex : Type _
  zeroPosition : Time → ZeroIndex → ℝ
  backwardsHeatEquation : Prop
  backwardsHeatEquation_certified : backwardsHeatEquation
  newmanLambdaNonnegative : Prop
  newmanLambdaNonnegative_certified : newmanLambdaNonnegative
  sourceLabel : String

structure RodgersTaoZeroDynamics
    (F : RodgersTaoHeatFamily) where
  velocity :
    F.Time → F.ZeroIndex → ℝ
  repulsionLaw : Prop
  localEquilibriumConclusion : Prop
  localEquilibriumConclusion_certified : localEquilibriumConclusion
  arithmeticProgressionLimit : Prop

theorem rodgers_tao_newman_nonnegative
    (F : RodgersTaoHeatFamily) :
    F.newmanLambdaNonnegative :=
  F.newmanLambdaNonnegative_certified

theorem rodgers_tao_backwards_heat
    (F : RodgersTaoHeatFamily) :
    F.backwardsHeatEquation :=
  F.backwardsHeatEquation_certified

theorem rodgers_tao_local_equilibrium
    {F : RodgersTaoHeatFamily}
    (D : RodgersTaoZeroDynamics F) :
    D.localEquilibriumConclusion :=
  D.localEquilibriumConclusion_certified

end ResearchTopos
end Folder
```
