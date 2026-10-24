# functoriality_faithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39734c997532ddaca3fa9eb0262db9ad39a91c252d8b9855653bff50a6e80b1a",
  "kind": "instance",
  "lexical_name": "functoriality_faithful",
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
  "slug": "functoriality-faithful--3911198d4b9bad5d80820038",
  "source": {
    "blob": "66990e6754db8257b74b03ff902a079801fc2f6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 160,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant5c804856daf747c8930445512c28341e06dda8b349ca09437a417777d2058d89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3911198d4b9bad5d8082003842697c111a6963724f3bd2e1dd88eb0e4261f39b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant5c804856daf747c8930445512c28341e06dda8b349ca09437a417777d2058d89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39734c997532ddaca3fa9eb0262db9ad39a91c252d8b9855653bff50a6e80b1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance functoriality_faithful [G.PreservesZeroMorphisms] [G.Faithful] :
    (functoriality F G).Faithful where
  map_injective {_X} {_Y} f g h :=
    BiconeMorphism.ext f g <| G.map_injective <| congr_arg BiconeMorphism.hom h

end Bicones

namespace Bicone

attribute [local aesop safe tactic (rule_sets := [CategoryTheory])]
  CategoryTheory.Discrete.discreteCases
-- Porting note: would it be okay to use this more generally?
attribute [local aesop safe cases (rule_sets := [CategoryTheory])] Eq

set_option backward.defeqAttrib.useBackward true in
/-- Extract the cone from a bicone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant5c804856daf747c8930445512c28341e06dda8b349ca09437a417777d2058d89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant5c804856daf747c8930445512c28341e06dda8b349ca09437a417777d2058d89.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66990e6754db8257b74b03ff902a079801fc2f6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
