# actualDampedXiReturnTest_at_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:652a86eb-ee93-36e9-f11a-4b689ed4eebd",
  "kind": "theorem",
  "lexical_name": "actualDampedXiReturnTest_at_upper",
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
  "slug": "actualdampedxireturntest-at-upper--99340a7fbfd1073b202fdc4b",
  "source": {
    "blob": "016e82f7cc0fc53f2f30b812616701017f1bd937",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 99,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiDampedTailReturn/Variantd68761ef3d2cf7a77893c3047dfd37e6a1ac624a6b02025b73cc76f5cc65b2df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99340a7fbfd1073b202fdc4be327c0d633e5f2d5409561fdb5a066b471568181",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiDampedTailReturn/Variantd68761ef3d2cf7a77893c3047dfd37e6a1ac624a6b02025b73cc76f5cc65b2df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:652a86eb-ee93-36e9-f11a-4b689ed4eebd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDampedXiReturnTest_at_upper {A : ℝ} (hA : 91 ≤ A) :
    actualDampedXiReturnTest A (2 * A) = 0 := by
  have h2 := actual_correlation_second_edge_abs_le (z := 2 * A) hA
  have h1 := actual_correlation_first_edge_abs_le (z := 2 * A) hA le_rfl
  simp only [sub_self, zero_pow (by norm_num : (2 : ℕ) ≠ 0), mul_zero, zero_div] at h2
  simp only [sub_self, zero_pow (by norm_num : (3 : ℕ) ≠ 0), mul_zero, zero_div,
    iteratedDeriv_succ, iteratedDeriv_zero] at h1
  have hz2 := abs_nonpos_iff.mp h2
  have hz1 := abs_nonpos_iff.mp h1
  simp [actualDampedXiReturnTest, hz2, hz1]

/-- The full original tail returns through genuine AC Abel with both real traces evaluated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiDampedTailReturn/Variantd68761ef3d2cf7a77893c3047dfd37e6a1ac624a6b02025b73cc76f5cc65b2df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiDampedTailReturn/Variantd68761ef3d2cf7a77893c3047dfd37e6a1ac624a6b02025b73cc76f5cc65b2df.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `016e82f7cc0fc53f2f30b812616701017f1bd937` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
