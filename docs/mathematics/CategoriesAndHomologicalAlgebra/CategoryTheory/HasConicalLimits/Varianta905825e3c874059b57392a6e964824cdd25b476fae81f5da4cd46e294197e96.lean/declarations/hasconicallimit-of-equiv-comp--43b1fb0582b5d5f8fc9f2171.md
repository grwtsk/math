# HasConicalLimit.of_equiv_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07f2b34c-0c9a-713b-f03b-77ee78f18f61",
  "kind": "lemma",
  "lexical_name": "HasConicalLimit.of_equiv_comp",
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
  "slug": "hasconicallimit-of-equiv-comp--43b1fb0582b5d5f8fc9f2171",
  "source": {
    "blob": "ce657bc383c0bcbc5e7246303c4cf9a039e92a00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 112,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Varianta905825e3c874059b57392a6e964824cdd25b476fae81f5da4cd46e294197e96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43b1fb0582b5d5f8fc9f217140cf721cdafece64ad1a5bd4f8c087cc4b015df8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Varianta905825e3c874059b57392a6e964824cdd25b476fae81f5da4cd46e294197e96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07f2b34c-0c9a-713b-f03b-77ee78f18f61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasConicalLimit.of_equiv_comp (F : J ⥤ C) (G : J' ⥤ J) [G.IsEquivalence]
    [HasConicalLimit V (G ⋙ F)] : HasConicalLimit V F :=
  have e : G.inv ⋙ G ⋙ F ≅ F := G.asEquivalence.invFunIdAssoc F
  HasConicalLimit.of_iso V e

variable (C)

variable (J) in
/-- existence of conical limits (of shape) implies existence of limits (of shape) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Varianta905825e3c874059b57392a6e964824cdd25b476fae81f5da4cd46e294197e96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Varianta905825e3c874059b57392a6e964824cdd25b476fae81f5da4cd46e294197e96.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce657bc383c0bcbc5e7246303c4cf9a039e92a00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
