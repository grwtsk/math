# mapContAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fea39a830f6930489651a25367d82ff31c0a3d23e2d5a9fe31bbdd2dacb02162",
  "kind": "def",
  "lexical_name": "mapContAction",
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
  "slug": "mapcontaction--ceb6072ce497090adc43499e",
  "source": {
    "blob": "337c5f31f5f9a4c3073b8e8c5f9ddc332f4d5d27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 186,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant20ed516da4486eea333d8a1417dfdc4c1a33aea8b1203eb83e557361e9175abe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ceb6072ce497090adc43499ed068c1dc38b1722528777bc0d46b831ac9365136",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant20ed516da4486eea333d8a1417dfdc4c1a33aea8b1203eb83e557361e9175abe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fea39a830f6930489651a25367d82ff31c0a3d23e2d5a9fe31bbdd2dacb02162`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapContAction (F : V ⥤ W) (H : ∀ X : ContAction V G, ((F.mapAction G).obj X.obj).IsContinuous) :
    ContAction V G ⥤ ContAction W G :=
  ObjectProperty.lift _ (ObjectProperty.ι _ ⋙ F.mapAction G) H

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- Continuous version of `Functor.mapActionComp`. -/
@[simps! hom inv]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant20ed516da4486eea333d8a1417dfdc4c1a33aea8b1203eb83e557361e9175abe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant20ed516da4486eea333d8a1417dfdc4c1a33aea8b1203eb83e557361e9175abe.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `337c5f31f5f9a4c3073b8e8c5f9ddc332f4d5d27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
