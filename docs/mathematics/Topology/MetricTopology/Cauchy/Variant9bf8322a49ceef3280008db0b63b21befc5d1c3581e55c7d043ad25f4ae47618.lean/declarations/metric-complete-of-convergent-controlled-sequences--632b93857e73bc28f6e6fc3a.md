# Metric.complete_of_convergent_controlled_sequences

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f65c04a3aac9896699e53b84846de79031d9836",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9bf8322a49ceef3280008db0b63b21befc5d1c3581e55c7d043ad25f4ae47618.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbd2aa52-49fe-a68d-0d91-e70e513ef03c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2975ca0a-bc73-15b2-70ac-589c80328ec4",
  "kind": "theorem",
  "lexical_name": "Metric.complete_of_convergent_controlled_sequences",
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
  "slug": "metric-complete-of-convergent-controlled-sequences--632b93857e73bc28f6e6fc3a",
  "source": {
    "blob": "4f65c04a3aac9896699e53b84846de79031d9836",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 41,
    "path": "GRWTSK/Topology/MetricTopology/Cauchy/Variant9bf8322a49ceef3280008db0b63b21befc5d1c3581e55c7d043ad25f4ae47618.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:632b93857e73bc28f6e6fc3aaa34396cd3a11c939b753c26c2c36932d3eba2d0",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Cauchy/Variant9bf8322a49ceef3280008db0b63b21befc5d1c3581e55c7d043ad25f4ae47618.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2975ca0a-bc73-15b2-70ac-589c80328ec4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Metric.complete_of_convergent_controlled_sequences (B : ℕ → Real) (hB : ∀ n, 0 < B n)
    (H : ∀ u : ℕ → α, (∀ N n m : ℕ, N ≤ n → N ≤ m → dist (u n) (u m) < B N) →
      ∃ x, Tendsto u atTop (𝓝 x)) :
    CompleteSpace α :=
  UniformSpace.complete_of_convergent_controlled_sequences
    (fun n => { p : α × α | dist p.1 p.2 < B n }) (fun n => dist_mem_uniformity <| hB n) H

/-- A pseudo-metric space is complete iff every Cauchy sequence converges. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Cauchy/Variant9bf8322a49ceef3280008db0b63b21befc5d1c3581e55c7d043ad25f4ae47618.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Cauchy/Variant9bf8322a49ceef3280008db0b63b21befc5d1c3581e55c7d043ad25f4ae47618.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f65c04a3aac9896699e53b84846de79031d9836` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
