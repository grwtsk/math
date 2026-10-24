# complementaryEarlyBaseline_lower_neg_scale_sub_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6272b5a-31c9-3503-f1f5-87fa10ac80f4",
  "kind": "theorem",
  "lexical_name": "complementaryEarlyBaseline_lower_neg_scale_sub_four",
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
  "slug": "complementaryearlybaseline-lower-neg-scale-sub-four--144583a3f37ce648eb1532f9",
  "source": {
    "blob": "09683474daa54c1a0488779357e2412d90cf5f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 143,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/88bbea4fa85d9b0f68edActualEarlyLowerBound/Variant04c18ac6de8134b7a3e4f3cd20c1aac377cad932cc55e37581b15b06d3aa2a2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:144583a3f37ce648eb1532f9ff58141cd23aff31ee010a41577cd6175712bf9f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/88bbea4fa85d9b0f68edActualEarlyLowerBound/Variant04c18ac6de8134b7a3e4f3cd20c1aac377cad932cc55e37581b15b06d3aa2a2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6272b5a-31c9-3503-f1f5-87fa10ac80f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complementaryEarlyBaseline_lower_neg_scale_sub_four {A : ℝ} (hA : 25600 ≤ A) :
    -A - 4 ≤ complementaryEarlyBaseline A := by
  have hp : 0 < A := by linarith
  have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have hs : Real.sqrt (vaughanCutoff A : ℝ) ≤ A := by
    simpa only [Real.sqrt_sq hp.le] using Real.sqrt_le_sqrt hf
  have he := complementaryEarlyBaseline_lower_curvature_endpoint hA
  have hc := actualCutoff_curvature_error_le hA
  linarith

/-- Both genuine head inequalities show a uniformly bounded discrepancy from minus A. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/88bbea4fa85d9b0f68edActualEarlyLowerBound/Variant04c18ac6de8134b7a3e4f3cd20c1aac377cad932cc55e37581b15b06d3aa2a2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/88bbea4fa85d9b0f68edActualEarlyLowerBound/Variant04c18ac6de8134b7a3e4f3cd20c1aac377cad932cc55e37581b15b06d3aa2a2c.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09683474daa54c1a0488779357e2412d90cf5f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
