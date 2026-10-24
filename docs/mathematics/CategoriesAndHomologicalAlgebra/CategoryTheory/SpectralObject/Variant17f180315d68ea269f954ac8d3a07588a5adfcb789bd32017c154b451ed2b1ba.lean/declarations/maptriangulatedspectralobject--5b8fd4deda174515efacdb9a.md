# mapTriangulatedSpectralObject

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ff78bedccee56c99a3c2041931e90034b3236fd28bace951f87b0fe06c9d728",
  "kind": "def",
  "lexical_name": "mapTriangulatedSpectralObject",
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
  "slug": "maptriangulatedspectralobject--5b8fd4deda174515efacdb9a",
  "source": {
    "blob": "3a70a7e43b10658f52750010d47b0b1ff6bec02a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 302,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant17f180315d68ea269f954ac8d3a07588a5adfcb789bd32017c154b451ed2b1ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b8fd4deda174515efacdb9a1aa9313e75e4486c825fa58c0e7d373f3ad3ffe5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant17f180315d68ea269f954ac8d3a07588a5adfcb789bd32017c154b451ed2b1ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ff78bedccee56c99a3c2041931e90034b3236fd28bace951f87b0fe06c9d728`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapTriangulatedSpectralObject (F : C ⥤ D) [F.CommShift ℤ] [F.IsTriangulated]
    (ι : Type*) [Category* ι] :
    Triangulated.SpectralObject C ι ⥤ Triangulated.SpectralObject D ι where
  obj X := X.mapTriangulatedFunctor F
  map α :=
    { hom := Functor.whiskerRight α.hom _
      comm f g := by
        have hf := (F.commShiftIso (1 : ℤ)).hom.naturality (α.hom.app (mk₁ f))
        dsimp at hf ⊢
        rw [Category.assoc, ← hf, ← F.map_comp_assoc, α.comm, F.map_comp_assoc] }

end Functor

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant17f180315d68ea269f954ac8d3a07588a5adfcb789bd32017c154b451ed2b1ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant17f180315d68ea269f954ac8d3a07588a5adfcb789bd32017c154b451ed2b1ba.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a70a7e43b10658f52750010d47b0b1ff6bec02a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
