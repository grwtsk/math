# angular_ray_norm_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa02e462-03f0-d3cf-4973-a6087af37618",
  "kind": "theorem",
  "lexical_name": "angular_ray_norm_bound",
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
  "slug": "angular-ray-norm-bound--f1b9cddf3bc5f05eb30f64f8",
  "source": {
    "blob": "cfcfe85f5aaefb3d5d0230300a5fd128b7a7480d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 154,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variantff37cb80a2520b5777d021efe05257624056b3cd54088170528e66e1e775b28c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1b9cddf3bc5f05eb30f64f81a906f8054a09454141fa436045451b5afcdee74",
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

Occurrence: `result:fa02e462-03f0-d3cf-4973-a6087af37618`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angular_ray_norm_bound (A T : ℝ) (hA : 1 ≤ A) (hT : 1 ≤ T)
    (ε : ℝ) (hε : |ε| = 1) :
    ‖∫ t : ℝ in Ioi T, angularIntegrand A (ε * t)‖ ≤
      heightCoefficient A / (5 * T ^ 5) := by
  calc
    _ ≤ ∫ t : ℝ in Ioi T, heightCoefficient A * t ^ (-6 : ℝ) :=
      norm_integral_le_of_norm_le (height_majorant_integrable A T hT)
        (ray_majorant A T hA hT ε hε)
    _ = _ := height_majorant_integral A T hT

/-- The sum of both actual tail rays, with the original angular contour normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variantff37cb80a2520b5777d021efe05257624056b3cd54088170528e66e1e775b28c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variantff37cb80a2520b5777d021efe05257624056b3cd54088170528e66e1e775b28c.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfcfe85f5aaefb3d5d0230300a5fd128b7a7480d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
