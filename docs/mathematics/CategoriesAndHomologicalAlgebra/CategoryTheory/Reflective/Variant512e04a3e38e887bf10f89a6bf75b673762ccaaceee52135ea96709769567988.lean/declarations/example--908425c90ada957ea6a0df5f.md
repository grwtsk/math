# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba020fa6a499a1f14afccf1939c11f687abd0c9d006bc2feb4fda34490a5f9af",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--908425c90ada957ea6a0df5f",
  "source": {
    "blob": "88bafc336a4ddcd1b480b80642500c8f471cea62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 212,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant512e04a3e38e887bf10f89a6bf75b673762ccaaceee52135ea96709769567988.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:908425c90ada957ea6a0df5fc54e1950c4cb631d81c68684abc5509a984f0bf9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant512e04a3e38e887bf10f89a6bf75b673762ccaaceee52135ea96709769567988.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba020fa6a499a1f14afccf1939c11f687abd0c9d006bc2feb4fda34490a5f9af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example [Coreflective j] {B : C} : IsIso ((coreflectorAdjunction j).counit.app (j.obj B)) :=
  inferInstance

variable {j}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant512e04a3e38e887bf10f89a6bf75b673762ccaaceee52135ea96709769567988.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant512e04a3e38e887bf10f89a6bf75b673762ccaaceee52135ea96709769567988.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88bafc336a4ddcd1b480b80642500c8f471cea62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
