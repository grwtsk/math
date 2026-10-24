# modeCorrelation_origin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:679be4bf-8d6d-31f7-9f16-4ebcd8af3866",
  "kind": "theorem",
  "lexical_name": "modeCorrelation_origin",
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
  "slug": "modecorrelation-origin--6ffc2b1e4603027ea33a5e82",
  "source": {
    "blob": "0d9a071e72df9dc3982087218e596d7c9c6d74da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 150,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variant2e63270b4a3aa34555d2b85e3469fa197378a6bc7acf42ddf5089d5e4dc8cbf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ffc2b1e4603027ea33a5e826b0ffcdaf9eddac891efdf3c83b1649db55d86b5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variant2e63270b4a3aa34555d2b85e3469fa197378a6bc7acf42ddf5089d5e4dc8cbf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:679be4bf-8d6d-31f7-9f16-4ebcd8af3866`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem modeCorrelation_origin (A : ℝ) (i j : Fin 5) (hA : 0 < A) :
    modeCorrelation A i j 0 = if i = j then 1 else 0 := by
  have hb := modeCorrelation_positive_branch A 0 i j hA (by norm_num) (by norm_num)
  simp only [mul_zero] at hb
  rw [hb, rawCorrelation_origin]
  split_ifs with hij
  · subst j
    rw [Real.sqrt_mul (modeWeight_pos i).le, ← pow_two, Real.sq_sqrt (modeWeight_pos i).le]
    field_simp [(modeWeight_pos i).ne']
  · ring

/-- Closed supports touch at the upper separation; the singleton contributes zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variant2e63270b4a3aa34555d2b85e3469fa197378a6bc7acf42ddf5089d5e4dc8cbf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variant2e63270b4a3aa34555d2b85e3469fa197378a6bc7acf42ddf5089d5e4dc8cbf8.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d9a071e72df9dc3982087218e596d7c9c6d74da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
