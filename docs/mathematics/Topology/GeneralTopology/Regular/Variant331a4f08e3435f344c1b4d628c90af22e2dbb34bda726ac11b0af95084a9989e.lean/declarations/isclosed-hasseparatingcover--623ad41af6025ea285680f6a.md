# IsClosed.HasSeparatingCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7663023e-531a-6945-9e62-9ebaf411f2c3",
  "kind": "lemma",
  "lexical_name": "IsClosed.HasSeparatingCover",
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
  "slug": "isclosed-hasseparatingcover--623ad41af6025ea285680f6a",
  "source": {
    "blob": "c1e2d4a00dc1abbada13049b6276cb7f3bfb6445",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 255,
    "path": "GRWTSK/Topology/GeneralTopology/Regular/Variant331a4f08e3435f344c1b4d628c90af22e2dbb34bda726ac11b0af95084a9989e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:623ad41af6025ea285680f6ad10d1a7ec7da3ce369767c377641019604785aeb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Regular/Variant331a4f08e3435f344c1b4d628c90af22e2dbb34bda726ac11b0af95084a9989e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7663023e-531a-6945-9e62-9ebaf411f2c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsClosed.HasSeparatingCover {s t : Set X} [LindelofSpace X] [RegularSpace X]
    (s_cl : IsClosed s) (t_cl : IsClosed t) (st_dis : Disjoint s t) : HasSeparatingCover s t := by
  -- `IsLindelof.indexed_countable_subcover` requires the space be Nonempty
  rcases isEmpty_or_nonempty X with empty_X | nonempty_X
  · rw [subset_eq_empty (t := s) (fun ⦃_⦄ _ ↦ trivial) (univ_eq_empty_iff.mpr empty_X)]
    exact hasSeparatingCovers_iff_separatedNhds.mpr (SeparatedNhds.empty_left t) |>.1
  -- This is almost `HasSeparatingCover`, but is not countable. We define for all `a : X` for use
  -- with `IsLindelof.indexed_countable_subcover` momentarily.
  have (a : X) : ∃ n : Set X, IsOpen n ∧ Disjoint (closure n) t ∧ (a ∈ s → a ∈ n) := by
    wlog ains : a ∈ s
    · exact ⟨∅, isOpen_empty, SeparatedNhds.empty_left t |>.disjoint_closure_left, fun a ↦ ains a⟩
    obtain ⟨n, nna, ncl, nsubkc⟩ := ((regularSpace_TFAE X).out 0 3 :).mp ‹RegularSpace X› a tᶜ <|
      t_cl.compl_mem_nhds (disjoint_left.mp st_dis ains)
    exact
      ⟨interior n,
       isOpen_interior,
       disjoint_left.mpr fun ⦃_⦄ ain ↦
         nsubkc <| (IsClosed.closure_subset_iff ncl).mpr interior_subset ain,
       fun _ ↦ mem_interior_iff_mem_nhds.mpr nna⟩
  -- By Lindelöf, we may obtain a countable subcover witnessing `HasSeparatingCover`
  choose u u_open u_dis u_nhds using this
  obtain ⟨f, f_cov⟩ := s_cl.isLindelof.indexed_countable_subcover
    u u_open (fun a ainh ↦ mem_iUnion.mpr ⟨a, u_nhds a ainh⟩)
  exact ⟨u ∘ f, f_cov, fun n ↦ ⟨u_open (f n), u_dis (f n)⟩⟩


end RegularSpace

section LocallyCompactRegularSpace

/-- In a (possibly non-Hausdorff) locally compact regular space, for every containment `K ⊆ U` of
  a compact set `K` in an open set `U`, there is a compact closed neighborhood `L`
  such that `K ⊆ L ⊆ U`: equivalently, there is a compact closed set `L` such
  that `K ⊆ interior L` and `L ⊆ U`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Regular/Variant331a4f08e3435f344c1b4d628c90af22e2dbb34bda726ac11b0af95084a9989e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Regular/Variant331a4f08e3435f344c1b4d628c90af22e2dbb34bda726ac11b0af95084a9989e.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1e2d4a00dc1abbada13049b6276cb7f3bfb6445` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
