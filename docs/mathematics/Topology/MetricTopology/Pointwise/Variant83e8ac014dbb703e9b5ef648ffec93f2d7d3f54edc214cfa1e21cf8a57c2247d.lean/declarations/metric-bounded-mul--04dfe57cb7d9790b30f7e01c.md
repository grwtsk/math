# Metric.Bounded.mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d67e1eaaa82419b1d6c2ff8c4439072715cebd97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f249886-1f99-8a18-7c1b-a9945221bf47",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14c63b6e-fde4-1e50-9838-d3c2f47e4356",
  "kind": "theorem",
  "lexical_name": "Metric.Bounded.mul",
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
  "slug": "metric-bounded-mul--04dfe57cb7d9790b30f7e01c",
  "source": {
    "blob": "d67e1eaaa82419b1d6c2ff8c4439072715cebd97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 28,
    "path": "GRWTSK/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04dfe57cb7d9790b30f7e01c4d740b762ab458e0e03f3aa51cb6ac1002dc54b3",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14c63b6e-fde4-1e50-9838-d3c2f47e4356`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Metric.Bounded.mul (hs : Bounded s) (ht : Bounded t) : Bounded (s * t) := by
  obtain ⟨Rs, hRs⟩ : ∃ R, ∀ x ∈ s, ‖x‖ ≤ R := hs.exists_norm_le'
  obtain ⟨Rt, hRt⟩ : ∃ R, ∀ x ∈ t, ‖x‖ ≤ R := ht.exists_norm_le'
  refine' bounded_iff_forall_norm_le'.2 ⟨Rs + Rt, _⟩
  rintro z ⟨x, y, hx, hy, rfl⟩
  exact norm_mul_le_of_le (hRs x hx) (hRt y hy)
#align metric.bounded.mul Metric.Bounded.mul
#align metric.bounded.add Metric.Bounded.add

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Pointwise/Variant83e8ac014dbb703e9b5ef648ffec93f2d7d3f54edc214cfa1e21cf8a57c2247d.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d67e1eaaa82419b1d6c2ff8c4439072715cebd97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
