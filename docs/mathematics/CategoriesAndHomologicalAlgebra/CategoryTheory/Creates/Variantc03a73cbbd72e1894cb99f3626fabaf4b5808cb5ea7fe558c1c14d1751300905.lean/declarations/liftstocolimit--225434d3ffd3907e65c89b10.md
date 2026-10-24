# LiftsToColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:834a71e1ab88c85a4f977dcb45373f5667427c9677c3764bd91e9a55dfb9c2c7",
  "kind": "structure",
  "lexical_name": "LiftsToColimit",
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
  "slug": "liftstocolimit--225434d3ffd3907e65c89b10",
  "source": {
    "blob": "e503cb042d9f123a4d9b3c25a498ded56950c18b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 256,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variantc03a73cbbd72e1894cb99f3626fabaf4b5808cb5ea7fe558c1c14d1751300905.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:225434d3ffd3907e65c89b10ce92bea240c9b6355906bba6535c62ec12a109e0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variantc03a73cbbd72e1894cb99f3626fabaf4b5808cb5ea7fe558c1c14d1751300905.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:834a71e1ab88c85a4f977dcb45373f5667427c9677c3764bd91e9a55dfb9c2c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LiftsToColimit (K : J ⥤ C) (F : C ⥤ D) (c : Cocone (K ⋙ F)) (t : IsColimit c) extends
  LiftableCocone K F c where
  /-- the lifted cocone is colimit -/
  makesColimit : IsColimit liftedCocone

/-- If `F` reflects isomorphisms and we can lift any limit cone to a limit cone,
then `F` creates limits.
In particular here we don't need to assume that F reflects limits.
-/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variantc03a73cbbd72e1894cb99f3626fabaf4b5808cb5ea7fe558c1c14d1751300905.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variantc03a73cbbd72e1894cb99f3626fabaf4b5808cb5ea7fe558c1c14d1751300905.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e503cb042d9f123a4d9b3c25a498ded56950c18b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
