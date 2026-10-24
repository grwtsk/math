# lightness_turnsToAngle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc996310-0119-6fb3-cd89-533acc7926c4",
  "kind": "theorem",
  "lexical_name": "lightness_turnsToAngle",
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
  "slug": "lightness-turnstoangle--339a6d9c4f888adfa58846f4",
  "source": {
    "blob": "4a50b2dab904b3e3b14d8795ff736e9b3b7609b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 300,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:339a6d9c4f888adfa58846f489f8dceb1b4dd7443d90c07e24969e15244b833c",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc996310-0119-6fb3-cd89-533acc7926c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lightness_turnsToAngle (mid amplitude t : ℝ) :
    lightness mid amplitude (turnsToAngle t) =
      CyclicNeutral.lightness mid amplitude t := by
  simp [lightness, turnsToAngle, CyclicNeutral.lightness,
    Real.Angle.sin_coe]

/-- Intrinsic quadrature agrees exactly with the existing real-turn formula. -/
@[surface_novel, surface_published, simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a50b2dab904b3e3b14d8795ff736e9b3b7609b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
