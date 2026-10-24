# exists_residual_outgoing_at_visited_vertex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf3f4eee-51e5-f7ec-7891-8f188cc77aa9",
  "kind": "theorem",
  "lexical_name": "exists_residual_outgoing_at_visited_vertex",
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
  "slug": "exists-residual-outgoing-at-visited-vertex--996b46d4b4266f833ba21c33",
  "source": {
    "blob": "c114e1244ffa245dc5c133bee4f5cb5f3185c2e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 79,
    "path": "GRWTSK/Combinatorics/DirectedEulerActiveSupport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:996b46d4b4266f833ba21c3328e79922660592a90a030c295e3283f381ee9bc3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedEulerActiveSupport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf3f4eee-51e5-f7ec-7891-8f188cc77aa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedEulerActiveSupport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedEulerActiveSupport.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c114e1244ffa245dc5c133bee4f5cb5f3185c2e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
