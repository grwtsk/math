# exists_isOpen_isBounded_image_inter_of_isCompact_of_forall_continuousWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b47b2b389eebc08df32ef3a6f450f350c389cfcd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbdb5dce531767c8e6b56f004d9d3a4cde9173a5a11ef40733a86cb432cadd2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9689972e-3ee9-d711-9d0a-c880eaf3d283",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a422c763-7643-20d9-ea77-e3f7a8d98e2e",
  "kind": "theorem",
  "lexical_name": "exists_isOpen_isBounded_image_inter_of_isCompact_of_forall_continuousWithinAt",
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
  "slug": "exists-isopen-isbounded-image-inter-of-iscompact-of-forall-continuouswit--f0c6f3458c62fb27e73de88b",
  "source": {
    "blob": "b47b2b389eebc08df32ef3a6f450f350c389cfcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 281,
    "path": "GRWTSK/Topology/MetricTopology/Bounded/Variantdbdb5dce531767c8e6b56f004d9d3a4cde9173a5a11ef40733a86cb432cadd2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0c6f3458c62fb27e73de88b1fdbe3bd595a9f9f6f67b6fad4b5a600ec10b959",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Bounded/Variantdbdb5dce531767c8e6b56f004d9d3a4cde9173a5a11ef40733a86cb432cadd2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a422c763-7643-20d9-ea77-e3f7a8d98e2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isOpen_isBounded_image_inter_of_isCompact_of_forall_continuousWithinAt
    [TopologicalSpace β] {k s : Set β} {f : β → α} (hk : IsCompact k)
    (hf : ∀ x ∈ k, ContinuousWithinAt f s x) :
    ∃ t, k ⊆ t ∧ IsOpen t ∧ IsBounded (f '' (t ∩ s)) := by
  have : Disjoint (𝓝ˢ k ⊓ 𝓟 s) (comap f (cobounded α)) := by
    rw [disjoint_assoc, inf_comm, hk.disjoint_nhdsSet_left]
    exact fun x hx ↦ disjoint_left_comm.2 <|
      tendsto_comap.disjoint (disjoint_cobounded_nhds _) (hf x hx)
  rcases ((((hasBasis_nhdsSet _).inf_principal _)).disjoint_iff ((basis_sets _).comap _)).1 this
    with ⟨U, ⟨hUo, hkU⟩, t, ht, hd⟩
  refine ⟨U, hkU, hUo, (isBounded_compl_iff.2 ht).subset ?_⟩
  rwa [image_subset_iff, preimage_compl, subset_compl_iff_disjoint_right]

/-- If a function is continuous at every point of a compact set `k`, then it is bounded on
some open neighborhood of `k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Bounded/Variantdbdb5dce531767c8e6b56f004d9d3a4cde9173a5a11ef40733a86cb432cadd2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Bounded/Variantdbdb5dce531767c8e6b56f004d9d3a4cde9173a5a11ef40733a86cb432cadd2b.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b47b2b389eebc08df32ef3a6f450f350c389cfcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
