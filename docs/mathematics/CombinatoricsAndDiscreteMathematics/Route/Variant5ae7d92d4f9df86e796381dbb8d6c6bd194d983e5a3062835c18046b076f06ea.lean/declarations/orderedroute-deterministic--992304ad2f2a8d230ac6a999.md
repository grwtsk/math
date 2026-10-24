# orderedRoute_deterministic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9648f7f1cea307e94c477fc2b801dac62f3fb4ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 447,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5ae7d92d4f9df86e796381dbb8d6c6bd194d983e5a3062835c18046b076f06ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:42a8dc01-292f-bfd0-c9e1-62a3dd678e49",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:844fc2ff-ae83-8abe-6ee3-a2ddf5b5d7ac",
  "kind": "theorem",
  "lexical_name": "orderedRoute_deterministic",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "orderedroute-deterministic--992304ad2f2a8d230ac6a999",
  "source": {
    "blob": "9648f7f1cea307e94c477fc2b801dac62f3fb4ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 973,
    "line": 447,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant5ae7d92d4f9df86e796381dbb8d6c6bd194d983e5a3062835c18046b076f06ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:992304ad2f2a8d230ac6a999e5241624b1408cac2cde8a4dd4c7e13f0f315942",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Route/Variant5ae7d92d4f9df86e796381dbb8d6c6bd194d983e5a3062835c18046b076f06ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:844fc2ff-ae83-8abe-6ee3-a2ddf5b5d7ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–973.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderedRoute_deterministic
    (contract : RoutingContract Host EdgeId)
    (hcontract : contract.Valid)
    (start : Host)
    {left right : OrderedRoute Host EdgeId}
    (hleft : left = contract.orderedRoute start)
    (hright : right = contract.orderedRoute start) :
    left = right :=
  Surface.Core.Transport.RoutingContract.orderedRoute_deterministic
    contract.toGeneric (valid_toGeneric contract hcontract) start hleft hright

/-

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

omit [Fintype Host] [Fintype EdgeId] [DecidableEq EdgeId] in
private theorem discoverOne_nodup
    (state : RouteState Host EdgeId) (edge : DeclaredEdge Host EdgeId)
    (stateValid : StateNodup state) :
    StateNodup (discoverOne state edge) := by
  simp only [StateNodup, discoverOne] at stateValid ⊢
  split
  · exact stateValid
  · exact stateValid.append (by simp) (by simpa using ‹edge.target ∉ state.visited›)

omit [Fintype Host] [Fintype EdgeId] [DecidableEq EdgeId] in
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

omit [Fintype Host] [Fintype EdgeId] [DecidableEq EdgeId] in
private theorem discoverOne_visited_prefix
    (state : RouteState Host EdgeId) (edge : DeclaredEdge Host EdgeId) :
    state.visited <+: (discoverOne state edge).visited := by
  simp only [discoverOne]
  split
  · exact List.prefix_refl _
  · exact List.prefix_append _ _

omit [Fintype Host] [Fintype EdgeId] [DecidableEq EdgeId] in
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

omit [Fintype Host] [Fintype EdgeId] [DecidableEq EdgeId] in
private theorem discoverOne_partition
    (state : RouteState Host EdgeId) (edge : DeclaredEdge Host EdgeId)
    (partition : StatePartition state) :
    StatePartition (discoverOne state edge) := by
  unfold StatePartition at partition ⊢
  by_cases seen : edge.target ∈ state.visited
  · simpa [discoverOne, seen] using partition
  · simp only [discoverOne, seen, if_false]
    rw [partition, List.append_assoc]

omit [Fintype Host] [Fintype EdgeId] [DecidableEq EdgeId] in
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

omit [Fintype Host] [Fintype EdgeId] [DecidableEq EdgeId] in
private theorem discoverOne_processed
    (state : RouteState Host EdgeId) (edge : DeclaredEdge Host EdgeId) :
    (discoverOne state edge).processed = state.processed := by
  by_cases seen : edge.target ∈ state.visited <;>
    simp [discoverOne, seen]

omit [Fintype Host] [Fintype EdgeId] [DecidableEq EdgeId] in
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

omit [Fintype Host] [Fintype EdgeId] [DecidableEq EdgeId] in
private theorem discoverOne_target_mem
    (state : RouteState Host EdgeId) (edge : DeclaredEdge Host EdgeId) :
    edge.target ∈ (discoverOne state edge).visited := by
  by_cases seen : edge.target ∈ state.visited
  · simp [discoverOne, seen]
  · simp [discoverOne, seen]

omit [Fintype Host] [Fintype EdgeId] [DecidableEq EdgeId] in
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
-/

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Variant5ae7d92d4f9df86e796381dbb8d6c6bd194d983e5a3062835c18046b076f06ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant5ae7d92d4f9df86e796381dbb8d6c6bd194d983e5a3062835c18046b076f06ea.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9648f7f1cea307e94c477fc2b801dac62f3fb4ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
