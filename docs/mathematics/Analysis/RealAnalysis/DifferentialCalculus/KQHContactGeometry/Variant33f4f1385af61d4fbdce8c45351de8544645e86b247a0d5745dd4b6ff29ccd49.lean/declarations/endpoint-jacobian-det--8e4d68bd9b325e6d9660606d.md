# endpoint_jacobian_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e73f97c-9025-fcfa-bb5e-be75e3da2644",
  "kind": "theorem",
  "lexical_name": "endpoint_jacobian_det",
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
  "slug": "endpoint-jacobian-det--8e4d68bd9b325e6d9660606d",
  "source": {
    "blob": "8cb86610f4d8014f3b878e3fe63f7e62da6a5412",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 168,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant33f4f1385af61d4fbdce8c45351de8544645e86b247a0d5745dd4b6ff29ccd49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e4d68bd9b325e6d9660606d834b21b1a423bedef5e9ddaab79cb62e5d98bafb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant33f4f1385af61d4fbdce8c45351de8544645e86b247a0d5745dd4b6ff29ccd49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e73f97c-9025-fcfa-bb5e-be75e3da2644`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpoint_jacobian_det (c₁ c₂ c₃ τ₁ τ₂ τ₃ : ℝ) (x : Point) :
    (endpointJacobian c₁ c₂ c₃ τ₁ τ₂ τ₃ x).det =
      2*(c₂-c₁)*(c₃-c₂)*(τ₂-τ₁) := by
  rw [Matrix.det_fin_three]
  simp [endpointJacobian]
  ring

/-- Endpoint coincidence reduces to a quadratic moment fiber. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant33f4f1385af61d4fbdce8c45351de8544645e86b247a0d5745dd4b6ff29ccd49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant33f4f1385af61d4fbdce8c45351de8544645e86b247a0d5745dd4b6ff29ccd49.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cb86610f4d8014f3b878e3fe63f7e62da6a5412` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
