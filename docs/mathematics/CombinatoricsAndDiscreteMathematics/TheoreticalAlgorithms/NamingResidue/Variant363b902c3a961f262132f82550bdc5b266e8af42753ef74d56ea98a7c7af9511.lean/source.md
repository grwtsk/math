# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NamingResidue.Variant363b902c3a961f262132f82550bdc5b266e8af42753ef74d56ea98a7c7af9511

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `266d51a0c82a37957be30e3af7b82d659c07bec1` · SHA-256 `363b902c3a961f262132f82550bdc5b266e8af42753ef74d56ea98a7c7af9511`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.NeuralDiffusion.ExternalHeat

/-!
# Persistent naming residue

A kernel-certified route remains fixed even when a model repeatedly proposes
a different name.  Persistent disagreement opens a proposal-only naming
residue; it does not revoke identity, route, or source authority.

This is the second exact activator beside a non-singleton routing residue.
Finite retry counts are not used as thresholds: persistence is supplied as
mathematical evidence.
-/

namespace Mathematics.NeuralDiffusion

open Mathematics.Projection

universe u

/--
One resolved incidence anchor together with an unbounded disagreement witness and a
durable proposal-plane address.
-/
structure PersistentNamingResidue
    (Element : Type u) [DecidableEq Element] where
  point : NamedIncidenceAnchor Element
  disagreement : PersistentDisagreement
  activationKey : ActivationKey
  persistedObject : ObjectAddress

namespace PersistentNamingResidue

variable {Element : Type u} [DecidableEq Element]

/-- Naming disagreement never changes the already certified route. -/
def fixedRoute
    (residue : PersistentNamingResidue Element) : RigidKey :=
  residue.point.routeKey

/-- Persistent naming disagreement is an exact activator request. -/
def activationRequired
    (_residue : PersistentNamingResidue Element) : Bool :=
  true

@[simp] theorem activates
    (residue : PersistentNamingResidue Element) :
    residue.activationRequired = true :=
  rfl

end PersistentNamingResidue

/--
External heat directed at a naming residue.  It proposes new denotation or
structure while preserving the incidence anchor and carrying no fact authority.
-/
structure NamingHeatInjectionRequest
    {Element : Type u} [DecidableEq Element]
    (residue : PersistentNamingResidue Element) where
  source : HeatSource
  target : HeatTarget
  proposedMathematics : List String
  evidenceObjects : List ObjectAddress
  authority : ProposalAuthority
  anchorRoutePreserved :
    residue.fixedRoute = residue.point.routeKey

end Mathematics.NeuralDiffusion
```
