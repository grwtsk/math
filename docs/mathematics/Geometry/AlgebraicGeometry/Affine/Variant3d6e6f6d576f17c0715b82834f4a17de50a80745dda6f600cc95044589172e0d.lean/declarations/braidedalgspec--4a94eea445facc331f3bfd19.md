# braidedAlgSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af3dd173d98dd35c92fded848467a52baa27e6c1342cbcdc3c0abf62c2951906",
  "kind": "instance",
  "lexical_name": "braidedAlgSpec",
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
  "slug": "braidedalgspec--4a94eea445facc331f3bfd19",
  "source": {
    "blob": "98db2853159f11822039f1a58bba251900d0f540",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 122,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a94eea445facc331f3bfd19b20ce47937a7fe6c84b6b4e1794b008a2575b917",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af3dd173d98dd35c92fded848467a52baa27e6c1342cbcdc3c0abf62c2951906`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance braidedAlgSpec : (algSpec R).Braided :=
  .copy (.ofChosenFiniteProducts _)
    (Over.homMk <| 𝟙 <| Spec R)
    (fun X Y ↦ Over.homMk (pullbackSpecIso R X.unop Y.unop).hom)
    (Over.homMk <| 𝟙 <| Spec R)
    (fun X Y ↦ Over.homMk (pullbackSpecIso R X.unop Y.unop).inv <| by
      simpa using Over.w (prodComparison (algSpec R) X Y))
    (Over.OverMorphism.ext (by simp))
    (funext fun X ↦ funext fun Y ↦ Over.OverMorphism.ext (by simp))
    (Over.OverMorphism.ext (by
      rw [Functor.OplaxMonoidal.η_of_cartesianMonoidalCategory, ← preservesTerminalIso_hom,
        preservesTerminalIso_algSpec]; rfl))
    (funext fun X ↦ funext fun Y ↦ Over.OverMorphism.ext (by
      rw [Functor.OplaxMonoidal.δ_of_cartesianMonoidalCategory, prodComparison_algSpec_left]; rfl))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98db2853159f11822039f1a58bba251900d0f540` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
