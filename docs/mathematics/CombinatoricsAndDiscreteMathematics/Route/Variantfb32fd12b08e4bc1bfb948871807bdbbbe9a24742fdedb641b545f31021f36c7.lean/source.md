# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Route.Variantfb32fd12b08e4bc1bfb948871807bdbbbe9a24742fdedb641b545f31021f36c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c12d6ecc394bd70f1c512552be0886224107d68` · SHA-256 `fb32fd12b08e4bc1bfb948871807bdbbbe9a24742fdedb641b545f31021f36c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.XYZ.Hash
public import Surface.Core.XYZ.Fixed
public import Surface.Core.XYZ.Revision
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
# Deterministic finite XYZ routing and canonical framing

The canonical V1 route is breadth first.  A target is marked visited when it is
enqueued, so cycles, self-loops, and parallel edges cannot rediscover it.
Outgoing edges are considered by the exact lexicographic key
`(tension, tieBreak, stable edge code)`.

This module also defines the canonical byte preimages used by the Rust
implementation.  Lean deterministically frames bytes and validates the opaque
`Hash256` spelling; it does not compute SHA-256 and a framed hash grants no
theorem authority.
-/

public section

namespace Surface.Core.XYZ

/-! ## Stable finite identifiers and declared edges -/

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

/-- A nested `Lex` value fixes the order to tension, then tie break, then edge
code.  It deliberately does not use a derived `Repr` or host-language map
iteration order. -/
@[expose] def EdgeKey.lexValue (key : EdgeKey) :
    Lex (Int × Lex (Nat × Nat)) :=
  toLex (key.tension, toLex (key.tieBreak, key.edgeCode))

@[expose] def EdgeKey.LE (left right : EdgeKey) : Prop :=
  left.lexValue ≤ right.lexValue

instance (left right : EdgeKey) : Decidable (EdgeKey.LE left right) :=
  by unfold EdgeKey.LE; infer_instance

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

/-! ## Version-one routing contract -/

inductive TraversalMode
  | breadthFirst
  | depthFirst
deriving DecidableEq, Repr

@[expose] def xyzRoutingSchemaVersionV1 : Nat := 1
@[expose] def xyzRoutingAlgorithmVersionV1 : Nat := 1
@[expose] def xyzRoutingSerializationVersionV1 : Nat := 1
@[expose] def xyzIdentityExpectedUpdateId : String :=
  "surface.xyz.identity-update.v1"
@[expose] def xyzRevisionFormatV1Id : String :=
  "u32.nonwrapping.v1"

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
  fixedFormat : FixedFormat
  invariantId : String
  expectedUpdateId : String
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

/-- The total serialization order extends the route key with source and target
codes.  Valid outgoing tables have unique route keys, so the final target code
is only a deterministic total-order witness for malformed inputs. -/
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
  ⟨fun left right leftRight rightLeft ↦
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
  ⟨fun left right leftRight rightLeft ↦
    contract.hostCode.injective (_root_.le_antisymm leftRight rightLeft)⟩

@[expose] def sortedHosts (contract : RoutingContract Host EdgeId) : List Host :=
  Finset.univ.sort contract.hostCodeLE

/-- Lean's hash gate is deliberately framing-only.  Rust recomputes SHA-256
over `canonicalBytesWithoutHash`; Lean compares the resulting opaque value at
protocol boundaries. -/
@[expose] def hashMatches (contract : RoutingContract Host EdgeId) : Prop :=
  contract.contractHash.Valid

instance (contract : RoutingContract Host EdgeId) :
    Decidable contract.hashMatches := by
  unfold hashMatches
  infer_instance

/-- The executable, finite V1 validity predicate.  In addition to the
protocol rules it rejects every value that would be narrowed by canonical
u32/i32/u64 framing. -/
@[expose] def Valid (contract : RoutingContract Host EdgeId) : Prop :=
  contract.schemaVersion = xyzRoutingSchemaVersionV1 ∧
  contract.algorithmVersion = xyzRoutingAlgorithmVersionV1 ∧
  contract.serializationVersion = xyzRoutingSerializationVersionV1 ∧
  contract.traversalMode = .breadthFirst ∧
  contract.fixedFormat.Valid ∧
  contract.invariantId = normalizedTristimulusInvariantId ∧
  contract.expectedUpdateId = xyzIdentityExpectedUpdateId ∧
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

