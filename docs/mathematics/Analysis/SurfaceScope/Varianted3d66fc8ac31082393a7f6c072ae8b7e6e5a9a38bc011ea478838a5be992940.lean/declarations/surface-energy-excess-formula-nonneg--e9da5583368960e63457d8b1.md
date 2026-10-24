# surface_energy_excess_formula_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5db9241b-e0f2-2d59-93e5-455a447846fe",
  "kind": "theorem",
  "lexical_name": "surface_energy_excess_formula_nonneg",
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
  "slug": "surface-energy-excess-formula-nonneg--e9da5583368960e63457d8b1",
  "source": {
    "blob": "3c9fb8c12ef74ae36659aa8e5b14b102342d838d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 209,
    "path": "GRWTSK/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9da5583368960e63457d8b15ec9073b5134f82ce6ddbe2765ba6661f67fac70",
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

Occurrence: `result:5db9241b-e0f2-2d59-93e5-455a447846fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem surface_energy_excess_formula_nonneg {surfaceTension area referenceArea : ℝ}
    (tensionNonnegative : 0 ≤ surfaceTension) (areaLowerBound : referenceArea ≤ area) :
    0 ≤ surfaceEnergyExcessFormula surfaceTension area referenceArea :=
  mul_nonneg tensionNonnegative (sub_nonneg.mpr areaLowerBound)

/-- At the positive volume supplied by a reference radius, an explicit scalar
isoperimetric inequality and nonnegative tension give nonnegative reference energy excess.
The reference is a formula state; no geometric existence or rigidity theorem is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SurfaceScope/Varianted3d66fc8ac31082393a7f6c072ae8b7e6e5a9a38bc011ea478838a5be992940.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c9fb8c12ef74ae36659aa8e5b14b102342d838d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
