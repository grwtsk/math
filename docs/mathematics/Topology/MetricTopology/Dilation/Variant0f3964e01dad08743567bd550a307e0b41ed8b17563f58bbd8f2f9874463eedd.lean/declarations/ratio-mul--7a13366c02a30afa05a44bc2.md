# ratio_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "402d8f3116b5ba55d2374b422e6be8330b86c87e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 344,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f3964e01dad08743567bd550a307e0b41ed8b17563f58bbd8f2f9874463eedd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a65c0f3b-5d18-7a48-1d66-d150bfbaeb29",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f12cc37-4a62-5dcc-27ab-5115a1580d2e",
  "kind": "theorem",
  "lexical_name": "ratio_mul",
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
  "slug": "ratio-mul--7a13366c02a30afa05a44bc2",
  "source": {
    "blob": "402d8f3116b5ba55d2374b422e6be8330b86c87e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 344,
    "path": "GRWTSK/Topology/MetricTopology/Dilation/Variant0f3964e01dad08743567bd550a307e0b41ed8b17563f58bbd8f2f9874463eedd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a13366c02a30afa05a44bc25c17ace4021fad0a2a4b88a03421b121b0ab8b6a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Dilation/Variant0f3964e01dad08743567bd550a307e0b41ed8b17563f58bbd8f2f9874463eedd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f12cc37-4a62-5dcc-27ab-5115a1580d2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ratio_mul (f g : α →ᵈ α) : ratio (f * g) = ratio f * ratio g := by
  by_cases h : ∀ x y : α, edist x y = 0 ∨ edist x y = ∞
  · simp [ratio_of_trivial, h]
  push_neg at h
  exact ratio_comp' h

/-- `Dilation.ratio` as a monoid homomorphism from `α →ᵈ α` to `ℝ≥0`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Dilation/Variant0f3964e01dad08743567bd550a307e0b41ed8b17563f58bbd8f2f9874463eedd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Dilation/Variant0f3964e01dad08743567bd550a307e0b41ed8b17563f58bbd8f2f9874463eedd.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `402d8f3116b5ba55d2374b422e6be8330b86c87e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
