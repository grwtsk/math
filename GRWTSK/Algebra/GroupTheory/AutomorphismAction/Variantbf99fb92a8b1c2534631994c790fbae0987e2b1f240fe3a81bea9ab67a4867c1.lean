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