/-! ## Deterministically ordered outgoing edges -/

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

/-! ## Explicit-fuel breadth-first traversal -/

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

/-- Pop one queued host, record it as processed, then scan all of its
canonically ordered outgoing edges. -/
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

/-- One declared directed graph step, independent of the traversal output. -/
@[expose] def DeclaredStep (contract : RoutingContract Host EdgeId)
    (source target : Host) : Prop :=
  ∃ edge ∈ contract.edges, edge.source = source ∧ edge.target = target

/-- Reflexive-transitive directed reachability in the declared graph. -/
@[expose] def Reachable (contract : RoutingContract Host EdgeId)
    (start target : Host) : Prop :=
  Relation.ReflTransGen contract.DeclaredStep start target

@[surface_novel, surface_published]
theorem orderedRoute_deterministic
    (contract : RoutingContract Host EdgeId)
    (hcontract : contract.Valid)
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

private def StateNodup (state : RouteState Host EdgeId) : Prop :=
  state.visited.Nodup

private theorem discoverOne_nodup
    (state : RouteState Host EdgeId) (edge : DeclaredEdge Host EdgeId)
    (stateValid : StateNodup state) :
    StateNodup (discoverOne state edge) := by
  simp only [StateNodup, discoverOne] at stateValid ⊢
  split
  · exact stateValid
  · exact stateValid.append (by simp) (by simpa using ‹edge.target ∉ state.visited›)

private theorem discoverOutgoing_nodup
    (state : RouteState Host EdgeId)
    (edges : List (DeclaredEdge Host EdgeId))
    (stateValid : StateNodup state) :
    StateNodup (discoverOutgoing state edges) := by
  induction edges generalizing state with
  | nil => exact stateValid
  | cons edge tail ih =>
      simp only [discoverOutgoing, List.foldl_cons]
      exact ih (discoverOne state edge) (discoverOne_nodup state edge stateValid)

private theorem routeLoop_nodup
    (contract : RoutingContract Host EdgeId)
    (fuel : Nat) (state : RouteState Host EdgeId)
    (stateValid : StateNodup state) :
    StateNodup (routeLoop contract fuel state) := by
  induction fuel generalizing state with
  | zero => exact stateValid
  | succ fuel ih =>
      simp only [routeLoop]
      split
      · exact stateValid
      · exact ih _ (discoverOutgoing_nodup _ _ stateValid)

@[surface_novel, surface_published]
theorem orderedRoute_hosts_nodup
    (contract : RoutingContract Host EdgeId) (start : Host) :
    (contract.orderedRoute start).hosts.Nodup := by
  exact routeLoop_nodup contract (Fintype.card Host)
    (initialRouteState (EdgeId := EdgeId) start)
    (by simp [StateNodup, initialRouteState])

private theorem discoverOne_visited_prefix
    (state : RouteState Host EdgeId) (edge : DeclaredEdge Host EdgeId) :
    state.visited <+: (discoverOne state edge).visited := by
  simp only [discoverOne]
  split
  · exact List.prefix_refl _
  · exact List.prefix_append _ _

private theorem discoverOutgoing_visited_prefix
    (state : RouteState Host EdgeId)
    (edges : List (DeclaredEdge Host EdgeId)) :
    state.visited <+: (discoverOutgoing state edges).visited := by
  induction edges generalizing state with
  | nil => exact List.prefix_refl _
  | cons edge tail ih =>
      simp only [discoverOutgoing, List.foldl_cons]
      exact (discoverOne_visited_prefix state edge).trans (ih (discoverOne state edge))

private theorem routeLoop_visited_prefix
    (contract : RoutingContract Host EdgeId)
    (fuel : Nat) (state : RouteState Host EdgeId) :
    state.visited <+: (routeLoop contract fuel state).visited := by
  induction fuel generalizing state with
  | zero => exact List.prefix_refl _
  | succ fuel ih =>
      simp only [routeLoop]
      split
      · exact List.prefix_refl _
      · rename_i host remaining queueEquation
        let dequeued : RouteState Host EdgeId :=
          { state with
            processed := state.processed ++ [host]
            queue := remaining }
        exact (discoverOutgoing_visited_prefix dequeued
          (contract.orderedOutgoingEdges host)).trans
            (ih (discoverOutgoing dequeued (contract.orderedOutgoingEdges host)))

