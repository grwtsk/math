# Complete source: GRWTSK.Topology.MetricTopology.HeatInvertibility.Variant40e734d3017e75bc7c059fe0697ce6eb67e8139254d7a5bd7e10bf85590c6d92

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cdef392d3f7f978c7c0641d8d55cfe5f4d8a6ac6` · SHA-256 `4e3c6da78fd3d41b6133cee86b51165cc08aac90fedf19ad3986d45ba1c1eeaf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.HasTwoSidedInverse.Variant568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.HasTwoSidedInverse.Variant568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96","mathematical_subject":"Topology.MetricSpaces","original_sha256":"568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Research/HeatInvertibility.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Spectral.Heat
import Folder.Spectral.Residual
import Folder.Theorem.Spectral.HeatResidual

/-!
# Folder.Research.HeatInvertibility

Radiation role: research-contract
BinaryMatrix spine: This module marks research-boundary contracts and theorem targets around the BinaryMatrix radiation program.
Ontology: research.boundary.heat_invertibility
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: infrastructure
-/



namespace GRWTSK.Topology.MetricTopology.HasTwoSidedInverse.Variant568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96

namespace Folder
namespace Research
namespace HeatInvertibility

structure HasTwoSidedInverse
    (α : Type _)
    (H : α → α) where
  inv : α → α
  left_inv : ∀ x, inv (H x) = x
  right_inv : ∀ x, H (inv x) = x

structure StableInverse
    (α : Type _)
    (dist : α → α → ℝ)
    (H : α → α) where
  inverse : HasTwoSidedInverse α H
  lipschitz : ∃ C : ℝ, 0 ≤ C ∧
    ∀ x y, dist (inverse.inv x) (inverse.inv y) ≤ C * dist x y

structure LiftedHeatInverse
    (α : Type _)
    (heat : α → α)
    (residual : α → α) where
  reconstruct : α → α → α
  reconstruct_heat_residual :
    ∀ x, reconstruct (heat x) (residual x) = x

def spectralLiftedHeatInverse
    {s : Carrier.GridShape}
    {k : Nat}
    (H : Spectral.GraphHeat s k)
    (t : NNReal) :
    LiftedHeatInverse
      (Spectral.SpectralTensor s k)
      (H.heat t)
      (Spectral.heatResidual H t) where
  reconstruct := fun y r => y + r
  reconstruct_heat_residual := by
    intro X
    exact Spectral.heat_add_residual H t X

theorem lifted_heat_reconstructs
    {α : Type _}
    {heat residual : α → α}
    (L : LiftedHeatInverse α heat residual)
    (x : α) :
    L.reconstruct (heat x) (residual x) = x :=
  L.reconstruct_heat_residual x

theorem ordinary_heat_left_inverse
    {α : Type _}
    {H : α → α}
    (I : HasTwoSidedInverse α H)
    (x : α) :
    I.inv (H x) = x :=
  I.left_inv x

theorem ordinary_heat_right_inverse
    {α : Type _}
    {H : α → α}
    (I : HasTwoSidedInverse α H)
    (x : α) :
    H (I.inv x) = x :=
  I.right_inv x

theorem stable_inverse_has_lipschitz_bound
    {α : Type _}
    {dist : α → α → ℝ}
    {H : α → α}
    (S : StableInverse α dist H) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ x y, dist (S.inverse.inv x) (S.inverse.inv y) ≤ C * dist x y :=
  S.lipschitz

end HeatInvertibility
end Research
end Folder
```
