import Mathlib.Data.Finset.Basic
import Mathematics.Projection.SnapshotAuthority

/-!
# Certified conjunctive proof routes

A route edge is conjunctive: every premise is required.  A certificate may
record provenance, but it is never substituted for the proposition-level
implication carried by the route itself.

Every route is indexed by one projection snapshot and contains the sealed
`VerifiedActiveSnapshot` capability for that snapshot.  Consequently there is
no route constructor for a candidate, revoked, or superseded snapshot.
-/

namespace Mathematics.ProofStrategy

open Mathematics.Projection

universe u v

structure CertifiedRoute
    (Obligation : Type u)
    (Certificate : Type v)
    [DecidableEq Obligation]
    (Statement : Obligation → Prop)
    (snapshot : ProjectionSnapshot) where
  routeId : String
  premises : Finset Obligation
  premises_nonempty : premises.Nonempty
  conclusion : Obligation
  certificate : Certificate
  activeSnapshot : VerifiedActiveSnapshot snapshot
  implication :
    (∀ premise, premise ∈ premises → Statement premise) →
      Statement conclusion

namespace CertifiedRoute

/-- A route proves its conclusion only after every conjunctive premise is proved. -/
theorem proves
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {Statement : Obligation → Prop}
    {snapshot : ProjectionSnapshot}
    (route : CertifiedRoute Obligation Certificate Statement snapshot)
    (premises :
      ∀ premise, premise ∈ route.premises → Statement premise) :
    Statement route.conclusion :=
  route.implication premises

end CertifiedRoute

/--
The one usable-edge predicate shared by discharge, frontier, cutset, and work
planning.  Usability is restricted to registered routes at the same committed
snapshot head.
-/
structure UsableRouteRegistry
    (Obligation : Type u)
    (Certificate : Type v)
    [DecidableEq Obligation]
    (Statement : Obligation → Prop)
    (snapshot : ProjectionSnapshot) where
  activeSnapshot : VerifiedActiveSnapshot snapshot
  routes : List (CertifiedRoute Obligation Certificate Statement snapshot)
  usable :
    CertifiedRoute Obligation Certificate Statement snapshot → Prop
  usable_decidable :
    DecidablePred usable
  usable_registered :
    ∀ route, usable route → route ∈ routes
  route_head_current :
    ∀ route, route ∈ routes →
      route.activeSnapshot.head = activeSnapshot.head

attribute [instance] UsableRouteRegistry.usable_decidable

end Mathematics.ProofStrategy
