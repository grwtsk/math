# exists_exhaustive_closed_trail_of_splice_vertex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f94118aa-10f7-ed1d-df89-754766f5f1c6",
  "kind": "theorem",
  "lexical_name": "exists_exhaustive_closed_trail_of_splice_vertex",
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
  "slug": "exists-exhaustive-closed-trail-of-splice-vertex--bf1c7d33121fbaa868713966",
  "source": {
    "blob": "1c8ab15253ac7c8a1fc57836e918ab431aa11d7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 33,
    "path": "GRWTSK/Combinatorics/DirectedEulerExhaustionConsumer.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf1c7d33121fbaa868713966bd9c9478a68db82a00cf631e01aa443d20a074b8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedEulerExhaustionConsumer.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f94118aa-10f7-ed1d-df89-754766f5f1c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_exhaustive_closed_trail_of_splice_vertex
    {V : Type u} {E : Type v} {tail head : E → V} [DecidableEq V]
    (available : Finset E) (a : V)
    (hbalance : ∀ x : V,
      (available.val.map tail).count x = (available.val.map head).count x)
    (hstart : ∃ e ∈ available, tail e = a)
    (remaining_active_support_splice_vertex :
      ∀ p : Walk tail head a a,
        p.edges.Nodup →
        (∀ e ∈ p.edges, e ∈ available) →
        p.edges ≠ [] →
        (∃ e ∈ available, e ∉ p.edges) →
        ∃ (b : V) (pre : Walk tail head a b) (post : Walk tail head b a),
          p = pre.append post ∧
          ∃ e ∈ available, e ∉ p.edges ∧ tail e = b) :
    ∃ p : Walk tail head a a,
      p.edges.Nodup ∧ p.edges ≠ [] ∧
      ∀ e, e ∈ p.edges ↔ e ∈ available := by
  classical
  have hbound (p : Walk tail head a a) (hnodup : p.edges.Nodup)
      (hallowed : ∀ e ∈ p.edges, e ∈ available) :
      p.edges.length ≤ available.card := by
    have hsub : p.edges.toFinset ⊆ available := by
      intro e he
      exact hallowed e (List.mem_toFinset.mp he)
    have hc := Finset.card_le_card hsub
    rw [List.toFinset_card_of_nodup hnodup] at hc
    exact hc
  let P : ℕ → Prop := fun n =>
    ∃ p : Walk tail head a a,
      p.edges.Nodup ∧ (∀ e ∈ p.edges, e ∈ available) ∧
      p.edges ≠ [] ∧ p.edges.length = n
  obtain ⟨p₀, h₀nodup, h₀allowed, h₀ne, _⟩ :=
    exists_nonempty_closed_trail available a hbalance hstart
  let n := Nat.findGreatest P available.card
  have hP : P n := Nat.findGreatest_spec
    (hbound p₀ h₀nodup h₀allowed) ⟨p₀, h₀nodup, h₀allowed, h₀ne, rfl⟩
  obtain ⟨p, hnodup, hallowed, hne, hlength⟩ := hP
  refine ⟨p, hnodup, hne, ?_⟩
  intro e
  refine ⟨hallowed e, ?_⟩
  intro he
  by_contra hunused
  obtain ⟨b, pre, post, hsplit, f, hf, hfnot, hftail⟩ :=
    remaining_active_support_splice_vertex p hnodup hallowed hne ⟨e, he, hunused⟩
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
  have hremainingStart : ∃ e ∈ remaining, tail e = b := by
    refine ⟨f, Finset.mem_sdiff.mpr ⟨hf, ?_⟩, hftail⟩
    simpa only [List.mem_toFinset] using hfnot
  obtain ⟨loop, hloopNodup, hloopAllowed, hloopNe, _⟩ :=
    exists_nonempty_closed_trail remaining b hremainingBalance hremainingStart
  have hold : (pre.append post).edges.Nodup := by
    rw [← hsplit]
    exact hnodup
  have hdisjoint : List.Disjoint (pre.append post).edges loop.edges := by
    rw [← hsplit]
    apply List.disjoint_left.mpr
    intro g hg hgl
    exact (Finset.mem_sdiff.mp (hloopAllowed g hgl)).2 (List.mem_toFinset.mpr hg)
  obtain ⟨r, hrNodup, hrMultiset, hrLonger⟩ :=
    exists_strict_closed_trail_extension pre loop post hold hloopNodup hdisjoint hloopNe
  have hrAllowed : ∀ e ∈ r.edges, e ∈ available := by
    intro g hg
    have hgm : g ∈ (r.edges : Multiset E) := hg
    rw [hrMultiset] at hgm
    rcases Multiset.mem_add.mp hgm with hg | hg
    · apply hallowed g
      simpa only [← hsplit, Multiset.mem_coe] using hg
    · exact (Finset.mem_sdiff.mp (hloopAllowed g hg)).1
  have hrNe : r.edges ≠ [] := by
    intro hempty
    rw [hempty] at hrLonger
    simp only [List.length_nil, Nat.not_lt_zero] at hrLonger
  have hrBound := Nat.le_findGreatest (P := P) (hbound r hrNodup hrAllowed)
    ⟨r, hrNodup, hrAllowed, hrNe, rfl⟩
  change r.edges.length ≤ n at hrBound
  have hrStrict : n < r.edges.length := by
    simpa only [← hsplit, hlength] using hrLonger
  exact (not_lt_of_ge hrBound) hrStrict

end GRWTSK.Combinatorics.DirectedEulerSplicing.Walk
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedEulerExhaustionConsumer.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedEulerExhaustionConsumer.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c8ab15253ac7c8a1fc57836e918ab431aa11d7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
