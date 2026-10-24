# ObjectProperty.isFiltered_costructuredArrow_colimitsCardinalClosure_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b498d1184f388a0af1141d9575e3e39bade90f59d557a23bae19a0ae66a37407",
  "kind": "instance",
  "lexical_name": "ObjectProperty.isFiltered_costructuredArrow_colimitsCardinalClosure_ι",
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
  "slug": "objectproperty-isfiltered-costructuredarrow-colimitscardinalclosure--75c4799a105bca372aab628d",
  "source": {
    "blob": "8b94707ed37c1a9c5fa06cb63a019b2eedb22556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 87,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variantc580cd5c15b5bea56a9ceec7adc4f541ebd35169917d7126fc1452479f99458c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75c4799a105bca372aab628d175213ae2e10d441ba967164da9371b8ca0deb6c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variantc580cd5c15b5bea56a9ceec7adc4f541ebd35169917d7126fc1452479f99458c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b498d1184f388a0af1141d9575e3e39bade90f59d557a23bae19a0ae66a37407`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ObjectProperty.isFiltered_costructuredArrow_colimitsCardinalClosure_ι
    (P : ObjectProperty C) (κ : Cardinal.{w}) [Fact κ.IsRegular]
    [HasColimitsOfSize.{w, w} C] (X : C) :
    IsFiltered (CostructuredArrow (P.colimitsCardinalClosure κ).ι X) :=
  isFiltered_of_isCardinalFiltered _ κ

variable {κ : Cardinal.{w}} [Fact κ.IsRegular]

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variantc580cd5c15b5bea56a9ceec7adc4f541ebd35169917d7126fc1452479f99458c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variantc580cd5c15b5bea56a9ceec7adc4f541ebd35169917d7126fc1452479f99458c.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b94707ed37c1a9c5fa06cb63a019b2eedb22556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
