# Closeds.compactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ddd45e16f90c087a7a25825867185b0156a1dc20bf1d23ddfcf72adcb45b145b",
  "kind": "instance",
  "lexical_name": "Closeds.compactSpace",
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
  "slug": "closeds-compactspace--081698365e34c64f9915b33b",
  "source": {
    "blob": "0e0483fa8a8a4fb0a426e5e2e15d8127fafc2141",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 195,
    "path": "GRWTSK/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:081698365e34c64f9915b33b78eb501c581d38b5ac7114d74aefaad1625378a6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ddd45e16f90c087a7a25825867185b0156a1dc20bf1d23ddfcf72adcb45b145b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Closeds.compactSpace [CompactSpace α] : CompactSpace (Closeds α) :=
  ⟨by
    /- by completeness, it suffices to show that it is totally bounded,
        i.e., for all ε>0, there is a finite set which is ε-dense.
        start from a set `s` which is ε-dense in α. Then the subsets of `s`
        are finitely many, and ε-dense for the Hausdorff distance. -/
    refine'
      isCompact_of_totallyBounded_isClosed (EMetric.totallyBounded_iff.2 fun ε εpos => _)
        isClosed_univ
    rcases exists_between εpos with ⟨δ, δpos, δlt⟩
    rcases EMetric.totallyBounded_iff.1
        (isCompact_iff_totallyBounded_isComplete.1 (@isCompact_univ α _ _)).1 δ δpos with
      ⟨s, fs, hs⟩
    -- s : Set α, fs : s.Finite, hs : univ ⊆ ⋃ (y : α) (H : y ∈ s), eball y δ
    -- we first show that any set is well approximated by a subset of `s`.
    have main : ∀ u : Set α, ∃ (v : _) (_ : v ⊆ s), hausdorffEdist u v ≤ δ := by
      intro u
      let v := { x : α | x ∈ s ∧ ∃ y ∈ u, edist x y < δ }
      exists v, (fun x hx => hx.1 : v ⊆ s)
      refine' hausdorffEdist_le_of_mem_edist _ _
      · intro x hx
        have : x ∈ ⋃ y ∈ s, ball y δ := hs (by simp)
        rcases mem_iUnion₂.1 this with ⟨y, ys, dy⟩
        have : edist y x < δ := by simp at dy; rwa [edist_comm] at dy
        exact ⟨y, ⟨ys, ⟨x, hx, this⟩⟩, le_of_lt dy⟩
      · rintro x ⟨_, ⟨y, yu, hy⟩⟩
        exact ⟨y, yu, le_of_lt hy⟩
    -- introduce the set F of all subsets of `s` (seen as members of `Closeds α`).
    let F := { f : Closeds α | (f : Set α) ⊆ s }
    refine' ⟨F, _, fun u _ => _⟩
    -- `F` is finite
    · apply @Finite.of_finite_image _ _ F _
      · apply fs.finite_subsets.subset fun b => _
        exact fun s => (s : Set α)
        simp only [and_imp, Set.mem_image, Set.mem_setOf_eq, exists_imp]
        intro _ x hx hx'
        rwa [hx'] at hx
      · exact SetLike.coe_injective.injOn F
    -- `F` is ε-dense
    · obtain ⟨t0, t0s, Dut0⟩ := main u
      have : IsClosed t0 := (fs.subset t0s).isCompact.isClosed
      let t : Closeds α := ⟨t0, this⟩
      have : t ∈ F := t0s
      have : edist u t < ε := lt_of_le_of_lt Dut0 δlt
      apply mem_iUnion₂.2
      exact ⟨t, ‹t ∈ F›, this⟩⟩
#align emetric.closeds.compact_space EMetric.Closeds.compactSpace

/-- In an emetric space, the type of non-empty compact subsets is an emetric space,
where the edistance is the Hausdorff edistance -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e0483fa8a8a4fb0a426e5e2e15d8127fafc2141` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
