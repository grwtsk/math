# cylinder_patch_tangent_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01269e3f-0f56-6947-3a88-a962be89f02f",
  "kind": "theorem",
  "lexical_name": "cylinder_patch_tangent_zero",
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
  "slug": "cylinder-patch-tangent-zero--b91afed9abf1513cd7debea5",
  "source": {
    "blob": "c56e1199f0ff5477de6aa0273aad1c313f9fff8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 158,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afbSurfaceCurvature/Variant9a7b6ee6c304ecc636debf7d7b2bf8faad375065ef7d0bd046b3711c9d78c633.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b91afed9abf1513cd7debea536b87156ad5d6e790701ec9fcb732c7e251d639a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afbSurfaceCurvature/Variant9a7b6ee6c304ecc636debf7d7b2bf8faad375065ef7d0bd046b3711c9d78c633.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01269e3f-0f56-6947-3a88-a962be89f02f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cylinder_patch_tangent_zero (p : ParameterPlane) :
    patchTangent cylinderChart p 0 = -Real.sin (p 0) • axis 0 + Real.cos (p 0) • axis 1 := by
  rw [patchTangent, (cylinder_chart_derivative p).fderiv]
  simp [cylinderDerivative, parameterCoord]

/-- The second actual cylinder-chart tangent follows the cylinder axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afbSurfaceCurvature/Variant9a7b6ee6c304ecc636debf7d7b2bf8faad375065ef7d0bd046b3711c9d78c633.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afbSurfaceCurvature/Variant9a7b6ee6c304ecc636debf7d7b2bf8faad375065ef7d0bd046b3711c9d78c633.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c56e1199f0ff5477de6aa0273aad1c313f9fff8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
