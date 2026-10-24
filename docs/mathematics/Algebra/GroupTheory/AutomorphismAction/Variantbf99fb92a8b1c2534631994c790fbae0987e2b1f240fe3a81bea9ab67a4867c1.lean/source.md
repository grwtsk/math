# Complete source: GRWTSK.Algebra.GroupTheory.AutomorphismAction.Variantbf99fb92a8b1c2534631994c790fbae0987e2b1f240fe3a81bea9ab67a4867c1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bd2460b2f7dac71a9209a7087883848a3caef30` · SHA-256 `bf99fb92a8b1c2534631994c790fbae0987e2b1f240fe3a81bea9ab67a4867c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Federation.TransportHolonomy
import Mathematics.MobiusOntology.ControlledMap

/-!
# Internal automorphisms and equivariance

An action creates explicit commutation obligations for reference,
implementation, and observation maps.
-/

namespace Mathematics.MobiusOntology

universe u v w x

abbrev AutomorphismAction
    (Symmetry : Type u) (Object : Type v) [Group Symmetry] :=
  Mathematics.Federation.InternalAutomorphismAction Symmetry Object

structure EquivariantMap
    {Symmetry : Type u} {Source : Type v} {Target : Type w}
    [Group Symmetry]
    (source : AutomorphismAction Symmetry Source)
    (target : AutomorphismAction Symmetry Target)
    (map : Source → Target) : Prop where
  commutes :
    ∀ symmetry point,
      map (source.action symmetry point) =
        target.action symmetry (map point)

structure RefinementAutomorphismCertificate
    {Symmetry : Type u} {X : Type v} {Y : Type w}
    {Observation : Type x}
    [Group Symmetry]
    [PseudoMetricSpace X] [PseudoMetricSpace Y]
    (controlled : ControlledMap X Y)
    (source : AutomorphismAction Symmetry X)
    (target : AutomorphismAction Symmetry Y)
    (observationAction : AutomorphismAction Symmetry Observation)
    (observe : Y → Observation) : Prop where
  reference :
    EquivariantMap source target controlled.reference
  implementation :
    EquivariantMap source target controlled.implementation
  observation :
    EquivariantMap target observationAction observe

end Mathematics.MobiusOntology
```
