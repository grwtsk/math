# Complete source: GRWTSK.Topology.MetricTopology.FixedPoint.Variant80af7d5d2ac0cbafda8ce603ee841d5e94bca6340f8e80cb6a34baaa2b67f2e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9c1ca73773b728c797aa63317fc9e4476773520` · SHA-256 `0bd6a4891723cf943f1b31b07ce9aab77b9beb0b6de8c96eb5dacf20ee2e2d59`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.HasFixedPoint.Variant399c8efc6d6d9260d782df60d3284b744b6d9950ea6533975de55140227f0b10","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"399c8efc6d6d9260d782df60d3284b744b6d9950ea6533975de55140227f0b10","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.HasFixedPoint.Variant399c8efc6d6d9260d782df60d3284b744b6d9950ea6533975de55140227f0b10","mathematical_subject":"Topology.MetricSpaces","original_sha256":"399c8efc6d6d9260d782df60d3284b744b6d9950ea6533975de55140227f0b10","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Fiber/FixedPoint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.Fiber.FixedPoint

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: fiber.fixed_point
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: infrastructure
-/



namespace GRWTSK.Topology.MetricTopology.HasFixedPoint.Variant399c8efc6d6d9260d782df60d3284b744b6d9950ea6533975de55140227f0b10

namespace Folder
namespace Fiber

structure HasFixedPoint (α : Type _) (F : α → α) where
  point : α
  fixed : F point = point

structure HasUniqueFixedPoint (α : Type _) (F : α → α) extends
    HasFixedPoint α F where
  unique : ∀ x, F x = x → x = point

structure ContractiveFixedPointContract
    (α : Type _) where
  dist : α → α → ℝ
  map : α → α
  point : α
  fixed : map point = point
  unique : ∀ x, map x = x → x = point

theorem fixed_point_is_fixed {α : Type _} {F : α → α}
    (h : HasFixedPoint α F) :
    F h.point = h.point :=
  h.fixed

theorem unique_fixed_point_eq {α : Type _} {F : α → α}
    (h : HasUniqueFixedPoint α F)
    {x : α}
    (hx : F x = x) :
    x = h.point :=
  h.unique x hx

end Fiber
end Folder
```
