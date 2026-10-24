# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CertifiedRoute.Variant74ffd663e593a1c2ea5004525436037b844f8b38dc4e8cefde034a0a47e2ce51

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dee9ed824386954f4f163a50c59354da628bbfea` · SHA-256 `74ffd663e593a1c2ea5004525436037b844f8b38dc4e8cefde034a0a47e2ce51`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
