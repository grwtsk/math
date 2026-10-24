# UniformEquicontinuous.closure'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "60a2468370e4f1a1f108a196c7cbfd52a43d4cb0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 471,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12cdf224eb70ecf53b7064bd75e5d998ca22ec240535e918014972b5c9714bfb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8f55961-4caf-9acb-cd2f-d1c13c46c378",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90b1a613-5206-c828-2049-246bc134ab86",
  "kind": "theorem",
  "lexical_name": "UniformEquicontinuous.closure'",
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
  "slug": "uniformequicontinuous-closure--3ec1e7577bfa87bdcb23abe0",
  "source": {
    "blob": "60a2468370e4f1a1f108a196c7cbfd52a43d4cb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 471,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant12cdf224eb70ecf53b7064bd75e5d998ca22ec240535e918014972b5c9714bfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ec1e7577bfa87bdcb23abe0855e159c16ecdbc27fc277670bc666df0b44163e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant12cdf224eb70ecf53b7064bd75e5d998ca22ec240535e918014972b5c9714bfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90b1a613-5206-c828-2049-246bc134ab86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 471–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UniformEquicontinuous.closure' {A : Set Y} {u : Y → β → α}
    (hA : UniformEquicontinuous (u ∘ (↑) : A → β → α)) (hu : Continuous u) :
    UniformEquicontinuous (u ∘ (↑) : closure A → β → α) := by
  intro U hU
  rcases mem_uniformity_isClosed hU with ⟨V, hV, hVclosed, hVU⟩
  filter_upwards [hA V hV]
  rintro ⟨x, y⟩ hxy
  rw [SetCoe.forall] at *
  change A ⊆ (fun f => (u f x, u f y)) ⁻¹' V at hxy
  refine' (closure_minimal hxy <| hVclosed.preimage <| _).trans (preimage_mono hVU)
  exact Continuous.prod_mk ((continuous_apply x).comp hu) ((continuous_apply y).comp hu)
#align uniform_equicontinuous.closure' UniformEquicontinuous.closure'

/-- If a set of functions is uniformly equicontinuous, its closure for the product topology is also
uniformly equicontinuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant12cdf224eb70ecf53b7064bd75e5d998ca22ec240535e918014972b5c9714bfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant12cdf224eb70ecf53b7064bd75e5d998ca22ec240535e918014972b5c9714bfb.lean#L471).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60a2468370e4f1a1f108a196c7cbfd52a43d4cb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
