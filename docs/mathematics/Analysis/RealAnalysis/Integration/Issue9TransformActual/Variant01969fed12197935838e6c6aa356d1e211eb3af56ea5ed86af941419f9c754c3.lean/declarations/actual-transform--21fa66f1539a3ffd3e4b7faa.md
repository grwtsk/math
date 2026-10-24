# actual_transform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b889e8ea-778f-6c91-6b46-6ba5ea37ca14",
  "kind": "theorem",
  "lexical_name": "actual_transform",
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
  "slug": "actual-transform--21fa66f1539a3ffd3e4b7faa",
  "source": {
    "blob": "737d41f8e4ce6a9d8bf00177c63a30068979ef8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 152,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21fa66f1539a3ffd3e4b7faa0570234842658e79436605198f4282700934c5d3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b889e8ea-778f-6c91-6b46-6ba5ea37ca14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_transform (A : ℝ) (hA : 0 < A) (z : ℂ) (hz : z ≠ 0) :
    ZeroSideTargets.bilateralTransform A z = ZeroSideTargets.dividedTransform A z := by
  rw [actual_integral_interval A hA z]
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ ↦ normalized_primitive A hA z hz x)
    (((interior_continuous A).mul (by fun_prop)).intervalIntegrable (-A) A)
  simp only [Complex.ofReal_neg, fullPrimitive_endpoint_pos, fullPrimitive_endpoint_neg] at hi
  rw [hi]
  unfold ZeroSideTargets.dividedTransform
  rw [source_scale A hA]
  push_cast
  simp only [mul_neg, mul_comm z (A : ℂ)]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variant01969fed12197935838e6c6aa356d1e211eb3af56ea5ed86af941419f9c754c3.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `737d41f8e4ce6a9d8bf00177c63a30068979ef8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
