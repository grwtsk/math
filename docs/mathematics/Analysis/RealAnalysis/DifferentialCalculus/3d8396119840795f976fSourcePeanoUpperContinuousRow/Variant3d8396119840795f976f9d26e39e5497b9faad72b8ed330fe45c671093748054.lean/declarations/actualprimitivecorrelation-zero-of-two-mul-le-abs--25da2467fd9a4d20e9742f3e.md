# actualPrimitiveCorrelation_zero_of_two_mul_le_abs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "021e5c6870a385a142b9f53ba1217bc76273517a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d8396119840795f976f9d26e39e5497b9faad72b8ed330fe45c671093748054.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a3144d0-c604-4202-4140-14e71dd429c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c778abea-8753-9e9b-f998-279dacff87c9",
  "kind": "theorem",
  "lexical_name": "actualPrimitiveCorrelation_zero_of_two_mul_le_abs",
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
  "slug": "actualprimitivecorrelation-zero-of-two-mul-le-abs--25da2467fd9a4d20e9742f3e",
  "source": {
    "blob": "021e5c6870a385a142b9f53ba1217bc76273517a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 29,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3d8396119840795f976fSourcePeanoUpperContinuousRow/Variant3d8396119840795f976f9d26e39e5497b9faad72b8ed330fe45c671093748054.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25da2467fd9a4d20e9742f3e2b5514505d5a876bd0244f9781f501bd93464bd6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/3d8396119840795f976fSourcePeanoUpperContinuousRow/Variant3d8396119840795f976f9d26e39e5497b9faad72b8ed330fe45c671093748054.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c778abea-8753-9e9b-f998-279dacff87c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPrimitiveCorrelation_zero_of_two_mul_le_abs {A t : ℝ} (hA : 0 < A)
    (ht : 2 * A ≤ |t|) : primitiveCorrelationZero A t = 0 := by
  have hb (x : ℝ) (hx : A ≤ |x|) : normalizedPrimitiveBump A x = 0 := by
    by_cases hm : x ∈ Icc (-A) A
    · by_cases hs : 0 ≤ x
      · have he : x = A := by rw [abs_of_nonneg hs] at hx; linarith [hm.2]
        rw [he]
        exact (normalizedPrimitiveBump_endpoints hA).2
      · have he : x = -A := by rw [abs_of_neg (lt_of_not_ge hs)] at hx; linarith [hm.1]
        rw [he]
        exact (normalizedPrimitiveBump_endpoints hA).1
    · exact normalizedPrimitiveBump_zero_of_not_mem hA hm
  unfold primitiveCorrelationZero
  apply integral_eq_zero_of_ae
  filter_upwards [] with x
  change _ = (0 : ℝ)
  by_cases hx : A ≤ |x|
  · rw [hb x hx, zero_mul]
  · have he : x + -(x - t) = t := by ring
    have hu := abs_add_le x (-(x - t))
    rw [he, abs_neg] at hu
    have hxt : A ≤ |x - t| := by linarith [lt_of_not_ge hx]
    rw [hb (x - t) hxt, mul_zero]

/-- Exact one-sided zero transport retains the inclusive upper seam. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/3d8396119840795f976fSourcePeanoUpperContinuousRow/Variant3d8396119840795f976f9d26e39e5497b9faad72b8ed330fe45c671093748054.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3d8396119840795f976fSourcePeanoUpperContinuousRow/Variant3d8396119840795f976f9d26e39e5497b9faad72b8ed330fe45c671093748054.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `021e5c6870a385a142b9f53ba1217bc76273517a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
