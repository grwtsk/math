# LiftableCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:050fe0fa3b7e2f40df82a2e4802c869a6cec111ebd8ff9209a16771be5cc0e6e",
  "kind": "structure",
  "lexical_name": "LiftableCone",
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
  "slug": "liftablecone--5d50467c53c26f3c7df33f7a",
  "source": {
    "blob": "08d325d60df547c229e589cfd610fcbdad42a4a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 41,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant73551384beaa1244ebe4197547e8190cbfd2a2d08704b99afd2fed06c81ca539.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d50467c53c26f3c7df33f7aa671604b71fa90ba856dc3ffbb2f56086d82c51b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant73551384beaa1244ebe4197547e8190cbfd2a2d08704b99afd2fed06c81ca539.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:050fe0fa3b7e2f40df82a2e4802c869a6cec111ebd8ff9209a16771be5cc0e6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LiftableCone (K : J ⥤ C) (F : C ⥤ D) (c : Cone (K ⋙ F)) where
  /-- a cone in the source category of the functor -/
  liftedCone : Cone K
  /-- the isomorphism expressing that `liftedCone` lifts the given cone -/
  validLift : F.mapCone liftedCone ≅ c

/-- Define the lift of a cocone: For a cocone `c` for `K ⋙ F`, give a cocone for
`K` which is a lift of `c`, i.e. the image of it under `F` is (iso) to `c`.

We will then use this as part of the definition of creation of colimits:
every limit cocone has a lift.

Note this definition is really only useful when `c` is a colimit already.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant73551384beaa1244ebe4197547e8190cbfd2a2d08704b99afd2fed06c81ca539.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant73551384beaa1244ebe4197547e8190cbfd2a2d08704b99afd2fed06c81ca539.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08d325d60df547c229e589cfd610fcbdad42a4a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