/-! The state partition is the finite accounting invariant used to prove that
`Fintype.card Host` fuel exhausts the queue. -/

private def StatePartition (state : RouteState Host EdgeId) : Prop :=
  state.visited = state.processed ++ state.queue

private theorem discoverOne_partition
    (state : RouteState Host EdgeId) (edge : DeclaredEdge Host EdgeId)
    (partition : StatePartition state) :
    StatePartition (discoverOne state edge) := by
  unfold StatePartition at partition ⊢
  by_cases seen : edge.target ∈ state.visited
  · simpa [discoverOne, seen] using partition
  · simp only [discoverOne, seen, if_false]
    rw [partition, List.append_assoc]

private theorem discoverOutgoing_partition
    (state : RouteState Host EdgeId)
    (edges : List (DeclaredEdge Host EdgeId))
    (partition : StatePartition state) :
    StatePartition (discoverOutgoing state edges) := by
  induction edges generalizing state with
  | nil => exact partition
  | cons edge tail ih =>
      simp only [discoverOutgoing, List.foldl_cons]
      exact ih (discoverOne state edge)
        (discoverOne_partition state edge partition)

private theorem processQueuedHost_partition
    (contract : RoutingContract Host EdgeId)
    (state : RouteState Host EdgeId) (host : Host) (remaining : List Host)
    (queueEquation : state.queue = host :: remaining)
    (partition : StatePartition state) :
    StatePartition (processQueuedHost contract state host remaining) := by
  unfold processQueuedHost
  apply discoverOutgoing_partition
  unfold StatePartition at partition ⊢
  rw [partition, queueEquation]
  simp [List.append_assoc]

private theorem routeLoop_partition
    (contract : RoutingContract Host EdgeId)
    (fuel : Nat) (state : RouteState Host EdgeId)
    (partition : StatePartition state) :
    StatePartition (routeLoop contract fuel state) := by
  induction fuel generalizing state with
  | zero => exact partition
  | succ fuel ih =>
      simp only [routeLoop]
      split
      · exact partition
      · rename_i host remaining queueEquation
        exact ih _ (processQueuedHost_partition contract state host remaining
          queueEquation partition)

private theorem discoverOne_processed
    (state : RouteState Host EdgeId) (edge : DeclaredEdge Host EdgeId) :
    (discoverOne state edge).processed = state.processed := by
  by_cases seen : edge.target ∈ state.visited <;>
    simp [discoverOne, seen]

private theorem discoverOutgoing_processed
    (state : RouteState Host EdgeId)
    (edges : List (DeclaredEdge Host EdgeId)) :
    (discoverOutgoing state edges).processed = state.processed := by
  induction edges generalizing state with
  | nil => rfl
  | cons edge tail ih =>
      simp only [discoverOutgoing, List.foldl_cons]
      change (discoverOutgoing (discoverOne state edge) tail).processed =
        state.processed
      rw [ih, discoverOne_processed]

private theorem processQueuedHost_processed_length
    (contract : RoutingContract Host EdgeId)
    (state : RouteState Host EdgeId) (host : Host) (remaining : List Host) :
    (processQueuedHost contract state host remaining).processed.length =
      state.processed.length + 1 := by
  unfold processQueuedHost
  rw [discoverOutgoing_processed]
  simp

private theorem routeLoop_processed_length_of_queue_ne_nil
    (contract : RoutingContract Host EdgeId)
    (fuel : Nat) (state : RouteState Host EdgeId)
    (queueNonempty : (routeLoop contract fuel state).queue ≠ []) :
    (routeLoop contract fuel state).processed.length =
      state.processed.length + fuel := by
  induction fuel generalizing state with
  | zero => simp [routeLoop]
  | succ fuel ih =>
      cases queueEquation : state.queue with
      | nil =>
          simp [routeLoop, queueEquation] at queueNonempty
      | cons host remaining =>
          have recursiveNonempty :
              (routeLoop contract fuel
                (processQueuedHost contract state host remaining)).queue ≠ [] := by
            simpa [routeLoop, queueEquation] using queueNonempty
          have recursiveLength := ih
            (processQueuedHost contract state host remaining) recursiveNonempty
          simp only [routeLoop, queueEquation] at queueNonempty ⊢
          rw [recursiveLength, processQueuedHost_processed_length]
          omega

