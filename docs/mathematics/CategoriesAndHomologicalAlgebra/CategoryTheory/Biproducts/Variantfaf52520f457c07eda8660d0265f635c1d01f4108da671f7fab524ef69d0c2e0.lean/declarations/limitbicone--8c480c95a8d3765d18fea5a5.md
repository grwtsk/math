# LimitBicone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:131dadd03aeb5e3956ff1cbb1ea6e36cda626416b503c9148859380f01226403",
  "kind": "structure",
  "lexical_name": "LimitBicone",
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
  "slug": "limitbicone--8c480c95a8d3765d18fea5a5",
  "source": {
    "blob": "520e0a6bd933273556e0ad716338480eeb0a6463",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 261,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfaf52520f457c07eda8660d0265f635c1d01f4108da671f7fab524ef69d0c2e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c480c95a8d3765d18fea5a550c390f2f33ac4a1a84a0a79025212362848e658",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfaf52520f457c07eda8660d0265f635c1d01f4108da671f7fab524ef69d0c2e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:131dadd03aeb5e3956ff1cbb1ea6e36cda626416b503c9148859380f01226403`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LimitBicone (F : J → C) where
  bicone : Bicone F
  isBilimit : bicone.IsBilimit
#align category_theory.limits.limit_bicone CategoryTheory.Limits.LimitBicone
#align category_theory.limits.limit_bicone.is_bilimit CategoryTheory.Limits.LimitBicone.isBilimit

attribute [inherit_doc LimitBicone] LimitBicone.bicone LimitBicone.isBilimit

/-- `HasBiproduct F` expresses the mere existence of a bicone which is
simultaneously a limit and a colimit of the diagram `F`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfaf52520f457c07eda8660d0265f635c1d01f4108da671f7fab524ef69d0c2e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfaf52520f457c07eda8660d0265f635c1d01f4108da671f7fab524ef69d0c2e0.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `520e0a6bd933273556e0ad716338480eeb0a6463` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
