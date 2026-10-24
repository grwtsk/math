# Triangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:486d2afa416e440ffbdc8a1ae163809bde81b877dd7448a44750ff668b7209db",
  "kind": "structure",
  "lexical_name": "Triangle",
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
  "slug": "triangle--5148e15a6a95fc81dff21fc0",
  "source": {
    "blob": "9716b9e6301fcbcce60af2cda21e3bd87be2889f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 48,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta6a47b56fc7e5fd2a8bfbd119d87e3063307426c186721571ce290cab99f2276.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5148e15a6a95fc81dff21fc0e3b7f7fe279ca969e0fb96857306fa946e5e8604",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta6a47b56fc7e5fd2a8bfbd119d87e3063307426c186721571ce290cab99f2276.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:486d2afa416e440ffbdc8a1ae163809bde81b877dd7448a44750ff668b7209db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Triangle where mk' ::
  /-- the first object of a triangle -/
  obj₁ : C
  /-- the second object of a triangle -/
  obj₂ : C
  /-- the third object of a triangle -/
  obj₃ : C
  /-- the first morphism of a triangle -/
  mor₁ : obj₁ ⟶ obj₂
  /-- the second morphism of a triangle -/
  mor₂ : obj₂ ⟶ obj₃
  /-- the third morphism of a triangle -/
  mor₃ : obj₃ ⟶ obj₁⟦(1 : ℤ)⟧
#align category_theory.pretriangulated.triangle CategoryTheory.Pretriangulated.Triangle

variable {C}

/-- A triangle `(X,Y,Z,f,g,h)` in `C` is defined by the morphisms `f : X ⟶ Y`, `g : Y ⟶ Z`
and `h : Z ⟶ X⟦1⟧`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta6a47b56fc7e5fd2a8bfbd119d87e3063307426c186721571ce290cab99f2276.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Varianta6a47b56fc7e5fd2a8bfbd119d87e3063307426c186721571ce290cab99f2276.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9716b9e6301fcbcce60af2cda21e3bd87be2889f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
