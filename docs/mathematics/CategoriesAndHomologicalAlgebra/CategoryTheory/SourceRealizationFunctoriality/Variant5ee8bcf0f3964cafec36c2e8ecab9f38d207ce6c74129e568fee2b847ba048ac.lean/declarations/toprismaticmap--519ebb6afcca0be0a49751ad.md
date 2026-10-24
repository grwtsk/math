# toPrismaticMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d56a654b2c1ceadf5cd3e2c0c99af41897a106cdaeb0252d5ab3bde06dece27",
  "kind": "def",
  "lexical_name": "toPrismaticMap",
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
  "slug": "toprismaticmap--519ebb6afcca0be0a49751ad",
  "source": {
    "blob": "5a368753210d4611ed48d79991cc5cb2b03fd1a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 64,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:519ebb6afcca0be0a49751ad270a38970c380a036220ea09b7a4388971277e15",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d56a654b2c1ceadf5cd3e2c0c99af41897a106cdaeb0252d5ab3bde06dece27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toPrismaticMap
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    (T : TotalizationTheory P.Target)
    {A B : SourceRealization F P}
    (f : SourceRealization.Hom A B) :
    fabricPrismaticValue P T B.algebra ⟶
      fabricPrismaticValue P T A.algebra :=
  prismaticReactionMap P T f.algebraMap

/-- Source identity realizes as the identity prismatic map. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SourceRealizationFunctoriality/Variant5ee8bcf0f3964cafec36c2e8ecab9f38d207ce6c74129e568fee2b847ba048ac.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a368753210d4611ed48d79991cc5cb2b03fd1a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
