# primitiveCorrelationZero_eq_unit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:995127d3-e6c1-e633-3c61-50b5e87f1dc6",
  "kind": "theorem",
  "lexical_name": "primitiveCorrelationZero_eq_unit",
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
  "slug": "primitivecorrelationzero-eq-unit--a51c2df831022e8d61328957",
  "source": {
    "blob": "3613660e9f71b66ae521adaa24afd47d7ddf5398",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 72,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt02/Variantcc1d3d54ffa513f96c3837e8acf21f8d5fad371a34252f94a732f65f371de4a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a51c2df831022e8d61328957bfb09b11e0f67084d07b8f30d73364307d80e9ac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt02/Variantcc1d3d54ffa513f96c3837e8acf21f8d5fad371a34252f94a732f65f371de4a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:995127d3-e6c1-e633-3c61-50b5e87f1dc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitiveCorrelationZero_eq_unit {A : ℝ} (hA : 1≤A) (t : ℝ) :
    primitiveCorrelationZero A t=unitBumpOverlap (t/A)/sourceNormalization A := by
  have hp : 0<A := by linarith
  have hz := source_normalization_pos A hA
  have hsa := Real.sqrt_ne_zero'.mpr hp
  have hsz := Real.sqrt_ne_zero'.mpr hz
  have he : (fun x : ℝ => normalizedPrimitiveBump A x*normalizedPrimitiveBump A (x-t))=
      fun x => (sourceBump (x/A)*sourceBump (x/A-t/A))/(A*sourceNormalization A) := by
    funext x
    have hs : (x-t)/A=x/A-t/A := by ring
    dsimp [normalizedPrimitiveBump,scaledBump]
    rw [hs]
    field_simp [hsa,hsz]
    rw [Real.sq_sqrt hp.le,Real.sq_sqrt hz.le]
    ring
  rw [primitiveCorrelationZero,he,integral_div]
  rw [Measure.integral_comp_div (fun x : ℝ => sourceBump x*sourceBump (x-t/A)) A]
  dsimp [unitBumpOverlap]
  rw [abs_of_pos hp]
  simp only [smul_eq_mul]
  field_simp

/-- Literal actual compact bump correlation agrees with the exact polynomial on half-support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt02/Variantcc1d3d54ffa513f96c3837e8acf21f8d5fad371a34252f94a732f65f371de4a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt02/Variantcc1d3d54ffa513f96c3837e8acf21f8d5fad371a34252f94a732f65f371de4a4.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3613660e9f71b66ae521adaa24afd47d7ddf5398` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
