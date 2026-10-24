# ofHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6935680d494036f02821aa3045a675210240e844f54e1f237c6025a5ae50abd4",
  "kind": "abbrev",
  "lexical_name": "ofHom",
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
  "slug": "ofhom--91aeef52bcbea4dfeccc82ce",
  "source": {
    "blob": "c3eb5dd1f9b7386e4a2a2e62470ce230d0cfb7d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 79,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BddOrd/Variantd3310bb71cd88c6f52be9be985675af62f976b0873d8dd7f3c845fa8d0e15cad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91aeef52bcbea4dfeccc82cee0750b2cd4ef516f5bafe648528a5a847ba67977",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BddOrd/Variantd3310bb71cd88c6f52be9be985675af62f976b0873d8dd7f3c845fa8d0e15cad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6935680d494036f02821aa3045a675210240e844f54e1f237c6025a5ae50abd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev ofHom {X Y : Type u} [PartialOrder X] [BoundedOrder X] [PartialOrder Y] [BoundedOrder Y]
    (f : BoundedOrderHom X Y) : of X ⟶ of Y :=
  ConcreteCategory.ofHom (C := BddOrd) f

variable {R} in
/-- Use the `ConcreteCategory.hom` projection for `@[simps]` lemmas. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BddOrd/Variantd3310bb71cd88c6f52be9be985675af62f976b0873d8dd7f3c845fa8d0e15cad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BddOrd/Variantd3310bb71cd88c6f52be9be985675af62f976b0873d8dd7f3c845fa8d0e15cad.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3eb5dd1f9b7386e4a2a2e62470ce230d0cfb7d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
