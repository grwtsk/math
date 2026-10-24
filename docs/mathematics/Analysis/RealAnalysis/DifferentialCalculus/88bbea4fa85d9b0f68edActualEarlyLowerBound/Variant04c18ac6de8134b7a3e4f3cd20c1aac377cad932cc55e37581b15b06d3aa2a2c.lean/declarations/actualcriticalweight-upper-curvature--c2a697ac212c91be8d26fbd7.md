# actualCriticalWeight_upper_curvature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ea0df85-35bf-cc15-63a3-1de9413a8748",
  "kind": "theorem",
  "lexical_name": "actualCriticalWeight_upper_curvature",
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
  "slug": "actualcriticalweight-upper-curvature--c2a697ac212c91be8d26fbd7",
  "source": {
    "blob": "09683474daa54c1a0488779357e2412d90cf5f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/88bbea4fa85d9b0f68edActualEarlyLowerBound/Variant04c18ac6de8134b7a3e4f3cd20c1aac377cad932cc55e37581b15b06d3aa2a2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2a697ac212c91be8d26fbd7c62e13a053f523ffde25b5e44cf2e2f7fb861f86",
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

Occurrence: `result:5ea0df85-35bf-cc15-63a3-1de9413a8748`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalWeight_upper_curvature {A t : ℝ} (hA : 1 ≤ A) (ht : 0 ≤ t) :
    criticalWeight A t ≤
      1 / 2 + (162826 / (7623 * A ^ 2)) * (t ^ 2 / 4 + t) := by
  have hzero := actualCorrelation_deriv_zero (by linarith : 0 < A)
  have hc := sourceCorrelation_linear_taylor_bound hA 0 t
  have hd := sourceCorrelation_deriv_increment_bound hA 0 t
  simp only [zero_add, hzero, mul_zero, sub_zero, actual_correlation_at_zero A hA,
    abs_of_nonneg ht] at hc hd
  unfold criticalWeight
  have hcU := (abs_le.mp hc).2
  have hdL := (abs_le.mp hd).1
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/88bbea4fa85d9b0f68edActualEarlyLowerBound/Variant04c18ac6de8134b7a3e4f3cd20c1aac377cad932cc55e37581b15b06d3aa2a2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/88bbea4fa85d9b0f68edActualEarlyLowerBound/Variant04c18ac6de8134b7a3e4f3cd20c1aac377cad932cc55e37581b15b06d3aa2a2c.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09683474daa54c1a0488779357e2412d90cf5f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
