# eq_of_circleMap_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7cc248196ba513afd1fc7f3190effa30b3f8a06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b319b64a0eca5685d88d313b70eb5588d1708112101e4625f72aec199e43624f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89afd5e8-f3a5-8a7d-a087-44d548e785f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3a35ef9-dd68-25b0-3d3b-a81b71200e8b",
  "kind": "lemma",
  "lexical_name": "eq_of_circleMap_eq",
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
  "slug": "eq-of-circlemap-eq--7e5edc0eb33beb179b53d2b5",
  "source": {
    "blob": "b7cc248196ba513afd1fc7f3190effa30b3f8a06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 153,
    "path": "GRWTSK/Topology/MetricTopology/CircleMap/Variantb319b64a0eca5685d88d313b70eb5588d1708112101e4625f72aec199e43624f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e5edc0eb33beb179b53d2b520080c1d50cb4056e8718135923b6301925c93d5",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/CircleMap/Variantb319b64a0eca5685d88d313b70eb5588d1708112101e4625f72aec199e43624f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3a35ef9-dd68-25b0-3d3b-a81b71200e8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_of_circleMap_eq {a b R : ℝ} {c : ℂ} (h_R : R ≠ 0) (h_dist : |a - b| < 2 * π)
    (h : circleMap c R a = circleMap c R b) : a = b := by
  rw [circleMap_eq_circleMap_iff c h_R] at h
  obtain ⟨n, hn⟩ := h
  simp only [show n * (2 * π * I) = (n * 2 * π) * I by ring, ← add_mul, mul_eq_mul_right_iff,
    I_ne_zero, or_false] at hn
  norm_cast at hn
  simp only [hn, Int.cast_mul, Int.cast_ofNat, mul_assoc, add_sub_cancel_left, abs_mul,
    Nat.abs_ofNat, abs_pi] at h_dist
  simp (disch := positivity) at h_dist
  norm_cast at h_dist
  simp [hn, Int.abs_lt_one_iff.mp h_dist]

open scoped Interval in
/-- `circleMap` is injective on `Ι a b` if the distance between `a` and `b` is at most `2π`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/CircleMap/Variantb319b64a0eca5685d88d313b70eb5588d1708112101e4625f72aec199e43624f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CircleMap/Variantb319b64a0eca5685d88d313b70eb5588d1708112101e4625f72aec199e43624f.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7cc248196ba513afd1fc7f3190effa30b3f8a06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
