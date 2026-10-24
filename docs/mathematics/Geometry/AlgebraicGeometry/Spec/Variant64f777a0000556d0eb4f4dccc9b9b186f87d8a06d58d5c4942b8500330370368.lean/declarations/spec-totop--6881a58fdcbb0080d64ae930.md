# Spec.toTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0150e3a6619de52426e1155f0506b2382c732a247a6cc114668f8dcd05c406b8",
  "kind": "def",
  "lexical_name": "Spec.toTop",
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
  "slug": "spec-totop--6881a58fdcbb0080d64ae930",
  "source": {
    "blob": "9ac453242eb7302787134cbd79e9206f93f7bad2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 91,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6881a58fdcbb0080d64ae930d1acc170b30737037d3e4ca71d58c746eac59143",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0150e3a6619de52426e1155f0506b2382c732a247a6cc114668f8dcd05c406b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Spec.toTop : CommRingCat.{u}ᵒᵖ ⥤ TopCat where
  obj R := Spec.topObj (unop R)
  map {_ _} f := Spec.topMap f.unop

/-- The spectrum of a commutative ring, as a `SheafedSpace`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ac453242eb7302787134cbd79e9206f93f7bad2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
