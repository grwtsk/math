# modeCorrelation_origin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec887962-616b-6d66-5cfe-355aab4ce29e",
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
  "slug": "modecorrelation-origin--7975ee2f0c6a3b3da83a8f89",
  "source": {
    "blob": "7b03f2b29b02dd3e260727a314538eff2c805304",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 142,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variantcf8852b81581ccb879c8d5af5dd2adf933e2c24013a18dad83e0907c4a70ee3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7975ee2f0c6a3b3da83a8f89e620173f4243fab27f1668bd68a77b3f6db82885",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variantcf8852b81581ccb879c8d5af5dd2adf933e2c24013a18dad83e0907c4a70ee3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec887962-616b-6d66-5cfe-355aab4ce29e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–153.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variantcf8852b81581ccb879c8d5af5dd2adf933e2c24013a18dad83e0907c4a70ee3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variantcf8852b81581ccb879c8d5af5dd2adf933e2c24013a18dad83e0907c4a70ee3c.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b03f2b29b02dd3e260727a314538eff2c805304` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
