/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI Codex. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedEulerExhaustionConsumer
import Mathlib.Logic.Relation

/-!
# Directed Euler trails from connected incident-edge support

Edges retain their individual identities. Connectivity is the actual
ReflTransGen of undirected adjacencies supplied by those edge IDs, restricted
to vertices incident to a supplied edge. Isolated ambient vertices are absent
from the connectivity premise. No Euler-existence proposition field is used.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedEulerSplicing

universe u v
variable {V : Type u} {E : Type v} {tail head : E → V}

/-- Vertices incident to an actual supplied edge ID. -/
def incidentEdgeSupport (available : Finset E) : Set V :=
  {x | ∃ e ∈ available, tail e = x ∨ head e = x}

/-- Actual undirected adjacency supplied by one original directed edge ID. -/
def undirectedEdgeAdjacency (available : Finset E) (x y : V) : Prop :=
  ∃ e ∈ available,
    (tail e = x ∧ head e = y) ∨ (head e = x ∧ tail e = y)

namespace Walk

/-- The actual visited vertex list, including both endpoints. -/
def vertices : {a b : V} → Walk tail head a b → List V
  | _, _, .nil a => [a]
  | _, _, .cons e rest => tail e :: rest.vertices

@[simp] theorem start_mem_vertices {a b : V} (p : Walk tail head a b) :
    a ∈ p.vertices := by
  cases p with
  | nil => exact List.mem_singleton_self _
  | cons e rest => exact List.mem_cons_self

/-- Every used edge has both actual endpoints in the visited vertex list. -/
theorem edge_endpoints_mem_vertices {a b : V} (p : Walk tail head a b)
    (e : E) (he : e ∈ p.edges) :
    tail e ∈ p.vertices ∧ head e ∈ p.vertices := by
  induction p with
  | nil => simp only [edges_nil, List.not_mem_nil] at he
  | cons f rest ih =>
      rcases List.mem_cons.mp he with h | he
      · subst e
        exact ⟨List.mem_cons_self, List.mem_cons_of_mem _ (start_mem_vertices rest)⟩
      · obtain ⟨ht, hh⟩ := ih he
        exact ⟨List.mem_cons_of_mem _ ht, List.mem_cons_of_mem _ hh⟩

/-- Membership in the actual visited list gives an actual prefix/suffix
split of the original walk at that exact vertex. -/
theorem split_at_mem_vertices {a c : V} (p : Walk tail head a c)
    (b : V) (hb : b ∈ p.vertices) :
    ∃ (pre : Walk tail head a b) (post : Walk tail head b c), p = pre.append post := by
  induction p generalizing b with
  | nil a =>
      have hba : b = a := List.mem_singleton.mp hb
      subst b
      exact ⟨.nil a, .nil a, rfl⟩
  | cons e rest ih =>
      rcases List.mem_cons.mp hb with hba | hb
      · subst b
        exact ⟨.nil _, .cons e rest, rfl⟩
      · obtain ⟨pre, post, hsplit⟩ := ih b hb
        refine ⟨.cons e pre, post, ?_⟩
        rw [hsplit]
        rfl

