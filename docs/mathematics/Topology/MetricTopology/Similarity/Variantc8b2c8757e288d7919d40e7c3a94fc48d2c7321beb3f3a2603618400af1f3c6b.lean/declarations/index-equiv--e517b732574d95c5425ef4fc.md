# index_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0fb47c7-cd4a-501b-4ca3-494c09e9f526",
  "kind": "lemma",
  "lexical_name": "index_equiv",
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
  "slug": "index-equiv--e517b732574d95c5425ef4fc",
  "source": {
    "blob": "8a3cb50ab0effd615a355eb94fac3b693a2af8b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 113,
    "path": "GRWTSK/Topology/MetricTopology/Similarity/Variantc8b2c8757e288d7919d40e7c3a94fc48d2c7321beb3f3a2603618400af1f3c6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e517b732574d95c5425ef4fc3c630305de9ecf0e74bbd7d2956468509baaa6cc",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Similarity/Variantc8b2c8757e288d7919d40e7c3a94fc48d2c7321beb3f3a2603618400af1f3c6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0fb47c7-cd4a-501b-4ca3-494c09e9f526`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma index_equiv (f : ι' ≃ ι) (v₁ : ι → P₁) (v₂ : ι → P₂) :
    v₁ ∘ f ∼ v₂ ∘ f ↔ v₁ ∼ v₂ := by
  refine ⟨fun h => ?_, fun h => Similar.index_map h f⟩
  rcases h with ⟨r, hr, h⟩
  refine ⟨r, hr, fun i₁ i₂ => ?_⟩
  simpa [f.right_inv i₁, f.right_inv i₂] using h (f.symm i₁) (f.symm i₂)

end Similar

end PseudoEMetricSpace

section PseudoMetricSpace

variable [PseudoMetricSpace P₁] [PseudoMetricSpace P₂]

/-- Similarity holds if and only if all non-negative distances are proportional. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Similarity/Variantc8b2c8757e288d7919d40e7c3a94fc48d2c7321beb3f3a2603618400af1f3c6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Similarity/Variantc8b2c8757e288d7919d40e7c3a94fc48d2c7321beb3f3a2603618400af1f3c6b.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a3cb50ab0effd615a355eb94fac3b693a2af8b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
