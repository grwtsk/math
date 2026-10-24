# actualF7NormalizedKernel_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dddd10dd-9abd-b93d-8b61-eb39af1993cf",
  "kind": "theorem",
  "lexical_name": "actualF7NormalizedKernel_norm_le",
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
  "slug": "actualf7normalizedkernel-norm-le--288cc74bb211904aff9ef8f3",
  "source": {
    "blob": "7f21d0277a85f04f4f04abb492a9650ddddbbb5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualF7NormalizedPnt/Variant6401ce0bac5b970a9cc53948bd85bff89f634e1af3f34a619a2067b342d9b494.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:288cc74bb211904aff9ef8f3bc2b55601ceb1c54091c48649a63520f74f1fc06",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualF7NormalizedPnt/Variant6401ce0bac5b970a9cc53948bd85bff89f634e1af3f34a619a2067b342d9b494.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dddd10dd-9abd-b93d-8b61-eb39af1993cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualF7NormalizedKernel_norm_le (T r : ℝ) :
    ‖actualF7NormalizedKernel T r‖ ≤ |actualXiInverseSquareTimeDensity r| := by
  unfold actualF7NormalizedKernel
  by_cases hr : r ≤ T
  · rw [Set.indicator_of_mem (show r ∈ Iic T from hr), Real.norm_eq_abs, abs_mul, Real.abs_exp]
    exact mul_le_of_le_one_right (abs_nonneg _)
      (Real.exp_le_one_iff.mpr (by linarith))
  · rw [Set.indicator_of_notMem (show r ∉ Iic T from hr), norm_zero]
    exact abs_nonneg _

/-- Each literal normalized kernel has genuine positive-axis L1 before its limit is taken. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualF7NormalizedPnt/Variant6401ce0bac5b970a9cc53948bd85bff89f634e1af3f34a619a2067b342d9b494.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualF7NormalizedPnt/Variant6401ce0bac5b970a9cc53948bd85bff89f634e1af3f34a619a2067b342d9b494.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f21d0277a85f04f4f04abb492a9650ddddbbb5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