private theorem finalRouteState_queue_empty
    (contract : RoutingContract Host EdgeId) (start : Host) :
    (routeLoop contract (Fintype.card Host)
      (initialRouteState (EdgeId := EdgeId) start)).queue = [] := by
  let initial : RouteState Host EdgeId :=
    initialRouteState (EdgeId := EdgeId) start
  let final : RouteState Host EdgeId :=
    routeLoop contract (Fintype.card Host) initial
  have initialPartition : StatePartition initial := by
    simp [initial, StatePartition, initialRouteState]
  have finalPartition : StatePartition final :=
    routeLoop_partition contract (Fintype.card Host) initial initialPartition
  have finalNodup : StateNodup final :=
    routeLoop_nodup contract (Fintype.card Host) initial
      (by simp [initial, StateNodup, initialRouteState])
  by_contra finalQueueNonempty
  have processedLength : final.processed.length = Fintype.card Host := by
    simpa [final, initial, initialRouteState] using
      routeLoop_processed_length_of_queue_ne_nil contract
        (Fintype.card Host) initial finalQueueNonempty
  have queueLengthPositive : 0 < final.queue.length :=
    List.length_pos_iff.mpr finalQueueNonempty
  have visitedLength :
      final.visited.length = final.processed.length + final.queue.length := by
    rw [finalPartition]
    simp
  have tooMany : Fintype.card Host < final.visited.length := by
    omega
  exact (not_lt_of_ge finalNodup.length_le_card) tooMany

/-! Every discovered host is semantically reachable in the declared directed
graph. -/

private def StateReachable (contract : RoutingContract Host EdgeId)
    (start : Host) (state : RouteState Host EdgeId) : Prop :=
  ∀ host ∈ state.visited, contract.Reachable start host

private theorem discoverOne_reachable
    (contract : RoutingContract Host EdgeId) (start : Host)
    (state : RouteState Host EdgeId) (edge : DeclaredEdge Host EdgeId)
    (stateReachable : StateReachable contract start state)
    (edgeDeclared : edge ∈ contract.edges)
    (sourceReachable : contract.Reachable start edge.source) :
    StateReachable contract start (discoverOne state edge) := by
  unfold StateReachable at stateReachable ⊢
  intro host member
  by_cases seen : edge.target ∈ state.visited
  · simp only [discoverOne, seen, if_true] at member
    exact stateReachable host member
  · simp only [discoverOne, seen, if_false, List.mem_append,
      List.mem_singleton] at member
    rcases member with old | rfl
    · exact stateReachable host old
    · exact sourceReachable.tail ⟨edge, edgeDeclared, rfl, rfl⟩

private theorem discoverOutgoing_reachable
    (contract : RoutingContract Host EdgeId) (start source : Host)
    (state : RouteState Host EdgeId)
    (edges : List (DeclaredEdge Host EdgeId))
    (stateReachable : StateReachable contract start state)
    (sourceReachable : contract.Reachable start source)
    (edgesDeclared : ∀ edge ∈ edges, edge ∈ contract.edges)
    (edgesSource : ∀ edge ∈ edges, edge.source = source) :
    StateReachable contract start (discoverOutgoing state edges) := by
  induction edges generalizing state with
  | nil => exact stateReachable
  | cons edge tail ih =>
      simp only [discoverOutgoing, List.foldl_cons]
      apply ih (state := discoverOne state edge)
      · apply discoverOne_reachable contract start state edge stateReachable
        · exact edgesDeclared edge (by simp)
        · simpa [edgesSource edge (by simp)] using sourceReachable
      · intro later member
        exact edgesDeclared later (by simp [member])
      · intro later member
        exact edgesSource later (by simp [member])

private theorem processQueuedHost_reachable
    (contract : RoutingContract Host EdgeId) (start : Host)
    (state : RouteState Host EdgeId) (host : Host) (remaining : List Host)
    (queueEquation : state.queue = host :: remaining)
    (partition : StatePartition state)
    (stateReachable : StateReachable contract start state) :
    StateReachable contract start
      (processQueuedHost contract state host remaining) := by
  have hostMember : host ∈ state.visited := by
    rw [partition, queueEquation]
    simp
  have hostReachable := stateReachable host hostMember
  unfold processQueuedHost
  apply discoverOutgoing_reachable contract start host _ _
  · simpa only [StateReachable] using stateReachable
  · exact hostReachable
  · intro edge member
    exact orderedOutgoingEdges_declared contract host member
  · intro edge member
    exact orderedOutgoingEdges_source contract host member

