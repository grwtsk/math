# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleConjectureJunction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `589364085aff65f83aad8e96b4de42571be97f12` · SHA-256 `e8e01b41ada5f7dd63deba4e7de3794f5e29622d0dba95d64f100bad07636e9c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleEdgeObstructionWitness
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Conjectural routes into the canonical rectangle-edge witness

This file formalizes the logical boundary between several conjectural programs
surrounding the Riemann zeta function and the exact finite certificate named by
`CanonicalRectangleEdgeWitness N`.

A route label is not a theorem. A `RouteClaim` stores a proposition-valued
formulation supplied elsewhere. A `WitnessBridge` must additionally expose a
separate deterministic-upgrade proposition and a theorem producing the exact
rectangle-edge witness from both premises. A `BypassBridge` instead proves the
named bounded conclusion `RHThrough N` directly.

The extra deterministic premise is deliberate. Average moments, limiting zero
statistics, heat-flow assertions, or spectral analogies are not silently
coerced into a rational fixed-contour enclosure. Any such conversion has to be
carried by an explicit proof field.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalRectangleConjectureJunction

open AdmissibleRectangles
open PositiveHeightCountDeficit
open CanonicalRectangleEdgeObstructionWitness

noncomputable section

/-- Named conjectural or spectral programs that can approach the maintained
rectangle-edge obstruction. The constructors classify routes; they do not
assert any conjecture. -/
inductive Route where
  | lindelof
  | keatingSnaithMoments
  | shiftedMoments
  | montgomeryPairCorrelation
  | gueSpacing
  | simplicity
  | gonekHejhalNegativeMoments
  | ratios
  | deBruijnNewman
  | hilbertPolya
  | berryKeating
  deriving DecidableEq, Repr

/-- The principal kind of information contributed by a route before an exact
finite bridge is supplied. -/
inductive Mechanism where
  | valueDistribution
  | zeroSpacing
  | reciprocalStability
  | averagedLogDerivative
  | heatFlow
  | spectralResolvent
  deriving DecidableEq, Repr

/-- Principal mechanism associated with each named route. This is a taxonomy,
not an implication into the witness. -/
def mechanism : Route → Mechanism
  | .lindelof => .valueDistribution
  | .keatingSnaithMoments => .valueDistribution
  | .shiftedMoments => .valueDistribution
  | .montgomeryPairCorrelation => .zeroSpacing
  | .gueSpacing => .zeroSpacing
  | .simplicity => .zeroSpacing
  | .gonekHejhalNegativeMoments => .reciprocalStability
  | .ratios => .averagedLogDerivative
  | .deBruijnNewman => .heatFlow
  | .hilbertPolya => .spectralResolvent
  | .berryKeating => .spectralResolvent

/-- Exact kinds of conversion that may be required before a conjectural route
can enter the deterministic rectangle-edge witness. -/
inductive JunctionObligation where
  | deterministicUpperValueControl
  | deterministicLowerSeparation
  | pointwiseLogDerivativeEnvelope
  | fixedContourZeroSeparation
  | sourceAlignedFiniteCertificate
  | averageToPointwiseUpgrade
  | statisticalToDeterministicUpgrade
  | averageToUniformReciprocalUpgrade
  | effectiveHeatFlowTransfer
  | exactOperatorAndDomain
  | selfAdjointness
  | multiplicityPreservingZeroCorrespondence
  | effectiveResolventBound
  | resolventToLogDerivativeComparison
  | exactCountIsolation
  deriving DecidableEq, Repr

/-- The explicit unresolved conversion inventory associated with each route.
The list records a conservative interface boundary; membership does not assert
that the listed obligations are sufficient without the bridge theorem below. -/
def routeObligations : Route → List JunctionObligation
  | .lindelof =>
      [.deterministicLowerSeparation,
       .pointwiseLogDerivativeEnvelope,
       .sourceAlignedFiniteCertificate,
       .exactCountIsolation]
  | .keatingSnaithMoments =>
      [.averageToPointwiseUpgrade,
       .deterministicLowerSeparation,
       .pointwiseLogDerivativeEnvelope,
       .sourceAlignedFiniteCertificate,
       .exactCountIsolation]
  | .shiftedMoments =>
      [.averageToPointwiseUpgrade,
       .deterministicLowerSeparation,
       .pointwiseLogDerivativeEnvelope,
       .sourceAlignedFiniteCertificate,
       .exactCountIsolation]
  | .montgomeryPairCorrelation =>
      [.statisticalToDeterministicUpgrade,
       .fixedContourZeroSeparation,
       .pointwiseLogDerivativeEnvelope,
       .sourceAlignedFiniteCertificate,
       .exactCountIsolation]
  | .gueSpacing =>
      [.statisticalToDeterministicUpgrade,
       .fixedContourZeroSeparation,
       .pointwiseLogDerivativeEnvelope,
       .sourceAlignedFiniteCertificate,
       .exactCountIsolation]
  | .simplicity =>
      [.fixedContourZeroSeparation,
       .pointwiseLogDerivativeEnvelope,
       .sourceAlignedFiniteCertificate,
       .exactCountIsolation]
  | .gonekHejhalNegativeMoments =>
      [.averageToUniformReciprocalUpgrade,
       .fixedContourZeroSeparation,
       .pointwiseLogDerivativeEnvelope,
       .sourceAlignedFiniteCertificate,
       .exactCountIsolation]
  | .ratios =>
      [.averageToPointwiseUpgrade,
       .pointwiseLogDerivativeEnvelope,
       .sourceAlignedFiniteCertificate,
       .exactCountIsolation]
  | .deBruijnNewman =>
      [.effectiveHeatFlowTransfer,
       .fixedContourZeroSeparation,
       .pointwiseLogDerivativeEnvelope,
       .sourceAlignedFiniteCertificate,
       .exactCountIsolation]
  | .hilbertPolya =>
      [.exactOperatorAndDomain,
       .selfAdjointness,
       .multiplicityPreservingZeroCorrespondence,
       .effectiveResolventBound,
       .resolventToLogDerivativeComparison,
       .sourceAlignedFiniteCertificate,
       .exactCountIsolation]
  | .berryKeating =>
      [.exactOperatorAndDomain,
       .selfAdjointness,
       .multiplicityPreservingZeroCorrespondence,
       .effectiveResolventBound,
       .resolventToLogDerivativeComparison,
       .sourceAlignedFiniteCertificate,
       .exactCountIsolation]

