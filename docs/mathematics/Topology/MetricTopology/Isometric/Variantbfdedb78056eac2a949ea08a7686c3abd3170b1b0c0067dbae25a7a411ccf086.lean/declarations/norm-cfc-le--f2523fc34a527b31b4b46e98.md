# norm_cfcₙ_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5427b2de0b0c3ddce77c7088d6c074be4f65b8dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 284,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bfdedb78056eac2a949ea08a7686c3abd3170b1b0c0067dbae25a7a411ccf086.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:760a1a91-60e4-50c2-13a7-ea9c9432e595",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c3c462c-93fb-02ae-9c72-106e34391bbe",
  "kind": "lemma",
  "lexical_name": "norm_cfcₙ_le",
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
  "slug": "norm-cfc-le--f2523fc34a527b31b4b46e98",
  "source": {
    "blob": "5427b2de0b0c3ddce77c7088d6c074be4f65b8dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 284,
    "path": "GRWTSK/Topology/MetricTopology/Isometric/Variantbfdedb78056eac2a949ea08a7686c3abd3170b1b0c0067dbae25a7a411ccf086.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2523fc34a527b31b4b46e98be9a9c4a9a1000bbba68f6d1cc4d4760190df243",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Isometric/Variantbfdedb78056eac2a949ea08a7686c3abd3170b1b0c0067dbae25a7a411ccf086.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c3c462c-93fb-02ae-9c72-106e34391bbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_cfcₙ_le {f : 𝕜 → 𝕜} {a : A} {c : ℝ} (h : ∀ x ∈ σₙ 𝕜 a, ‖f x‖ ≤ c) :
    ‖cfcₙ f a‖ ≤ c := by
  refine cfcₙ_cases (‖·‖ ≤ c) a f ?_ fun hf hf0 ha ↦ ?_
  · simpa using (norm_nonneg _).trans <| h 0 (quasispectrum.zero_mem 𝕜 a)
  · simp only [← cfcₙ_apply f a, isLUB_le_iff (IsGreatest.norm_cfcₙ f a hf hf0 ha |>.isLUB)]
    rintro - ⟨x, hx, rfl⟩
    exact h x hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Isometric/Variantbfdedb78056eac2a949ea08a7686c3abd3170b1b0c0067dbae25a7a411ccf086.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Isometric/Variantbfdedb78056eac2a949ea08a7686c3abd3170b1b0c0067dbae25a7a411ccf086.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5427b2de0b0c3ddce77c7088d6c074be4f65b8dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
