# isPrincipalIdealRing_of_compactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4c7579a52c3d7bcec2af396c0fffc0a8b5f31d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ef26342-7a4b-2d39-d600-add40e4d80a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53d69baa-5da1-2405-d4f8-d765a24738c4",
  "kind": "lemma",
  "lexical_name": "isPrincipalIdealRing_of_compactSpace",
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
  "slug": "isprincipalidealring-of-compactspace--5d39f23cb3e7eb6b63bf766d",
  "source": {
    "blob": "b4c7579a52c3d7bcec2af396c0fffc0a8b5f31d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 172,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d39f23cb3e7eb6b63bf766d3b7a43560ba3ba77713f2e5fbcceed02a01ad9a4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53d69baa-5da1-2405-d4f8-d765a24738c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isPrincipalIdealRing_of_compactSpace {F Γ₀} [Field F]
    [LinearOrderedCommGroupWithZero Γ₀] [MulArchimedean Γ₀] [hv : Valued F Γ₀] [CompactSpace 𝒪[F]]
    (h : ∃ x : F, 0 < Valued.v x ∧ Valued.v x < 1) :
    IsPrincipalIdealRing 𝒪[F] := by
  -- TODO: generalize to `Valuation.Integer`, which will require showing that `IsCompact`
  -- pulls back across `TopologicalSpace.induced` from a `LocallyCompactSpace`.
  -- The strategy to show that we have a PIR is by contradiction,
  -- assuming that the range of the valuation is densely ordered.
  -- We can construct a family of spheres at every single element of the valuation ring
  -- outside of a closed ball, which will cover.
  -- Since we are in a compact space, this cover has a finite subcover.
  -- This subcover, when excluding the sphere at 1, then has a max element since it is finite.
  -- However, since we are densely ordered, we can find an element with a valuation between
  -- the max element and 1, which is a contradiction, since it is outside the cover.

  -- First, we need to pick a threshold element with a nontrivial valuation less than 1,
  -- which will form -- the inner closed ball of the cover, which we need to cover 0.
  -- We have such an element by construction.
  obtain ⟨x, hx, hx'⟩ : ∃ x : 𝒪[F], 0 < hv.v x ∧ hv.v x < 1 := by
    obtain ⟨x, hx, hx'⟩ := h
    refine ⟨⟨x, hx'.le⟩, hx, hx'⟩
  -- the key result is that a valuation ring that maps into a `MulArchimedean` value group
  -- is a PIR iff the value group is not densely ordered.
  have hi : Valuation.Integers (R := F) Valued.v 𝒪[F] := Valuation.integer.integers v
  rw [hi.isPrincipalIdealRing_iff_not_denselyOrdered]
  intro H
  -- Construct our cover, which has an inner closed ball, and spheres for each element
  -- outside of the closed ball. These are all open sets by the nonarchimedean property.
  let U : 𝒪[F] → Set 𝒪[F] := fun y ↦ if hv.v y < hv.v x
    then {z | hv.v z ≤ hv.v x}
    else {z | hv.v z = hv.v y}
  -- Extract out the finite subcover from our cover, which is a finite set of elements of
  -- the valuation ring, whose spheres cover the whole ring.
  obtain ⟨t, ht⟩ := CompactSpace.elim_nhds_subcover U <| by
    intro y
    simp only [U]
    split_ifs with hy
    · refine IsOpen.mem_nhds ((Valued.isOpen_closedball _ hx.ne').preimage ?_) ?_
      · exact continuous_subtype_val
      · simp [hy.le]
    · refine IsOpen.mem_nhds ((Valued.isOpen_sphere _ ?_).preimage ?_) ?_
      · simp only [not_lt] at hy
        exact (hx.trans_le hy).ne'
      · exact continuous_subtype_val
      · simp
  -- For each element of the valuation ring that is bigger than our threshold element above,
  -- then there must be something in the cover that has the precise valuation of the element,
  -- because it must be outside the inner closed ball, and thus is covered by some sphere.
  have htm : ∀ y : 𝒪[F], hv.v x < hv.v y → ∃ z ∈ t, hv.v z = hv.v y := by
    intro y hy
    have := ht.ge (Set.mem_univ y)
    simp only [Set.mem_iUnion, exists_prop', nonempty_prop, U] at this
    -- we get the `z` from the cover that covers our arbitrary `y` with its set
    obtain ⟨z, hz, hz'⟩ := this
    -- and this `z` is either less than or greater than (or equal to) the threshold element
    split_ifs at hz' with h
    -- the `z` is inside closed ball case, which is a contradiction since we know `y` is outside
    · simp [hy.not_le] at hz'
    -- the `z` is gives a sphere, so we plug it in
    · simp only [Set.mem_setOf_eq, U] at hz'
      exact ⟨z, hz, hz'.symm⟩
  -- Pick an element of the valuation ring to use as the excluded element of the subcover
  -- (since we know that all elements of the valuation ring have valuation less than or equal to 1).
  obtain ⟨y, _, hy'⟩ : ∃ y : 𝒪[F], y ∈ t ∧ hv.v y = 1 := by simpa using htm 1 (by simpa using hx')
  -- And pick an element in the subcover that is greater than the threshold element, but less
  -- than valuation 1. We will need this to show that the subcover excluding the element
  -- with valuation 1 is nonempty, which will allow us to take a max element.
  obtain ⟨w, hwt, hw1, hxw⟩ : ∃ w : 𝒪[F], w ∈ t ∧ hv.v w < 1 ∧ hv.v x < hv.v w := by
    replace hx' : (⟨_, x, rfl⟩ : Set.range hv.v) < ⟨_, 1, rfl⟩ := by simpa using hx'
    obtain ⟨⟨_, w, rfl⟩, hw, hw'⟩ := exists_between hx'
    obtain ⟨u, hu, hu'⟩ := htm ⟨w, by simpa using hw'.le⟩ hw
    exact ⟨u, hu, hu' ▸ by simpa using hw', hu' ▸ by simpa using hw⟩
  -- We're ready to work with the cover that excludes elements with valuation 1.
  let u := t.filter (fun a : 𝒪[F] ↦ hv.v a < 1)
  have hwu : w ∈ u := by simp [u, hwt, hw1] -- and it is nonempty.
  -- So the element that takes on the largest valuation in this partial cover is in the cover itself
  -- which is the case because this partial cover is closed under the max (`⊔`) operation:
  -- if `‖x‖ ∈ u` and `‖y‖ ∈ u`, then `max ‖x‖ ‖y‖ ∈ u`
  obtain hl' := (u.image (hv.v ∘ ((↑) : 𝒪[F] → F))).max'_mem <| by simpa using ⟨_, hwu⟩
  simp only [Finset.mem_image, Finset.mem_filter, Function.comp_apply, u] at hl'
  obtain ⟨l, ⟨hl, hl'⟩, hvl⟩ := hl'
  -- we know that this largest element must have valuation less than 1,
  -- since it is in the partial cover, and this is the property of the partial cover
  have hm : (⟨hv.v l, l, rfl⟩ : Set.range hv.v) < (⟨1, y, hy'⟩) := by simpa using hl'
  -- Prepare the contradiction, pick an element that has a valuation between the max element and 1.
  obtain ⟨⟨_, m, rfl⟩, hm⟩ := exists_between hm
  simp only [Subtype.mk_lt_mk] at hm
  -- well, it is in the ring, so there is something in the cover that covers it,
  -- and it must be a sphere since it is larger than the threshold element by virtue of
  -- `v x < v l < v m`.
  obtain ⟨n, hn, hn'⟩ : ∃ n ∈ t, hv.v n = hv.v m := by
    refine htm ⟨m, hm.right.le⟩ (hxw.trans (hm.left.trans_le' ?_))
    rw [hvl]
    refine Finset.le_max' _ _ ?_
    simp only [Finset.mem_image, Finset.mem_filter, Function.comp_apply]
    exact ⟨w, ⟨hwt, hw1⟩, rfl⟩
  rw [← hn'] at hm -- clean up what valuations we refer to
  -- to supply the contradiction, we have `v l < v n`, now prove that also `v n ≤ v l`
  refine hm.left.not_le ?_
  -- which is the case since `‖l‖ = u.max' ..` and the property of `Finset.max'`
  rw [hvl]
  refine Finset.le_max' _ _ ?_
  simp only [Finset.mem_image, Finset.mem_filter, Function.comp_apply]
  use n
  simp [hn, hm.right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4c7579a52c3d7bcec2af396c0fffc0a8b5f31d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
