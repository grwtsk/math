# actualAdaptiveSharpHeight_fifth_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79257087-41d6-29f4-0364-75eaefc948bd",
  "kind": "theorem",
  "lexical_name": "actualAdaptiveSharpHeight_fifth_power",
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
  "slug": "actualadaptivesharpheight-fifth-power--9c6c8e591ec3c8884072dc00",
  "source": {
    "blob": "06097301220716e36a850c6e0182bdf78a735a5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAdaptiveSharpHeight/Variant35a8e785d73bbb197c463bdd170df6c2f14cce86e9b389da22890442e067be99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c6c8e591ec3c8884072dc00b83d449f5602a7a99114e9e3562b9b6d572ade7c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAdaptiveSharpHeight/Variant35a8e785d73bbb197c463bdd170df6c2f14cce86e9b389da22890442e067be99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79257087-41d6-29f4-0364-75eaefc948bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAdaptiveSharpHeight_fifth_power {η A : ℝ} (hA : 0 < A) :
    actualAdaptiveSharpHeight η A ^ 5 = η ^ 5 * Real.exp A / A ^ 8 := by
  have hr : (A ^ ((8 : ℝ) / 5)) ^ 5 = A ^ 8 := by
    have h := Real.rpow_mul_natCast hA.le ((8 : ℝ) / 5) 5
    norm_num at h
    exact h.symm
  have he : Real.exp (A / 5) ^ 5 = Real.exp A := by
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  unfold actualAdaptiveSharpHeight
  rw [div_pow, mul_pow, hr, he]

/-- The logarithm keeps its growing A/5 term and original source-radius power. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAdaptiveSharpHeight/Variant35a8e785d73bbb197c463bdd170df6c2f14cce86e9b389da22890442e067be99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAdaptiveSharpHeight/Variant35a8e785d73bbb197c463bdd170df6c2f14cce86e9b389da22890442e067be99.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06097301220716e36a850c6e0182bdf78a735a5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
