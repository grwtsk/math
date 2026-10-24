# sphere_area_cube_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93fb7791-4d4f-6fe3-b8cc-588f0cf2e03f",
  "kind": "theorem",
  "lexical_name": "sphere_area_cube_formula",
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
  "slug": "sphere-area-cube-formula--528a88a73c689743aea35d12",
  "source": {
    "blob": "3c9fb8c12ef74ae36659aa8e5b14b102342d838d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 198,
    "path": "GRWTSK/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:528a88a73c689743aea35d1229918781b22b1543f594710166319e9f8b10cf26",
  "verification": {
    "reference": "docs/verification/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93fb7791-4d4f-6fe3-b8cc-588f0cf2e03f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sphere_area_cube_formula (r : PositiveRadius) :
    sphereAreaFormula r ^ 3 = 36 * Real.pi * sphereVolumeFormula r ^ 2 := by
  unfold sphereAreaFormula sphereVolumeFormula
  ring

/-- A scalar interfacial energy excess relative to a supplied reference area. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c9fb8c12ef74ae36659aa8e5b14b102342d838d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
