# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.XYZColorTorusFixture.Variantc8ce126a238feb2967a91425f9d58bf9a6a936f5559306585ed0429eb9f4adbe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ffa603b66ef1ecac76fb924eaa8d41acb5f43488` · SHA-256 `c8ce126a238feb2967a91425f9d58bf9a6a936f5559306585ed0429eb9f4adbe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Generated.XYZRouteFixture
public import Presentation.XYZColorTorus

/-!
# Finite XYZ color-torus presentation fixture

This generated fixture exercises the explicit presentation adapter at the
equal-energy golden value.  It is finite compilation evidence only.  It does
not certify browser rendering, Rust generally, an elliptic uniformization,
torsion, a classical Hecke action, or an analytic statement.
-/

public section

namespace Generated.XYZColorTorusFixture

noncomputable section

open Surface.Core.XYZ
open Generated.XYZRouteFixture
open Presentation.XYZColorTorus

@[surface_candidate]
def standardPresentationRadii : FlatColorTorusRadii where
  majorRadius := 2
  minorRadius := 1
  minorRadius_pos := by norm_num
  minorRadius_lt_majorRadius := by norm_num

@[surface_candidate]
def equalEnergyAt0 : RevisionedXYZ xyzFormatV1 where
  revision := ⟨0, by decide⟩
  value := equalEnergyWhite

@[surface_candidate]
def equalEnergyColorTorusView : ColorTorusView where
  xyz := equalEnergyAt0
  invariant := equal_energy_normalized_invariant

@[surface_candidate]
def equalEnergyColorTorusFrame : ColorTorusRenderFrame :=
  colorTorusRenderFrame standardPresentationRadii equalEnergyColorTorusView

@[surface_candidate]
theorem equalEnergyColorTorusView_preserves_source :
    equalEnergyColorTorusView.xyz = equalEnergyAt0 ∧
      equalEnergyColorTorusView.xyz.revision = equalEnergyAt0.revision ∧
      equalEnergyColorTorusView.xyz.value = equalEnergyAt0.value := by
  exact ⟨rfl, rfl, rfl⟩

@[surface_candidate]
theorem equalEnergyColorTorusView_uses_canonical_adapter :
    equalEnergyColorTorusView.flatCoordinates =
      xyzToFlatColorTorus equalEnergyColorTorusView.normalizedPoint ∧
      equalEnergyColorTorusView.mapId = flatColorTorusMapIdV1 := by
  exact ⟨rfl, rfl⟩

@[surface_candidate]
theorem equalEnergyColorTorusFrame_preserves_source :
    equalEnergyColorTorusFrame.sourceRevision = equalEnergyAt0.revision ∧
      equalEnergyColorTorusFrame.sourceValue = equalEnergyAt0.value ∧
      equalEnergyColorTorusFrame.authority = .presentationOnly := by
  exact ⟨rfl, rfl, rfl⟩

@[surface_candidate]
theorem equalEnergyColorTorusEmbedding_periodic_u :
    flatColorTorusEmbedding standardPresentationRadii
        (equalEnergyColorTorusView.u + 2 * Real.pi)
        equalEnergyColorTorusView.v =
      flatColorTorusEmbedding standardPresentationRadii
        equalEnergyColorTorusView.u equalEnergyColorTorusView.v := by
  exact flatColorTorusEmbedding_periodic_u _ _ _

@[surface_candidate]
theorem equalEnergyColorTorusEmbedding_periodic_v :
    flatColorTorusEmbedding standardPresentationRadii
        equalEnergyColorTorusView.u
        (equalEnergyColorTorusView.v + 2 * Real.pi) =
      flatColorTorusEmbedding standardPresentationRadii
        equalEnergyColorTorusView.u equalEnergyColorTorusView.v := by
  exact flatColorTorusEmbedding_periodic_v _ _ _

@[surface_candidate]
theorem equalEnergyColorTorus_has_no_torsion_authority :
    ¬ Presentation.XYZElliptic.ProvesArithmeticTorsion
      (Presentation.XYZElliptic.xyzToEllipticPresentationV1
        equalEnergyColorTorusView.xyz.value) := by
  exact colorTorusView_has_no_torsion_authority equalEnergyColorTorusView

@[surface_candidate]
theorem equalEnergyColorTorus_has_no_grh_authority :
    ¬ ProvesForbiddenAnalyticAuthority .dirichletGRH := by
  exact colorTorusView_has_no_grh_authority equalEnergyColorTorusView

end


end Generated.XYZColorTorusFixture
```
