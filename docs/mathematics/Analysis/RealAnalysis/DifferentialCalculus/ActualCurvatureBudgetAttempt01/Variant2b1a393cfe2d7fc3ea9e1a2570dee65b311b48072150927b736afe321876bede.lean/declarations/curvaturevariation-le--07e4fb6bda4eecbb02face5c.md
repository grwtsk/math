# curvatureVariation_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fe5d924-61d3-0a45-de46-6e233e42a679",
  "kind": "theorem",
  "lexical_name": "curvatureVariation_le",
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
  "slug": "curvaturevariation-le--07e4fb6bda4eecbb02face5c",
  "source": {
    "blob": "760ceabcc1f0da1141d8b694742cc8bceda331d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 139,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variant2b1a393cfe2d7fc3ea9e1a2570dee65b311b48072150927b736afe321876bede.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07e4fb6bda4eecbb02face5c53a074def499dadb8c4ffd9569bbfd5a2ca2c1a3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variant2b1a393cfe2d7fc3ea9e1a2570dee65b311b48072150927b736afe321876bede.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fe5d924-61d3-0a45-de46-6e233e42a679`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem curvatureVariation_le {A : ℝ} (hA : 1 ≤ A) :
    curvatureVariation A ≤ 112*A*Real.exp A := by
  have hi := (pairedTailCurvature_intervalIntegrable hA 0 (2*A)).abs
  have hb := intervalIntegral.integral_mono_on (by linarith : 0≤2*A) hi
    (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => 56*Real.exp A) volume 0 (2*A))
    (fun u _ => pairedTailCurvature_abs_le hA u)
  simpa only [curvatureVariation, intervalIntegral.integral_const, sub_zero, smul_eq_mul]
    using hb.trans_eq (by ring)

end ContinuousResearch.ActualCurvatureBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variant2b1a393cfe2d7fc3ea9e1a2570dee65b311b48072150927b736afe321876bede.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variant2b1a393cfe2d7fc3ea9e1a2570dee65b311b48072150927b736afe321876bede.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `760ceabcc1f0da1141d8b694742cc8bceda331d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
