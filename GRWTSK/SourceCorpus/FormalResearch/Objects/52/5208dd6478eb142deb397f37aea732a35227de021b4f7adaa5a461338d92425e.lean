module

public import Presentation.SelfAnneal
public import Presentation.Transport.Network

/-!
# Compatibility facade for admitted finite projection networks

The historical public names now refer to the operational transport network.
Its origin carries the generic ordered route and an admitted structural trace;
nodes carry canonical packet revisions, snapshot hashes, and measured energy.
-/

public section

namespace Presentation

abbrev CompileTimeAnnealEnergy := Surface.Refactor.Surgery.StructuralEnergy
abbrev CompileTimeAnnealTrace := Transport.AnnealTrace
abbrev SelfAnnealedProjectionNetworkOrigin := Transport.FiniteProjectionOrigin
abbrev ProjectionNodeKind := Transport.NetworkNodeKind
abbrev ProjectionNode := Transport.NetworkNode
abbrev ProjectionEdge := Transport.NetworkEdge
abbrev SelfAnnealedProjectionNetwork :=
  Transport.SelfAnnealedProjectionNetwork

def SelfAnnealedProjectionNetworkCreatesAuthority
    (_network : SelfAnnealedProjectionNetwork) : Prop := False

theorem self_annealed_projection_network_origin_sound
    (origin : SelfAnnealedProjectionNetworkOrigin)
    (valid : origin.Valid) :
    origin.routing.Valid ∧
      origin.route = origin.routing.orderedRoute origin.startHost ∧
      origin.admittedTrace.Valid :=
  valid

theorem self_annealed_projection_network_sound
    (network : SelfAnnealedProjectionNetwork)
    (valid : network.Valid) :
    network.origin.Valid ∧
      (∀ node ∈ network.nodes, node.Valid network.origin) ∧
      network.authority = .presentationOnly ∧
      ¬ SelfAnnealedProjectionNetworkCreatesAuthority network :=
  ⟨valid.1, valid.2.2.1, valid.2.2.2.2, by
    simp [SelfAnnealedProjectionNetworkCreatesAuthority]⟩

end Presentation
