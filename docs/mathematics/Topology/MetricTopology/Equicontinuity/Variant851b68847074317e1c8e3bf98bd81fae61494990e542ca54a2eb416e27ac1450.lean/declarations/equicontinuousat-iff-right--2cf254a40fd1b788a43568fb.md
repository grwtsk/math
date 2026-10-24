# equicontinuousAt_iff_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6b57e7e49085dd2eab56ec16de386e54f4a2901",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/851b68847074317e1c8e3bf98bd81fae61494990e542ca54a2eb416e27ac1450.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c607d59-77dd-a663-cd27-a8e50fc55cc1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a98027a-1166-1bd6-713f-02e92a2d77c5",
  "kind": "theorem",
  "lexical_name": "equicontinuousAt_iff_right",
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
  "slug": "equicontinuousat-iff-right--2cf254a40fd1b788a43568fb",
  "source": {
    "blob": "a6b57e7e49085dd2eab56ec16de386e54f4a2901",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 43,
    "path": "GRWTSK/Topology/MetricTopology/Equicontinuity/Variant851b68847074317e1c8e3bf98bd81fae61494990e542ca54a2eb416e27ac1450.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cf254a40fd1b788a43568fbe959139630ab20e78ea9b8b8d09b9d96494069c6",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Equicontinuity/Variant851b68847074317e1c8e3bf98bd81fae61494990e542ca54a2eb416e27ac1450.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a98027a-1166-1bd6-713f-02e92a2d77c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equicontinuousAt_iff_right {ι : Type*} [TopologicalSpace β] {F : ι → β → α} {x₀ : β} :
    EquicontinuousAt F x₀ ↔ ∀ ε > 0, ∀ᶠ x in 𝓝 x₀, ∀ i, dist (F i x₀) (F i x) < ε :=
  uniformity_basis_dist.equicontinuousAt_iff_right

/-- Characterization of equicontinuity for families of functions between (pseudo) metric spaces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Equicontinuity/Variant851b68847074317e1c8e3bf98bd81fae61494990e542ca54a2eb416e27ac1450.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Equicontinuity/Variant851b68847074317e1c8e3bf98bd81fae61494990e542ca54a2eb416e27ac1450.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6b57e7e49085dd2eab56ec16de386e54f4a2901` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
