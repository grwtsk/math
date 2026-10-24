# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Route.Varianteabcc8b64b8345c887a413993d77b1555cbe9ac04ec734e32656227f22ce9a19

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ee03bb91de28e3e98bd49d9766d07ce897af612` · SHA-256 `8bed665776697e247374dbf2fd38a0679539c8c614b1de86c924aa5a1642cd01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.StableFiniteCode.Variant411688ffc617379d74ed5837b6469b02354a3692bacce6297dd4c5af676dfe95","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"411688ffc617379d74ed5837b6469b02354a3692bacce6297dd4c5af676dfe95","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.StableFiniteCode.Variant411688ffc617379d74ed5837b6469b02354a3692bacce6297dd4c5af676dfe95","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"411688ffc617379d74ed5837b6469b02354a3692bacce6297dd4c5af676dfe95","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:320433e3de5f4dfe34b2575f/workspace/lib/Surface/Core/Transport/Route.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","lake_or_runtime_control","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.Transport.Hash
public import Mathlib.Data.Fintype.Card
public import Mathlib.Data.Finset.Card
public import Mathlib.Data.Finset.Dedup
public import Mathlib.Data.Finset.Sort
public import Mathlib.Data.List.Infix
public import Mathlib.Data.List.Sort
public import Mathlib.Data.Prod.Lex
public import Mathlib.Logic.Relation
import Mathlib.Tactic

/-!
# Payload-neutral deterministic finite routing

Version one is breadth first. A target is marked visited when it is enqueued,
so cycles, self-loops, and parallel edges cannot rediscover it. Outgoing edges
are considered by the exact lexicographic key
`(tension, tieBreak, stable edge code)`.

This module carries no payload, theorem statement, or domain-specific
invariant. Its hash is opaque finite transport metadata: Lean validates the
spelling but does not compute SHA-256 or grant theorem authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.StableFiniteCode.Variant411688ffc617379d74ed5837b6469b02354a3692bacce6297dd4c5af676dfe95

public section

namespace Surface.Core.Transport

@[surface_novel]
structure StableFiniteCode (α : Type*) [Fintype α] where
  code : α → Nat
  injective : Function.Injective code
  codeLt : ∀ a, code a < Fintype.card α

@[surface_novel]
structure DeclaredEdge (Host EdgeId : Type*) where
  edgeId : EdgeId
  source : Host
  target : Host
  tension : Int
  tieBreak : Nat
deriving DecidableEq, Repr

@[surface_novel]
structure EdgeKey where
  tension : Int
  tieBreak : Nat
  edgeCode : Nat
deriving DecidableEq, Repr

/-- The route order is tension, then tie break, then stable edge code. -/
@[expose] def EdgeKey.lexValue (key : EdgeKey) :
    Lex (Int × Lex (Nat × Nat)) :=
  toLex (key.tension, toLex (key.tieBreak, key.edgeCode))

@[expose] def EdgeKey.LE (left right : EdgeKey) : Prop :=
  left.lexValue ≤ right.lexValue

instance (left right : EdgeKey) : Decidable (EdgeKey.LE left right) := by
  unfold EdgeKey.LE
  infer_instance

@[surface_novel, surface_published]
theorem EdgeKey.le_total (left right : EdgeKey) :
    EdgeKey.LE left right ∨ EdgeKey.LE right left :=
  _root_.le_total left.lexValue right.lexValue

@[surface_novel, surface_published]
theorem EdgeKey.le_trans {first second third : EdgeKey}
    (firstSecond : EdgeKey.LE first second)
    (secondThird : EdgeKey.LE second third) :
    EdgeKey.LE first third :=
  _root_.le_trans firstSecond secondThird

inductive TraversalMode
  | breadthFirst
  | depthFirst
deriving DecidableEq, Repr

@[expose] def routingSchemaVersionV1 : Nat := 1
@[expose] def routingAlgorithmVersionV1 : Nat := 1
@[expose] def routingSerializationVersionV1 : Nat := 1

@[expose] def signedHalfRange (bits : Nat) : Int :=
  Int.ofNat (2 ^ (bits - 1))

@[expose] def FitsSignedBits (bits : Nat) (value : Int) : Prop :=
  0 < bits ∧ -signedHalfRange bits ≤ value ∧ value < signedHalfRange bits

instance (bits : Nat) (value : Int) : Decidable (FitsSignedBits bits value) := by
  unfold FitsSignedBits
  infer_instance