private theorem routeLoop_reachable
    (contract : RoutingContract Host EdgeId) (start : Host)
    (fuel : Nat) (state : RouteState Host EdgeId)
    (partition : StatePartition state)
    (stateReachable : StateReachable contract start state) :
    StateReachable contract start (routeLoop contract fuel state) := by
  induction fuel generalizing state with
  | zero => exact stateReachable
  | succ fuel ih =>
      simp only [routeLoop]
      split
      · exact stateReachable
      · rename_i host remaining queueEquation
        apply ih (state := processQueuedHost contract state host remaining)
        · exact processQueuedHost_partition contract state host remaining
            queueEquation partition
        · exact processQueuedHost_reachable contract start state host remaining
            queueEquation partition stateReachable

/-! Processing a host closes the visited set under all of that host's declared
outgoing steps. -/

private theorem discoverOne_target_mem
    (state : RouteState Host EdgeId) (edge : DeclaredEdge Host EdgeId) :
    edge.target ∈ (discoverOne state edge).visited := by
  by_cases seen : edge.target ∈ state.visited
  · simpa [discoverOne, seen] using seen
  · simp [discoverOne, seen]

private theorem discoverOutgoing_contains_edge_target
    (state : RouteState Host EdgeId)
    (edges : List (DeclaredEdge Host EdgeId))
    {edge : DeclaredEdge Host EdgeId}
    (member : edge ∈ edges) :
    edge.target ∈ (discoverOutgoing state edges).visited := by
  induction edges generalizing state with
  | nil => simp at member
  | cons first tail ih =>
      simp only [discoverOutgoing, List.foldl_cons]
      rcases List.mem_cons.mp member with firstEquality | later
      · subst edge
        exact (discoverOutgoing_visited_prefix (discoverOne state first) tail).subset
          (discoverOne_target_mem state first)
      · exact ih (discoverOne state first) later

private def StateProcessedClosed (contract : RoutingContract Host EdgeId)
    (state : RouteState Host EdgeId) : Prop :=
  ∀ source ∈ state.processed, ∀ target,
    contract.DeclaredStep source target → target ∈ state.visited

private theorem processQueuedHost_closed
    (contract : RoutingContract Host EdgeId)
    (state : RouteState Host EdgeId) (host : Host) (remaining : List Host)
    (stateClosed : StateProcessedClosed contract state) :
    StateProcessedClosed contract
      (processQueuedHost contract state host remaining) := by
  let dequeued : RouteState Host EdgeId :=
    { state with
      processed := state.processed ++ [host]
      queue := remaining }
  have oldVisitedPrefix :
      state.visited <+:
        (discoverOutgoing dequeued
          (contract.orderedOutgoingEdges host)).visited := by
    exact discoverOutgoing_visited_prefix dequeued
      (contract.orderedOutgoingEdges host)
  unfold StateProcessedClosed at stateClosed ⊢
  intro source sourceMember target step
  unfold processQueuedHost at sourceMember ⊢
  rw [discoverOutgoing_processed] at sourceMember
  simp only [List.mem_append, List.mem_singleton] at sourceMember
  rcases sourceMember with oldSource | sourceEquality
  · exact oldVisitedPrefix.subset (stateClosed source oldSource target step)
  · subst source
    rcases step with ⟨edge, edgeDeclared, edgeSource, edgeTarget⟩
    have edgeMember : edge ∈ contract.orderedOutgoingEdges host :=
      orderedOutgoingEdges_complete contract host edgeDeclared edgeSource
    have targetMember := discoverOutgoing_contains_edge_target dequeued
      (contract.orderedOutgoingEdges host) edgeMember
    simpa [edgeTarget] using targetMember

