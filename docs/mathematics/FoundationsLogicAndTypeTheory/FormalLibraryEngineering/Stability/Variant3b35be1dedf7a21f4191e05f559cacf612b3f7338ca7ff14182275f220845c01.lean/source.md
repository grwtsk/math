# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Stability.Variant3b35be1dedf7a21f4191e05f559cacf612b3f7338ca7ff14182275f220845c01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63d67bddb66c1f8dc09a772f46fe3d43a0c1039d` · SHA-256 `3b35be1dedf7a21f4191e05f559cacf612b3f7338ca7ff14182275f220845c01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.InfiniteTime.Model

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/

namespace Surface
namespace Legacy

class SurfaceTopologicalSpace (α : Type) where
  neighborhoodToken : α -> Type

structure TopologicalStability
    (α : Type) [SurfaceTopologicalSpace α]
    (x : Nat -> α) where
  limit : α
  converges : Prop
  stableCertificate : Prop

structure ClaimsInfiniteTimeStability
    (α : Type) [SurfaceTopologicalSpace α]
    (x : Nat -> α) where
  claim : Prop

theorem infiniteTime_stability_requires_limit_certificate
    {α : Type} [SurfaceTopologicalSpace α] (x : Nat -> α) :
    ClaimsInfiniteTimeStability α x ->
      ∃ _cert : TopologicalStability α x, True := by
  intro claim
  let cert : TopologicalStability α x :=
    { limit := x 0, converges := claim.claim, stableCertificate := claim.claim }
  exact ⟨cert, True.intro⟩

end Legacy
end Surface
```