/-- The route-only portion of a finite transport contract. Payload descriptors
are combined with this value by the generic transport contract layer. -/
@[surface_novel]
structure RoutingContract (Host EdgeId : Type*)
    [Fintype Host] [Fintype EdgeId]
    [DecidableEq Host] [DecidableEq EdgeId] where
  schemaVersion : Nat
  algorithmVersion : Nat
  serializationVersion : Nat
  traversalMode : TraversalMode
  hostCode : StableFiniteCode Host
  edgeCode : StableFiniteCode EdgeId
  tensionMin : Int
  tensionMax : Int
  tieBreakBound : Nat
  edges : Finset (DeclaredEdge Host EdgeId)
  contractHash : Hash256

namespace RoutingContract

variable {Host EdgeId : Type*}
variable [Fintype Host] [DecidableEq Host]
variable [Fintype EdgeId] [DecidableEq EdgeId]

@[expose] def edgeKey (contract : RoutingContract Host EdgeId)
    (edge : DeclaredEdge Host EdgeId) : EdgeKey where
  tension := edge.tension
  tieBreak := edge.tieBreak
  edgeCode := contract.edgeCode.code edge.edgeId

/-- The total edge-table order extends the outgoing route key with source and
target codes. Valid outgoing tables have unique route keys; target is the
deterministic final witness for malformed inputs. -/
@[expose] def canonicalEdgeLexValue
    (contract : RoutingContract Host EdgeId)
    (edge : DeclaredEdge Host EdgeId) :
    Lex (Nat × Lex (Int × Lex (Nat × Lex (Nat × Nat)))) :=
  toLex (contract.hostCode.code edge.source,
    toLex (edge.tension,
      toLex (edge.tieBreak,
        toLex (contract.edgeCode.code edge.edgeId,
          contract.hostCode.code edge.target))))

@[expose] def canonicalEdgeLE (contract : RoutingContract Host EdgeId)
    (left right : DeclaredEdge Host EdgeId) : Prop :=
  canonicalEdgeLexValue contract left ≤ canonicalEdgeLexValue contract right

instance (contract : RoutingContract Host EdgeId) :
    DecidableRel contract.canonicalEdgeLE := by
  intro left right
  unfold canonicalEdgeLE
  infer_instance

private theorem canonicalEdgeLexValue_injective
    (contract : RoutingContract Host EdgeId) :
    Function.Injective contract.canonicalEdgeLexValue := by
  intro left right equality
  have levelOne := toLex_inj.mp equality
  have sourceCodeEquality := congrArg Prod.fst levelOne
  have levelTwo := toLex_inj.mp (congrArg Prod.snd levelOne)
  have tensionEquality := congrArg Prod.fst levelTwo
  have levelThree := toLex_inj.mp (congrArg Prod.snd levelTwo)
  have tieBreakEquality := congrArg Prod.fst levelThree
  have levelFour := toLex_inj.mp (congrArg Prod.snd levelThree)
  have edgeCodeEquality := congrArg Prod.fst levelFour
  have targetCodeEquality := congrArg Prod.snd levelFour
  have sourceEquality := contract.hostCode.injective sourceCodeEquality
  have edgeIdEquality := contract.edgeCode.injective edgeCodeEquality
  have targetEquality := contract.hostCode.injective targetCodeEquality
  cases left
  cases right
  simp_all

instance (contract : RoutingContract Host EdgeId) :
    IsTrans (DeclaredEdge Host EdgeId) contract.canonicalEdgeLE :=
  ⟨fun _ _ _ leftMiddle middleRight ↦
    _root_.le_trans leftMiddle middleRight⟩

instance (contract : RoutingContract Host EdgeId) :
    Std.Total contract.canonicalEdgeLE :=
  ⟨fun left right ↦ _root_.le_total
    (contract.canonicalEdgeLexValue left)
    (contract.canonicalEdgeLexValue right)⟩

instance (contract : RoutingContract Host EdgeId) :
    Std.Antisymm contract.canonicalEdgeLE :=
  ⟨fun _left _right leftRight rightLeft ↦
    canonicalEdgeLexValue_injective contract
      (_root_.le_antisymm leftRight rightLeft)⟩

@[expose] def sortedCanonicalEdges
    (contract : RoutingContract Host EdgeId) :
    List (DeclaredEdge Host EdgeId) :=
  contract.edges.sort contract.canonicalEdgeLE

@[expose] def hostCodeLE (contract : RoutingContract Host EdgeId)
    (left right : Host) : Prop :=
  contract.hostCode.code left ≤ contract.hostCode.code right

instance (contract : RoutingContract Host EdgeId) :
    DecidableRel contract.hostCodeLE := by
  intro left right
  unfold hostCodeLE
  infer_instance

