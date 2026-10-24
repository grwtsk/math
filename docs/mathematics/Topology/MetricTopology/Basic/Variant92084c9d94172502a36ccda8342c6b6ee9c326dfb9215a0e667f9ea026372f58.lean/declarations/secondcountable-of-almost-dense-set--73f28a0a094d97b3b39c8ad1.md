# secondCountable_of_almost_dense_set

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
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:acee34f3-de29-3876-c8ec-658419ae9269",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82bcf09a-cb4d-69a2-04cd-77b67570feaf",
  "kind": "theorem",
  "lexical_name": "secondCountable_of_almost_dense_set",
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
  "slug": "secondcountable-of-almost-dense-set--73f28a0a094d97b3b39c8ad1",
  "source": {
    "blob": "757f178fc4763191fd84ddf35234c678a03bb5a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 214,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73f28a0a094d97b3b39c8ad19870c933aa392a1e6a9399838ac364bd936aebaa",
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

Occurrence: `result:82bcf09a-cb4d-69a2-04cd-77b67570feaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem secondCountable_of_almost_dense_set
    (hs : ∀ ε > 0, ∃ t : Set α, t.Countable ∧ ⋃ x ∈ t, closedBall x ε = univ) :
    SecondCountableTopology α := by
  suffices SeparableSpace α from UniformSpace.secondCountable_of_separable α
  have : ∀ ε > 0, ∃ t : Set α, Set.Countable t ∧ univ ⊆ ⋃ x ∈ t, closedBall x ε := by
    simpa only [univ_subset_iff] using hs
  rcases subset_countable_closure_of_almost_dense_set (univ : Set α) this with ⟨t, -, htc, ht⟩
  exact ⟨⟨t, htc, fun x => ht (mem_univ x)⟩⟩

end SecondCountable

end EMetric

variable {γ : Type w} [EMetricSpace γ]

-- see Note [lower instance priority]
/-- An emetric space is separated -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant92084c9d94172502a36ccda8342c6b6ee9c326dfb9215a0e667f9ea026372f58.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `757f178fc4763191fd84ddf35234c678a03bb5a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
