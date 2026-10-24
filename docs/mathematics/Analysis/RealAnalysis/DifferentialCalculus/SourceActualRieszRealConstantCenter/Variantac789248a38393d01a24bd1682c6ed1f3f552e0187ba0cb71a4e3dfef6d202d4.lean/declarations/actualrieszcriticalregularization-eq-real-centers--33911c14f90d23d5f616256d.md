# actualRieszCriticalRegularization_eq_real_centers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10f49261-cdcb-7de9-eb59-c1f6d1017c06",
  "kind": "theorem",
  "lexical_name": "actualRieszCriticalRegularization_eq_real_centers",
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
  "slug": "actualrieszcriticalregularization-eq-real-centers--33911c14f90d23d5f616256d",
  "source": {
    "blob": "10178aefe36d73a8aa125a705f7745094d79e16b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variantac789248a38393d01a24bd1682c6ed1f3f552e0187ba0cb71a4e3dfef6d202d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33911c14f90d23d5f616256d0fba1ec8e4bd475052eb4027f3a846d77892cba4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variantac789248a38393d01a24bd1682c6ed1f3f552e0187ba0cb71a4e3dfef6d202d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10f49261-cdcb-7de9-eb59-c1f6d1017c06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRieszCriticalRegularization_eq_real_centers {z : ℂ} (hz : z ≠ 0) :
    actualRieszCriticalRegularization z =
      (actualRieszCriticalNumerator z - (actualRieszLimitingLinearCenter : ℂ) -
        (actualRieszRealConstantCenter : ℂ) * z) / z ^ 2 := by
  rw [actualRieszLocalConstantCenter_eq_real]
  exact actualRieszCriticalRegularization_eq hz

end FormalResearch.RiemannHypothesis.SourceActualRieszRealConstantCenter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variantac789248a38393d01a24bd1682c6ed1f3f552e0187ba0cb71a4e3dfef6d202d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszRealConstantCenter/Variantac789248a38393d01a24bd1682c6ed1f3f552e0187ba0cb71a4e3dfef6d202d4.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10178aefe36d73a8aa125a705f7745094d79e16b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