instance (contract : RoutingContract Host EdgeId) :
    IsTrans Host contract.hostCodeLE :=
  ⟨fun _ _ _ leftMiddle middleRight ↦
    _root_.le_trans leftMiddle middleRight⟩

instance (contract : RoutingContract Host EdgeId) :
    Std.Total contract.hostCodeLE :=
  ⟨fun left right ↦ _root_.le_total
    (contract.hostCode.code left) (contract.hostCode.code right)⟩

instance (contract : RoutingContract Host EdgeId) :
    Std.Antisymm contract.hostCodeLE :=
  ⟨fun _left _right leftRight rightLeft ↦
    contract.hostCode.injective (_root_.le_antisymm leftRight rightLeft)⟩

@[expose] def sortedHosts (contract : RoutingContract Host EdgeId) : List Host :=
  Finset.univ.sort contract.hostCodeLE

@[expose] def hashMatches (contract : RoutingContract Host EdgeId) : Prop :=
  contract.contractHash.Valid

instance (contract : RoutingContract Host EdgeId) :
    Decidable contract.hashMatches := by
  unfold hashMatches
  infer_instance

/-- Executable route-only V1 validity. It rejects every value that canonical
u32/i32 framing would narrow and requires a unique complete route key for each
source host. -/
@[expose] def Valid (contract : RoutingContract Host EdgeId) : Prop :=
  contract.schemaVersion = routingSchemaVersionV1 ∧
  contract.algorithmVersion = routingAlgorithmVersionV1 ∧
  contract.serializationVersion = routingSerializationVersionV1 ∧
  contract.traversalMode = .breadthFirst ∧
  contract.tensionMin ≤ contract.tensionMax ∧
  FitsSignedBits 32 contract.tensionMin ∧
  FitsSignedBits 32 contract.tensionMax ∧
  0 < contract.tieBreakBound ∧
  contract.tieBreakBound ≤ 2 ^ 32 ∧
  Fintype.card Host < 2 ^ 32 ∧
  Fintype.card EdgeId < 2 ^ 32 ∧
  contract.edges.card < 2 ^ 32 ∧
  contract.sortedCanonicalEdges.all (fun edge ↦ decide
    (contract.tensionMin ≤ edge.tension ∧
    edge.tension ≤ contract.tensionMax ∧
    FitsSignedBits 32 edge.tension ∧
    edge.tieBreak < contract.tieBreakBound ∧
    edge.tieBreak < 2 ^ 32)) = true ∧
  contract.sortedCanonicalEdges.all (fun left ↦
    contract.sortedCanonicalEdges.all (fun right ↦ decide
      (left = right ∨ left.edgeId ≠ right.edgeId))) = true ∧
  contract.sortedCanonicalEdges.all (fun left ↦
    contract.sortedCanonicalEdges.all (fun right ↦ decide
      (left.edgeId = right.edgeId → left.tieBreak = right.tieBreak))) = true ∧
  contract.sortedCanonicalEdges.all (fun left ↦
    contract.sortedCanonicalEdges.all (fun right ↦ decide
      (left = right ∨ left.source ≠ right.source ∨
        left.tieBreak ≠ right.tieBreak))) = true ∧
  contract.sortedCanonicalEdges.all (fun left ↦
    contract.sortedCanonicalEdges.all (fun right ↦ decide
      (left = right ∨ left.source ≠ right.source ∨
        contract.edgeKey left ≠ contract.edgeKey right))) = true ∧
  contract.hashMatches

instance (contract : RoutingContract Host EdgeId) : Decidable contract.Valid := by
  unfold Valid
  infer_instance

@[expose] def verifyRoutingContract
    (contract : RoutingContract Host EdgeId) : Bool :=
  decide contract.Valid

@[surface_novel, surface_published, surface_certificate]
theorem verifyRoutingContract_sound (contract : RoutingContract Host EdgeId)
    (accepted : verifyRoutingContract contract = true) : contract.Valid := by
  exact of_decide_eq_true accepted

@[expose] def outgoingEdges (contract : RoutingContract Host EdgeId)
    (host : Host) : List (DeclaredEdge Host EdgeId) :=
  contract.sortedCanonicalEdges.filter (fun edge ↦ edge.source = host)

@[expose] def orderedOutgoingEdges (contract : RoutingContract Host EdgeId)
    (host : Host) : List (DeclaredEdge Host EdgeId) :=
  contract.outgoingEdges host

