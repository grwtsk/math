# tendstoUniformly_iff_seq_tendstoUniformly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67fdd99294a7682219834479151f3c026e6e5eed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 579,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d78fc0db40cda3732784d2e4056af88b9a35b7abd3d76ca6c9ac4838177615be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc500b6c-c11d-8737-6f45-8df6207c790a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22a37a9b-af26-12d9-f6b6-6d6d2c5d5932",
  "kind": "theorem",
  "lexical_name": "tendstoUniformly_iff_seq_tendstoUniformly",
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
  "slug": "tendstouniformly-iff-seq-tendstouniformly--113a4eafe9a24a2816638dda",
  "source": {
    "blob": "67fdd99294a7682219834479151f3c026e6e5eed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 579,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variantd78fc0db40cda3732784d2e4056af88b9a35b7abd3d76ca6c9ac4838177615be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:113a4eafe9a24a2816638dda51dbb24c192e3dae4e2be08c80004ac8f42acbbb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variantd78fc0db40cda3732784d2e4056af88b9a35b7abd3d76ca6c9ac4838177615be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22a37a9b-af26-12d9-f6b6-6d6d2c5d5932`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 579–592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoUniformly_iff_seq_tendstoUniformly {l : Filter ι} [l.IsCountablyGenerated] :
    TendstoUniformly F f l ↔
      ∀ u : ℕ → ι, Tendsto u atTop l → TendstoUniformly (fun n => F (u n)) f atTop := by
  simp_rw [← tendstoUniformlyOn_univ]
  exact tendstoUniformlyOn_iff_seq_tendstoUniformlyOn
#align tendsto_uniformly_iff_seq_tendsto_uniformly tendstoUniformly_iff_seq_tendstoUniformly

end SeqTendsto

variable [TopologicalSpace α]

/-- A sequence of functions `Fₙ` converges locally uniformly on a set `s` to a limiting function
`f` with respect to a filter `p` if, for any entourage of the diagonal `u`, for any `x ∈ s`, one
has `p`-eventually `(f y, Fₙ y) ∈ u` for all `y` in a neighborhood of `x` in `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variantd78fc0db40cda3732784d2e4056af88b9a35b7abd3d76ca6c9ac4838177615be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variantd78fc0db40cda3732784d2e4056af88b9a35b7abd3d76ca6c9ac4838177615be.lean#L579).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67fdd99294a7682219834479151f3c026e6e5eed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
