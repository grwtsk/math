# Triangle.homMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8502bf78832038c43224622eb68eaf1fa67c9a945d2079808a0d0a37cd0019fa",
  "kind": "def",
  "lexical_name": "Triangle.homMk",
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
  "slug": "triangle-hommk--66038081b7e6b0b05e7da302",
  "source": {
    "blob": "fcaa89acc678d1b50e25f2c0d5d0d01b6c971171",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 180,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantb045f238ed3d188a6f9c8e99706b03acc6cd416634563e58f646b28ddfc12811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66038081b7e6b0b05e7da302f8b1622623fb5d1df19dabb6f4b5bfdc806eb9c4",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantb045f238ed3d188a6f9c8e99706b03acc6cd416634563e58f646b28ddfc12811.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8502bf78832038c43224622eb68eaf1fa67c9a945d2079808a0d0a37cd0019fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Triangle.homMk (A B : Triangle C)
    (hom₁ : A.obj₁ ⟶ B.obj₁) (hom₂ : A.obj₂ ⟶ B.obj₂) (hom₃ : A.obj₃ ⟶ B.obj₃)
    (comm₁ : A.mor₁ ≫ hom₂ = hom₁ ≫ B.mor₁ := by cat_disch)
    (comm₂ : A.mor₂ ≫ hom₃ = hom₂ ≫ B.mor₂ := by cat_disch)
    (comm₃ : A.mor₃ ≫ hom₁⟦1⟧' = hom₃ ≫ B.mor₃ := by cat_disch) :
    A ⟶ B where
  hom₁ := hom₁
  hom₂ := hom₂
  hom₃ := hom₃
  comm₁ := comm₁
  comm₂ := comm₂
  comm₃ := comm₃

/-- Make an isomorphism between triangles from the required data. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantb045f238ed3d188a6f9c8e99706b03acc6cd416634563e58f646b28ddfc12811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantb045f238ed3d188a6f9c8e99706b03acc6cd416634563e58f646b28ddfc12811.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcaa89acc678d1b50e25f2c0d5d0d01b6c971171` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
