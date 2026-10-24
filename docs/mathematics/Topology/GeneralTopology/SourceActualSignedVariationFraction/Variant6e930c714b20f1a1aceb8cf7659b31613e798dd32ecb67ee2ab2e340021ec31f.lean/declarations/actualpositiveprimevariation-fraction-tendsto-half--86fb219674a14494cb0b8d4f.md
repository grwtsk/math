# actualPositivePrimeVariation_fraction_tendsto_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:872dca4d-c7fe-df5a-bf10-01f00005a59f",
  "kind": "theorem",
  "lexical_name": "actualPositivePrimeVariation_fraction_tendsto_half",
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
  "slug": "actualpositiveprimevariation-fraction-tendsto-half--86fb219674a14494cb0b8d4f",
  "source": {
    "blob": "df4e9334db5674f5cedc049e56eca3379a44b309",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 147,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualSignedVariationFraction/Variant6e930c714b20f1a1aceb8cf7659b31613e798dd32ecb67ee2ab2e340021ec31f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86fb219674a14494cb0b8d4ff64db838dcdbd628ce32d2bf27eeffd67850f71b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualSignedVariationFraction/Variant6e930c714b20f1a1aceb8cf7659b31613e798dd32ecb67ee2ab2e340021ec31f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:872dca4d-c7fe-df5a-bf10-01f00005a59f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPositivePrimeVariation_fraction_tendsto_half :
    Tendsto (fun A : ℝ => actualPositivePrimeVariation A / actualClosedAbsolutePrimeMoment A)
      atTop (𝓝 (1 / 2)) := by
  obtain ⟨K,c,R,hK,hc,hR,hb⟩ := actualVariation_half_errors_stretched_bound
  have he : Tendsto (fun A : ℝ =>
      actualPositivePrimeVariation A / actualClosedAbsolutePrimeMoment A - 1 / 2)
      atTop (𝓝 0) := by
    apply squeeze_zero_norm' _ (stretched_budget_tendsto_zero K c hc)
    filter_upwards [eventually_ge_atTop R] with A hA
    rw [Real.norm_eq_abs]
    exact (le_add_of_nonneg_right (abs_nonneg _)).trans (hb A hA)
  convert he.add_const (1 / 2) using 1
  · funext A
    ring
  · norm_num

/-- The negative fraction also tends to one half; this bounds no signed difference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualSignedVariationFraction/Variant6e930c714b20f1a1aceb8cf7659b31613e798dd32ecb67ee2ab2e340021ec31f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualSignedVariationFraction/Variant6e930c714b20f1a1aceb8cf7659b31613e798dd32ecb67ee2ab2e340021ec31f.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df4e9334db5674f5cedc049e56eca3379a44b309` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
