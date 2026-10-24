# actualCriticalWeight_lower_curvature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b818a47-8ae1-71ca-3bfe-821397b90f61",
  "kind": "theorem",
  "lexical_name": "actualCriticalWeight_lower_curvature",
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
  "slug": "actualcriticalweight-lower-curvature--5edebee7197697dcf765507b",
  "source": {
    "blob": "3310621f7e849da404f8e35fddffac50ae46b445",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 53,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1067b8a8638e282fd880ActualSharpEarlyBaseline/Variant148610aa52b93468f9f3a5e1c80b8fb0daf2c8d229fda3dd88a8e3827a62822d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5edebee7197697dcf765507b857a0e92457193c5f1597d31c01c56f56bb1931d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/1067b8a8638e282fd880ActualSharpEarlyBaseline/Variant148610aa52b93468f9f3a5e1c80b8fb0daf2c8d229fda3dd88a8e3827a62822d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b818a47-8ae1-71ca-3bfe-821397b90f61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalWeight_lower_curvature {A t : ℝ} (hA : 1 ≤ A) (ht : 0 ≤ t) :
    1 / 2 - (162826 / (7623 * A ^ 2)) * (t ^ 2 / 4 + t) ≤ criticalWeight A t := by
  have hzero := actualCorrelation_deriv_zero (by linarith : 0 < A)
  have hc := sourceCorrelation_linear_taylor_bound hA 0 t
  have hd := sourceCorrelation_deriv_increment_bound hA 0 t
  simp only [zero_add, hzero, mul_zero, sub_zero, actual_correlation_at_zero A hA,
    abs_of_nonneg ht] at hc hd
  unfold criticalWeight
  have hcL := (abs_le.mp hc).1
  have hdU := (abs_le.mp hd).2
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/1067b8a8638e282fd880ActualSharpEarlyBaseline/Variant148610aa52b93468f9f3a5e1c80b8fb0daf2c8d229fda3dd88a8e3827a62822d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/1067b8a8638e282fd880ActualSharpEarlyBaseline/Variant148610aa52b93468f9f3a5e1c80b8fb0daf2c8d229fda3dd88a8e3827a62822d.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3310621f7e849da404f8e35fddffac50ae46b445` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
