# actualPhysicalPrimitive_second_eq_weight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3de68bde-0cd8-4856-faf3-8758586f80e9",
  "kind": "theorem",
  "lexical_name": "actualPhysicalPrimitive_second_eq_weight",
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
  "slug": "actualphysicalprimitive-second-eq-weight--137a8d7d2f3684ec38131cac",
  "source": {
    "blob": "ee2ca815a1df41d2d29285374e2ab947239128cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 281,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthSource/Variant1dcd252349f5603a35e3eba4043e2e489d57dacfc8f3d76c29684e71b45de620.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:137a8d7d2f3684ec38131cac1c619316d4f2ef515dcf93310f6a351a0c253061",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthSource/Variant1dcd252349f5603a35e3eba4043e2e489d57dacfc8f3d76c29684e71b45de620.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3de68bde-0cd8-4856-faf3-8758586f80e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPhysicalPrimitive_second_eq_weight {A : ℝ} (hA : 0 < A) (y : ℝ) :
    deriv (deriv (actualPhysicalPrimitive A)) y = actualPhysicalWeight A y := by
  have hd : deriv (actualPhysicalPrimitive A) = fun y =>
      -(A ^ 9 * Real.exp (-A)) *
        deriv (SourcePositivePeanoPrimitive.sourcePeanoPrimitive A) (2 * A - y) := by
    funext y
    unfold actualPhysicalPrimitive
    rw [deriv_const_mul_field, deriv_comp_const_sub]
    ring
  rw [hd, deriv_const_mul_field, deriv_comp_const_sub,
    SourcePositivePeanoPrimitive.sourcePeanoPrimitive_second_deriv hA]
  have he : Real.exp (-A) * Real.exp ((2 * A - y) / 2) = Real.exp (-y / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  unfold actualPhysicalWeight
  calc
    _ = A ^ 9 * (Real.exp (-A) * Real.exp ((2 * A - y) / 2)) *
        sourceCorrelation explicitSecondDerivative A (2 * A - y) := by ring
    _ = _ := by rw [he]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthSource/Variant1dcd252349f5603a35e3eba4043e2e489d57dacfc8f3d76c29684e71b45de620.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthSource/Variant1dcd252349f5603a35e3eba4043e2e489d57dacfc8f3d76c29684e71b45de620.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee2ca815a1df41d2d29285374e2ab947239128cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
