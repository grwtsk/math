# angularContour_growing_tail_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf5ac3af-c809-965d-b673-71dd17ff0454",
  "kind": "theorem",
  "lexical_name": "angularContour_growing_tail_bound",
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
  "slug": "angularcontour-growing-tail-bound--c7d8dc6b3923a8e500e71007",
  "source": {
    "blob": "cfcfe85f5aaefb3d5d0230300a5fd128b7a7480d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 250,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variantff37cb80a2520b5777d021efe05257624056b3cd54088170528e66e1e775b28c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7d8dc6b3923a8e500e7100714bf32f613f64d5c86b173b0c0f3cc2478f932db",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variantff37cb80a2520b5777d021efe05257624056b3cd54088170528e66e1e775b28c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf5ac3af-c809-965d-b673-71dd17ff0454`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angularContour_growing_tail_bound (A : ℝ) (hA : 1 ≤ A) :
    ‖angularContour A - angularHead A (growingHeight A)‖ ≤ twoLineTailConstant / A ^ 9 := by
  have hAp : 0 < A := by linarith
  have hT : 1 ≤ growingHeight A := by
    apply Real.one_le_exp_iff.mpr
    dsimp [growingHeight]
    positivity
  have hb := angularContour_sub_head_norm_bound A (growingHeight A) hA hT
  have he : growingHeight A ^ 5 = Real.exp (3 * A) := by
    unfold growingHeight
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  rw [he] at hb
  have heq : twoLineTailConstant * Real.exp (3 * A) / (A ^ 9 * Real.exp (3 * A)) =
      twoLineTailConstant / A ^ 9 := by
    field_simp
  rwa [heq] at hb

/-- The signed real part of the actual contour is bounded by the same signed head and tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variantff37cb80a2520b5777d021efe05257624056b3cd54088170528e66e1e775b28c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variantff37cb80a2520b5777d021efe05257624056b3cd54088170528e66e1e775b28c.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfcfe85f5aaefb3d5d0230300a5fd128b7a7480d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
