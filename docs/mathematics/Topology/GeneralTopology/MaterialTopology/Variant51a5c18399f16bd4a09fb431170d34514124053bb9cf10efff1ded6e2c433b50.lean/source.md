# Complete source: GRWTSK.Topology.GeneralTopology.MaterialTopology.Variant51a5c18399f16bd4a09fb431170d34514124053bb9cf10efff1ded6e2c433b50

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da8022324caa9662654c8195c9020b3a8cf1771e` · SHA-256 `51a5c18399f16bd4a09fb431170d34514124053bb9cf10efff1ded6e2c433b50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Topology.Homeomorph.Lemmas

/-!
# Topological limits of a fixed material-interface description

A homeomorphism preserves connectedness, so its image cannot split a connected
interface or merge a disconnected interface into a connected one. The same
obstruction applies to any declared diffeomorphism through its underlying
homeomorphism. No smoothness, flow existence, or global material parametrization
is constructed here. A level-set evolution can change topology by leaving this
fixed-homeomorphism description; these results do not rule out that evolution.

Disconnectedness is expressed as `¬IsPreconnected`, so the empty set is not
mistaken for a disconnected interface merely because `IsConnected` requires
nonemptiness.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace SurfaceBulk

variable {X Y M T : Type*} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace M]

/-- A material homeomorphism preserves connectedness of its exact set image. -/
theorem material_homeomorph_image_connected_iff (transport : X ≃ₜ Y) (interface : Set X) :
    IsConnected (transport '' interface) ↔ IsConnected interface :=
  transport.isConnected_image

/-- A material homeomorphism also preserves preconnectedness, including the empty case. -/
theorem material_homeomorph_image_preconnected_iff (transport : X ≃ₜ Y)
    (interface : Set X) :
    IsPreconnected (transport '' interface) ↔ IsPreconnected interface :=
  transport.isPreconnected_image

/-- Even a continuous map on a connected interface cannot have a disconnected exact image. -/
theorem no_continuous_image_of_connected_disconnected {initial : Set X} {final : Set Y}
    (initialConnected : IsConnected initial) (finalDisconnected : ¬IsPreconnected final) :
    ¬∃ transport : X → Y, ContinuousOn transport initial ∧ transport '' initial = final := by
  rintro ⟨transport, continuous, imageEqual⟩
  apply finalDisconnected
  rw [← imageEqual]
  exact (initialConnected.image transport continuous).isPreconnected

/-- A connected interface cannot fragment under a homeomorphism with the claimed exact image. -/
theorem no_homeomorph_image_of_connected_disconnected {initial : Set X} {final : Set Y}
    (initialConnected : IsConnected initial) (finalDisconnected : ¬IsPreconnected final) :
    ¬∃ transport : X ≃ₜ Y, transport '' initial = final := by
  rintro ⟨transport, imageEqual⟩
  exact no_continuous_image_of_connected_disconnected initialConnected finalDisconnected
    ⟨transport, transport.continuous.continuousOn, imageEqual⟩

/-- A disconnected interface cannot merge into a connected exact image under a homeomorphism. -/
theorem no_homeomorph_image_of_disconnected_connected {initial : Set X} {final : Set Y}
    (initialDisconnected : ¬IsPreconnected initial) (finalConnected : IsConnected final) :
    ¬∃ transport : X ≃ₜ Y, transport '' initial = final := by
  rintro ⟨transport, imageEqual⟩
  apply initialDisconnected
  apply transport.isPreconnected_image.mp
  rw [imageEqual]
  exact finalConnected.isPreconnected

/-- The obstruction already holds for a homeomorphism between the interface subtypes themselves. -/
theorem no_interface_homeomorph_of_connected_disconnected {initial : Set X} {final : Set Y}
    (initialConnected : IsConnected initial) (finalDisconnected : ¬IsPreconnected final) :
    ¬Nonempty (initial ≃ₜ final) := by
  rintro ⟨transport⟩
  have connectedFinal : ConnectedSpace final :=
    transport.connectedSpace_iff.mp (isConnected_iff_connectedSpace.mp initialConnected)
  exact finalDisconnected (isConnected_iff_connectedSpace.mpr connectedFinal).isPreconnected

/-- One fixed interface transported by homeomorphisms cannot represent both a connected
and a disconnected time slice. No temporal continuity assumption is needed for this obstruction. -/
theorem no_fixed_interface_homeomorph_family (interfaces : T → Set X) (connectedTime splitTime : T)
    (connectedSlice : IsConnected (interfaces connectedTime))
    (disconnectedSlice : ¬IsPreconnected (interfaces splitTime)) :
    ¬∃ (reference : Set M) (transport : T → M ≃ₜ X),
      ∀ time, transport time '' reference = interfaces time := by
  rintro ⟨reference, transport, imageEqual⟩
  have referenceConnected : IsConnected reference := by
    apply (transport connectedTime).isConnected_image.mp
    rw [imageEqual connectedTime]
    exact connectedSlice
  apply disconnectedSlice
  rw [← imageEqual splitTime]
  exact ((transport splitTime).isConnected_image.mpr referenceConnected).isPreconnected

/-- The empty set is preconnected; its lack of nonempty connectedness is not a split interface. -/
theorem empty_interface_is_preconnected : IsPreconnected (∅ : Set X) :=
  isPreconnected_empty

end SurfaceBulk
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
