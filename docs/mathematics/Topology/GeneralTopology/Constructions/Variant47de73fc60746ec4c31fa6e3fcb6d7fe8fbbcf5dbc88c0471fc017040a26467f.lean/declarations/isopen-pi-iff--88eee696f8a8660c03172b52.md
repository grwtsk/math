# isOpen_pi_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91a7136cc7b39e609f8becbf9e0785069bb2610d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47de73fc60746ec4c31fa6e3fcb6d7fe8fbbcf5dbc88c0471fc017040a26467f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6591bbe-0c3e-3a64-abf8-9e8b764b6a9c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e664d00-f34f-d544-b257-1f5a7fb0cd66",
  "kind": "theorem",
  "lexical_name": "isOpen_pi_iff'",
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
  "slug": "isopen-pi-iff--88eee696f8a8660c03172b52",
  "source": {
    "blob": "91a7136cc7b39e609f8becbf9e0785069bb2610d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1121,
    "line": 1105,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant47de73fc60746ec4c31fa6e3fcb6d7fe8fbbcf5dbc88c0471fc017040a26467f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88eee696f8a8660c03172b524313c473988574488ae0c3d84a748a520f20d721",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant47de73fc60746ec4c31fa6e3fcb6d7fe8fbbcf5dbc88c0471fc017040a26467f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e664d00-f34f-d544-b257-1f5a7fb0cd66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1105–1121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpen_pi_iff' [Finite ι] {s : Set (∀ a, A a)} :
    IsOpen s ↔
      ∀ f, f ∈ s → ∃ u : ∀ a, Set (A a), (∀ a, IsOpen (u a) ∧ f a ∈ u a) ∧ univ.pi u ⊆ s := by
  cases nonempty_fintype ι
  rw [isOpen_iff_nhds]
  simp_rw [le_principal_iff, nhds_pi, Filter.mem_pi', mem_nhds_iff]
  refine forall₂_congr fun a _ => ⟨?_, ?_⟩
  · rintro ⟨I, t, ⟨h1, h2⟩⟩
    refine
      ⟨fun i => (h1 i).choose,
        ⟨fun i => (h1 i).choose_spec.2,
          (pi_mono fun i _ => (h1 i).choose_spec.1).trans (Subset.trans ?_ h2)⟩⟩
    rw [← pi_inter_compl (I : Set ι)]
    exact inter_subset_left
  · exact fun ⟨u, ⟨h1, _⟩⟩ =>
      ⟨Finset.univ, u, ⟨fun i => ⟨u i, ⟨rfl.subset, h1 i⟩⟩, by rwa [Finset.coe_univ]⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant47de73fc60746ec4c31fa6e3fcb6d7fe8fbbcf5dbc88c0471fc017040a26467f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant47de73fc60746ec4c31fa6e3fcb6d7fe8fbbcf5dbc88c0471fc017040a26467f.lean#L1105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91a7136cc7b39e609f8becbf9e0785069bb2610d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