private theorem routeLoop_closed
    (contract : RoutingContract Host EdgeId)
    (fuel : Nat) (state : RouteState Host EdgeId)
    (stateClosed : StateProcessedClosed contract state) :
    StateProcessedClosed contract (routeLoop contract fuel state) := by
  induction fuel generalizing state with
  | zero => exact stateClosed
  | succ fuel ih =>
      simp only [routeLoop]
      split
      · exact stateClosed
      · rename_i host remaining queueEquation
        exact ih _ (processQueuedHost_closed contract state host remaining stateClosed)

private theorem orderedRoute_hosts_reachable
    (contract : RoutingContract Host EdgeId) (start host : Host)
    (member : host ∈ (contract.orderedRoute start).hosts) :
    contract.Reachable start host := by
  let initial : RouteState Host EdgeId :=
    initialRouteState (EdgeId := EdgeId) start
  have partition : StatePartition initial := by
    simp [initial, StatePartition, initialRouteState]
  have reachable : StateReachable contract start initial := by
    intro point pointMember
    simp [initial, initialRouteState] at pointMember
    subst point
    exact Relation.ReflTransGen.refl
  have finalReachable := routeLoop_reachable contract start
    (Fintype.card Host) initial partition reachable
  apply finalReachable host
  simpa [orderedRoute, initial] using member

private theorem reachable_mem_orderedRoute
    (contract : RoutingContract Host EdgeId) (start host : Host)
    (reachable : contract.Reachable start host) :
    host ∈ (contract.orderedRoute start).hosts := by
  let initial : RouteState Host EdgeId :=
    initialRouteState (EdgeId := EdgeId) start
  let final : RouteState Host EdgeId :=
    routeLoop contract (Fintype.card Host) initial
  have initialClosed : StateProcessedClosed contract initial := by
    simp [StateProcessedClosed, initial, initialRouteState]
  have finalClosed : StateProcessedClosed contract final :=
    routeLoop_closed contract (Fintype.card Host) initial initialClosed
  have initialPartition : StatePartition initial := by
    simp [StatePartition, initial, initialRouteState]
  have finalPartition : StatePartition final :=
    routeLoop_partition contract (Fintype.card Host) initial initialPartition
  have finalQueueEmpty : final.queue = [] := by
    simpa [final, initial] using finalRouteState_queue_empty contract start
  have visitedProcessed : final.visited = final.processed := by
    rw [finalPartition, finalQueueEmpty]
    simp
  have startVisited : start ∈ final.visited := by
    have hprefix := routeLoop_visited_prefix contract (Fintype.card Host) initial
    apply hprefix.subset
    simp [initial, initialRouteState]
  have hostVisited : host ∈ final.visited := by
    induction reachable with
    | refl => exact startVisited
    | @tail middle target prior step ih =>
        have middleProcessed : middle ∈ final.processed := by
          rw [← visitedProcessed]
          exact ih
        exact finalClosed middle middleProcessed target step
  simpa [orderedRoute, final, initial] using hostVisited

@[surface_novel, surface_published]
theorem orderedRoute_reaches_exactly_reachable
    (contract : RoutingContract Host EdgeId)
    (_hcontract : contract.Valid)
    (start host : Host) :
    host ∈ (contract.orderedRoute start).hosts ↔
      contract.Reachable start host := by
  constructor
  · exact orderedRoute_hosts_reachable contract start host
  · exact reachable_mem_orderedRoute contract start host

@[surface_novel, surface_published]
theorem orderedRoute_start
    (contract : RoutingContract Host EdgeId) (start : Host) :
    (contract.orderedRoute start).hosts.head? = some start := by
  have hprefix := routeLoop_visited_prefix contract (Fintype.card Host)
    (initialRouteState (EdgeId := EdgeId) start)
  rcases hprefix with ⟨suffix, equality⟩
  change (routeLoop contract (Fintype.card Host)
    (initialRouteState (EdgeId := EdgeId) start)).visited.head? = some start
  rw [← equality]
  rfl

/-! ## Canonical binary framing -/

abbrev CanonicalBytes := List UInt8

@[expose] def encodeU8 (value : Nat) : CanonicalBytes :=
  [UInt8.ofNat value]

@[expose] def encodeNatLE (width value : Nat) : CanonicalBytes :=
  (List.range width).map (fun index ↦
    UInt8.ofNat ((value / (256 ^ index)) % 256))

@[expose] def encodeU32LE (value : Nat) : CanonicalBytes :=
  encodeNatLE 4 value

