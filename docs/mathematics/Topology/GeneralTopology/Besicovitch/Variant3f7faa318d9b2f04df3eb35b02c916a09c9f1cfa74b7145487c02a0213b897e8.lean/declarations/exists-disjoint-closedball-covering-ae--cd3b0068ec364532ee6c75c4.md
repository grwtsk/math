# exists_disjoint_closedBall_covering_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fabaa8a-2976-832a-249c-587bd14fa2b8",
  "kind": "theorem",
  "lexical_name": "exists_disjoint_closedBall_covering_ae",
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
  "slug": "exists-disjoint-closedball-covering-ae--cd3b0068ec364532ee6c75c4",
  "source": {
    "blob": "d690b794dd75291c757f229b70e7afb934ddbc18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 863,
    "line": 840,
    "path": "GRWTSK/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd3b0068ec364532ee6c75c4829f8ca2fb55848007b5e11f1ca56622ac8df620",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fabaa8a-2976-832a-249c-587bd14fa2b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 840–863.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_disjoint_closedBall_covering_ae (μ : Measure α) [SFinite μ] (f : α → Set ℝ)
    (s : Set α) (hf : ∀ x ∈ s, ∀ δ > 0, (f x ∩ Ioo 0 δ).Nonempty) (R : α → ℝ)
    (hR : ∀ x ∈ s, 0 < R x) :
    ∃ (t : Set α) (r : α → ℝ), t.Countable ∧ t ⊆ s ∧
      (∀ x ∈ t, r x ∈ f x ∩ Ioo 0 (R x)) ∧ μ (s \ ⋃ x ∈ t, closedBall x (r x)) = 0 ∧
        t.PairwiseDisjoint fun x => closedBall x (r x) := by
  let g x := f x ∩ Ioo 0 (R x)
  have hg : ∀ x ∈ s, ∀ δ > 0, (g x ∩ Ioo 0 δ).Nonempty := fun x hx δ δpos ↦ by
    rcases hf x hx (min δ (R x)) (lt_min δpos (hR x hx)) with ⟨r, hr⟩
    exact ⟨r, ⟨⟨hr.1, hr.2.1, hr.2.2.trans_le (min_le_right _ _)⟩,
      ⟨hr.2.1, hr.2.2.trans_le (min_le_left _ _)⟩⟩⟩
  rcases exists_disjoint_closedBall_covering_ae_aux μ g s hg with ⟨v, v_count, vs, vg, μv, v_disj⟩
  obtain ⟨r, t, rfl⟩ : ∃ (r : α → ℝ) (t : Set α), v = graphOn r t := by
    have I : ∀ p ∈ v, 0 ≤ p.2 := fun p hp => (vg p hp).2.1.le
    rw [exists_eq_graphOn]
    refine fun x hx y hy heq ↦ v_disj.eq hx hy <| not_disjoint_iff.2 ⟨x.1, ?_⟩
    simp [*]
  have hinj : InjOn (fun x ↦ (x, r x)) t := LeftInvOn.injOn (f₁' := Prod.fst) fun _ _ ↦ rfl
  simp only [graphOn, forall_mem_image, biUnion_image, hinj.pairwiseDisjoint_image] at *
  exact ⟨t, r, countable_of_injective_of_countable_image hinj v_count, vs, vg, μv, v_disj⟩

/-- In a space with the Besicovitch property, any set `s` can be covered with balls whose measures
add up to at most `μ s + ε`, for any positive `ε`. This works even if one restricts the set of
allowed radii around a point `x` to a set `f x` which accumulates at `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean#L840).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d690b794dd75291c757f229b70e7afb934ddbc18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