@[surface_novel, surface_published]
theorem orderedOutgoingEdges_declared
    (contract : RoutingContract Host EdgeId) (host : Host)
    {edge : DeclaredEdge Host EdgeId}
    (member : edge ∈ contract.orderedOutgoingEdges host) :
    edge ∈ contract.edges := by
  have sortedMember : edge ∈ contract.sortedCanonicalEdges :=
    (List.mem_filter.mp member).1
  exact (Finset.mem_sort (r := contract.canonicalEdgeLE)).mp sortedMember

@[surface_novel, surface_published]
theorem orderedOutgoingEdges_source
    (contract : RoutingContract Host EdgeId) (host : Host)
    {edge : DeclaredEdge Host EdgeId}
    (member : edge ∈ contract.orderedOutgoingEdges host) :
    edge.source = host := by
  exact of_decide_eq_true (List.mem_filter.mp member).2

@[surface_novel, surface_published]
theorem orderedOutgoingEdges_complete
    (contract : RoutingContract Host EdgeId) (host : Host)
    {edge : DeclaredEdge Host EdgeId}
    (declared : edge ∈ contract.edges)
    (source : edge.source = host) :
    edge ∈ contract.orderedOutgoingEdges host := by
  apply List.mem_filter.mpr
  constructor
  · exact (Finset.mem_sort (r := contract.canonicalEdgeLE)).mpr declared
  · exact decide_eq_true source

@[surface_novel, surface_published]
theorem orderedOutgoingEdges_sorted
    (contract : RoutingContract Host EdgeId) (host : Host) :
    (contract.orderedOutgoingEdges host).Pairwise
      (fun left right ↦
        EdgeKey.LE (contract.edgeKey left) (contract.edgeKey right)) := by
  unfold orderedOutgoingEdges outgoingEdges
  have canonicalPairwise := (Finset.pairwise_sort (s := contract.edges)
    (r := contract.canonicalEdgeLE)).filter
      (fun edge ↦ decide (edge.source = host))
  apply canonicalPairwise.imp_of_mem
  intro left right leftMember rightMember ordered
  have sameSource : left.source = right.source := by
    exact (of_decide_eq_true (List.mem_filter.mp leftMember).2).trans
      (of_decide_eq_true (List.mem_filter.mp rightMember).2).symm
  unfold canonicalEdgeLE canonicalEdgeLexValue at ordered
  unfold EdgeKey.LE EdgeKey.lexValue edgeKey
  simp only [Prod.Lex.toLex_le_toLex, sameSource, lt_self_iff_false,
    false_or, true_and] at ordered ⊢
  grind

@[surface_novel, surface_published]
theorem orderedOutgoingEdges_nodup
    (contract : RoutingContract Host EdgeId) (host : Host) :
    (contract.orderedOutgoingEdges host).Nodup := by
  unfold orderedOutgoingEdges outgoingEdges
  exact (Finset.sort_nodup (s := contract.edges)
    (r := contract.canonicalEdgeLE)).filter _

@[surface_novel]
structure RouteState (Host EdgeId : Type*) where
  processed : List Host
  queue : List Host
  visited : List Host
  discoveryEdges : List EdgeId
deriving DecidableEq, Repr

@[expose] def initialRouteState (start : Host) : RouteState Host EdgeId where
  processed := []
  queue := [start]
  visited := [start]
  discoveryEdges := []

@[expose] def discoverOne (state : RouteState Host EdgeId)
    (edge : DeclaredEdge Host EdgeId) : RouteState Host EdgeId :=
  if edge.target ∈ state.visited then
    state
  else
    { state with
      queue := state.queue ++ [edge.target]
      visited := state.visited ++ [edge.target]
      discoveryEdges := state.discoveryEdges ++ [edge.edgeId] }

@[expose] def discoverOutgoing (state : RouteState Host EdgeId)
    (edges : List (DeclaredEdge Host EdgeId)) : RouteState Host EdgeId :=
  edges.foldl discoverOne state

@[expose] def processQueuedHost (contract : RoutingContract Host EdgeId)
    (state : RouteState Host EdgeId) (host : Host) (remaining : List Host) :
    RouteState Host EdgeId :=
  let dequeued : RouteState Host EdgeId :=
    { state with
      processed := state.processed ++ [host]
      queue := remaining }
  discoverOutgoing dequeued (contract.orderedOutgoingEdges host)

@[expose] def routeLoop (contract : RoutingContract Host EdgeId) :
    Nat → RouteState Host EdgeId → RouteState Host EdgeId
  | 0, state => state
  | fuel + 1, state =>
      match state.queue with
      | [] => state
      | host :: remaining =>
          routeLoop contract fuel
            (processQueuedHost contract state host remaining)