@[expose] def encodeU64LE (value : Nat) : CanonicalBytes :=
  encodeNatLE 8 value

@[expose] def encodeSignedLE (width : Nat) (value : Int) : CanonicalBytes :=
  encodeNatLE width (Int.toNat (value % (2 ^ (8 * width) : Nat)))

@[expose] def encodeI32LE (value : Int) : CanonicalBytes :=
  encodeSignedLE 4 value

@[expose] def encodeI64LE (value : Int) : CanonicalBytes :=
  encodeSignedLE 8 value

@[expose] def encodeUtf8 (value : String) : CanonicalBytes :=
  value.toUTF8.toList

@[expose] def encodeLengthPrefixedUtf8 (value : String) : CanonicalBytes :=
  encodeU32LE value.toUTF8.size ++ encodeUtf8 value

@[expose] def lowerHexNibble (character : Char) : Nat :=
  if character = '0' then 0 else if character = '1' then 1 else
  if character = '2' then 2 else if character = '3' then 3 else
  if character = '4' then 4 else if character = '5' then 5 else
  if character = '6' then 6 else if character = '7' then 7 else
  if character = '8' then 8 else if character = '9' then 9 else
  if character = 'a' then 10 else if character = 'b' then 11 else
  if character = 'c' then 12 else if character = 'd' then 13 else
  if character = 'e' then 14 else if character = 'f' then 15 else 0

@[expose] def decodeLowerHexPairs : List Char → CanonicalBytes
  | high :: low :: rest =>
      UInt8.ofNat (16 * lowerHexNibble high + lowerHexNibble low) ::
        decodeLowerHexPairs rest
  | _ => []

@[expose] def encodeHash256 (hash : Hash256) : CanonicalBytes :=
  decodeLowerHexPairs hash.hex.toList

@[expose] def encodeOverflowPolicy : OverflowPolicy → CanonicalBytes
  | .reject => encodeU8 0

@[expose] def encodeRoundingRule : RoundingRule → CanonicalBytes
  | .nearestTiesToEven => encodeU8 0
  | .towardZero => encodeU8 1
  | .towardNegative => encodeU8 2
  | .towardPositive => encodeU8 3
  | .largestRemainderXYZ => encodeU8 4

@[expose] def encodeTraversalMode : TraversalMode → CanonicalBytes
  | .breadthFirst => encodeU8 0
  | .depthFirst => encodeU8 1

@[expose] def encodeFixedFormat (format : FixedFormat) : CanonicalBytes :=
  encodeU32LE format.schemaVersion ++
  encodeU32LE format.rawBits ++
  encodeI32LE format.scaleRaw ++
  encodeI32LE format.minRaw ++
  encodeI32LE format.maxRaw ++
  encodeU32LE format.intermediateBits ++
  encodeOverflowPolicy format.overflowPolicy ++
  encodeRoundingRule format.scalarRounding ++
  encodeRoundingRule format.normalizationRounding ++
  encodeLengthPrefixedUtf8 format.formatId

@[expose] def encodeHostCode
    (contract : RoutingContract Host EdgeId) (host : Host) : CanonicalBytes :=
  encodeU32LE (contract.hostCode.code host)

@[expose] def encodeEdgeRow
    (contract : RoutingContract Host EdgeId)
    (edge : DeclaredEdge Host EdgeId) : CanonicalBytes :=
  encodeU32LE (contract.hostCode.code edge.source) ++
  encodeI32LE edge.tension ++
  encodeU32LE edge.tieBreak ++
  encodeU32LE (contract.edgeCode.code edge.edgeId) ++
  encodeU32LE (contract.hostCode.code edge.target)

/-- Exact contract preimage.  The digest field is excluded. -/
@[expose] def canonicalBytesWithoutHash
    (contract : RoutingContract Host EdgeId) : CanonicalBytes :=
  encodeUtf8 "SXYZCON1" ++
  encodeU32LE contract.schemaVersion ++
  encodeU32LE contract.algorithmVersion ++
  encodeU32LE contract.serializationVersion ++
  encodeTraversalMode contract.traversalMode ++
  encodeU32LE (Fintype.card Host) ++
  (contract.sortedHosts.flatMap contract.encodeHostCode) ++
  encodeU32LE contract.edges.card ++
  (contract.sortedCanonicalEdges.flatMap contract.encodeEdgeRow) ++
  encodeI32LE contract.tensionMin ++
  encodeI32LE contract.tensionMax ++
  encodeU64LE contract.tieBreakBound ++
  encodeFixedFormat contract.fixedFormat ++
  encodeLengthPrefixedUtf8 xyzRevisionFormatV1Id ++
  encodeLengthPrefixedUtf8 contract.invariantId ++
  encodeLengthPrefixedUtf8 contract.expectedUpdateId

