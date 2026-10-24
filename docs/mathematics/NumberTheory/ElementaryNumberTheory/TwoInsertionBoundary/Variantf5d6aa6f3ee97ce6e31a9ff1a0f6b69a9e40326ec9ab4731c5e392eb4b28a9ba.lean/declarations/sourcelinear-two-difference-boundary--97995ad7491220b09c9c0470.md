# sourceLinear_two_difference_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d0be4daa08e4aeb8faafcd43eadd56fd640e1d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:860eb338-c6cc-9e28-100c-26f7eaa3a200",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f113561a-3360-ff7a-b3d5-8ef4751d8423",
  "kind": "theorem",
  "lexical_name": "sourceLinear_two_difference_boundary",
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
  "slug": "sourcelinear-two-difference-boundary--97995ad7491220b09c9c0470",
  "source": {
    "blob": "6d0be4daa08e4aeb8faafcd43eadd56fd640e1d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 189,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variantf5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97995ad7491220b09c9c04705935ebfa82ea7d6338de6ba1457c459e302f00c1",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variantf5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f113561a-3360-ff7a-b3d5-8ef4751d8423`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceLinear_two_difference_boundary (A : ℝ) (N : ℕ) :
    (∑ d ∈ Icc 1 N, (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) =
      (∑ d ∈ (Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) *
          (sourceSamplingKernel A d - sourceSamplingKernel A (2 * d : ℕ))) +
      ∑ d ∈ (Ioc (N / 2) N).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d := by
  have hfirst : ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)).filter
      (fun d ↦ d ≤ N / 2) = (Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2) := by
    ext d
    simp only [mem_filter, mem_Icc]
    have hhalf := Nat.div_le_self N 2
    omega
  have hsecond : ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)).filter
      (fun d ↦ ¬d ≤ N / 2) = (Ioc (N / 2) N).filter (fun d ↦ Nat.Coprime d 2) := by
    ext d
    simp only [mem_filter, mem_Icc, mem_Ioc]
    omega
  have hs := sum_filter_add_sum_filter_not
    ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) (fun d ↦ d ≤ N / 2)
    (fun d ↦ (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d)
  rw [hfirst, hsecond] at hs
  rw [sourceLinear_two_split, ← hs]
  simp_rw [mul_sub]
  rw [sum_sub_distrib]
  ring

/-- The actual interior difference has a derivative budget, still of inverse square-root order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variantf5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variantf5d6aa6f3ee97ce6e31a9ff1a0f6b69a9e40326ec9ab4731c5e392eb4b28a9ba.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d0be4daa08e4aeb8faafcd43eadd56fd640e1d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
