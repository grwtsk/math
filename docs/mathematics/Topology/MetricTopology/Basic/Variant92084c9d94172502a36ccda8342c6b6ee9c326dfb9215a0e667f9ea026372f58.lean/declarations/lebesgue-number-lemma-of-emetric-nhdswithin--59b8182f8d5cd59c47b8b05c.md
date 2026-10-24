# lebesgue_number_lemma_of_emetric_nhdsWithin'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "757f178fc4763191fd84ddf35234c678a03bb5a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 338,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd3e7db1-1c1f-38a7-c7f6-b31b1d51d242",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4e96ffe0-051a-30d6-9bc8-c31c73ddd164",
  "kind": "theorem",
  "lexical_name": "lebesgue_number_lemma_of_emetric_nhdsWithin'",
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
  "slug": "lebesgue-number-lemma-of-emetric-nhdswithin--59b8182f8d5cd59c47b8b05c",
  "source": {
    "blob": "757f178fc4763191fd84ddf35234c678a03bb5a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 338,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59b8182f8d5cd59c47b8b05c0328ec82c74d9684d3b43096b2f29f0ef39d822c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e96ffe0-051a-30d6-9bc8-c31c73ddd164`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lebesgue_number_lemma_of_emetric_nhdsWithin' {c : (x : α) → x ∈ s → Set α}
    (hs : IsCompact s) (hc : ∀ x hx, c x hx ∈ 𝓝[s] x) :
    ∃ δ > 0, ∀ x ∈ s, ∃ y : s, ball x δ ∩ s ⊆ c y y.2 := by
  simpa only [ball, UniformSpace.ball, preimage_setOf_eq, edist_comm]
    using uniformity_basis_edist.lebesgue_number_lemma_nhdsWithin' hs hc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `757f178fc4763191fd84ddf35234c678a03bb5a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
