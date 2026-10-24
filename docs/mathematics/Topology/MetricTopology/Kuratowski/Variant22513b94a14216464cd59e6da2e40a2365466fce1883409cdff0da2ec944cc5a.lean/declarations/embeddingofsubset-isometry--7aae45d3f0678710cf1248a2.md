# embeddingOfSubset_isometry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a0fa5566df6e33afab5d1d6ab6d4f022159fd176",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/22513b94a14216464cd59e6da2e40a2365466fce1883409cdff0da2ec944cc5a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af3e1cb5-aa15-0ef0-1d12-c6e7198eeddd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c5cf9e2-5344-a2cc-23fc-59c83f054009",
  "kind": "theorem",
  "lexical_name": "embeddingOfSubset_isometry",
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
  "slug": "embeddingofsubset-isometry--7aae45d3f0678710cf1248a2",
  "source": {
    "blob": "a0fa5566df6e33afab5d1d6ab6d4f022159fd176",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 55,
    "path": "GRWTSK/Topology/MetricTopology/Kuratowski/Variant22513b94a14216464cd59e6da2e40a2365466fce1883409cdff0da2ec944cc5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7aae45d3f0678710cf1248a242b5e1b7d62afa45a4654486619a1365440aa517",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Kuratowski/Variant22513b94a14216464cd59e6da2e40a2365466fce1883409cdff0da2ec944cc5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c5cf9e2-5344-a2cc-23fc-59c83f054009`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem embeddingOfSubset_isometry (H : DenseRange x) : Isometry (embeddingOfSubset x) := by
  refine Isometry.of_dist_eq fun a b => ?_
  refine (embeddingOfSubset_dist_le x a b).antisymm (le_of_forall_pos_le_add fun e epos => ?_)
  -- First step: find n with dist a (x n) < e
  rcases Metric.mem_closure_range_iff.1 (H a) (e / 2) (half_pos epos) with ⟨n, hn⟩
  -- Second step: use the norm control at index n to conclude
  have C : dist b (x n) - dist a (x n) = embeddingOfSubset x b n - embeddingOfSubset x a n := by
    simp only [embeddingOfSubset_coe, sub_sub_sub_cancel_right]
  have :=
    calc
      dist a b ≤ dist a (x n) + dist (x n) b := dist_triangle _ _ _
      _ = 2 * dist a (x n) + (dist b (x n) - dist a (x n)) := by simp [dist_comm]; ring
      _ ≤ 2 * dist a (x n) + |dist b (x n) - dist a (x n)| := by
        apply_rules [add_le_add_left, le_abs_self]
      _ ≤ 2 * (e / 2) + |embeddingOfSubset x b n - embeddingOfSubset x a n| := by
        rw [C]
        gcongr
      _ ≤ 2 * (e / 2) + dist (embeddingOfSubset x b) (embeddingOfSubset x a) := by
        gcongr
        simp only [dist_eq_norm]
        exact lp.norm_apply_le_norm ENNReal.top_ne_zero
          (embeddingOfSubset x b - embeddingOfSubset x a) n
      _ = dist (embeddingOfSubset x b) (embeddingOfSubset x a) + e := by ring
  simpa [dist_comm] using this

/-- Every separable metric space embeds isometrically in `ℓ^∞(ℕ)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Kuratowski/Variant22513b94a14216464cd59e6da2e40a2365466fce1883409cdff0da2ec944cc5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Kuratowski/Variant22513b94a14216464cd59e6da2e40a2365466fce1883409cdff0da2ec944cc5a.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0fa5566df6e33afab5d1d6ab6d4f022159fd176` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