@[surface_novel, surface_published]
theorem hashMaterialDeterministic
    (contract : RoutingContract Host EdgeId)
    {left right : CanonicalBytes}
    (leftMaterial : left = contract.canonicalBytesWithoutHash)
    (rightMaterial : right = contract.canonicalBytesWithoutHash) :
    left = right := by
  rw [leftMaterial, rightMaterial]

/-! ## Source snapshots and proposal keys -/

@[surface_novel]
structure SourceSnapshot (Host : Type*) where
  schemaVersion : Nat
  contractHash : Hash256
  startHost : Host
  sourceHost : Host
  source : RevisionedXYZ xyzFormatV1
  snapshotHash : Hash256
deriving DecidableEq, Repr

@[expose] def SourceSnapshot.canonicalBytesWithoutHash
    (contract : RoutingContract Host EdgeId)
    (snapshot : SourceSnapshot Host) : CanonicalBytes :=
  encodeUtf8 "SXYZSNP1" ++
  encodeU32LE snapshot.schemaVersion ++
  encodeHash256 snapshot.contractHash ++
  encodeU32LE (contract.hostCode.code snapshot.startHost) ++
  encodeU32LE (contract.hostCode.code snapshot.sourceHost) ++
  encodeU32LE snapshot.source.revision.val ++
  encodeI32LE snapshot.source.value.x.raw ++
  encodeI32LE snapshot.source.value.y.raw ++
  encodeI32LE snapshot.source.value.z.raw

@[surface_novel]
structure ProposalKey (Host EdgeId : Type*) where
  schemaVersion : Nat
  contractHash : Hash256
  sourceSnapshotHash : Hash256
  algorithmVersion : Nat
  revision : Nat
  edgeId : EdgeId
  claimedSource : Host
  claimedTarget : Host
  source : RawXYZ
  proposed : RawXYZ
deriving DecidableEq, Repr

@[expose] def ProposalKey.canonicalBytes
    (contract : RoutingContract Host EdgeId)
    (key : ProposalKey Host EdgeId) : CanonicalBytes :=
  encodeU32LE key.schemaVersion ++
  encodeHash256 key.contractHash ++
  encodeHash256 key.sourceSnapshotHash ++
  encodeU32LE key.algorithmVersion ++
  encodeU32LE key.revision ++
  encodeU32LE (contract.edgeCode.code key.edgeId) ++
  encodeU32LE (contract.hostCode.code key.claimedSource) ++
  encodeU32LE (contract.hostCode.code key.claimedTarget) ++
  encodeI32LE key.source.x ++
  encodeI32LE key.source.y ++
  encodeI32LE key.source.z ++
  encodeI32LE key.proposed.x ++
  encodeI32LE key.proposed.y ++
  encodeI32LE key.proposed.z

@[surface_novel, surface_published]
theorem ProposalKey.serialization_deterministic
    (contract : RoutingContract Host EdgeId)
    (key : ProposalKey Host EdgeId)
    {left right : CanonicalBytes}
    (leftMaterial : left = key.canonicalBytes contract)
    (rightMaterial : right = key.canonicalBytes contract) :
    left = right := by
  rw [leftMaterial, rightMaterial]

end RoutingContract

/-! Root-level protocol aliases preserve the public names used by the transport
and presentation layers while the executable operations remain grouped under
`RoutingContract`. -/

@[expose] abbrev OrderedRoute (Host EdgeId : Type*) :=
  RoutingContract.OrderedRoute Host EdgeId

@[expose] abbrev SourceSnapshot (Host : Type*) :=
  RoutingContract.SourceSnapshot Host

@[expose] abbrev ProposalKey (Host EdgeId : Type*) :=
  RoutingContract.ProposalKey Host EdgeId

end Surface.Core.XYZ
```