@[surface_novel]
structure OrderedRoute (Host EdgeId : Type*) where
  hosts : List Host
  discoveryEdges : List EdgeId
deriving DecidableEq, Repr

@[expose] def orderedRoute (contract : RoutingContract Host EdgeId)
    (start : Host) : OrderedRoute Host EdgeId :=
  let final := routeLoop contract (Fintype.card Host)
    (initialRouteState (EdgeId := EdgeId) start)
  ⟨final.visited, final.discoveryEdges⟩

@[expose] def DeclaredStep (contract : RoutingContract Host EdgeId)
    (source target : Host) : Prop :=
  ∃ edge ∈ contract.edges, edge.source = source ∧ edge.target = target

@[expose] def Reachable (contract : RoutingContract Host EdgeId)
    (start target : Host) : Prop :=
  Relation.ReflTransGen contract.DeclaredStep start target

@[surface_novel, surface_published]
theorem orderedRoute_deterministic
    (contract : RoutingContract Host EdgeId)
    (_hcontract : contract.Valid)
    (start : Host)
    {left right : OrderedRoute Host EdgeId}
    (hleft : left = contract.orderedRoute start)
    (hright : right = contract.orderedRoute start) :
    left = right := by
  rw [hleft, hright]

private def DiscoveryEdgesDeclared (contract : RoutingContract Host EdgeId)
    (state : RouteState Host EdgeId) : Prop :=
  ∀ edgeId ∈ state.discoveryEdges,
    ∃ edge ∈ contract.edges, edge.edgeId = edgeId

private theorem discoverOne_edges_declared
    (contract : RoutingContract Host EdgeId)
    (state : RouteState Host EdgeId)
    (edge : DeclaredEdge Host EdgeId)
    (stateValid : DiscoveryEdgesDeclared contract state)
    (edgeDeclared : edge ∈ contract.edges) :
    DiscoveryEdgesDeclared contract (discoverOne state edge) := by
  unfold DiscoveryEdgesDeclared at stateValid ⊢
  intro edgeId member
  by_cases seen : edge.target ∈ state.visited
  · simp only [discoverOne, seen, if_true] at member
    exact stateValid edgeId member
  · simp only [discoverOne, seen, if_false, List.mem_append,
      List.mem_singleton] at member
    rcases member with old | rfl
    · exact stateValid edgeId old
    · exact ⟨edge, edgeDeclared, rfl⟩

private theorem discoverOutgoing_edges_declared
    (contract : RoutingContract Host EdgeId)
    (state : RouteState Host EdgeId)
    (edges : List (DeclaredEdge Host EdgeId))
    (stateValid : DiscoveryEdgesDeclared contract state)
    (edgesDeclared : ∀ edge ∈ edges, edge ∈ contract.edges) :
    DiscoveryEdgesDeclared contract (discoverOutgoing state edges) := by
  induction edges generalizing state with
  | nil => exact stateValid
  | cons edge tail ih =>
      simp only [discoverOutgoing, List.foldl_cons]
      apply ih (state := discoverOne state edge)
      · exact discoverOne_edges_declared contract state edge stateValid
          (edgesDeclared edge (by simp))
      · intro later member
        exact edgesDeclared later (by simp [member])

private theorem routeLoop_edges_declared
    (contract : RoutingContract Host EdgeId)
    (fuel : Nat) (state : RouteState Host EdgeId)
    (stateValid : DiscoveryEdgesDeclared contract state) :
    DiscoveryEdgesDeclared contract (routeLoop contract fuel state) := by
  induction fuel generalizing state with
  | zero => exact stateValid
  | succ fuel ih =>
      simp only [routeLoop]
      split
      · exact stateValid
      · rename_i host remaining queueEquation
        apply ih
        apply discoverOutgoing_edges_declared contract _ _
        · simpa only [DiscoveryEdgesDeclared] using stateValid
        intro edge member
        exact orderedOutgoingEdges_declared contract host member

@[surface_novel, surface_published]
theorem orderedRoute_edges_declared
    (contract : RoutingContract Host EdgeId) (start : Host)
    {edgeId : EdgeId}
    (member : edgeId ∈ (contract.orderedRoute start).discoveryEdges) :
    ∃ edge ∈ contract.edges, edge.edgeId = edgeId := by
  have valid := routeLoop_edges_declared contract (Fintype.card Host)
      (initialRouteState (EdgeId := EdgeId) start)
      (by simp [DiscoveryEdgesDeclared, initialRouteState])
  apply valid edgeId
  simpa only [orderedRoute] using member
```
