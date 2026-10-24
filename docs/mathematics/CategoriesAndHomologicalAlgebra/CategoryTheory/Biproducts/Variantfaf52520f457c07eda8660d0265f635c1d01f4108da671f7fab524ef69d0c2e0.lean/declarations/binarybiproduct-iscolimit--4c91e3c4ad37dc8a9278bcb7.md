# BinaryBiproduct.isColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4edd3db8f8a4a81055d437d381c6c7376a6ad1b470497d892bee0d5792d7cc2f",
  "kind": "def",
  "lexical_name": "BinaryBiproduct.isColimit",
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
  "slug": "binarybiproduct-iscolimit--4c91e3c4ad37dc8a9278bcb7",
  "source": {
    "blob": "520e0a6bd933273556e0ad716338480eeb0a6463",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1326,
    "line": 1315,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfaf52520f457c07eda8660d0265f635c1d01f4108da671f7fab524ef69d0c2e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c91e3c4ad37dc8a9278bcb73d4e0f8a00fcf7009a4ac2551351bbaaf8e900f5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfaf52520f457c07eda8660d0265f635c1d01f4108da671f7fab524ef69d0c2e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4edd3db8f8a4a81055d437d381c6c7376a6ad1b470497d892bee0d5792d7cc2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1315–1326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BinaryBiproduct.isColimit (P Q : C) [HasBinaryBiproduct P Q] :
    IsColimit (BinaryBiproduct.bicone P Q).toCocone :=
  (getBinaryBiproductData P Q).isBilimit.isColimit
#align category_theory.limits.binary_biproduct.is_colimit CategoryTheory.Limits.BinaryBiproduct.isColimit

section

variable (C)

/-- `HasBinaryBiproducts C` represents the existence of a bicone which is
simultaneously a limit and a colimit of the diagram `pair P Q`, for every `P Q : C`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfaf52520f457c07eda8660d0265f635c1d01f4108da671f7fab524ef69d0c2e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfaf52520f457c07eda8660d0265f635c1d01f4108da671f7fab524ef69d0c2e0.lean#L1315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `520e0a6bd933273556e0ad716338480eeb0a6463` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
