# commMonoidOfSkeletalBraided

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13a3cf7c1df88d464bb221e13fcb2292754a484e94f8224e40ce1b19814d014c",
  "kind": "def",
  "lexical_name": "commMonoidOfSkeletalBraided",
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
  "slug": "commmonoidofskeletalbraided--33c001564d1166dcdbcff19c",
  "source": {
    "blob": "5c96e3ae8b0b8c0b6a4018b0b8e388c56ade2be1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 49,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantccad1ffe90e80175c15bd70d3ac37d8ea282ead6d9999881edf959caf731a51a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33c001564d1166dcdbcff19cec6fecd1f9019788f370decad94c23d6027b907b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantccad1ffe90e80175c15bd70d3ac37d8ea282ead6d9999881edf959caf731a51a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13a3cf7c1df88d464bb221e13fcb2292754a484e94f8224e40ce1b19814d014c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def commMonoidOfSkeletalBraided [BraidedCategory C] (hC : Skeletal C) : CommMonoid C :=
  { monoidOfSkeletalMonoidal hC with mul_comm := fun X Y => hC ⟨β_ X Y⟩ }

namespace Skeleton

/-- The skeleton of a monoidal category has a monoidal structure itself, induced by the equivalence.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantccad1ffe90e80175c15bd70d3ac37d8ea282ead6d9999881edf959caf731a51a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variantccad1ffe90e80175c15bd70d3ac37d8ea282ead6d9999881edf959caf731a51a.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c96e3ae8b0b8c0b6a4018b0b8e388c56ade2be1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