/-- Membership in the declared conversion inventory. -/
def Requires (route : Route) (obligation : JunctionObligation) : Prop :=
  obligation ∈ routeObligations route

/-- Every named route retains a source-aligned finite-certificate obligation. -/
theorem requires_sourceAlignedFiniteCertificate (route : Route) :
    Requires route .sourceAlignedFiniteCertificate := by
  cases route <;> simp [Requires, routeObligations]

/-- Every named route retains exact integer isolation before it supplies this
particular rectangle-edge witness. -/
theorem requires_exactCountIsolation (route : Route) :
    Requires route .exactCountIsolation := by
  cases route <;> simp [Requires, routeObligations]

/-- No route has an empty conversion inventory. -/
theorem routeObligations_ne_nil (route : Route) :
    routeObligations route ≠ [] := by
  cases route <;> simp [routeObligations]

/-- A proposition-valued formulation of one named external program. The
statement is intentionally supplied by the caller so that competing exact
formulations are not conflated. -/
structure RouteClaim (route : Route) where
  statement : Prop

/-- An explicit theorem bridge from a route claim and a separately stated
deterministic upgrade to the exact canonical rectangle-edge witness. -/
structure WitnessBridge (route : Route) (N : ℕ) where
  claim : RouteClaim route
  deterministicUpgrade : Prop
  produce :
    claim.statement → deterministicUpgrade → CanonicalRectangleEdgeWitness N

namespace WitnessBridge

/-- A complete bridge constructs existence of the named witness. -/
theorem hasWitness {route : Route} {N : ℕ}
    (bridge : WitnessBridge route N)
    (source : bridge.claim.statement)
    (upgrade : bridge.deterministicUpgrade) :
    HasCanonicalRectangleEdgeWitness N :=
  ⟨bridge.produce source upgrade⟩

/-- A complete bridge fixes an exact positive-height count at the selected
canonical contour height. It still does not locate every zero on the line. -/
theorem exists_exact_count {route : Route} {N : ℕ}
    (bridge : WitnessBridge route N)
    (source : bridge.claim.statement)
    (upgrade : bridge.deterministicUpgrade) :
    ∃ count : ℕ, positiveHeightCount (contourHeight N) = count :=
  exists_exact_positive_count (bridge.hasWitness source upgrade)

end WitnessBridge

/-- A route may bypass the named edge witness only by supplying a theorem that
enters the maintained bounded-RH conclusion directly. -/
structure BypassBridge (route : Route) (N : ℕ) where
  claim : RouteClaim route
  deterministicUpgrade : Prop
  proveRHThrough : claim.statement → deterministicUpgrade → RHThrough N

namespace BypassBridge

/-- Apply a fully supplied direct bounded-RH bridge. -/
theorem rhThrough {route : Route} {N : ℕ}
    (bridge : BypassBridge route N)
    (source : bridge.claim.statement)
    (upgrade : bridge.deterministicUpgrade) :
    RHThrough N :=
  bridge.proveRHThrough source upgrade

end BypassBridge

/-- The source claim alone supplies the witness only when this proposition is
proved separately. No constructor in this file establishes it. -/
def ClaimAloneSuppliesWitness {route : Route}
    (claim : RouteClaim route) (N : ℕ) : Prop :=
  claim.statement → HasCanonicalRectangleEdgeWitness N

/-- Direct bounded-RH consequence of a source claim, again requiring a separate
proof rather than a route label. -/
def ClaimAloneBypassesWitness {route : Route}
    (claim : RouteClaim route) (N : ℕ) : Prop :=
  claim.statement → RHThrough N

/-- The two lawful shapes of a connection into the maintained finite-height RH
program. An inhabitant carries an actual theorem bridge. -/
inductive RouteConnection (route : Route) (N : ℕ) where
  | throughWitness (bridge : WitnessBridge route N)
  | bypass (bridge : BypassBridge route N)

end

end GRWTSK.RiemannHypothesis.CanonicalRectangleConjectureJunction
```
