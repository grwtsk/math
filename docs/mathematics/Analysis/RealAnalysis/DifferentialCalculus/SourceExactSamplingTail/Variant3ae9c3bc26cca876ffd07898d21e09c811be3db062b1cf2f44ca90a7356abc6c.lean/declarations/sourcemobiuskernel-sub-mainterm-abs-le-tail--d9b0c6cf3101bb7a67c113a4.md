# sourceMobiusKernel_sub_mainTerm_abs_le_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86cf74dd-7356-e972-f99c-a8a9211a7465",
  "kind": "theorem",
  "lexical_name": "sourceMobiusKernel_sub_mainTerm_abs_le_tail",
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
  "slug": "sourcemobiuskernel-sub-mainterm-abs-le-tail--d9b0c6cf3101bb7a67c113a4",
  "source": {
    "blob": "46ad9e1f46a27745eb0a2e74fbce028f75432d44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 259,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceExactSamplingTail/Variant3ae9c3bc26cca876ffd07898d21e09c811be3db062b1cf2f44ca90a7356abc6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9b0c6cf3101bb7a67c113a41e2d1b34481e7d5802645b35d54d7cdf8e7256c9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceExactSamplingTail/Variant3ae9c3bc26cca876ffd07898d21e09c811be3db062b1cf2f44ca90a7356abc6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86cf74dd-7356-e972-f99c-a8a9211a7465`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMobiusKernel_sub_mainTerm_abs_le_tail {Q A k : ℝ}
    (hQ : 1 ≤ Q) (hQA : Q ≤ A) (hk : 1 ≤ k) :
    |sourceMobiusKernel A k - sourceLogSamplingMainTerm A k| ≤
      96 * tailEnergyCoefficient Q / (A ^ 2 * Real.sqrt k) := by
  rw [← logProfile_sum_eq_sourceMobiusKernel A (lt_of_lt_of_le (by norm_num) hk)]
  exact logProfile_sum_sub_mainTerm_abs_le_tail hQ hQA hk

/-- Exact application to the genuine signed short-divisor inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceExactSamplingTail/Variant3ae9c3bc26cca876ffd07898d21e09c811be3db062b1cf2f44ca90a7356abc6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceExactSamplingTail/Variant3ae9c3bc26cca876ffd07898d21e09c811be3db062b1cf2f44ca90a7356abc6c.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46ad9e1f46a27745eb0a2e74fbce028f75432d44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
