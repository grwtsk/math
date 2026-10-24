# Metric.exists_subseq_bounded_of_cauchySeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "630fd8f92329367f44d81636c4447e94b6954e51",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30fdc94a-7ddb-946e-f9d9-45d5aa3ebd18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:903b3ac8-00a9-68da-3fc1-552f8223d75e",
  "kind": "lemma",
  "lexical_name": "Metric.exists_subseq_bounded_of_cauchySeq",
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
  "slug": "metric-exists-subseq-bounded-of-cauchyseq--7458ea398f9d67a75f791956",
  "source": {
    "blob": "630fd8f92329367f44d81636c4447e94b6954e51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 149,
    "path": "GRWTSK/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7458ea398f9d67a75f7919569fc6bd1f443ba23f44658ed95cb412b63b531a4c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:903b3ac8-00a9-68da-3fc1-552f8223d75e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Metric.exists_subseq_bounded_of_cauchySeq (u : ℕ → α) (hu : CauchySeq u) (b : ℕ → ℝ)
    (hb : ∀ n, 0 < b n) :
    ∃ f : ℕ → ℕ, StrictMono f ∧ ∀ n, ∀ m ≥ f n, dist (u m) (u (f n)) < b n := by
  rw [cauchySeq_iff] at hu
  have hu' : ∀ k, ∀ᶠ (n : ℕ) in atTop, ∀ m ≥ n, dist (u m) (u n) < b k := by
    intro k
    rw [eventually_atTop]
    obtain ⟨N, hN⟩ := hu (b k) (hb k)
    exact ⟨N, fun m hm r hr => hN r (hm.trans hr) m hm⟩
  exact Filter.extraction_forall_of_eventually hu'

end CauchySeq
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `630fd8f92329367f44d81636c4447e94b6954e51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
