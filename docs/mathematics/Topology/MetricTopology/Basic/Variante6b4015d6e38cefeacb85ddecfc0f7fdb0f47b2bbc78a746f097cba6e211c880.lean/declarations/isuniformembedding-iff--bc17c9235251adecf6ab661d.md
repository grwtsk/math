# isUniformEmbedding_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ccd44cad-bb4e-3129-0aac-88c5772d7209",
  "kind": "theorem",
  "lexical_name": "isUniformEmbedding_iff'",
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
  "slug": "isuniformembedding-iff--bc17c9235251adecf6ab661d",
  "source": {
    "blob": "aab65cca7012010760e3a7a0c158e1d2796532ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 43,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variante6b4015d6e38cefeacb85ddecfc0f7fdb0f47b2bbc78a746f097cba6e211c880.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc17c9235251adecf6ab661dfab446b823359deed6b11dbcb23e66fedc2f41f2",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variante6b4015d6e38cefeacb85ddecfc0f7fdb0f47b2bbc78a746f097cba6e211c880.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccd44cad-bb4e-3129-0aac-88c5772d7209`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUniformEmbedding_iff' [PseudoMetricSpace β] {f : γ → β} :
    IsUniformEmbedding f ↔
      (∀ ε > 0, ∃ δ > 0, ∀ {a b : γ}, dist a b < δ → dist (f a) (f b) < ε) ∧
        ∀ δ > 0, ∃ ε > 0, ∀ {a b : γ}, dist (f a) (f b) < ε → dist a b < δ := by
  rw [isUniformEmbedding_iff_isUniformInducing, isUniformInducing_iff, uniformContinuous_iff]

/-- If a `PseudoMetricSpace` is a T₀ space, then it is a `MetricSpace`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variante6b4015d6e38cefeacb85ddecfc0f7fdb0f47b2bbc78a746f097cba6e211c880.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variante6b4015d6e38cefeacb85ddecfc0f7fdb0f47b2bbc78a746f097cba6e211c880.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aab65cca7012010760e3a7a0c158e1d2796532ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
