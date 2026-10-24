# CommGrp.forget_isCorepresentable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:efacdb8cb0b40582a1550c34eab3fa861fa1f0a842667d6de7667c2254e93e93",
  "kind": "instance",
  "lexical_name": "CommGrp.forget_isCorepresentable",
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
  "slug": "commgrp-forget-iscorepresentable--5995c2375476cb7802a5b6a5",
  "source": {
    "blob": "f1a3c3aaf8e50273fd48b14690ee22bb5a238d67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 103,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ForgetCorepresentable/Variante85bbb3347ac59168824c8451d81e68a65061f3965323ca7d7976ea5e8e2a6c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5995c2375476cb7802a5b6a50447b0b9022b8106fac56e211f22f02d6788d2e7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ForgetCorepresentable/Variante85bbb3347ac59168824c8451d81e68a65061f3965323ca7d7976ea5e8e2a6c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:efacdb8cb0b40582a1550c34eab3fa861fa1f0a842667d6de7667c2254e93e93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance CommGrp.forget_isCorepresentable :
    (forget CommGrp.{u}).IsCorepresentable :=
  Functor.IsCorepresentable.mk' CommGrp.coyonedaObjIsoForget

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ForgetCorepresentable/Variante85bbb3347ac59168824c8451d81e68a65061f3965323ca7d7976ea5e8e2a6c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ForgetCorepresentable/Variante85bbb3347ac59168824c8451d81e68a65061f3965323ca7d7976ea5e8e2a6c2.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1a3c3aaf8e50273fd48b14690ee22bb5a238d67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
