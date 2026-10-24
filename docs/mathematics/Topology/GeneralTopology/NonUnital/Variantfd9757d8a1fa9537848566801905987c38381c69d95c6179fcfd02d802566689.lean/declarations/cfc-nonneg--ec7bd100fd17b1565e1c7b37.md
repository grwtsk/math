# cfcₙ_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20898072847cd652759206ccde7a3ebb3910bac2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 674,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd9757d8a1fa9537848566801905987c38381c69d95c6179fcfd02d802566689.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe8736c1-6dcc-ae37-c298-c7faaa851433",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:904f051f-e4a9-4df2-c034-78e639dbb5d7",
  "kind": "lemma",
  "lexical_name": "cfcₙ_nonneg",
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
  "slug": "cfc-nonneg--ec7bd100fd17b1565e1c7b37",
  "source": {
    "blob": "20898072847cd652759206ccde7a3ebb3910bac2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 683,
    "line": 674,
    "path": "GRWTSK/Topology/GeneralTopology/NonUnital/Variantfd9757d8a1fa9537848566801905987c38381c69d95c6179fcfd02d802566689.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec7bd100fd17b1565e1c7b3730f301edd31cefbe069c546def42e8e7ee4f613e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NonUnital/Variantfd9757d8a1fa9537848566801905987c38381c69d95c6179fcfd02d802566689.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:904f051f-e4a9-4df2-c034-78e639dbb5d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 674–683.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfcₙ_nonneg {f : R → R} {a : A} (h : ∀ x ∈ σₙ R a, 0 ≤ f x) :
    0 ≤ cfcₙ f a := by
  by_cases hf : ContinuousOn f (σₙ R a) ∧ f 0 = 0
  · obtain ⟨h₁, h₂⟩ := hf
    simpa using cfcₙ_mono h
  · simp only [not_and_or] at hf
    obtain (hf | hf) := hf
    · simp only [cfcₙ_apply_of_not_continuousOn _ hf, le_rfl]
    · simp only [cfcₙ_apply_of_not_map_zero _ hf, le_rfl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NonUnital/Variantfd9757d8a1fa9537848566801905987c38381c69d95c6179fcfd02d802566689.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NonUnital/Variantfd9757d8a1fa9537848566801905987c38381c69d95c6179fcfd02d802566689.lean#L674).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20898072847cd652759206ccde7a3ebb3910bac2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
