# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CoreTheorems.Variant4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0cfa17d4280096d794a0c394b47e1d3c9f631d14` · SHA-256 `4bdc09c78d6862322ae7a530fa04b9ce0051fa6fedc7882ad38ecff1a556b420`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Noninterference

/-!
# Public graph-access theorem surface

These names expose the foundational laws without requiring callers to know
which structure namespace contains the underlying proof.
-/

namespace Mathematics.GraphAccess

theorem graphCut_node_codes_injective
    (G : GraphCut) :
    Function.Injective G.nodeCode :=
  G.nodeCode_injective

theorem graphCut_edge_codes_injective
    (G : GraphCut) :
    Function.Injective G.edgeCode :=
  G.edgeCode_injective

theorem graphCut_edgeClass_codes_injective
    (G : GraphCut) :
    Function.Injective G.edgeClassCode :=
  G.edgeClassCode_injective

theorem arc_reverse_involutive
    {G : GraphCut} :
    Function.Involutive (@Arc.reverse G) :=
  Arc.reverse_involutive

def eligible_arc_decidable
    {G : GraphCut}
    (scope : RelationScope G)
    (admissibility : AdmissibilityProfile G)
    (node : G.Node)
    (arc : Arc G) :
    Decidable
      (EligibleArc scope admissibility node arc) :=
  inferInstance

theorem canonical_neighbors_sound
    {G : GraphCut}
    (scope : RelationScope G)
    (admissibility : AdmissibilityProfile G)
    (node : G.Node)
    {arc : Arc G}
    (member :
      arc ∈ canonicalNeighborList
        scope admissibility node) :
    EligibleArc scope admissibility node arc :=
  (mem_canonicalNeighborList
    scope admissibility node arc).mp member

theorem canonical_neighbors_complete
    {G : GraphCut}
    (scope : RelationScope G)
    (admissibility : AdmissibilityProfile G)
    (node : G.Node)
    {arc : Arc G}
    (eligible :
      EligibleArc scope admissibility node arc) :
    arc ∈ canonicalNeighborList
      scope admissibility node :=
  (mem_canonicalNeighborList
    scope admissibility node arc).mpr eligible

theorem neighbor_enumeration_mem_iff
    {G : GraphCut}
    {scope : RelationScope G}
    {admissibility : AdmissibilityProfile G}
    (enumeration :
      NeighborEnumeration G scope admissibility)
    (node : G.Node)
    (arc : Arc G) :
    arc ∈ enumeration.neighbors node ↔
      EligibleArc scope admissibility node arc :=
  enumeration.mem_iff node arc

theorem neighbor_enumeration_eq_canonical
    {G : GraphCut}
    {scope : RelationScope G}
    {admissibility : AdmissibilityProfile G}
    (enumeration :
      NeighborEnumeration G scope admissibility)
    (node : G.Node) :
    enumeration.neighbors node =
      canonicalNeighborList scope admissibility node :=
  enumeration.eq_canonical node

theorem neighbor_enumeration_unique
    {G : GraphCut}
    {scope : RelationScope G}
    {admissibility : AdmissibilityProfile G}
    (left right :
      NeighborEnumeration G scope admissibility) :
    left.neighbors = right.neighbors :=
  NeighborEnumeration.ext left right

theorem authority_supports_required_capability
    (authority : AccessAuthority)
    (objective : AccessObjective)
    (supports : AuthoritySupports authority objective) :
    authority.grants objective.requiredCapability =
      true :=
  supports

theorem supports_productKind_eq
    {mode : TraversalMode}
    {objective : AccessObjective}
    (supports : Supports mode objective) :
    mode.productKind = objective.productKind :=
  supports.productKind_eq

theorem admitted_request_has_admissible_source
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    (request : AdmittedAccessRequest G profiles) :
    NodeAdmissible request.admissibility
      request.source :=
  request.sourceAdmissible

theorem admitted_request_required_target_present
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    (request : AdmittedAccessRequest G profiles)
    (required :
      request.objective.requiresTarget = true) :
    request.target.isSome :=
  request.targetPresent required

theorem accessMachine_encode_injective
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {request : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G request}
    (machine :
      AccessMachine G request outputs) :
    Function.Injective machine.encode :=
  machine.encode_injective

theorem accessMachine_step_preserves_invariant
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {request : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G request}
    (machine :
      AccessMachine G request outputs)
    {state next : machine.State}
    (stateInvariant : machine.invariant state)
    (continued : machine.step state = .continue next) :
    machine.invariant next :=
  machine.step_preserves_invariant
    stateInvariant continued

theorem accessMachine_continue_advances_one_step
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {request : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G request}
    (machine :
      AccessMachine G request outputs)
    {state next : machine.State}
    (stateInvariant : machine.invariant state)
    (continued : machine.step state = .continue next) :
    (machine.usage next).steps =
      (machine.usage state).steps + 1 :=
  machine.continue_advances_one_step
    stateInvariant continued

end Mathematics.GraphAccess
```
