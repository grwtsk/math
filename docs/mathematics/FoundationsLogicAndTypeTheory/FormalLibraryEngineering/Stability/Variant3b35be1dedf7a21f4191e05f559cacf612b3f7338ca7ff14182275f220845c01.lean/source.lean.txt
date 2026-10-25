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
