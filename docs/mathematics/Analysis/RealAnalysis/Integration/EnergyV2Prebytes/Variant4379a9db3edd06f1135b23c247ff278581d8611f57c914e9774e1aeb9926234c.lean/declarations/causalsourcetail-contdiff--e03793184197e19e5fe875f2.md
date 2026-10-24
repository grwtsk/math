# causalSourceTail_contDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f46db3d1-159c-2e01-d6a3-6dc8b2ecc1d6",
  "kind": "theorem",
  "lexical_name": "causalSourceTail_contDiff",
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
  "slug": "causalsourcetail-contdiff--e03793184197e19e5fe875f2",
  "source": {
    "blob": "be627993996254edac00b77f434e7f7cd3613607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 223,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EnergyV2Prebytes/Variant4379a9db3edd06f1135b23c247ff278581d8611f57c914e9774e1aeb9926234c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e03793184197e19e5fe875f238621b93d4f173dd7b3b50f39aa4ffbb2e9329e9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EnergyV2Prebytes/Variant4379a9db3edd06f1135b23c247ff278581d8611f57c914e9774e1aeb9926234c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f46db3d1-159c-2e01-d6a3-6dc8b2ecc1d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem causalSourceTail_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (causalSourceTail A) := by
  have heq : causalSourceTail A = fun x ↦
      -deriv (normalizedPrimitiveBump A) x - normalizedPrimitiveBump A x / 2 :=
    funext (causalSourceTail_eq hA)
  rw [heq]
  exact (normalizedPrimitiveBump_contDiff hA).deriv'.neg.sub
    (((normalizedPrimitiveBump_contDiff hA).of_le (by norm_num)).div_const 2)

/-- The actual tail satisfies its causal first-order equation at every real point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EnergyV2Prebytes/Variant4379a9db3edd06f1135b23c247ff278581d8611f57c914e9774e1aeb9926234c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EnergyV2Prebytes/Variant4379a9db3edd06f1135b23c247ff278581d8611f57c914e9774e1aeb9926234c.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be627993996254edac00b77f434e7f7cd3613607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
