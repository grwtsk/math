# IsDynCoverOf.preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ef94afa7d2deb8a6ae9e02e1649663605718462",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:805f136d-ef7a-ce09-9572-2e5d403b3f59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d9454e9-ede9-304d-d8bd-72a378e07b07",
  "kind": "lemma",
  "lexical_name": "IsDynCoverOf.preimage",
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
  "slug": "isdyncoverof-preimage--8abe9cc98d53a085c8248043",
  "source": {
    "blob": "4ef94afa7d2deb8a6ae9e02e1649663605718462",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 67,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8abe9cc98d53a085c82480436052ded820180fe94fbf6998bbedc16f3d25b7ec",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d9454e9-ede9-304d-d8bd-72a378e07b07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsDynCoverOf.preimage (h : Semiconj φ S T) {F : Set X} {V : Set (Y × Y)}
    (V_symm : IsSymmetricRel V) {n : ℕ} {t : Finset Y} (h' : IsDynCoverOf T (φ '' F) V n t) :
    ∃ s : Finset X, IsDynCoverOf S F ((map φ φ) ⁻¹' (V ○ V)) n s ∧ s.card ≤ t.card := by
  classical
  rcases isEmpty_or_nonempty X with _ | _
  · exact ⟨∅, eq_empty_of_isEmpty F ▸ ⟨isDynCoverOf_empty, Finset.card_empty ▸ zero_le t.card⟩⟩
  -- If `t` is a dynamical cover of `φ '' F`, then we want to choose one preimage by `φ` for each
  -- element of `t`. This is complicated by the fact that `t` may not be a subset of `φ '' F`,
  -- and may not even be in the range of `φ`. Hence, we first modify `t` to make it a subset
  -- of `φ '' F`. This requires taking larger entourages.
  obtain ⟨s, s_cover, s_card, s_inter⟩ := h'.nonempty_inter
  choose! g gs_cover using fun (x : Y) (h : x ∈ s) ↦ nonempty_def.1 (s_inter x h)
  choose! f f_section using fun (y : Y) (a : y ∈ φ '' F) ↦ a
  refine ⟨s.image (f ∘ g), ?_, Finset.card_image_le.trans s_card⟩
  simp only [IsDynCoverOf, Finset.mem_coe, image_subset_iff, preimage_iUnion₂] at s_cover ⊢
  apply s_cover.trans
  rw [← h.preimage_dynEntourage (V ○ V) n, Finset.set_biUnion_finset_image]
  refine iUnion₂_mono fun i i_s ↦ ?_
  rw [comp_apply, ball_preimage, (f_section (g i) (gs_cover i i_s).2).2]
  refine preimage_mono fun x x_i ↦ mem_ball_dynEntourage_comp T n V_symm x (g i) ⟨i, ?_⟩
  replace gs_cover := (gs_cover i i_s).1
  rw [mem_ball_symmetry (V_symm.dynEntourage T n)] at x_i gs_cover
  exact ⟨x_i, gs_cover⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ef94afa7d2deb8a6ae9e02e1649663605718462` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
