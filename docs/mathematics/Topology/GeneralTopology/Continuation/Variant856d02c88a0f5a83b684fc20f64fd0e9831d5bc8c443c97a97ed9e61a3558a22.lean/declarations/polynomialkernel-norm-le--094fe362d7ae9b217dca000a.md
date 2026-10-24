# polynomialKernel_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6788ac9850a5f144c42092513babeef38d9a377",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 329,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28517562-08f1-9839-3ed5-8a01dce593f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d73e7a5-0f68-f041-e9a9-3f74a5e49de3",
  "kind": "theorem",
  "lexical_name": "polynomialKernel_norm_le",
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
  "slug": "polynomialkernel-norm-le--094fe362d7ae9b217dca000a",
  "source": {
    "blob": "b6788ac9850a5f144c42092513babeef38d9a377",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 329,
    "path": "GRWTSK/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:094fe362d7ae9b217dca000a6c4719058b2ef65178913dd9d0832c979ac2e968",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d73e7a5-0f68-f041-e9a9-3f74a5e49de3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomialKernel_norm_le
    (p : ℂ[X]) (w : ℂ) (C B : ℝ)
    (hc : ∀ k ≤ 8, ‖p.coeff k‖ ≤ C)
    (hb : ∀ k ≤ 8, ‖J k w‖ ≤ B) :
    ‖polynomialKernel p w‖ ≤ 9 * C * B := by
  have hC : 0 ≤ C :=
    (norm_nonneg _).trans (hc 0 (by omega))
  unfold polynomialKernel
  calc
    _ ≤
        ∑ k ∈ Finset.range 9,
          ‖p.coeff k * J k w‖ :=
      norm_sum_le _ _
    _ ≤
        ∑ _k ∈ Finset.range 9, C * B := by
      apply Finset.sum_le_sum
      intro k hk
      have hk8 :
          k ≤ 8 :=
        Nat.le_of_lt_succ (Finset.mem_range.mp hk)
      rw [norm_mul]
      exact mul_le_mul
        (hc k hk8) (hb k hk8)
        (norm_nonneg _) hC
    _ = _ := by simp; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6788ac9850a5f144c42092513babeef38d9a377` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
