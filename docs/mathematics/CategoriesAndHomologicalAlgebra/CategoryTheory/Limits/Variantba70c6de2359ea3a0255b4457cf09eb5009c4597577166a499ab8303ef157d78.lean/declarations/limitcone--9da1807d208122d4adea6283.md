# limitCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3efd37b3452805003e9cf1ab498d2f61c9f108d3e5840146b525fe036ca9944",
  "kind": "def",
  "lexical_name": "limitCone",
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
  "slug": "limitcone--9da1807d208122d4adea6283",
  "source": {
    "blob": "450770693988fc5ca8467f8f944c36b3406e4333",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 48,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba70c6de2359ea3a0255b4457cf09eb5009c4597577166a499ab8303ef157d78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9da1807d208122d4adea6283fc7adc8b065719c825916e7abab1bc7a41feda1b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba70c6de2359ea3a0255b4457cf09eb5009c4597577166a499ab8303ef157d78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3efd37b3452805003e9cf1ab498d2f61c9f108d3e5840146b525fe036ca9944`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def limitCone (F : J ⥤ Mon_ C) : Cone F where
  pt := limit F
  π :=
    { app := fun j => { hom := limit.π (F ⋙ Mon_.forget C) j }
      naturality := fun j j' f => by ext; exact (limit.cone (F ⋙ Mon_.forget C)).π.naturality f }
set_option linter.uppercaseLean3 false in
#align Mon_.limit_cone Mon_.limitCone

/-- The image of the proposed limit cone for `F : J ⥤ Mon_ C` under the forgetful functor
`forget C : Mon_ C ⥤ C` is isomorphic to the limit cone of `F ⋙ forget C`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba70c6de2359ea3a0255b4457cf09eb5009c4597577166a499ab8303ef157d78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantba70c6de2359ea3a0255b4457cf09eb5009c4597577166a499ab8303ef157d78.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `450770693988fc5ca8467f8f944c36b3406e4333` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
