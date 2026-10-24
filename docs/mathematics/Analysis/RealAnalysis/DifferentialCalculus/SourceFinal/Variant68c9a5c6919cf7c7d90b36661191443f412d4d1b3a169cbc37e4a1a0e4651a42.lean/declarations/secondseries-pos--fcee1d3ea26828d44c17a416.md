# secondSeries_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c930a559-e66b-99e2-72af-be476559b904",
  "kind": "theorem",
  "lexical_name": "secondSeries_pos",
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
  "slug": "secondseries-pos--fcee1d3ea26828d44c17a416",
  "source": {
    "blob": "27bb206ef9c9fe0867f26cac058b52d30f83a38b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 326,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant68c9a5c6919cf7c7d90b36661191443f412d4d1b3a169cbc37e4a1a0e4651a42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcee1d3ea26828d44c17a41692fe78c6f2f6b519004ad956c1606a387f4c725a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant68c9a5c6919cf7c7d90b36661191443f412d4d1b3a169cbc37e4a1a0e4651a42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c930a559-e66b-99e2-72af-be476559b904`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem secondSeries_pos {x : ℝ} (hx : -2 < x) : 0 < secondSeries x := by
  apply (secondTerm_summable hx).tsum_pos (secondTerm_nonneg x) 0
  have h := ContinuousResearch.CompensatedGammaIntegral.shifted_physicalRate_pos hx 0
  unfold secondTerm
  exact div_pos (by norm_num) (sq_pos_of_pos (by simpa only [add_comm] using h))

/-- Literal actual Gamma source, its genuine curvature moment, and strict positive curvature. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant68c9a5c6919cf7c7d90b36661191443f412d4d1b3a169cbc37e4a1a0e4651a42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant68c9a5c6919cf7c7d90b36661191443f412d4d1b3a169cbc37e4a1a0e4651a42.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27bb206ef9c9fe0867f26cac058b52d30f83a38b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
