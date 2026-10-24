# le_of_mem_compression_of_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06f706f134f771dc08ccdb7ad85390c70a9bad62",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 199,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b3711f70a1ca8a9debabdfaf332dc4af73d4953cf1d435f1d48107efd8e26931.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e79d5b5-9d68-d1d9-1904-bf5196678729",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41278baa-937b-86c1-cab8-8ae2e2445b8a",
  "kind": "theorem",
  "lexical_name": "le_of_mem_compression_of_notMem",
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
  "slug": "le-of-mem-compression-of-notmem--b257fb74f35ef3c4bbf18d5c",
  "source": {
    "blob": "06f706f134f771dc08ccdb7ad85390c70a9bad62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 199,
    "path": "GRWTSK/Topology/GeneralTopology/UV/Variantb3711f70a1ca8a9debabdfaf332dc4af73d4953cf1d435f1d48107efd8e26931.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b257fb74f35ef3c4bbf18d5c999e44006ecb14163aafd1dd25cbd3198cd36ede",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UV/Variantb3711f70a1ca8a9debabdfaf332dc4af73d4953cf1d435f1d48107efd8e26931.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41278baa-937b-86c1-cab8-8ae2e2445b8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_of_mem_compression_of_notMem (h : a ∈ 𝓒 u v s) (ha : a ∉ s) : u ≤ a := by
  rw [mem_compression] at h
  obtain h | ⟨-, b, hb, hba⟩ := h
  · cases ha h.1
  unfold compress at hba
  split_ifs at hba with h
  · rw [← hba, le_sdiff]
    exact ⟨le_sup_right, h.1.mono_right h.2⟩
  · cases ne_of_mem_of_not_mem hb ha hba

@[deprecated (since := "2025-05-23")]
alias le_of_mem_compression_of_not_mem := le_of_mem_compression_of_notMem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UV/Variantb3711f70a1ca8a9debabdfaf332dc4af73d4953cf1d435f1d48107efd8e26931.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UV/Variantb3711f70a1ca8a9debabdfaf332dc4af73d4953cf1d435f1d48107efd8e26931.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06f706f134f771dc08ccdb7ad85390c70a9bad62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