/-- In a balanced supply, a nonexhaustive nonempty closed trail has an
unused outgoing edge at a genuinely visited vertex. Connectivity concerns
only incident-edge support, so isolated vertices impose no condition. -/
theorem exists_residual_outgoing_at_visited_vertex [DecidableEq V]
    (available : Finset E) {a : V} (p : Walk tail head a a)
    (hnodup : p.edges.Nodup) (hallowed : ∀ e ∈ p.edges, e ∈ available)
    (hne : p.edges ≠ [])
    (hbalance : ∀ x : V,
      (available.val.map tail).count x = (available.val.map head).count x)
    (hconnected : ∀ x ∈ incidentEdgeSupport (tail := tail) (head := head) available,
      ∀ y ∈ incidentEdgeSupport (tail := tail) (head := head) available,
        Relation.ReflTransGen (undirectedEdgeAdjacency (tail := tail) (head := head) available) x y)
    (hunused : ∃ e ∈ available, e ∉ p.edges) :
    ∃ b ∈ p.vertices, ∃ e ∈ available, e ∉ p.edges ∧ tail e = b := by
  classical
  by_contra hnone
  let remaining := available \ p.edges.toFinset
  have husedval : p.edges.toFinset.val = (p.edges : Multiset E) := by
    rw [List.toFinset_val, List.dedup_eq_self.mpr hnodup]
  have hle : (p.edges : Multiset E) ≤ available.val :=
    (Multiset.le_iff_subset (Multiset.coe_nodup.mpr hnodup)).mpr
      (fun e he => hallowed e he)
  have hpartition : available.val = (p.edges : Multiset E) + remaining.val := by
    dsimp only [remaining]
    rw [Finset.sdiff_val, husedval, add_comm]
    exact (Multiset.sub_add_cancel hle).symm
  have hremainingBalance : ∀ x : V,
      (remaining.val.map tail).count x = (remaining.val.map head).count x :=
    residual_incidence_balance p available.val remaining.val hpartition hbalance
  have hout (x : V) (hx : x ∈ p.vertices) : (remaining.val.map tail).count x = 0 := by
    apply Multiset.count_eq_zero.mpr
    intro hm
    obtain ⟨e, he, ht⟩ := Multiset.mem_map.mp hm
    have heparts := Finset.mem_sdiff.mp he
    apply hnone
    refine ⟨x, hx, e, heparts.1, ?_, ht⟩
    simpa only [List.mem_toFinset] using heparts.2
  have hin (x : V) (hx : x ∈ p.vertices) : (remaining.val.map head).count x = 0 :=
    (hremainingBalance x).symm.trans (hout x hx)
  have hforward (e : E) (he : e ∈ available) (hx : tail e ∈ p.vertices) :
      head e ∈ p.vertices := by
    by_cases hused : e ∈ p.edges
    · exact (edge_endpoints_mem_vertices p e hused).2
    · exact False.elim (hnone ⟨tail e, hx, e, he, hused, rfl⟩)
  have hbackward (e : E) (he : e ∈ available) (hx : head e ∈ p.vertices) :
      tail e ∈ p.vertices := by
    by_cases hused : e ∈ p.edges
    · exact (edge_endpoints_mem_vertices p e hused).1
    · have herem : e ∈ remaining := Finset.mem_sdiff.mpr
          ⟨he, by simpa only [List.mem_toFinset] using hused⟩
      have hm : head e ∈ remaining.val.map head :=
        Multiset.mem_map.mpr ⟨e, herem, rfl⟩
      exact False.elim (Multiset.count_eq_zero.mp (hin (head e) hx) hm)
  have hclosed (x y : V)
      (hxy : undirectedEdgeAdjacency (tail := tail) (head := head) available x y)
      (hx : x ∈ p.vertices) : y ∈ p.vertices := by
    obtain ⟨e, he, hdir | hrev⟩ := hxy
    · obtain ⟨ht, hh⟩ := hdir
      have h := hforward e he (by simpa only [ht] using hx)
      simpa only [hh] using h
    · obtain ⟨hh, ht⟩ := hrev
      have h := hbackward e he (by simpa only [hh] using hx)
      simpa only [ht] using h
  have ha : a ∈ incidentEdgeSupport (tail := tail) (head := head) available := by
    cases p with
    | nil => simp only [edges_nil, ne_eq, not_true_eq_false] at hne
    | cons e rest => exact ⟨e, hallowed e List.mem_cons_self, Or.inl rfl⟩
  obtain ⟨e, he, heunused⟩ := hunused
  have htail : tail e ∈ incidentEdgeSupport (tail := tail) (head := head) available :=
    ⟨e, he, Or.inl rfl⟩
  have hpath := hconnected a ha (tail e) htail
  have hreachable (y : V)
      (hp : Relation.ReflTransGen
        (undirectedEdgeAdjacency (tail := tail) (head := head) available) a y) :
      y ∈ p.vertices := by
    induction hp with
    | refl => exact start_mem_vertices p
    | tail hp hstep ih => exact hclosed _ _ hstep ih
  have hvisited := hreachable (tail e) hpath
  exact hnone ⟨tail e, hvisited, e, he, heunused, rfl⟩

/-- The active-support result supplies the precise actual split needed by
closed-trail splicing; no split or splice-vertex existence is assumed. -/
theorem exists_residual_outgoing_splice_of_connected_support [DecidableEq V]
    (available : Finset E) {a : V} (p : Walk tail head a a)
    (hnodup : p.edges.Nodup) (hallowed : ∀ e ∈ p.edges, e ∈ available)
    (hne : p.edges ≠ [])
    (hbalance : ∀ x : V,
      (available.val.map tail).count x = (available.val.map head).count x)
    (hconnected : ∀ x ∈ incidentEdgeSupport (tail := tail) (head := head) available,
      ∀ y ∈ incidentEdgeSupport (tail := tail) (head := head) available,
        Relation.ReflTransGen (undirectedEdgeAdjacency (tail := tail) (head := head) available) x y)
    (hunused : ∃ e ∈ available, e ∉ p.edges) :
    ∃ (b : V) (pre : Walk tail head a b) (post : Walk tail head b a),
      p = pre.append post ∧ ∃ e ∈ available, e ∉ p.edges ∧ tail e = b := by
  obtain ⟨b, hb, he⟩ := exists_residual_outgoing_at_visited_vertex
    available p hnodup hallowed hne hbalance hconnected hunused
  obtain ⟨pre, post, hsplit⟩ := split_at_mem_vertices p b hb
  exact ⟨b, pre, post, hsplit, he⟩

