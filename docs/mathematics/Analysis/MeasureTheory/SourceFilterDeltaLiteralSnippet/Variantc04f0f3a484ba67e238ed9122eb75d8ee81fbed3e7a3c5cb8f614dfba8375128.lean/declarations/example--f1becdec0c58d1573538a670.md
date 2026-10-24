# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:078ff60daea7f6ef0b4e2124c803eff14280728193b4d90e8591209b70aeaf53",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--f1becdec0c58d1573538a670",
  "source": {
    "blob": "acc5f8d747621d8f2ae7f3ed3b3ff492cdedfea0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 16,
    "line": 16,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceFilterDeltaLiteralSnippet/Variantc04f0f3a484ba67e238ed9122eb75d8ee81fbed3e7a3c5cb8f614dfba8375128.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1becdec0c58d1573538a67075531c722ba278f7b76f4abf58da1d44c7d47540",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceFilterDeltaLiteralSnippet/Variantc04f0f3a484ba67e238ed9122eb75d8ee81fbed3e7a3c5cb8f614dfba8375128.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:078ff60daea7f6ef0b4e2124c803eff14280728193b4d90e8591209b70aeaf53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–16.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : ∀ᵐ t : ℝ, W ((t : ℂ) * Complex.I) ≠ 0 := boundaryW_ae_ne_zero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceFilterDeltaLiteralSnippet/Variantc04f0f3a484ba67e238ed9122eb75d8ee81fbed3e7a3c5cb8f614dfba8375128.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceFilterDeltaLiteralSnippet/Variantc04f0f3a484ba67e238ed9122eb75d8ee81fbed3e7a3c5cb8f614dfba8375128.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acc5f8d747621d8f2ae7f3ed3b3ff492cdedfea0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