/-- Genuine finite Euler existence from balance and incident-support weak
connectivity. The conditional consumer's remaining graph argument is proved
above and supplied here, rather than retained as a premise. -/
theorem exists_exhaustive_closed_trail_of_balanced_connected_support [DecidableEq V]
    (available : Finset E) (a : V)
    (hbalance : ∀ x : V,
      (available.val.map tail).count x = (available.val.map head).count x)
    (hstart : ∃ e ∈ available, tail e = a)
    (hconnected : ∀ x ∈ incidentEdgeSupport (tail := tail) (head := head) available,
      ∀ y ∈ incidentEdgeSupport (tail := tail) (head := head) available,
        Relation.ReflTransGen (undirectedEdgeAdjacency (tail := tail) (head := head) available) x y) :
    ∃ p : Walk tail head a a,
      p.edges.Nodup ∧ p.edges ≠ [] ∧ ∀ e, e ∈ p.edges ↔ e ∈ available := by
  apply exists_exhaustive_closed_trail_of_splice_vertex available a hbalance hstart
  intro p hnodup hallowed hne hunused
  exact exists_residual_outgoing_splice_of_connected_support
    available p hnodup hallowed hne hbalance hconnected hunused

/-- A nonempty balanced finite edge supply with connected incident support
has an actual closed traversal using every edge ID exactly once. -/
theorem exists_euler_closed_trail_of_nonempty_balanced_connected_support [DecidableEq V]
    (available : Finset E) (hne : available.Nonempty)
    (hbalance : ∀ x : V,
      (available.val.map tail).count x = (available.val.map head).count x)
    (hconnected : ∀ x ∈ incidentEdgeSupport (tail := tail) (head := head) available,
      ∀ y ∈ incidentEdgeSupport (tail := tail) (head := head) available,
        Relation.ReflTransGen (undirectedEdgeAdjacency (tail := tail) (head := head) available) x y) :
    ∃ (a : V) (p : Walk tail head a a),
      p.edges.Nodup ∧ p.edges ≠ [] ∧ ∀ e, e ∈ p.edges ↔ e ∈ available := by
  obtain ⟨e, he⟩ := hne
  obtain ⟨p, hp⟩ := exists_exhaustive_closed_trail_of_balanced_connected_support
    available (tail e) hbalance ⟨e, he, rfl⟩ hconnected
  exact ⟨tail e, p, hp⟩

/-- A walk made solely from the two distinct constant loops never changes
its vertex; every traversed edge ID is its start vertex. -/
private theorem bool_loop_edges_eq_start {a b : Bool}
    (p : Walk (id : Bool → Bool) id a b) : ∀ e ∈ p.edges, e = a := by
  induction p with
  | nil =>
      intro e he
      simp only [edges_nil, List.not_mem_nil] at he
  | cons f rest ih =>
      intro e he
      rcases List.mem_cons.mp he with h | he
      · exact h
      · exact ih e he

/-- Two disjoint constant loops have distinct edge IDs and balanced degrees
but no exhaustive closed walk. Thus balance alone cannot supply the connectivity
premise. This generic Bool-ID graph is not a typed counted-block encoding. -/
theorem two_constant_loops_balanced_but_no_euler :
    (Finset.univ : Finset Bool).Nonempty ∧
      (∀ x : Bool,
        ((Finset.univ : Finset Bool).val.map (id : Bool → Bool)).count x =
          ((Finset.univ : Finset Bool).val.map (id : Bool → Bool)).count x) ∧
      ¬ ∃ (a : Bool) (p : Walk (id : Bool → Bool) id a a), ∀ e : Bool, e ∈ p.edges := by
  refine ⟨⟨false, Finset.mem_univ _⟩, (fun _ => rfl), ?_⟩
  rintro ⟨a, p, hexhaustive⟩
  have hf := bool_loop_edges_eq_start p false (hexhaustive false)
  have ht := bool_loop_edges_eq_start p true (hexhaustive true)
  have hbad : (false : Bool) = true := hf.trans ht.symm
  cases hbad

end Walk
end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedEulerSplicing
